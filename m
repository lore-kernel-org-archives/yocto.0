Subject: need support for QPSQL plugins for PostgreSQL in rootfs created with Rocko version #qt5 #rocko
To: yocto@lists.yoctoproject.org
From: "rohit jadhav" <rohitbjadhav1@gmail.com>
X-Originating-Location: Pune, Maharashtra, IN (157.33.93.48)
X-Originating-Platform: Linux Firefox 66
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 21 Apr 2021 10:31:15 -0700
Message-ID: <CFX3.1619026275548673974.MSFP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="h5tXufukgomHcDYaz3fM"

--h5tXufukgomHcDYaz3fM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have created Rootfs with Rocko build=C2=A0 for imx6. I am trying to use q=
t application with PostgreSQL database.
Not able to access database.
Showing log like :
QSqlDatabase: QPSQL driver not loaded
QSqlDatabase: available drivers:
"Driver not loaded Driver not loaded"

Is related to qtdeclarative-plugins?
If yes if I try to include it in local.conf and try to build then it showi=
ng error :
qtdeclarative-plugins
No package qtdeclarative-plugins available.

It was working with Krogoth.

OR
To include QPSQL in rootfs did missed any Package in my=C2=A0 Rocko build =
?

Please guide me in this regards

Thanks and Regards
Rohit J

--h5tXufukgomHcDYaz3fM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have created Rootfs with Rocko build&nbsp; for imx6. I am trying to use q=
t application with PostgreSQL database.<br />Not able to access database.<b=
r />Showing log like :<br />QSqlDatabase: QPSQL driver not loaded<br />QSql=
Database: available drivers: <br />"Driver not loaded Driver not loaded"<br=
 /><br />Is related to qtdeclarative-plugins?<br />If yes if I try to inclu=
de it in local.conf and try to build then it showing error :<br />qtdeclara=
tive-plugins<br />No package qtdeclarative-plugins available.<br /><br />It=
 was working with Krogoth.<br /><br />OR <br />To include QPSQL in rootfs d=
id missed any Package in my&nbsp; Rocko build ?<br /><br />Please guide me =
in this regards<br /><br />Thanks and Regards<br />Rohit J

--h5tXufukgomHcDYaz3fM--
