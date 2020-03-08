const doPost = (url, body) => {
    return fetch(url, body).catch((e) => {console.log(e)});
};


