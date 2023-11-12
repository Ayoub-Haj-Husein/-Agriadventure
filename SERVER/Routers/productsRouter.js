router.get("/All_products", authenticateToken.authorize(["admin", "superuser", "user"]), productController.allProducts);
router.get("/Get_Product_By_Id/:id", authenticateToken.authorize(["admin", "superuser", "user"]), productController.getBroductById);
router.get("/Get_Products_By_Category/:category", authenticateToken.authorize(["admin", "superuser", "user"]), productController.getProductsByCategory);
router.post("/Add_New_product", authenticateToken.authorize(["admin", "superuser"]), productController.imageProduct, productController.addNewProduct);
router.put("/Update_Product_By_Id/:id", authenticateToken.authorize(["admin", "superuser"]), productController.imageProduct, productController.updateProductById);
router.delete("/Delete_Product_By_Id/:id", authenticateToken.authorize(["admin"]), productController.deleteProductById);