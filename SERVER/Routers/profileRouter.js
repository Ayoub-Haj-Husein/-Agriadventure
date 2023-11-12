const { Router } = require("express");
const profileController = require("../Controllers/profileController"); 
const router = Router();

router.put("/Update_Information_Profile", profileController.imageProfile, profileController.updateProfile)
router.get("/Get_Information_Profile/:id", profileController.imageProfile, profileController.getProfile)

module.exports = router;