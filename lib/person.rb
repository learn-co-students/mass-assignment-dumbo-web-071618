class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(args)
    args.each do |key,value|
      if self.respond_to? "#{key}=".to_sym
        self.send("#{key}=", value)
      end
    end
  end      
end
