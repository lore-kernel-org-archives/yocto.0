Subject: Adding modules to Apache2 during build
To: yocto@lists.yoctoproject.org
From: mailings@warpedelectronics.com
X-Originating-Location: Pequot Lakes, Minnesota, US (75.100.220.120)
X-Originating-Platform: Windows Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Dec 2020 12:02:35 -0800
Message-ID: <Pdre.1606852955309207764.QI0Y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NQj7KHXLAs28ylbEQwmH"

--NQj7KHXLAs28ylbEQwmH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all:

Thank you to all who post to help on the list.=C2=A0 I have been helped so=
 many times by just doing a search here.

I do have a question that I have been unable to solve on my own...

I have Apache2 and PHP installed and functional.=C2=A0 I have also include=
d "PAM" using:

PACKAGECONFIG_pn-php =3D " sqlite3 imap opcache openssl ${@bb.utils.filter=
('DISTRO_FEATURES', 'ipv6 pam', d)} apache2"

However, I need to add "libapache2-mod-authnz-external", "pwauth", and "li=
bapache2-mod-authz-unixgroup" to my build.=C2=A0 I've tried adding these to=
 my local.conf in the line above and even tried it in my IMAGE_INSTALL_appe=
nd section.=C2=A0 When I add it to PACKAGECONFIG_pn-php I get a "do_configu=
re: QA Issue" that it is an invalid packageconfig.=C2=A0 If I put it in IMA=
GE_INSTALL_appeng I get an error that nothing provides the packages.

I know I'm missing something or not thinking of this correctly.=C2=A0 Mayb=
e it's not that I need to add a new package, but a module feature to Apache=
2?=C2=A0 If someone could point me to where I can find an answer, I would a=
ppreciate it.

Thanks much.

-Joe

--NQj7KHXLAs28ylbEQwmH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all:<br /><br />Thank you to all who post to help on the list.&nbsp; =
I have been helped so many times by just doing a search here.<br /><br />I =
do have a question that I have been unable to solve on my own...<br /><br /=
>I have Apache2 and PHP installed and functional.&nbsp; I have also include=
d "PAM" using:<br /><br /><span style=3D"font-family: courier_newregular, c=
ourier;">PACKAGECONFIG_pn-php =3D " sqlite3 imap opcache openssl ${@bb.util=
s.filter('DISTRO_FEATURES', 'ipv6 pam', d)} apache2"</span><br /><br />Howe=
ver, I need to add "libapache2-mod-authnz-external", "pwauth", and "libapac=
he2-mod-authz-unixgroup" to my build.&nbsp; I've tried adding these to my l=
ocal.conf in the line above and even tried it in my IMAGE_INSTALL_append se=
ction.&nbsp; When I add it to PACKAGECONFIG_pn-php I get a "do_configure: Q=
A Issue" that it is an invalid packageconfig.&nbsp; If I put it in IMAGE_IN=
STALL_appeng I get an error that nothing provides the packages.&nbsp; <br /=
><br />I know I'm missing something or not thinking of this correctly.&nbsp=
; Maybe it's not that I need to add a new package, but a module feature to =
Apache2?&nbsp; If someone could point me to where I can find an answer, I w=
ould appreciate it.&nbsp; <br /><br />Thanks much.<br /><br />-Joe

--NQj7KHXLAs28ylbEQwmH--
