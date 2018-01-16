require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |s, array|
    if s == season
      array.each do |contestant|
        contestant.each do |k,v|
          if v == "Winner"
            name = contestant["name"]
            name = name.split(" ").shift
            winner << name
          end
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |k, v|
        if v == occupation
          name << contestant["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |k, v|
        if v == hometown
          count +=1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  job = []
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |k,v|
        if v == hometown
          job << contestant["occupation"]
        end
      end
    end
  end
  job = job.shift
end

def get_average_age_for_season(data, season)
  ages = []
  sum = 0
  data.each do |s, a|
    if s == season
      a.each do |contestant|
        ages << contestant["age"]
      end
    end
  end
  ages.each do |n|
    n = n.to_f
    sum += n
  end
  avg = sum / ages.length
  avg.round
end
