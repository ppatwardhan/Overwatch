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
        getData($('#searchPlayer').val(), $('#hero option:selected').text());

    });

    function fillTable(data, hero, player) {
        console.log('empty');
        var dmg = data["competitiveStats"]['careerStats'][hero]['average']['allDamageDoneAvgPer10Min'];
        var death = data["competitiveStats"]['careerStats'][hero]['average']['deathsAvgPer10Min'];
        var obj = data["competitiveStats"]['careerStats'][hero]['combat']['objectiveTime'];
        var acc = data["competitiveStats"]['careerStats'][hero]['combat']['weaponAccuracy'];
        var crit = data["competitiveStats"]['careerStats'][hero]['combat']['criticalHits'];
        $('#your-player').text(player);
        $("#your-player-dmg").text(dmg);
        $("#your-player-death").text(death);
        $("#your-player-obj").text(obj);
        $("#your-player-acc").text(acc);
        $("#your-player-crit").text(crit);
        $('#first-pro-dmg').text('21.94');
        $('#second-pro-dmg').text('23.44');
        $('#third-pro-dmg').text('25.61');
        $('#first-pro-death').text('.01');
        $('#second-pro-death').text('.03');
        $('#third-pro-death').text('.01');
        $('#first-pro-obj').text('01:17:07');
        $('#second-pro-obj').text('01:18:22');
        $('#third-pro-obj').text('01:19:51');
        $('#first-pro-acc').text('32%');
        $('#second-pro-acc').text('25%');
        $('#third-pro-acc').text('41%');
        $('#first-pro-crit').text('8146');
        $('#second-pro-crit').text('8567');
        $('#third-pro-crit').text('9122');

    }
})