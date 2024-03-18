<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interest Matcher</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script src="assets/js/jquery-3.4.1.slim.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h2>Interest Matcher</h2>
        <form action="./handle/handleSignUp.php" method="post">
            <?php if (isset($_SESSION['errors_signup'])) { ?>
                <script>  
                    $(document).ready(function(){
                        // Open modal on page load
                        $("#exampleModalCenter").modal('show');
                    });
                </script>
                <?php foreach ($_SESSION['errors_signup'] as $error) { ?>
                    <div class="alert alert-danger" role="alert">
                        <p style="font-size: 15px;" class="text-center"><?php echo $error; ?></p>
                    </div>
                <?php } 
                unset($_SESSION['errors_signup']); ?>
            <?php } ?>
            <div class="form-group">
                <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Full Name">
            </div>
            <div class="form-group">
                <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Username">
            </div>
            <div class="form-group">
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Address">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="interests">Select Your Interests:</label>
                <select name="interests[]" id="interests" class="form-control" multiple>
                    <optgroup label="Topics of Interest">
                        <option value="Technology">Technology</option>
                        <option value="Science">Science</option>
                        <option value="Travel">Travel</option>
                        <option value="Food">Food</option>
                        <option value="Fashion">Fashion</option>
                        <option value="Sports">Sports</option>
                        <option value="Music">Music</option>
                        <option value="Art">Art</option>
                        <option value="Literature">Literature</option>
                        <option value="Movies">Movies</option>
                        <option value="Gaming">Gaming</option>
                    </optgroup>
                    <optgroup label="Activities">
                        <option value="Hiking">Hiking</option>
                        <option value="Cooking">Cooking</option>
                        <option value="Photography">Photography</option>
                        <option value="Yoga">Yoga</option>
                        <option value="Dancing">Dancing</option>
                        <option value="Gardening">Gardening</option>
                        <option value="Surfing">Surfing</option>
                        <option value="Skiing">Skiing</option>
                        <option value="Painting">Painting</option>
                        <option value="Writing">Writing</option>
                        <option value="Playing an Instrument">Playing an Instrument</option>
                    </optgroup>
                    <optgroup label="Communities">
                        <option value="Programming communities">Programming communities</option>
                        <option value="Gaming communities">Gaming communities</option>
                        <option value="Travel communities">Travel communities</option>
                        <option value="Fitness communities">Fitness communities</option>
                        <option value="Artistic communities">Artistic communities</option>
                        <option value="Music communities">Music communities</option>
                    </optgroup>
                </select>
            </div>
            <div class="text-center">
                <button type="submit" name="signup" class="btn btn-primary">Sign Up</button>
            </div>
        </form>
    </div>
</body>
</html>
