module UsersHelper
  @@game_params = nil
  @@user1 = nil
  @@user2 = nil
  @@user3 = nil
  @@user4 = nil
  @@user5 = nil
  @@team_champ1 = nil
  @@team_champ2 = nil
  @@team_champ3 = nil
  @@team_champ4 = nil
  @@team_champ5 = nil
  @@opp_team_champ1 = nil
  @@opp_team_champ2 = nil
  @@opp_team_champ3 = nil
  @@opp_team_champ4 = nil
  @@opp_team_champ5 = nil

  def game_params(params)
    @@game_params = params
  end

  def user1
    @@user1
  end

  def user2
    @@user2
  end
  def user3
    @@user3
  end
  def user4
    @@user4
  end
  def user5
    @@user5
  end
  def team_champ1
    @@team_champ1
  end
  def team_champ2
    @@team_champ2
  end
  def team_champ3
    @@team_champ3
  end
  def team_champ4
    @@team_champ4
  end
  def team_champ5
    @@team_champ5
  end
  def opp_team_champ1
    @@opp_team_champ1
  end
  def opp_team_champ2
    @@opp_team_champ2
  end
  def opp_team_champ3
    @@opp_team_champ3
  end
  def opp_team_champ4
    @@opp_team_champ4
  end
  def opp_team_champ5
    @@opp_team_champ5
  end



  def view_game_params

    @@user1 = @@game_params["users_container"][0]["name"]
    @@user2 = @@game_params["users_container"][1]["name"]
    @@user3 = @@game_params["users_container"][2]["name"]
    @@user4 = @@game_params["users_container"][3]["name"]
    @@user5 = @@game_params["users_container"][4]["name"]

    @@team_champ1 = Champion.find( @@game_params["champ_arr"][0]["champion_id"].to_i)
    @@team_champ2 = Champion.find(@@game_params["champ_arr"][1]["champion_id"].to_i)
    @@team_champ3 = Champion.find(@@game_params["champ_arr"][2]["champion_id"].to_i)
    @@team_champ4 = Champion.find(@@game_params["champ_arr"][3]["champion_id"].to_i)
    @@team_champ5 = Champion.find(@@game_params["champ_arr"][4]["champion_id"].to_i)

    @@opp_team_champ1 = Champion.find(@@game_params["opp_champ_arr"][0]["champion_id"].to_i)
    @@opp_team_champ2 = Champion.find(@@game_params["opp_champ_arr"][1]["champion_id"].to_i)
    @@opp_team_champ3 = Champion.find(@@game_params["opp_champ_arr"][2]["champion_id"].to_i)
    @@opp_team_champ4 = Champion.find(@@game_params["opp_champ_arr"][3]["champion_id"].to_i)
    @@opp_team_champ5 = Champion.find(@@game_params["opp_champ_arr"][4]["champion_id"].to_i)

  end

  def get_champ_matchup(user_champ, counter_champ)
    page = Nokogiri::HTML(RestClient.get("http://matchup.gg/matchup/#{user_champ}/#{counter_champ}"))
     champ_matchup_percentage = page.css('div.header-analysis-winrate-percentage')[1].text
  end

end
