# selenium-webdriverを取り込む
require 'selenium-webdriver'

# ブラウザの起動
driver = Selenium::WebDriver.for :chrome
# 10秒待っても読み込まれない場合は、エラーが発生する
driver.manage.timeouts.implicit_wait = 10
# ブラウザで特定のURLにアクセスします。
driver.get('https://jp.mercari.com/item/m46996242475')

# HTMLを取得
element = driver.find_element(:xpath, "//div[@data-testid='checkout-button-container']//button")
value = element.text

puts value

# 5秒遅延
sleep(5)

# ブラウザを終了
driver.quit