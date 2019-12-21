Subject: Debugging using a GUI
To: yocto@lists.yoctoproject.org
From: fdk17@ftml.net
X-Originating-Location: Ann Arbor, Michigan, US (68.40.190.43)
X-Originating-Platform: Linux Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 21 Dec 2019 12:01:24 -0800
Message-ID: <DWMP.1576958484806659233.340n@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HVvTNtgin8Nvp6W26bxM"

--HVvTNtgin8Nvp6W26bxM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm having difficulties debugging using a GUI front-end for gdb.=C2=A0 I di=
dn't have these many problems with Yocto Jethro.=C2=A0 But with Zeus I have=
 not been able to figure out how to setup Eclipse Standalone debugger or VS=
 Code.

I've followed the Development Guide instructions when building the default=
 Poky core-image-minimal.=C2=A0 The debugger itself is just fine at the com=
mand line.=C2=A0 But when trying to setup a GUI debugger I keep getting the=
 following types of errors:

warning: Unable to find dynamic linker breakpoint function.
GDB will be unable to debug shared library initializers
and track explicitly loaded dynamic code.
Warning:
Cannot insert breakpoint 1.
Cannot access memory at address 0x43d10
Cannot insert breakpoint -2.
Cannot access memory at address 0x43d20

Any advice or recommendations?

--HVvTNtgin8Nvp6W26bxM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm having difficulties debugging using a GUI front-end for gdb.&nbsp; I di=
dn't have these many problems with Yocto Jethro.&nbsp; But with Zeus I have=
 not been able to figure out how to setup Eclipse Standalone debugger or VS=
 Code.<br /><br />I've followed the Development Guide instructions when bui=
lding the default Poky core-image-minimal.&nbsp; The debugger itself is jus=
t fine at the command line.&nbsp; But when trying to setup a GUI debugger I=
 keep getting the following types of errors:<br /><br />warning: Unable to =
find dynamic linker breakpoint function.<br />GDB will be unable to debug s=
hared library initializers<br />and track explicitly loaded dynamic code.<b=
r />Warning:<br />Cannot insert breakpoint 1.<br />Cannot access memory at =
address 0x43d10<br />Cannot insert breakpoint -2.<br />Cannot access memory=
 at address 0x43d20<br /><br />Any advice or recommendations?

--HVvTNtgin8Nvp6W26bxM--
