import axios from "axios";
import { getCookie } from "../../utils/api";

// const accessToken = JSON.parse(localStorage.getItem('token'))
const APIapp=axios.create({
    baseURL: "http://localhost:8080/api/v1",
    headers: {
        // token: Cookies.get('token'),
        Authorization: getCookie('Authorization'),
    },
})

export default APIapp
