
def make_gearset(chainring, cog)
  Gear.new(chainring.to_i, cog.to_i)
end

def get_precision(num)
  str_num = num.to_s
  str_num.include?('.') ? str_num.length - str_num.index('.') - 1 : 0
end
