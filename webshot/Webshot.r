library(webshot)

webshot(url = "https://www.hbo.com/", file = "hbo.png")
# можно сохранять также в pdf
# webshot("https://www.hbo.com/", file = "hbo.pdf")

library(magick, quietly = TRUE)
hbo <- image_read("hbo.png")
print(hbo)

webshot(url = "https://www.hbo.com/", 
        file = "hbo.png", 
        cliprect = "viewport")

print(image_read("hbo.png"))

webshot(url = "https://www.hbo.com/", 
        file = "hbo.png", 
        selector = ".image-click-container")
print(image_read("hbo.png"))

webshot(url = "https://www.hbo.com/", 
        file = "hbo.png", 
        selector = ".image-click-container", 
        expand = c(200, 100, 200, 100))
print(image_read("hbo.png"))

webshot(url = "https://www.hbo.com/", 
        file = "hbo.png", 
        selector = ".image-click-container", 
        zoom = 0.5)
print(image_read("hbo.png"))

webshot(c("https://www.hbo.com/", "https://www.lostfilm.tv/"),
        file = c("hbo.png", "lostfilm.png"), 
        cliprect = "viewport")
print(image_read("hbo.png"))

print(image_read("lostfilm.png"))

webshot("https://www.lostfilm.tv/", file = c("lost.png", "lost.pdf"))

webshot(url = "https://www.hbo.com/",
        vwidth = 850, 
        vheight = 700,
        file = "hbo.png", 
        cliprect = "viewport")

print(image_read("hbo.png"))
