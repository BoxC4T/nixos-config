let
  userName = "cat";
  email = "lukas.cat099099@gmail.com";
in
{
    programs.git = {
    	enable = true;
    	settings.user = {
        	name = userName;
        	email = email;
	};
    };
}
