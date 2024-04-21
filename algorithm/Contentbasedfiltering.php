<?php
// Sample user preferences
$userPreferences = [
    'action' => 1,
    'mention' => 0,
    'quote' => 1,
    'retweets' => 0,
];

// Sample items with features
$items = [
    ['comment' => 'tweet 1', 'genre' => ['action', 'quote']],
    ['comment' => 'tweet 2', 'genre' => ['action', 'mention']],
    ['comment' => 'tweet 3', 'genre' => ['quote', 'retweet']],
    ['comment' => 'tweet 4', 'genre' => ['mention']],
];

// Function to calculate similarity score between user preferences and item features
function calculateSimilarity($userPreferences, $itemFeatures) {
    $similarity = 0;
    foreach ($userPreferences as $preference => $value) {
        if (in_array($preference, $itemFeatures)) {
            $similarity += $value;
        }
    }
    return $similarity;
}

// Function to recommend items based on user preferences
function recommendItems($userPreferences, $items) {
    $recommendations = [];
    foreach ($items as $item) {
        $similarity = calculateSimilarity($userPreferences, $item['genre']);
        $recommendations[] = ['comment' => $item['comment'], 'similarity' => $similarity];
    }
    // Sort recommendations by similarity score in descending order
    usort($recommendations, function ($a, $b) {
        return $b['similarity'] - $a['similarity'];
    });
    return $recommendations;
}

// Get recommendations for the user
$recommendations = recommendItems($userPreferences, $items);

// Output recommendations
foreach ($recommendations as $recommendation) {
    echo $recommendation['comment'] . ' - Similarity Score: ' . $recommendation['similarity'] . '<br>';
}
?>
