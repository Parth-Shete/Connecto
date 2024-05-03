<?php

$userRatings = [
    'User1' => ['Tweet1' => 5, 'Tweet2' => 4, 'Tweet3' => 3],
    'User2' => ['Tweet1' => 3, 'Tweet2' => 4, 'Tweet3' => 5],
    'User3' => ['Tweet1' => 2, 'Tweet2' => 3, 'Tweet3' => 4],
];

// Function to calculate similarity between two users using cosine similarity
function cosineSimilarity($user1Ratings, $user2Ratings) {
    $dotProduct = 0;
    $magnitudeUser1 = 0;
    $magnitudeUser2 = 0;

    foreach ($user1Ratings as $tweet => $rating) {
        if (array_key_exists($tweet, $user2Ratings)) {
            $dotProduct += $rating * $user2Ratings[$tweet];
        }
        $magnitudeUser1 += $rating * $rating;
    }

    foreach ($user2Ratings as $tweet => $rating) {
        $magnitudeUser2 += $rating * $rating;
    }

    $magnitudeUser1 = sqrt($magnitudeUser1);
    $magnitudeUser2 = sqrt($magnitudeUser2);

    if ($magnitudeUser1 == 0 || $magnitudeUser2 == 0) {
        return 0;
    } else {
        return $dotProduct / ($magnitudeUser1 * $magnitudeUser2);
    }
}

// Function to get similar users for a given user
function getSimilarUsers($user, $userRatings) {
    $similarities = [];
    foreach ($userRatings as $otherUser => $ratings) {
        if ($otherUser != $user) {
            $similarity = cosineSimilarity($userRatings[$user], $ratings);
            $similarities[$otherUser] = $similarity;
        }
    }
    arsort($similarities);
    return $similarities;
}

// Function to recommend tweets to a user
function recommendTweets($user, $userRatings, $numRecommendations = 3) {
    $recommendations = [];
    $similarUsers = getSimilarUsers($user, $userRatings);
    $userTweets = $userRatings[$user];

    foreach ($similarUsers as $similarUser => $similarity) {
        foreach ($userRatings[$similarUser] as $tweet => $rating) {
            if (!array_key_exists($tweet, $userTweets) || $userTweets[$tweet] == 0) {
                $recommendations[$tweet] = isset($recommendations[$tweet]) ? $recommendations[$tweet] + ($similarity * $rating) : $similarity * $rating;
            }
        }
    }

    arsort($recommendations);
    return array_slice($recommendations, 0, $numRecommendations, true);
}

// Get recommendations for a specific user (e.g., User1)
$user = 'User1';
$recommendations = recommendTweets($user, $userRatings);

// Output recommendations
echo "Recommended tweets for $user:<br>";
foreach ($recommendations as $tweet => $score) {
    echo "$tweet - Score: $score<br>";
}
?>
