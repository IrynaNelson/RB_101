def color_valid(color)
  valid_colors = ["blue", "green"]
  valid_colors.include?(color)
end

p color_valid("pink")