class Restaurant(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name="restaurant")
    name = models.CharField(max_length=255)
    description = models.TextField()
    location = models.CharField(max_length=255)
    image = models.ImageField(upload_to="restaurant_images/")
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
