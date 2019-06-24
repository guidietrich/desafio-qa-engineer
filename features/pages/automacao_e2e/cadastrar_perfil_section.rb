class CadastroPerfil < SitePrism::Section

  require 'date'
  
  element :addresses_menu, :xpath, "//a[contains(text(),'Addresses')]"
  element :new_address, :xpath,    "//a[@class='row justify-content-center']"

  def acessar_cadastro
    addresses_menu.click
  end

  def criar_perfil
    new_address.click
  end

  element :first_name,    "#address_first_name"
  element :last_name,     "#address_last_name"
  element :addresses1,    "#address_street_address"
  element :addresses2,    "#address_secondary_address"
  element :city, :xpath,  "//label[@for='address_city']/following-sibling::input[1]"
  element :zip_code,      "#address_zip_code"
  element :country_us,    "#address_country_us"
  element :country_ca,    "#address_country_canada"
  element :birthday,      "#address_birthday"
  element :age,           "#address_age"
  element :website,       "#address_website"
  element :picture,       "#address_picture"
  element :phone,         "#address_phone"
  element :climbing,      "#address_interest_climb"
  element :dancing,       "#address_interest_dance"
  element :reading,       "#address_interest_read"
  element :note,          "#address_note"
  element :create_address,".btn.btn-primary"

  def preencher_campos
    first_name.set        Faker::Name.first_name
    last_name.set         Faker::Artist.name
    addresses1.set        Faker::Address.street_address
    addresses2.set        Faker::Address.secondary_address
    city.set              Faker::Address.city
    select(               Faker::Address.state, from: "address_state").select_option
    zip_code.set          Faker::Address.zip_code
    country_us.choose
    birthday_calc =       Faker::Date.birthday(18, 80)
    birthday.set          birthday_calc
    page.execute_script("document.getElementById('address_color').setAttribute('value', '#ffc107')")
    age.set               (Date.today - birthday_calc).to_i / 365
    website.set           URL["signup"]
    attach_file("address_picture", "C:\img.jpg")
    phone.set             Faker::PhoneNumber.phone_number
    common_interests =    [climbing, dancing, reading]
    common_interests.each {|type| type.check }
    note.set              Faker::Movies::StarWars.quote("yoda")
  end

  def salvar
    create_address.click
  end
end