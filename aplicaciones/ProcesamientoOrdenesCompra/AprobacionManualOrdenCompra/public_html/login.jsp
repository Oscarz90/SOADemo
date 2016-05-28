<html>
  <head>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Login</title>
    <style>html {visibility:hidden;}</style>
    <script>
       if (self == top) {
          document.documentElement.style.visibility = 'visible';
       } else {
          top.location = self.location;
       }
    </script>
  </head>
  <% response.addHeader("X-FRAME-OPTIONS", "DENY"); %>
  <body><form method="POST" action="j_security_check" autocomplete="off">
      <table cellspacing="2" cellpadding="3" border="1">
        <tr>
          <th>
            Username:
          </th>
          <td>
            <input type="text" name="j_username" autocomplete="off"/>
          </td>
        </tr>
        <tr>
          <th>
            Password:
          </th>
          <td>
            <input type="password" name="j_password" autocomplete="off"/>
          </td>
        </tr>
      </table>
      <p>
        <input type="submit" name="submit" value="Submit"/>
      </p>
    </form></body>
</html>
