Subject: NPM package recipe, npm not found
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 07 Oct 2020 07:51:58 -0700
Message-ID: <iWTs.1602082318809855540.VrN5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MBxOOguNCe4VLYIQnTV3"

--MBxOOguNCe4VLYIQnTV3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to make a recipe for an NPM package.
The source files are local.
Here is my recipe:

LICENSE=3D"CLOSED"
SRC_URI+=3D"file://sense-web_${PV].zip"
S=3D${WORKDIR}
DEPENDS+=3D"nodejs"
do_compile(){
export HOME=3D${S}
npm install
npm run-script build
}

*The following error appears:*

Log data follows:
| DEBUG: Executing shell function do_compile
| /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/sense-web=
/1.0-r0/temp/run.do_compile.11622: 107: /media/talel/data/menzu-zeus/menzu/=
tmp/work/aarch64-poky-linux/sense-web/1.0-r0/temp/run.do_compile.11622: npm=
: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Execution of '/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64=
-poky-linux/sense-web/1.0-r0/temp/run.do_compile.11622' failed with exit co=
de 127:
| /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/sense-web=
/1.0-r0/temp/run.do_compile.11622: 107: /media/talel/data/menzu-zeus/menzu/=
tmp/work/aarch64-poky-linux/sense-web/1.0-r0/temp/run.do_compile.11622: npm=
: not found
| WARNING: exit code 127 from a shell command.
|

I did the same steps in devshell of nodejs and everything is correct.
I tried to add the recipe with devtool , devtool add sense-web_1.0.zip but=
 it failed.

Any ideas?
Thanks, Talel

--MBxOOguNCe4VLYIQnTV3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm trying to make a recipe for an NPM package.<br />The sou=
rce files are local.<br />Here is my recipe:<br /><br />LICENSE=3D"CLOSED"<=
br />SRC_URI+=3D"file://sense-web_${PV].zip"<br />S=3D${WORKDIR}<br />DEPEN=
DS+=3D"nodejs"<br />do_compile(){<br />&nbsp; export HOME=3D${S}<br />&nbsp=
; npm install<br />&nbsp; npm run-script build<br />}<br /><br /><strong>Th=
e following error appears:</strong><br /><br />Log data follows:<br />| DEB=
UG: Executing shell function do_compile<br />| /media/talel/data/menzu-zeus=
/menzu/tmp/work/aarch64-poky-linux/sense-web/1.0-r0/temp/run.do_compile.116=
22: 107: /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/sen=
se-web/1.0-r0/temp/run.do_compile.11622: npm: not found<br />| WARNING: exi=
t code 127 from a shell command.<br />| ERROR: Execution of '/media/talel/d=
ata/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/sense-web/1.0-r0/temp/run.=
do_compile.11622' failed with exit code 127:<br />| /media/talel/data/menzu=
-zeus/menzu/tmp/work/aarch64-poky-linux/sense-web/1.0-r0/temp/run.do_compil=
e.11622: 107: /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linu=
x/sense-web/1.0-r0/temp/run.do_compile.11622: npm: not found<br />| WARNING=
: exit code 127 from a shell command.<br />|<br /><br />I did the same step=
s in devshell of nodejs and everything is correct.<br />I tried to add the =
recipe with devtool , devtool add sense-web_1.0.zip but it failed.<br /><br=
 />Any ideas?<br />Thanks, Talel

--MBxOOguNCe4VLYIQnTV3--
