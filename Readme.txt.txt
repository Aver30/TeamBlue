HOW TO LIST ALL EVENTS:
<h2>Setting Up the List Page and Detail Page</h2>
<p>When someone visits the site, 
you can show them a list of the people who have signed up. Each name on the list can be clicked to take the user to a detail page showing all the public information 
in their record. This is how to set that up:</p>
<ol>
<li>Place the &#8220;&#91;pdb_list]&#8221; shortcode on the page where you want the list of participants to go.
</li>
<li>On the &#8220;Manage Database Fields&#8221; page you can determine which fields get shown in the list and which column they will be in. 
This is under the &#8220;Display&#8221; column and you give each field you want to show a number which determines which column the field will appear in. 
Zero means it won&#8217;t show at all.</li>
<li>On the page where you want the record detail to show, place the &#8220;&#91;pdb_single]&#8221; shortcode. 
This page won&#8217;t show anything unless it is visited using a link with the ID of the record to show in it. 
For example: <pre>/participants/detail?pdb=27</pre></li>
<li>
On the plugin settings page, under the &#8220;List Display&#8221; tab, set the &#8220;Single Record Link Field&#8221; 
to the field in the list (like 'first_name') where you want the link to the detail page to go.</li>
<li>Next, set the &#8220;Single Record Page&#8221;
 setting to point to the page where you put the &#8220;&#91;pdb_single]&#8221; shortcode.</li>
</ol>
<p>Now, go to the &#8220;Add Participant&#8221; 
page in the admin and enter a test record. You can now test the plugin functions to see how it all works.</p>
<?php } ?>
</div>