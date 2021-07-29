Subject: #bitbake Can't get application sources from private git using SSH keys #bitbake #yocto
To: yocto@lists.yoctoproject.org
From: mail2uvijay@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (165.225.122.255)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jul 2021 23:22:46 -0700
Message-ID: <dRHt.1627539766955102394.JGL7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pw34OH15DEwWC1Qyuqv8"

--pw34OH15DEwWC1Qyuqv8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Working on Yocto build system first time.
I has written a recipe to fetch the code from private GIT HUB, using SSH k=
eys. Able to clone the code using git clone.
However when i ran bitbake getting below error.
"ssh couldnot resolve host"

In my bitbake recipe these two line are present
SRCREV =3D "ed189c8f5a4df7xxxxxxxxxxx4d443c382f4578"
SRC_URI =3D "git://git@xxxx.com:xxx/xxx.git"

Could someone please suggest on how to write a recipe to get the applicati=
on code from private git hub using SSH keys.

Regards,
Vijay

--pw34OH15DEwWC1Qyuqv8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />Working on Yocto build system first time.<br />I has written a rec=
ipe to fetch the code from private GIT HUB, using SSH keys. Able to clone t=
he code using git clone.<br />However when i ran bitbake getting below erro=
r.<br />"ssh couldnot resolve host"<br /><br />In my bitbake recipe these t=
wo line are present<br />SRCREV =3D "ed189c8f5a4df7xxxxxxxxxxx4d443c382f457=
8"<br />SRC_URI =3D "git://git@xxxx.com:xxx/xxx.git"<br /><br /><br />Could=
 someone please suggest on how to write a recipe to get the application cod=
e from private git hub using SSH keys.<br /><br />Regards,<br />Vijay<br />=
<br />

--pw34OH15DEwWC1Qyuqv8--
