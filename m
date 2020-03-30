Subject: Add a customised shell script to be invked after board bootso #yocto
To: yocto@lists.yoctoproject.org
From: "Raghu Icecraft Software Trainings" <raghu.icecraft@gmail.com>
X-Originating-Location: (198.90.65.150)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 29 Mar 2020 20:16:01 -0700
Message-ID: <tx9T.1585538161810939055.svoe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GJmFJVnn4YyNkzJEE6fs"

--GJmFJVnn4YyNkzJEE6fs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I have written a shell script to change the password for my root user.
I want to execute this script file after board boots
So i created .bb file as follows:

*SUMMARY =3D "Initscript for enabling root pwd"

LICENSE =3D "GPLv2"
#LIC_FILES_CHKSUM =3D "file://${WORKDIR}/root_vpd; md5=3D bc4963ad2e7baa1c=
3bdfc9031d8453 f0"

PR =3D "r0"

SRC_URI =3D "file://root_vpd"
S =3D "${WORKDIR}"

do_install() {
install -d ${D}${sysconfdir}
install -d ${D}${sysconfdir}/init.d
install -m 0755 root_vpd ${D}${sysconfdir}/init.d
}

inherit update-rc.d allarch

INITSCRIPT_NAME =3D "root-vpd"
INITSCRIPT_PARAMS =3D "start 99 5 2 . stop 20 0 1 6 ."*

and i copied the script=C2=A0file in the sam efolder
BUt when i do bitbake of above recipew i get this error :

Parsing recipes: 100% |############################# #####################=
######### ############################## ############################## | T=
ime: 0:00:01
Parsing of 1992 .bb files complete (1982 cached, 10 parsed). 4688 targets,=
 384 skipped, 1 masked, 0 errors.
ERROR: Nothing PROVIDES pwd.bb ( http://pwd.bb/ )

--
Thanks,
raghu

--GJmFJVnn4YyNkzJEE6fs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Hello,</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">I have written a shell script to change the password for =
my root user.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">I want to execute this script file after board boots</div=
>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">So i created .bb file as follows:</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;"><strong>SUMMARY =3D "Initscript for enabling root pwd"<br=
 /><br />LICENSE =3D "GPLv2"<br />#LIC_FILES_CHKSUM =3D "file://${WORKDIR}/=
root_vpd;<wbr />md5=3D<wbr />bc4963ad2e7baa1c3bdfc9031d8453<wbr />f0"<br />=
<br /><br />PR =3D "r0"<br /><br />SRC_URI =3D "file://root_vpd"<br />S =3D=
 "${WORKDIR}"<br /><br />do_install() {<br />&nbsp; &nbsp; install -d ${D}$=
{sysconfdir}<br />&nbsp; &nbsp; install -d ${D}${sysconfdir}/init.d<br />&n=
bsp; &nbsp; install -m 0755 root_vpd ${D}${sysconfdir}/init.d<br />}<br /><=
br />inherit update-rc.d allarch<br /><br />INITSCRIPT_NAME =3D "root-vpd"<=
br />INITSCRIPT_PARAMS =3D "start 99 5 2 . stop 20 0 1 6 ."</strong></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; =
font-size: small;">and i copied the script&nbsp;file in the sam efolder&nbs=
p;</span>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">BUt when i do bitbake of above recipew i get this error :=
</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Parsing recipes: 100% |#############################<wbr =
/>##############################<wbr />##############################<wbr /=
>##############################<wbr />| Time: 0:00:01<br />Parsing of 1992 =
.bb files complete (1982 cached, 10 parsed). 4688 targets, 384 skipped, 1 m=
asked, 0 errors.<br />ERROR: Nothing PROVIDES&nbsp;&nbsp;<a style=3D"color:=
 #1155cc;" href=3D"http://pwd.bb/" target=3D"_blank" rel=3D"noopener" data-=
saferedirecturl=3D"https://www.google.com/url?q=3Dhttp://pwd.bb&amp;source=
=3Dgmail&amp;ust=3D1585624235904000&amp;usg=3DAFQjCNHHZ0Sb78yrNXsPhvCrfPaM=
EeDEPA">pwd.bb</a></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><br clear=3D"all" />
<div>&nbsp;</div>
--<br />
<div dir=3D"ltr" data-smartmail=3D"gmail_signature">
<div dir=3D"ltr">Thanks,
<div>raghu</div>
</div>
</div>
</div>

--GJmFJVnn4YyNkzJEE6fs--
