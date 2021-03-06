<h1>$PhotoAlbum.Name</h1>
<% if PhotoAlbum.Description %><p>$PhotoAlbum.Description</p><% end_if %>
       <% if PaginatedPhotos %>
          <ul id="album-photos">
          <% loop PaginatedPhotos %>
            <li class="album-photo">
              <a href="$PhotoSized(800,800).URL" rel="prettyPhoto[gallery]"><img src="$PhotoCropped(125,125).URL" alt="$Caption" /></a>
            </li>
          <% end_loop %>
          </ul>
          
          <% if PaginatedPhotos.MoreThanOnePage %>
             <% if PaginatedPhotos.NotFirstPage %>
                 <a class="prev" href="$PaginatedPhotos.PrevLink">Prev</a>
             <% end_if %>
             <% loop PaginatedPhotos.Pages %>
                 <% if CurrentBool %>
                     $PageNum
                 <% else %>
                     <% if Link %>
                         <a href="$Link">$PageNum</a>
                     <% else %>
                         ...
                     <% end_if %>
                 <% end_if %>
                 <% end_loop %>
             <% if PaginatedPhotos.NotLastPage %>
                 <a class="next" href="$PaginatedPhotos.NextLink">Next</a>
             <% end_if %>
         <% end_if %>
          
         <% else %>
          <p>There are no photos in this album.</p> 
        <% end_if %>
        
        <% if OtherAlbums %>
        <h3>Other Albums</h3>
        <ul class="button-list">
        <% loop OtherAlbums %>
          <li><a href="$Link">$Name</a></li>
        <% end_loop %>
        </ul>
      <% end_if %>
<% require javascript(http://code.jquery.com/jquery-1.7.2.min.js) %>
<% require javascript(photogallery/prettyPhoto/js/jquery.prettyPhoto.js) %>
<% require javascript(photogallery/js/prettyPhoto_init.js) %>