const birdModel = require('../models/bird.model');
const { getUserId } = require('../models/account.model');

module.exports = {
    getAllRegistedBird: async (req, res, next) => {
        try {
            const email = req.payload.email;
            const result = await birdModel.getAllRegistedBird(email);
            if (result.length === 0) {
                res.status(404).send({
                    exitcode: 101,
                    message: "No bird found"
                })
            } else {
                const birdList = result.map(item => ({
                    type_name: item.type_name,
                    age: item.age,
                    bird_name: item.bird_name,
                    breed: item.breed,
                    gender: item.gender,
                    image: item.image,
                    description: item.description,
                    // boarding: item.boarding
                }))
                res.status(200).send({
                    exitcode: 0,
                    message: "Get bird list successfully",
                    birds: birdList
                })
            }
        } catch (error) {
            next(error);
        }
    },
    registerNewBird: async (req, res, next) => {
        try {
            const email = req.payload.email;
            const { bird_name,
                bird_type,
                age, 
                gender,
                breed,
                description,
                image } = req.body;
            const birdTypeId = await birdModel.getBirdTypeId(bird_type);
            const user_id = await getUserId(email);
            const birdDetail = {
                user_id: user_id,
                type_id: birdTypeId,
                bird_name: bird_name,
                age: age,
                gender: gender,
                breed: breed,
                description: description,
                image: image
            }
            const result = await birdModel.registerNewBird(birdDetail);
            if (result > 0) {
                res.status(201).send({
                    exitcode: 0,
                    message: "Register new bird successfully"
                })
            } else {
                res.status(400).send({
                    exitcode: 101,
                    message: "Register new bird failed"
                })
            }
        } catch (error) {
            next(error);
        }
    },
    getBirdById: async (req, res, next) => {
        try {
            const bird_id = req.params.bird_id;
            const result = await birdModel.getBirdById(bird_id);
            if (result === null) {
                res.status(404).send({
                    exitcode: 101,
                    message: "No bird found"
                })
            } else {
                const birdInfo = {
                    type_name: result.type_name,
                    age: result.age,
                    bird_name: result.bird_name,
                    breed: result.breed,
                    gender: result.gender,
                    image: result.image,
                    description: result.description,
                }
                res.status(200).send({
                    exitcode: 0,
                    message: "Get bird info successfully",
                    bird: birdInfo
                })
            }
        } catch (error) {
            next(error);
        }
    },
    updateBirdById: async (req, res, next) => {
        try {
            const bird_id = req.params.bird_id;
            const { bird_name,
                bird_type,
                age, 
                gender,
                breed,
                description,
                image } = req.body;
            const birdTypeId = await birdModel.getBirdTypeId(bird_type);
            const updateDetail = {
                bird_id: bird_id,
                type_id: birdTypeId,
                bird_name: bird_name,
                age: age,
                gender: gender,
                breed: breed,
                description: description,
                image: image
            }
            const result = await birdModel.updateBirdById(updateDetail);
            if (result === 0) {
                res.status(404).send({
                    exitcode: 101,
                    message: "Bird update failed"
                })
            } else {
                res.status(200).send({
                    exitcode: 0,
                    message: "Bird updated successfully"
                })
            }
        } catch (error) {
            next(error);
        }
    },
    deleteBirdById: async (req, res, next) => {
        try {
            const bird_id = req.params.bird_id;
            const result = await birdModel.deleteBirdById(bird_id);
            if (result === 0) {
                res.status(404).send({
                    exitcode: 101,
                    message: "No bird found"
                })
            } else {
                res.status(200).send({
                    exitcode: 0,
                    message: "Bird deleted successfully"
                })
            }
        } catch (error) {
            next(error);
        }
    },
}