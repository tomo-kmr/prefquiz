Pref.connection.execute("TRUNCATE TABLE prefs;")
# 追加するデータを記載する
prefs = [
  {region_no: 1, pref_name: "北海道"},
  {region_no: 1, pref_name: "青森県"},
  {region_no: 1, pref_name: "秋田県"},
  {region_no: 1, pref_name: "岩手県"},
  {region_no: 1, pref_name: "山形県"},
  {region_no: 1, pref_name: "宮城県"},
  {region_no: 1, pref_name: "福島県"},
  {region_no: 1, pref_name: "千葉県"},
  {region_no: 1, pref_name: "埼玉県"},
  {region_no: 1, pref_name: "群馬県"},
  {region_no: 1, pref_name: "栃木県"},
  {region_no: 1, pref_name: "茨城県"},
  {region_no: 1, pref_name: "神奈川県"},
  {region_no: 1, pref_name: "東京都"},
  {region_no: 1, pref_name: "山梨県"},
  {region_no: 1, pref_name: "長野県"},
  {region_no: 1, pref_name: "新潟県"},
  {region_no: 1, pref_name: "富山県"},
  {region_no: 1, pref_name: "石川県"},
  {region_no: 1, pref_name: "福井県"},
  {region_no: 1, pref_name: "静岡県"},
  {region_no: 1, pref_name: "愛知県"},
  {region_no: 1, pref_name: "三重県"},
  {region_no: 1, pref_name: "岐阜県"}

]

Pref.create(prefs)