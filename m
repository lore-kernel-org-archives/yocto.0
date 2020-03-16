Subject: Auto Login using systeminit #yocto
To: yocto@lists.yoctoproject.org
From: "Amrun Nisha.R" <amrunnishar@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (103.232.224.219)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 15 Mar 2020 21:57:22 -0700
Message-ID: <qyY5.1584334642890418107.YIRR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pzgezFlgvIKlWTZmbEao"

--pzgezFlgvIKlWTZmbEao
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to add a feature "autologin" to the core-image-base. I created a ne=
w layer for auto login as "meta-autologin" in the poky and added some sampl=
e script to run in the auto login. When I build the image and run in the im=
x8 board, it is not able to run in the systeminit function. It is not able =
to create rc0, rc1, rc2 folders. But, the autologin script is placed in the=
 /etc/init.d/autologin. Is there any other way to add this autologin to run=
 in the systeminit function in etc.

--pzgezFlgvIKlWTZmbEao
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I want to add a feature "autologin" to the core-image-base. =
I created a new layer for auto login as "meta-autologin" in the poky and ad=
ded some sample script to run in the auto login. When I build the image and=
 run in the imx8 board, it is not able to run in the systeminit function. I=
t is not able to create rc0, rc1, rc2 folders. But, the autologin script is=
 placed in the /etc/init.d/autologin. Is there any other way to add this au=
tologin to run in the systeminit function in etc.&nbsp;

--pzgezFlgvIKlWTZmbEao--
