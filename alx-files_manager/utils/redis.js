const redis = require('redis');
const {promisify} = require("util");


class RedisClient{
    constructor(){
        const client = redis.createClient();
        client.on("error", (error) => {
            console.log(error);
        });
    }
    isAlive(){
        client.on("connect", () => {
            return true;
        } );
        return false;
    }

    async get(key){
        const getAsync = promisify(this.client.get).bind(this.client);
        try{
            const value = await getAsync(key, (error, result) => {
                if (error) {
                    throw new Error()}
                else{
                    return result;
                }
            })
            return value;
        } catch(error){
            console.log(error);
        }
    }
}