Subject: python argparse or alternate method
To: yocto@lists.yoctoproject.org
From: "Joel Winarske" <joel.winarske@gmail.com>
X-Originating-Location: Seattle, Washington, US (71.212.126.150)
X-Originating-Platform: Linux Firefox 74
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Apr 2020 09:55:18 -0700
Message-ID: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Op0iHUQ5us3qwoDhzAyv"

--Op0iHUQ5us3qwoDhzAyv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying the below in a recipe.=C2=A0 Bitbake gives me: ERROR: Unable to=
 parse ...: Exited with "2"

inherit python3native

require utils.inc

do_configure() {

cd ${@get_out_dir(d)}
}

(in utils.inc)
def get_out_dir(d):
import os
import argparse
pkgconfig_args =3D d.getVar("PACKAGECONFIG_CONFARGS")

parser =3D argparse.ArgumentParser()
parser.add_argument("--verbose", help=3D"increase output verbosity",
action=3D"store_true")
args =3D parser.parse_args(pkgconfig_args)
if args.verbose:
return os.path.join('out', 'verbose')

return 'out'

What am I doing wrong, or is there a better way?=C2=A0 Seems like it doesn=
't like "args =3D parser.parse_args(pkgconfig_args)"

The output directory is a combination of the arguments.

Thanks!
Joel

--Op0iHUQ5us3qwoDhzAyv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I'm trying the below in a recipe.&nbsp; Bitbake gives me:=
 ERROR: Unable to parse ...: Exited with "2"<br /><br />inherit python3nati=
ve<br /><br />require utils.inc<br /><br />do_configure() {<br /><br />&nbs=
p;&nbsp;&nbsp; cd ${@get_out_dir(d)}<br />}<br /><br />(in utils.inc)<br />=
def get_out_dir(d):<br />&nbsp;&nbsp;&nbsp; import os<br />&nbsp;&nbsp;&nbs=
p; import argparse<br />&nbsp;&nbsp;&nbsp; pkgconfig_args =3D d.getVar("PAC=
KAGECONFIG_CONFARGS")<br /><br />&nbsp;&nbsp;&nbsp; parser =3D argparse.Arg=
umentParser()<br />&nbsp;&nbsp;&nbsp; parser.add_argument("--verbose", help=
=
=3D"increase output verbosity",<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; action=3D"store_true")<br />&nbsp;&nbsp;&nbsp; a=
rgs =3D parser.parse_args(pkgconfig_args)<br />&nbsp;&nbsp;&nbsp; if args.v=
erbose:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return os.path.join=
('out', 'verbose')<br /><br />&nbsp;&nbsp;&nbsp; return 'out'<br /><br /><b=
r /><br />What am I doing wrong, or is there a better way?&nbsp; Seems like=
 it doesn't like "args =3D parser.parse_args(pkgconfig_args)"<br /><br />Th=
e output directory is a combination of the arguments.<br /><br /><br />Than=
ks!<br />Joel<br />

--Op0iHUQ5us3qwoDhzAyv--
