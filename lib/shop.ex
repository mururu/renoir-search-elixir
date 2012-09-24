defmodule Shop do
  defrecord Shop, id: nil, name: nil, type: nil, address: nil, lat: nil, lng: nil, phone: nil, smoking_num: 0, non_smoking_num: 0, hours: nil, options: nil

  @shops [
    Shop.new(id: 0, name: "新宿西口エステックビル店", type: :renoir, address: "東京都新宿区西新宿1-24-1 エステック情報ビル地下1階", lat: 35.6903875, lng: 139.6958253, phone: "03-3348-1470", smoking_num: 46, non_smoking_num: 77, hours: [monday: [7, 22], tuesday: [7, 22], wednesday: [7, 22], thursday: [7, 22], friday: [7, 22], saturday: [8, 22], sunday: [8, 21], holiday: [8, 21], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 1, name: "新宿西口駅前店", type: :renoir, address: "東京都新宿区西新宿1-17-1　日本生命西新宿ビル2階", lat: 35.68931, lng: 139.6982473, phone: "03-3348-5761", smoking_num: 44, non_smoking_num: 20, hours: [monday: [7.5, 23.5], tuesday: [7.5, 23.5], wednesday: [7.5, 23.5], thursday: [7.5, 23.5], friday: [7.5, 23.5], saturday: [7.5, 23.5], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 2, name: "新宿小滝橋通り店", type: :renoir, address: "東京都新宿区西新宿7-9-7　新宿ニッカビル1階", lat: 35.6949732, lng: 139.6981943, phone: "03-3364-1618", smoking_num: 28, non_smoking_num: 28, hours: [monday: [7.5, 22.5], tuesday: [7.5, 22.5], wednesday: [7.5, 22.5], thursday: [7.5, 22.5], friday: [7.5, 22.5], saturday: [7.5, 22.5], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 3, name: "大久保店", type: :renoir, address: "東京都新宿区百人町1-18-8　大久保角ビル2階", lat: 35.7015834, lng: 139.6955, phone: "03-3368-2209", smoking_num: 36, non_smoking_num: 50, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 4, name: "新大久保駅前店", type: :renoir, address: "東京都新宿区百人町2-11-25　新戸山ビル2階", lat: 35.7018251, lng: 139.6991301, phone: "03-3361-0269", smoking_num: 48, non_smoking_num: 38, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 5, name: "蒲田西口店", type: :renoir, address: "東京都大田区西蒲田8-1-7　グランタウンビル2階", lat: 35.5612929, lng: 139.7148263, phone: "03-3735-2508", smoking_num: 110, non_smoking_num: 26, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 6, name: "渋谷南口店", type: :renoir, address: "東京都渋谷区桜ヶ丘15-15　ＮＫＧ東京第二ビル2階", lat: 35.6560057, lng: 139.7015677, phone: "03-3461-7360", smoking_num: 52, non_smoking_num: 42, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 21], holiday: [8, 21], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 7, name: "渋谷シオノギビル店", type: :renoir, address: "東京都渋谷区渋谷2-17-5 シオノギ渋谷ビル2階", lat: 35.6591388, lng: 139.7043979, phone: "03-5469-0850", smoking_num: 16, non_smoking_num: 38, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [9, 21], holiday: [9, 21], before_holiday: 23.0], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 8, name: "千駄ヶ谷駅前店", type: :new_yorkers_cafe, address: "東京都渋谷区千駄ヶ谷1-30-10　千和ビル1階", lat: 35.6809891, lng: 139.7098215, phone: "03-3479-0048", smoking_num: 26, non_smoking_num: 0, hours: [monday: [7.5, 22.5], tuesday: [7.5, 22.5], wednesday: [7.5, 22.5], thursday: [7.5, 22.5], friday: [7.5, 22.5], saturday: [7.5, 22.5], sunday: [7.5, 22], holiday: [7.5, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 9, name: "千駄ヶ谷駅前店", type: :renoir, address: "東京都渋谷区千駄ヶ谷1-30-8　ダヴィンチ千駄ヶ谷1階", lat: 35.6809808, lng: 139.710052, phone: "03-3408-9125", smoking_num: 36, non_smoking_num: 33, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 10, name: "代々木西口駅前店", type: :renoir, address: "東京都渋谷区代々木1-30-6　第一U・Iビル1階", lat: 35.6816804, lng: 139.7019473, phone: "03-3379-0583", smoking_num: 44, non_smoking_num: 41, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 11, name: "新宿南口駅前店", type: :cafe_miyama, address: "東京都渋谷区代々木2-8-5　新宿南口ビル地下1階", lat: 35.68842679999999, lng: 139.6992473, phone: "03-3379-5676", smoking_num: 38, non_smoking_num: 23, hours: [monday: [7.5, 24], tuesday: [7.5, 24], wednesday: [7.5, 24], thursday: [7.5, 24], friday: [7.5, 24], saturday: [8, 24], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 12, name: "中野北口店", type: :renoir, address: "東京都中野区中野5-61-2　立見ビル2階", lat: 35.7067903, lng: 139.6663186, phone: "03-3387-2982", smoking_num: 57, non_smoking_num: 51, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 13, name: "池袋サンシャイン60通り店", type: :renoir, address: "東京都豊島区東池袋1-11-4　大和ビル2階", lat: 35.7297201, lng: 139.7142217, phone: "03-5396-0012", smoking_num: 38, non_smoking_num: 56, hours: [monday: [7.5, 24], tuesday: [7.5, 24], wednesday: [7.5, 24], thursday: [7.5, 24], friday: [7.5, 24], saturday: [7.5, 24], sunday: [8, 23], holiday: [8, 23], before_holiday: 24.0], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 14, name: "西日暮里第一店", type: :renoir, address: "東京都荒川区西日暮里5-23-6 ホワイトハウス2階", lat: 35.7321183, lng: 139.7675956, phone: "03-3801-2230", smoking_num: 56, non_smoking_num: 57, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 15, name: "国立南口駅前店", type: :cafe_renoir, address: "東京都国立市東1-4-8　国立セントラルビル2階", lat: 35.6982998, lng: 139.447218, phone: "042-576-9480", smoking_num: 26, non_smoking_num: 34, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 16, name: "横浜元町店", type: :renoir, address: "神奈川県横浜市中区元町1-18　石川ビル1階", lat: 35.4413525, lng: 139.650211, phone: "045-641-3331", smoking_num: 50, non_smoking_num: 64, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 17, name: "川越店", type: :renoir, address: "埼玉県川越市脇田町103 川越マイン3F", lat: 35.9072644, lng: 139.4841802, phone: "049-224-4420", smoking_num: 68, non_smoking_num: 0, hours: [monday: [10, 22], tuesday: [10, 22], wednesday: [10, 22], thursday: [10, 22], friday: [10, 22], saturday: [10, 22], sunday: [10, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 18, name: "神田北口駅前店", type: :renoir, address: "東京都千代田区内神田3-21-8　神田駅北口合同ビル2階", lat: 35.6926673, lng: 139.7704608, phone: "03-3255-8620", smoking_num: 22, non_smoking_num: 26, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [8, 23], sunday: [8, 20], holiday: [8, 20], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 19, name: "神田南口駅前店", type: :renoir, address: "東京都千代田区鍛冶町2-1-4　東和ビル2階", lat: 35.6912091, lng: 139.7712053, phone: "03-5289-8456", smoking_num: 47, non_smoking_num: 32, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [7, 23], sunday: [8, 20], holiday: [8, 20], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 20, name: "駿河台４丁目店", type: :new_yorkers_cafe, address: "東京都千代田区神田駿河台4-1-1　ウエルトンビル1階", lat: 35.6976165, lng: 139.765461, phone: "03-3293-9460", smoking_num: 56, non_smoking_num: 22, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [8, 22.5], sunday: [8, 21.5], holiday: [8, 21.5], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 21, name: "市ヶ谷駅前店", type: :renoir, address: "東京都千代田区五番町4番地2　東プレビル1階", lat: 35.6904304, lng: 139.7354965, phone: "03-3263-5980", smoking_num: 64, non_smoking_num: 34, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 22], sunday: [9, 22], holiday: [9, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 22, name: "飯田橋西口店", type: :renoir, address: "東京都千代田区富士見2-2-6　今井ビル2階", lat: 35.6992296, lng: 139.7452011, phone: "03-5226-6345", smoking_num: 32, non_smoking_num: 60, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 23, name: "水道橋西口駅前店", type: :new_yorkers_cafe, address: "東京都千代田区三崎町2-22-18　TKビル1階", lat: 35.7023795, lng: 139.7523533, phone: "03-3261-5590", smoking_num: 70, non_smoking_num: 56, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [7.5, 22.5], holiday: [7.5, 22.5], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 24, name: "水道橋西口店", type: :renoir, address: "東京都千代田区三崎町3-6-13　山京中央ビル1階", lat: 35.7017573, lng: 139.7515617, phone: "03-3288-1578", smoking_num: 28, non_smoking_num: 27, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 25, name: "銀座１丁目柳通り店", type: :renoir, address: "東京都中央区銀座1-6-11　土志田ビルディング地下1階", lat: 35.6744249, lng: 139.7672282, phone: "03-5250-1860", smoking_num: 29, non_smoking_num: 29, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [8, 23], sunday: [9, 22], holiday: [9, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 26, name: "銀座松屋通り店", type: :renoir, address: "東京都中央区銀座3-3-11　稲垣ビル2階", lat: 35.6727473, lng: 139.765209, phone: "03-3567-7266", smoking_num: 28, non_smoking_num: 24, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23.5], saturday: [7.5, 23.5], sunday: [8, 23], holiday: [8, 23], before_holiday: 23.5], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 27, name: "銀座６丁目店", type: :renoir, address: "東京都中央区銀座6-12-10 旭ビル1階", lat: 35.6688283, lng: 139.764248, phone: "03-3574-7876", smoking_num: 28, non_smoking_num: 22, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 28, name: "日本橋高島屋前店", type: :renoir, address: "東京都中央区日本橋2-3-6　日本土地ビル地下1階", lat: 35.6814104, lng: 139.7726666, phone: "03-3272-8048", smoking_num: 76, non_smoking_num: 17, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [8, 22], sunday: [9, 21], holiday: [9, 21], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 29, name: "東京駅八重洲北口店", type: :renoir, address: "東京都中央区八重洲1-6-17　八重洲勧業ビル1階", lat: 35.6813936, lng: 139.7699973, phone: "03-3517-8722", smoking_num: 47, non_smoking_num: 18, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23.5], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 30, name: "ニュー八重洲北口店", type: :cafe_renoir, address: "東京都中央区八重洲1-7-4　矢満登ビル1階", lat: 35.6810853, lng: 139.7702806, phone: "03-3274-7788", smoking_num: 22, non_smoking_num: 24, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23.5], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 31, name: "市ヶ谷外堀通り店", type: :renoir, address: "東京都新宿区市谷田町1-3　片倉ビル2階", lat: 35.6926634, lng: 139.7354992, phone: "03-5225-7665", smoking_num: 48, non_smoking_num: 22, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 22], sunday: [9, 23], holiday: [9, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 32, name: "新宿区役所横店", type: :renoir, address: "東京都新宿区歌舞伎町1-3-5 相模ビル1階及び2階", lat: 35.6945067, lng: 139.7035438, phone: "03-3209-6175", smoking_num: 78, non_smoking_num: 32, hours: [monday: [8, 30], tuesday: [8, 30], wednesday: [8, 30], thursday: [8, 30], friday: [8, 30], saturday: [8, 30], sunday: [8, 23], holiday: nil, before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 33, name: "高田馬場ビックボックス横店", type: :renoir, address: "東京都新宿区高田馬場1-34-8　大輝ビル地下1階　", lat: 35.7121936, lng: 139.7042068, phone: "03-3200-8194", smoking_num: 98, non_smoking_num: 15, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [9, 23], sunday: [9, 23], holiday: [9, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 34, name: "高田馬場第一店", type: :renoir, address: "東京都新宿区高田馬場1-34-12　竹内ビル1階", lat: 35.7119659, lng: 139.7041818, phone: "03-3200-6834", smoking_num: 79, non_smoking_num: 28, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 35, name: "高田馬場早稲田通り店", type: :renoir, address: "東京都新宿区高田馬場2-14-2　新陽ビル地下1階", lat: 35.7125437, lng: 139.7072537, phone: "03-3205-1838", smoking_num: 49, non_smoking_num: 0, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 36, name: "高田馬場駅前店", type: :cafe_miyama, address: "東京都新宿区高田馬場2-17-4　菊月ビル地下1階", lat: 35.713488, lng: 139.7054177, phone: "03-5292-5772", smoking_num: 36, non_smoking_num: 26, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 37, name: "高田馬場さかえ通り店", type: :new_yorkers_cafe, address: "東京都新宿区高田馬場3-2-14　丸曾ビル1階及び2階", lat: 35.7141739, lng: 139.7033012, phone: "03-3368-6509", smoking_num: 20, non_smoking_num: 30, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [7.5, 22.5], holiday: [7.5, 22.5], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 38, name: "新宿ハルク横店", type: :renoir, address: "東京都新宿区西新宿1-5-11　三葉ビル地下1階", lat: 35.692754, lng: 139.6981833, phone: "03-5381-1885", smoking_num: 46, non_smoking_num: 60, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23.5], friday: [7.5, 23.5], saturday: [7.5, 23.5], sunday: [8, 23], holiday: [8, 23], before_holiday: 23.5], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 39, name: "新宿エステックビル店", type: :new_yorkers_cafe, address: "東京都新宿区西新宿1-24-1　エステック情報ビル1階", lat: 35.6903875, lng: 139.6958253, phone: "03-5339-2922", smoking_num: 32, non_smoking_num: 27, hours: [monday: [7, 22], tuesday: [7, 22], wednesday: [7, 22], thursday: [7, 22], friday: [7, 22], saturday: [7, 22], sunday: [8, 21.5], holiday: [8, 21.5], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 40, name: "新宿大ガード店", type: :renoir, address: "東京都新宿区西新宿7-1-1　新宿カレイドビル2階", lat: 35.6941316, lng: 139.699297, phone: "03-3363-1929", smoking_num: 40, non_smoking_num: 30, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 41, name: "水道橋東口店", type: :new_yorkers_cafe, address: "東京都文京区本郷1-4-1　全水道会館1階", lat: 35.7032128, lng: 139.7555614, phone: "03-3818-4584", smoking_num: 44, non_smoking_num: 27, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [7.5, 22.5], holiday: [7.5, 22.5], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 42, name: "上野しのばず口店", type: :renoir, address: "東京都台東区上野4-10-7　タツミビル地下1階", lat: 35.7109514, lng: 139.7743599, phone: "03-3835-4493", smoking_num: 42, non_smoking_num: 47, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 43, name: "御徒町春日通り店", type: :cafe_renoir, address: "東京都台東区上野6-1-1 小西本店ビル2階", lat: 35.7078907, lng: 139.7760544, phone: "03-5818-7280", smoking_num: 29, non_smoking_num: 31, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 44, name: "日暮里谷中店", type: :renoir, address: "東京都台東区谷中7-20-6　谷中ホ-ムズ1階", lat: 35.7276245, lng: 139.7689012, phone: "03-3822-8102", smoking_num: 37, non_smoking_num: 35, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 45, name: "亀戸駅前店", type: :renoir, address: "東京都江東区亀戸2-20-7　百万両田中ビル2階", lat: 35.6977256, lng: 139.8253367, phone: "03-3684-2173", smoking_num: 27, non_smoking_num: 37, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 46, name: "目黒東口駅前店", type: :cafe_miyama, address: "東京都品川区上大崎2-12-1　野田ビル1階", lat: 35.6348948, lng: 139.7164031, phone: "03-3446-5284", smoking_num: 29, non_smoking_num: 34, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 47, name: "渋谷センター街店", type: :cafe_miyama, address: "東京都渋谷区宇田川町25-3　プリンスビル2階", lat: 35.6603301, lng: 139.6992039, phone: "03-3463-0452", smoking_num: 52, non_smoking_num: 20, hours: [monday: [8, 30], tuesday: [8, 30], wednesday: [8, 30], thursday: [8, 30], friday: [8, 30], saturday: [8, 30], sunday: [8, 30], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 48, name: "渋谷東急ハンズ前店", type: :renoir, address: "東京都渋谷区宇田川町36-2　ノアビル2階", lat: 35.66202430000001, lng: 139.6972123, phone: "03-3464-4863", smoking_num: 52, non_smoking_num: 26, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [8, 23], sunday: [9, 23], holiday: [9, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 49, name: "渋谷公園通り店", type: :cafe_miyama, address: "東京都渋谷区宇田川町19-5　東京山手教会地下1階", lat: 35.6616772, lng: 139.6995316, phone: "03-3770-2081", smoking_num: 57, non_smoking_num: 29, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23.5], saturday: [9, 23.5], sunday: [9, 23], holiday: [9, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 50, name: "渋谷宮下公園店", type: :renoir, address: "東京都渋谷区渋谷1-16-14　渋谷地下鉄ビル2階", lat: 35.6614745, lng: 139.7025785, phone: "03-3400-5413", smoking_num: 69, non_smoking_num: 34, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [8, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 51, name: "渋谷東口駅前店", type: :cafe_miyama, address: "東京都渋谷区渋谷3-19-1 オミビル地下1階", lat: 35.6576639, lng: 139.702712, phone: "03-3498-1324", smoking_num: 24, non_smoking_num: 36, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [9, 22], holiday: [9, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 52, name: "中野ブロートウェイ店", type: :cafe_miyama, address: "東京都中野区中野5-52-15-153　中野ブロードウェイ1階", lat: 35.7091706, lng: 139.6660352, phone: "03-3385-7366", smoking_num: 23, non_smoking_num: 23, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [8, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 53, name: "阿佐ヶ谷南口駅前店", type: :renoir, address: "東京都杉並区阿佐ヶ谷南2-14-10　倉橋ビル地下1階", lat: 35.7042458, lng: 139.6373182, phone: "03-3316-2096", smoking_num: 35, non_smoking_num: 24, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 54, name: "高円寺北口駅前店", type: :renoir, address: "東京都杉並区高円寺北2-4-4 一栄ビル2階", lat: 35.7058623, lng: 139.6505364, phone: "03-3336-1264", smoking_num: 24, non_smoking_num: 24, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 55, name: "巣鴨駅前店", type: :renoir, address: "東京都豊島区巣鴨1-15-1　宮田ビル2階", lat: 35.7331841, lng: 139.7399226, phone: "03-3942-9349", smoking_num: 52, non_smoking_num: 62, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: nil, before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 56, name: "池袋北口駅前店", type: :renoir, address: "東京都豊島区西池袋1-28-1　第二西池ビル2階", lat: 35.7313392, lng: 139.7106664, phone: "03-3988-9010", smoking_num: 36, non_smoking_num: 47, hours: [monday: [7.5, 23.5], tuesday: [7.5, 23.5], wednesday: [7.5, 23.5], thursday: [7.5, 23.5], friday: [7.5, 23.5], saturday: [7.5, 23.5], sunday: [8, 23], holiday: [8, 23], before_holiday: 23.5], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 57, name: "池袋パルコ横店", type: :renoir, address: "東京都豊島区東池袋1-42-8　第一イン池袋ビル地下1階", lat: 35.732142, lng: 139.7128801, phone: "03-5957-7085", smoking_num: 32, non_smoking_num: 28, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: nil, before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 58, name: "池袋東口店", type: :renoir, address: "東京都豊島区東池袋1-40-2 池袋旗ビル2階", lat: 35.7320865, lng: 139.7138439, phone: "03-3980-6352", smoking_num: 32, non_smoking_num: 38, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 59, name: "池袋サンシャイン中央通り店", type: :new_yorkers_cafe, address: "東京都豊島区東池袋1-2-7　ＯＫビル", lat: 35.7302034, lng: 139.7137273, phone: "03-5928-2118", smoking_num: 44, non_smoking_num: 39, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [7, 23], sunday: [7.5, 23], holiday: [7.5, 23], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 60, name: "日暮里東口店", type: :renoir, address: "東京都荒川区東日暮里5-51-11 静屋ビル2階", lat: 35.7282801, lng: 139.7721704, phone: "03-3802-2316", smoking_num: 42, non_smoking_num: 53, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 61, name: "金町店", type: :renoir, address: "東京都葛飾区東金町1-42-11　金子ﾋﾞﾙ1階", lat: 35.7703822, lng: 139.8710457, phone: "03-3600-1380", smoking_num: 35, non_smoking_num: 0, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 62, name: "立川北口駅前店", type: :renoir, address: "東京都立川市曙町2-13-10　賀屋登ビル2階", lat: 35.6987827, lng: 139.4151235, phone: "042-525-3917", smoking_num: 60, non_smoking_num: 38, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 63, name: "立川南口店", type: :renoir, address: "東京都立川市柴崎町3-4-14 ベルトリーサビル2階", lat: 35.6966135, lng: 139.4146569, phone: "042-521-3221", smoking_num: 29, non_smoking_num: 30, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 64, name: "三鷹北口駅前店", type: :renoir, address: "東京都武蔵野市中町1-6-7　朝日生命ビル1階及び2階", lat: 35.7038828, lng: 139.560364, phone: "042-253-0958", smoking_num: 47, non_smoking_num: 18, hours: [monday: [7, 22], tuesday: [7, 22], wednesday: [7, 22], thursday: [7, 22], friday: [7, 23], saturday: [7, 23], sunday: [7, 22], holiday: [7, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 65, name: "調布北口店", type: :new_yorkers_cafe, address: "東京都調布市布田1-41-2　原政ビル1階", lat: 35.6522587, lng: 139.5445986, phone: "042-488-9065", smoking_num: 40, non_smoking_num: 47, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7.5, 22], sunday: [8, 21.5], holiday: [8, 21.5], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 66, name: "町田中央通り店", type: :new_yorkers_cafe, address: "東京都町田市原町田4-9-8　サウスフロントタワー町田シエロ1階", lat: 35.5418066, lng: 139.4498816, phone: "042-739-4135", smoking_num: 56, non_smoking_num: 74, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [8, 22.5], holiday: [8, 22.5], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 67, name: "町田店", type: :new_yorkers_cafe, address: "東京都町田市森野1-13-14　日生町田ビル1階", lat: 35.544248, lng: 139.4431155, phone: "042-728-8749", smoking_num: 38, non_smoking_num: 36, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [7.5, 22], holiday: [7.5, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 68, name: "横浜伊勢佐木町店", type: :renoir, address: "神奈川県横浜市中区伊勢佐木町2-66　伊勢佐木町満利屋ﾋﾞﾙ2階", lat: 35.4436606, lng: 139.632026, phone: "045-252-7328", smoking_num: 63, non_smoking_num: 31, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: [7.5, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 69, name: "横浜関内駅前店", type: :renoir, address: "神奈川県横浜市中区港町2-6　横浜関内ビル2階", lat: 35.4441327, lng: 139.6367062, phone: "045-641-0223", smoking_num: 68, non_smoking_num: 68, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 70, name: "京急川崎駅前店", type: :renoir, address: "神奈川県川崎市川崎区砂子1-1-10　夏原ビル2階", lat: 35.5314085, lng: 139.7010596, phone: "044-211-8071", smoking_num: 38, non_smoking_num: 25, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 71, name: "川崎銀柳街店", type: :renoir, address: "神奈川県川崎市川崎区駅前本町3-3　ムラタビル2階", lat: 35.5297282, lng: 139.6991848, phone: "044-245-4164", smoking_num: 41, non_smoking_num: 35, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 23], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 72, name: "大船店", type: :renoir, address: "神奈川県鎌倉市大船1-7-1　サザンウインズ大船ビル2階", lat: 35.3537853, lng: 139.5322658, phone: "0467-44-9790", smoking_num: 35, non_smoking_num: 39, hours: [monday: [7.5, 22.5], tuesday: [7.5, 22.5], wednesday: [7.5, 22.5], thursday: [7.5, 22.5], friday: [7.5, 22.5], saturday: [8, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 73, name: "鎌倉駅前店", type: :renoir, address: "神奈川県鎌倉市小町1-6-19　アラビル2階", lat: 35.3194949, lng: 139.5511142, phone: "046-725-0452", smoking_num: 35, non_smoking_num: 39, hours: [monday: [8, 21], tuesday: [8, 21], wednesday: [8, 21], thursday: [8, 21], friday: [8, 21], saturday: [8, 21], sunday: [8, 21], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 74, name: "箱根湯本駅前店", type: :renoir, address: "神奈川県足柄下郡箱根町湯本白石下706-35 箱根登山鉄道湯本駅前ビル2階", lat: 35.2308553, lng: 139.1015186, phone: "0460-85-8379", smoking_num: 36, non_smoking_num: 46, hours: [monday: [8, 21], tuesday: [8, 21], wednesday: [8, 21], thursday: [8, 21], friday: [8, 21], saturday: [8, 21], sunday: [8, 21], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 75, name: "本八幡店", type: :renoir, address: "千葉県市川市八幡2-6-15　川長ビル地下1階", lat: 35.7223281, lng: 139.927838, phone: "047-334-9913", smoking_num: 36, non_smoking_num: 10, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [7.5, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply]),
    Shop.new(id: 76, name: "秋葉原昭和通り口店", type: :cafe_renoir, address: "東京都千代田区神田佐久間町1-18　信交ビル2階", lat: 35.69788339999999, lng: 139.7747021, phone: "03-5289-7270", smoking_num: 44, non_smoking_num: 33, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 77, name: "ヨドバシAkiba横店", type: :cafe_renoir, address: "東京都千代田区神田松永町5番 第二砂川ビル1階", lat: 35.699561, lng: 139.7748798, phone: "03-5298-7099", smoking_num: 34, non_smoking_num: 34, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 78, name: "ニュー秋葉原店", type: :renoir, address: "東京都千代田区外神田1-16-10 ニュー秋葉原センタービル地下1階", lat: 35.6973334, lng: 139.7726883, phone: "03-3251-0210", smoking_num: 35, non_smoking_num: 29, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [8, 21], holiday: [8, 21], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 79, name: "秋葉原店", type: :renoir, address: "東京都千代田区外神田1-11-6　小暮ビル2階", lat: 35.6995304, lng: 139.7710245, phone: "03-3253-2773", smoking_num: 30, non_smoking_num: 27, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 21], holiday: [8, 21], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 80, name: "銀座インズ店", type: :cafe_miyama, address: "東京都中央区銀座西1-2　銀座インズ3内1階", lat: 35.6707504, lng: 139.7694671, phone: "03-3564-2850", smoking_num: 18, non_smoking_num: 44, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 81, name: "西銀座店", type: :renoir, address: "東京都中央区銀座2-5-5　共同ビル西銀座1階", lat: 35.6739055, lng: 139.7669699, phone: "03-3567-7014", smoking_num: 39, non_smoking_num: 21, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 82, name: "ニュー銀座店", type: :renoir, address: "東京都中央区銀座2-8-15　共同ビル銀座通り2階", lat: 35.6727113, lng: 139.7676533, phone: "03-3567-3655", smoking_num: 72, non_smoking_num: 24, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [8, 23], sunday: [8, 23], holiday: nil, before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 83, name: "銀座昭和通り店", type: :renoir, address: "東京都中央区銀座2-11-6　竹田ビル1階", lat: 35.6723363, lng: 139.7690421, phone: "03-3545-4461", smoking_num: 34, non_smoking_num: 30, hours: [monday: [7.5, 22], tuesday: [7.5, 22], wednesday: [7.5, 22], thursday: [7.5, 22], friday: [7.5, 22], saturday: [7.5, 22], sunday: [7.5, 21], holiday: [7.5, 21], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 84, name: "銀座２丁目店", type: :renoir, address: "東京都中央区銀座2-7-18　藤田ビル地下1階", lat: 35.6733473, lng: 139.7675699, phone: "03-3561-3856", smoking_num: 59, non_smoking_num: 41, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 85, name: "歌舞伎座前店", type: :renoir, address: "東京都中央区銀座5-15-1　南海東京ビル2階", lat: 35.6685728, lng: 139.7677117, phone: "03-5565-1833", smoking_num: 50, non_smoking_num: 46, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 86, name: "日本橋三越前店", type: :cafe_renoir, address: "東京都中央区日本橋本町1-1　立石ビル1階", lat: 35.6849073, lng: 139.7765829, phone: "03-3278-0288", smoking_num: 36, non_smoking_num: 0, hours: [monday: [7.5, 20], tuesday: [7.5, 20], wednesday: [7.5, 20], thursday: [7.5, 20], friday: [7.5, 20], saturday: [7.5, 19], sunday: nil, holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 87, name: "赤坂見付店", type: :renoir, address: "東京都港区赤坂3-10-2 赤坂コマースビル2階", lat: 35.6763321, lng: 139.7366666, phone: "03-5549-4707", smoking_num: 40, non_smoking_num: 26, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [12, 18], holiday: [12, 18], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 88, name: "品川港南口店", type: :renoir, address: "東京都港区港南2-3-29 シ-ゲンビル1階", lat: 35.6291185, lng: 139.7429288, phone: "03-3450-1948", smoking_num: 37, non_smoking_num: 43, hours: [monday: [7, 22], tuesday: [7, 22], wednesday: [7, 22], thursday: [7, 22], friday: [7, 23], saturday: [8, 22], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 89, name: "田町三田口駅前店", type: :renoir, address: "東京都港区芝5-34-7 田町センタービル1階", lat: 35.6462388, lng: 139.7470472, phone: "03-3453-7761", smoking_num: 41, non_smoking_num: 26, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [8, 22], sunday: [9, 21], holiday: [9, 21], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 90, name: "芝大門店", type: :renoir, address: "東京都港区芝大門2-3-1　常泉ビル2階", lat: 35.6567072, lng: 139.753899, phone: "03-3431-9147", smoking_num: 52, non_smoking_num: 33, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 91, name: "新橋汐留口駅前店", type: :renoir, address: "東京都港区新橋2丁目21番1号　新橋駅前ビル2号館1階", lat: 35.6655396, lng: 139.7590318, phone: "03-3571-3077", smoking_num: 30, non_smoking_num: 42, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [7, 23], sunday: [8, 21], holiday: [8, 21], before_holiday: nil], options: [:myspace, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 92, name: "新橋サンルート店", type: :renoir, address: "東京都港区新橋4-10-2 ホテルサンルート新橋2階", lat: 35.6648702, lng: 139.7563014, phone: "03-5401-0734", smoking_num: 52, non_smoking_num: 26, hours: [monday: [7, 23], tuesday: [7, 23], wednesday: [7, 23], thursday: [7, 23], friday: [7, 23], saturday: [7, 20], sunday: [7, 20], holiday: [7, 20], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 93, name: "品川高輪口店", type: :renoir, address: "東京都港区高輪3-25-22　カネオビル1階", lat: 35.6304654, lng: 139.7378264, phone: "03-3447-7595", smoking_num: 78, non_smoking_num: 28, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [7.5, 22], holiday: [7.5, 22], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 94, name: "六本木ラピロス店", type: :renoir, address: "東京都港区六本木6-1-24　ラピロス六本木2階", lat: 35.6625031, lng: 139.7319203, phone: "03-3405-6440", smoking_num: 46, non_smoking_num: 48, hours: [monday: [8, 24], tuesday: [8, 24], wednesday: [8, 24], thursday: [8, 24], friday: [8, 24], saturday: [8, 24], sunday: [8, 23], holiday: [8, 23], before_holiday: 24.0], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 95, name: "西武新宿駅前店", type: :renoir, address: "東京都新宿区歌舞伎町1-26-6　灯ビル2階", lat: 35.6950399, lng: 139.7004663, phone: "03-5285-1405", smoking_num: 51, non_smoking_num: 30, hours: [monday: [7, 24], tuesday: [7, 24], wednesday: [7, 24], thursday: [7, 24], friday: [7, 24], saturday: [7, 24], sunday: [7, 24], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 96, name: "新宿靖国通り店", type: :renoir, address: "東京都新宿区歌舞伎町1丁目1番19号　同栄新宿ビル1階", lat: 35.6932347, lng: 139.7039882, phone: "03-3202-1870", smoking_num: 52, non_smoking_num: 44, hours: [monday: [8, 30], tuesday: [8, 30], wednesday: [8, 30], thursday: [8, 30], friday: [8, 30], saturday: [8, 30], sunday: [8, 23], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 97, name: "新宿歌舞伎町店", type: :renoir, address: "東京都新宿区歌舞伎町1-14-4　川新ビル2階", lat: 35.694565, lng: 139.7019745, phone: "03-3200-2076", smoking_num: 55, non_smoking_num: 28, hours: [monday: [9, 24], tuesday: [9, 24], wednesday: [9, 24], thursday: [9, 24], friday: [9, 24], saturday: [9, 24], sunday: [9, 24], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 98, name: "新宿３丁目ビックスビル店", type: :renoir, address: "東京都新宿区新宿2-19-1　ビッグスビル地下2階", lat: 35.691235, lng: 139.7077185, phone: "03-5379-2766", smoking_num: 40, non_smoking_num: 34, hours: [monday: [8, 22.5], tuesday: [8, 22.5], wednesday: [8, 22.5], thursday: [8, 22.5], friday: [8, 22.5], saturday: [8, 22.5], sunday: [9, 20], holiday: [9, 20], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :staff]),
    Shop.new(id: 99, name: "ニュー新宿３丁目店", type: :renoir, address: "東京都新宿区新宿3-4-1　東新宿ビル地下2階", lat: 35.6907822, lng: 139.7056298, phone: "03-3355-1299", smoking_num: 36, non_smoking_num: 54, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [7.5, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:myspace, :yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 100, name: "新宿アルタ横店", type: :renoir, address: "東京都新宿区新宿3-24-2 アオキビル地下1階", lat: 35.6925652, lng: 139.7013885, phone: "03-3356-3738", smoking_num: 36, non_smoking_num: 30, hours: [monday: [7, 24], tuesday: [7, 24], wednesday: [7, 24], thursday: [7, 24], friday: [7, 24], saturday: [8, 24], sunday: [8, 24], holiday: [8, 24], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 101, name: "高田馬場１丁目店", type: :new_yorkers_cafe, address: "東京都新宿区高田馬場1-33-13　千年ビル1階", lat: 35.7114104, lng: 139.7038819, phone: "03-3208-9037", smoking_num: 48, non_smoking_num: 61, hours: [monday: [7, 22.5], tuesday: [7, 22.5], wednesday: [7, 22.5], thursday: [7, 22.5], friday: [7, 22.5], saturday: [7, 22.5], sunday: [7.5, 22.5], holiday: [7.5, 22.5], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 102, name: "高田馬場２丁目店", type: :renoir, address: "東京都新宿区高田馬場2-18-6　柳屋ビル1階", lat: 35.7139962, lng: 139.7050011, phone: "03-3209-1727", smoking_num: 51, non_smoking_num: 33, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 103, name: "西新宿西鉄イン店", type: :renoir, address: "東京都新宿区西新宿7-23-2　西鉄イン1階", lat: 35.6944342, lng: 139.6944698, phone: "03-3371-3547", smoking_num: 25, non_smoking_num: 30, hours: [monday: [7, 22], tuesday: [7, 22], wednesday: [7, 22], thursday: [7, 22], friday: [7, 22], saturday: [7, 22], sunday: [7, 20], holiday: [7, 20], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 104, name: "四谷店", type: :renoir, address: "東京都新宿区四谷1-3-22", lat: 35.6863529, lng: 139.7290972, phone: "03-3351-1052", smoking_num: 50, non_smoking_num: 32, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23.5], saturday: [7.5, 23], sunday: [8, 23], holiday: [8, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 105, name: "上野公園前店", type: :cafe_renoir, address: "東京都台東区上野2-13-13　キクヤビル地下1階", lat: 35.7100098, lng: 139.7731878, phone: "03-3831-3603", smoking_num: 20, non_smoking_num: 32, hours: [monday: [8, 23], tuesday: [8, 23], wednesday: [8, 23], thursday: [8, 23], friday: [8, 23], saturday: [8, 23], sunday: [9, 23], holiday: [9, 23], before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 106, name: "御徒町南口駅前店", type: :renoir, address: "東京都台東区上野3丁目27-1　十仁タワー　2階", lat: 35.707038, lng: 139.7743351, phone: "", smoking_num: 34, non_smoking_num: 53, hours: [monday: [7.5, 23], tuesday: [7.5, 23], wednesday: [7.5, 23], thursday: [7.5, 23], friday: [7.5, 23], saturday: [8, 23], sunday: [8, 22], holiday: [8, 22], before_holiday: nil], options: [:ld_wireless, :rakutenedy, :supply, :staff]),
    Shop.new(id: 107, name: "中野サンプラザ前店", type: :renoir, address: "東京都中野区中野5-67-5　長谷部ビル2階", lat: 35.7081957, lng: 139.6653825, phone: "03-3388-2477", smoking_num: 47, non_smoking_num: 0, hours: [monday: [8, 22], tuesday: [8, 22], wednesday: [8, 22], thursday: [8, 22], friday: [8, 22], saturday: [8, 22], sunday: [8, 22], holiday: nil, before_holiday: nil], options: [:yahoobb, :ld_wireless, :rakutenedy, :supply])
  ]

  def search(lat,lng,time,options) do
    options = Enum.filter options, fn(x) ->
      elem(x,1) == "1"
    end
    options = Enum.map options, fn({name,flg}) ->
      binary_to_atom name
    end
    shops = Enum.filter @shops, fn(shop) ->
      filter_options(shop, options)
    end
    shops = Enum.filter shops, fn(shop) ->
      filter_time(shop, time)
    end
    List.sort shops, fn(a,b) ->
      distance(a,lat,lng) <= distance(b,lat,lng)
    end
  end

  defp filter_options(Shop[options: s_options], options) do
    Enum.all? options, fn(option) ->
      List.member? s_options, option
    end
  end

  defp filter_time(Shop[hours: hours], time) do
    today = DateTime.parse(time)
    yesterday = DateTime.yesterday(today)
    tomorrow = DateTime.tomorrow(today)
    t = [hour: today.hour + today.minute/60.0 ,wday: DateTime.wday_name(today), holiday: DateTime.holiday?(today), before_holiday: DateTime.holiday?(tomorrow) ]
    y = [hour: yesterday.hour + yesterday.minute/60.0 + 24 ,wday: DateTime.wday_name(yesterday), holiday: DateTime.holiday?(yesterday), before_holiday: DateTime.holiday?(today) ]
      Enum.any? [t,y], fn(day) ->
        open = nil
        close = nil
        if day[:before_holiday] && !close do
          close = hours[:before_holiday]
        end

        h = hours[:holiday]
        if day[:holiday] && h do
          if !open do
            [open,_] = h
          end
          if !close do
            [_,close] = h
          end
        end

        t = hours[day[:wday]]
        if t && !open do
          open = Enum.at! t, 0
        end
        if t && !close do
          close = Enum.at! t, 1
        end

        if !open || !close do
          false
        else
          day[:hour] > open && day[:hour] < close
        end
      end
  end

  defp distance(Shop[lat: s_lat, lng: s_lng], lat, lng) do
    y1 = s_lat * :math.pi / 180
    x1 = s_lng * :math.pi / 180
    y2 = lat * :math.pi / 180
    x2 = lng * :math.pi / 180
    earth_r = 6378140

    deg = :math.sin(y1) * :math.sin(y2) + :math.cos(y1) * :math.cos(y2) * :math.cos(x2 - x1)
    earth_r * (:math.atan(-deg / :math.sqrt(-deg * deg + 1)) + :math.pi / 2) / 1000
  end

  def find(id) do
    shops = Enum.filter @shops, fn(shop) ->
      shop.id == id
    end
    Enum.first shops
  end

  def label(Shop[type: type, name: name]) do
   "#{type_name(type)} #{name}"
  end

  def type_name(Shop[type: type]) do
    type_name(type)
  end

  def type_name(type) do
    case type do
      :renoir ->
        '喫茶室ルノアール'
      :cafe_renoir ->
        'Cafeルノアール'
      :new_yorkers_cafe ->
        'NEW YORKERS Cafe'
      :cafe_miyama ->
        'Cafe Miyama'
    end
  end

  def address_without_building(Shop[address: address]) do
    [a, _] = String.split address, [" ", "　"]
    a
  end

  def valid_option?(option) do
    List.member? [:yahoobb, :ld_wireless, :rakutenedy, :copy, :supply, :myspace], option
  end

  def option_name(option) do
    case option do
      :yahoobb ->
        'BBモバイルポイント'
      :ld_wireless ->
        'livedoor wireless'
      :rakutenedy ->
        'Edy'
      :copy ->
        'コピー機'
      :supply ->
        '電源'
      :myspace ->
        'マイスペース/ビジネススペース'
    end
  end

  def sorted_hours(Shop[hours: hours]) do
    List.sort hours, fn(a,b) -> val(elem(a,0)) <= val(elem(b,0)) end
  end

  def val(day) do
    case day do
      :monday ->
        1
      :tuesday ->
        2
      :wednesday ->
        3
      :thursday ->
        4
      :friday ->
        5
      :saturday ->
        6
      :sunday ->
        7
      :holiday ->
        8
      :before_holiday ->
        9
    end
  end

  def day_statement(:before_holiday, close) do
    "※祭日前日は#{hour_to_hourmin(close)}まで営業"
  end

  def day_statement(day, [open,close]) do
    weekdays = [monday: "月曜", tuesday: "火曜", wednesday: "水曜", thursday: "木曜", friday: "金曜", saturday: "土曜", sunday: "日曜", holiday: "祝日"]
    if weekdays[day] do
      "#{weekdays[day]} : #{hour_to_hourmin(open)} - #{hour_to_hourmin(close)}"
    end
  end

  def hour_to_hourmin(hour) do
    if hour > 24 do
      h = "翌#{trunc(hour) - 24}"
    else
      h = trunc hour
    end
    min = trunc((hour - trunc(hour))*60)
    min = binary_to_list "0" <> "#{min}"
    l = length(min)
    if l == 2 do
      m = list_to_binary(min)
    else
      m = "#{list_to_integer(min)}"
    end
    "#{h}:#{m}"
  end
end
