//Hanneka Rose Puri
import React from 'react';

class BookList extends React.Component{
    render () {
    return (
        <div>
            <ol>
            <h3>Book List</h3>
            <div class="flex-container">
            <div>
            <p>A Gentle Reminder</p>
            <img src="https://images.renaud-bray.com/images/PG/3664/3664468-gf.jpg?404=404RB.gif"></img>
            </div>
            <div>
            <p>I Decided to Live as Me</p>
            <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1564565446i/44420389.jpg"></img>
            </div>
            <div>
            <p>The Mountain is You</p>
            <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1590806892i/53642699.jpg"></img>
            </div>
            </div>
            </ol>
        </div>
        );
    }
}

    export default BookList;