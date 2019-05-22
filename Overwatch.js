$('document').ready(function() {

    function getData(player, hero) {
        fetch('https://ow-api.com/v1/stats/pc/us/' + player + '/heroes/' + hero)
            .then(function(resp) { return resp.json() }) // Convert data to json
            .then(function(data) {
                console.log(data);
                fillTable(data, hero, player);

            })
            .catch(function() {
                // catch any errors
            });
    }
    $("#searchform").submit(function(e) {
        e.preventDefault();
        getData($('#searchPlayer').val(), $('#hero').val());
        var hero = $('#hero option:selected').text();
        document.cookie = "hero =" + hero;


    });

    function fillTable(data, hero, player) {
        var dmg = data["competitiveStats"]['careerStats'][hero]['average']['allDamageDoneAvgPer10Min'];
        var death = data["competitiveStats"]['careerStats'][hero]['average']['deathsAvgPer10Min'];
        var kills = data["competitiveStats"]['careerStats'][hero]['average']['eliminationsAvgPer10Min'];
        
        $('#your-player').text(player);
        $("#your-player-dmg").text(dmg);
        $("#your-player-death").text(death);
        $("#your-player-kills").text(kills);
        

        $.ajax({
            url: 'database_interface.php',
            type: 'POST',
            success : function(data){
                var obj = jQuery.parseJSON(data);
                console.log(obj[0]);
                $('#first-pro').text(obj[0][0]);
                $('#first-pro-dmg').text(obj[0][1]);
                $("#first-pro-death").text(obj[0][2]);
                $("#first-pro-kills").text(obj[0][3]);

                $('#second-pro').text(obj[1][0]);
                $('#second-pro-dmg').text(obj[1][1]);
                $("#second-pro-death").text(obj[1][2]);
                $("#second-pro-kills").text(obj[1][3]);

                $('#third-pro').text(obj[2][0]);
                $('#third-pro-dmg').text(obj[2][1]);
                $("#third-pro-death").text(obj[2][2]);
                $("#third-pro-kills").text(obj[2][3]);

            }
        })
    }
})