module BoxesHelper

  def build_box(box)
    10.times do
      box.items.build
    end
    box
  end

end
