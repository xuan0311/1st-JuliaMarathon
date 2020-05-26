using DataFrames, CSV

df = CSV.read("04-02-2020.csv")

# 請在此輸入程式碼
df2 = by(df, :Country_Region,(:Confirmed => sum))
first(sort(df2,[2],rev=true),10)
# 顯示所有資料

first(sort(df2,:Confirmed_sum,rev=true),10)

# 使用 order, 結果與上例完全相同
first(sort(df2, (order(:Confirmed_sum, rev=true))),10)


