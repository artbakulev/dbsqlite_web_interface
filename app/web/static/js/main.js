let tds = document.querySelectorAll('td');

const createInput = (value, size) => {
    let input = document.createElement('input');
    input.classList.add('form-control');
    input.value = value;
    input.type = 'text';
    input.size = '' + size;
    return input;
};

const changeValue = (td) => {
    td.addEventListener('click', (e) => {
        let td = e.currentTarget;
        if (td.querySelector('input') !== null) return;
        let tr = td.parentElement;
        let btn = tr.querySelector('.btn');
        btn.classList.remove('invisible');
        let value = td.innerText;
        let input = createInput(value, value.length);
        td.innerText = '';
        td.appendChild(input);
        input.focus();
        td.removeEventListener('click', changeValue);
    });

    td.addEventListener('focusout', (e) => {
        let td = e.currentTarget;
        let input = td.querySelector('input');
        let value = input.value;
        td.removeChild(input);
        td.innerText = value;
    })
};

tds.forEach((td) => changeValue(td));


const addNewRowBtn = document.getElementById('add-new-row-btn');

addNewRowBtn.addEventListener('click', () => addNewRow());


let addNewRow = () => {

};