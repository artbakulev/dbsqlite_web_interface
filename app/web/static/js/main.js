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
        if (td.querySelector('input') !== null || td.querySelector('div') !== null) return;
        let tr = td.parentElement;
        let btn = tr.querySelector('.submit-row');
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
tableBody = document.querySelector('tbody');


let deleteNewRowButtons = document.querySelectorAll('.delete-new-row');
let submitNewRowButtons = document.querySelectorAll('.submit-new-row');

let addNewRow = () => {
    let colsNumber = document.querySelectorAll('th[scope="col"]').length - 1;
    let rows = document.querySelectorAll('th[scope="row"]');
    let newIndex = parseInt(rows[rows.length - 1].innerText) + 1;
    let row = document.createElement('tr');
    let cols = '';

    for (let i = 0; i < colsNumber; i++) {
        cols += `<td>` + `<input class="form-control" type="text">` + `</td>`
    }

    row.innerHTML = `<th scope="row">` + newIndex + ` </th>`
        + cols +
        `<td>
        <div class="btn btn-outline-danger delete-new-row">удалить</div>
        <div class="btn btn-outline-success submit-new-row">применить</div>
     </td>`;
    tableBody.appendChild(row);
    deleteNewRowButtons = document.querySelectorAll('.delete-new-row');
    submitNewRowButtons = document.querySelectorAll('.submit-new-row');
    deleteNewRowButtons.forEach(item => item.addEventListener('click', deleteNewRow));
    submitNewRowButtons.forEach(item => item.addEventListener('click', submitNewRow));
};


let deleteNewRow = (e) => {
    const btn = e.currentTarget;
    const tr = btn.parentElement.parentElement;
    tr.parentElement.removeChild(tr);
};


let submitNewRow = (e) => {
    const btn = e.currentTarget;
    const tr = btn.parentElement.parentElement;
    const index = tr.querySelector('th').innerText - 0;
    const tds = tr.querySelectorAll('td');
    const tds_values = [index];
    tds.forEach((td) => {
        let input = td.querySelector('input');
        if (input !== null) {
            tds_values.push(input.value);
        }
    });
    let resp = fetch(document.location, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({'values': tds_values})
    }).then(() => {
        tds.forEach((td) => {
            let input = td.querySelector('input');
            if (input === null) {
                td.removeChild(td.querySelector('div'));
                td.removeChild(td.querySelector('div'));
                td.parentElement.removeChild(td);
                return;
            }
            let value = input.value;
            td.removeChild(input);
            td.innerText = value;
            changeValue(td);
        })
    }).then(() => {
        let deleteRowBtn = document.createElement('td');
        deleteRowBtn.innerHTML = `<div class="btn btn-outline-danger delete-row">удалить</div>`;
        let submitRowBtn = document.createElement('td');
        submitRowBtn.innerHTML = `<div class="btn btn-outline-success invisible submit-row">применить</div>`;
        tr.appendChild(deleteRowBtn);
        deleteRow(deleteRowBtn);
        tr.appendChild(submitRowBtn);
    });
};

const deleteRowBtns = document.querySelectorAll('.delete-row');

const deleteRow = (btn) => {
    btn.addEventListener('click', (e) => {
        const tr = btn.parentElement.parentElement;
        const index = tr.querySelector('th').innerText - 0;
        let resp = fetch(document.location, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify({'index': index})
        }).then(() => {
            tr.classList.add('d-none');
        })
    })

};

deleteRowBtns.forEach((btn) => deleteRow(btn));


const submitRowBtns = document.querySelectorAll('.submit-row');

const submitRow = (btn) => {
    btn.addEventListener('click', (e) => {
        const tr = btn.parentElement.parentElement;
        const index = tr.querySelector('th').innerText - 0;
        const values = [];
        tr.querySelectorAll('td').forEach((td) => {
            if (td.querySelector('div') !== null) return;
            if (td.querySelector('input') !== null) {
                values.push(td.querySelector('input').value);
                return;
            }
            values.push(td.innerText);
        });
        let resp = fetch(document.location, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify({'index': index, 'values': values})
        }).then(() => {
            tr.querySelector('.submit-row').classList.add('invisible');
        })
    })
};

submitRowBtns.forEach((btn) => submitRow(btn));
