//Hanneka Rose Puri
import React from 'react';

class MovieList extends React.Component{
    render () {
    return (
        <div>
            <ol>
            <h3>Movie List</h3>
            <div class="flex-container">
            <div>
            <p>Rewind</p>
            <img src="https://m.media-amazon.com/images/M/MV5BOTVlNWEyNmMtYmI0ZC00NWJlLTgyZGItMmE5MWYxNTAyZDRlXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_FMjpg_UX1000_.jpg"></img>
            </div>
            <div>
            <p>My Demon</p>
            <img src="https://upload.wikimedia.org/wikipedia/en/0/05/My_Demon.jpg"></img>
            </div>
            <div>
            <p>Twilight</p>
            <img src="https://m.media-amazon.com/images/M/MV5BNDMwNjAzNzYwOF5BMl5BanBnXkFtZTcwMDY5NzcyMw@@._V1_FMjpg_UX1000_.jpg"></img>
            </div>
            </div>
            </ol>
        </div>
        );
    }
}

    export default MovieList;