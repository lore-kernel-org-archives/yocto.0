Subject: Problems finding a Command when using a cmake recipe in eSDK #yocto #sdk
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: Limburg an der Lahn, Hesse, DE (37.58.58.231)
X-Originating-Platform: Linux Firefox 60
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 05:31:26 -0700
Message-ID: <KxbN.1584534686568371796.wNRW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UhGmUqHvO5AfV4HiHy1m"

--UhGmUqHvO5AfV4HiHy1m
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I created an eSDK and I am installing it on a docker image I created.
Using the devtool I added/created a recipe for a simple HelloWorld applica=
tion (such application is located in github, but I guess this is not releva=
nt).
My recipe inherits from cmake.
My CMakeLists.txt file contains a "add_custom_command" block where I am sp=
ecifying a COMMAND to be called.
When running devtool build <recipe-name> I get errors letting me know that=
 the file (i.e. the command) is not found.
The command in question can be found my means of a soft link located under=
 /usr/bin/ - I can run the command inside my docker container without issue=
s.
Actually, if I build the application using cmake in my docker container it=
 will build without any issues. It is only when I try to use devtool, that =
the problem arises.

I found this question ( https://www.yoctoproject.org/pipermail/yocto/2016-=
July/031128.html ) and have already tried the solution there offered, but i=
t has not solved my problem.
So basically I added to my recipe:

OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH" with no success.

I also added message() calls to my CMakeLists.txt trying to find out more =
about this issue, but those message() calls are ignored by devtool (they ar=
e not printed).
I double checked that running cmake by myself prints such message() calls.

I built my eSDK using yocto Thud v2.6.2.

Any hints on how to debug this cmake problem or does anybody know why is t=
he desired command not found when running devtool build?

Thanks in advance!

Armando

--UhGmUqHvO5AfV4HiHy1m
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I created an eSDK and I am installing it on a docker imag=
e I created.<br />Using the devtool I added/created a recipe for a simple H=
elloWorld application (such application is located in github, but I guess t=
his is not relevant).<br />My recipe inherits from cmake.<br />My CMakeList=
s.txt file contains a "add_custom_command" block where I am specifying a CO=
MMAND to be called.<br />When running devtool build &lt;recipe-name&gt; I g=
et errors letting me know that the file (i.e. the command) is not found.<br=
 />The command in question can be found my means of a soft link located und=
er /usr/bin/ - I can run the command inside my docker container without iss=
ues.<br />Actually, if I build the application using cmake in my docker con=
tainer it will build without any issues. It is only when I try to use devto=
ol, that the problem arises.<br /><br />I found <a href=3D"https://www.yoct=
oproject.org/pipermail/yocto/2016-July/031128.html" target=3D"_blank" rel=
=3D"noopener">this question</a> and have already tried the solution there =
offered, but it has not solved my problem.<br />So basically I added to my =
recipe:<br /><br />
<pre>OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"</pre>
with no success.<br /><br />I also added message() calls to my CMakeLists.=
txt trying to find out more about this issue, but those message() calls are=
 ignored by devtool (they are not printed).<br />I double checked that runn=
ing cmake by myself prints such message() calls.<br /><br />I built my eSDK=
 using yocto Thud v2.6.2.<br /><br />Any hints on how to debug this cmake p=
roblem or does anybody know why is the desired command not found when runni=
ng devtool build?<br /><br />Thanks in advance!<br /><br />Armando

--UhGmUqHvO5AfV4HiHy1m--
