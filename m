Subject: ABI Version for MIPS platform changed from 0 to 5
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: Raleigh, North Carolina, US (107.13.78.59)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Aug 2020 03:07:08 -0700
Message-ID: <BFF4.1597831628584042378.2lCW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VHV34neTZjn2aNwxPOQY"

--VHV34neTZjn2aNwxPOQY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Reposting in the hopes of getting an answer - I'm stuck.

I'm in the process of upgrading from Zeus to Dunfell.=C2=A0 For my MIPS pl=
atform, the library ABI version has changed from 0 to 5.=C2=A0 I have some =
backward compatibility issues that require generating at least some librari=
es with ABI version 0.=C2=A0 I've tried using -fabi_version=3D0 in my CCFLA=
GS, but that seems to be ignored.=C2=A0 Can someone tell me how to set the =
ABI version back to 0 in my image and SDK?

I'm building for a custom MIPs platform running on a Cavium Octeon II in 3=
2-bit mode.

TUNE_FEATURES=C2=A0 =3D "o32 bigendian fpu-hard octeon2"

A current Dunfell shared library ELF Header looks like this:

ELF Header:
Magic:=C2=A0 =C2=A07f 45 4c 46 01 02 01 00 05 00 00 00 00 00 00 00
Class:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF32
Data:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2's complement, big endian
Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 (current)
OS/ABI:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UNIX - System V
ABI Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A05
Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DYN (Shared object file)
Machine:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MIPS R3000
Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x1
Entry point address:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00x1630
Start of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 52 (bytes into=
 file)
Start of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 22488 (bytes i=
nto file)
Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x808d1107, noreorder, pic, cpic, 32=
bitmode, octeon2, o32, mips64r2

The same library built with Zeus looks like this.

ELF Header:
Magic:=C2=A0 =C2=A07f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00
Class:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF32
Data:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2's complement, big endian
Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 (current)
OS/ABI:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UNIX - System V
ABI Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00
Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DYN (Shared object file)
Machine:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MIPS R3000
Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x1
Entry point address:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00x1500
Start of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 52 (bytes into=
 file)
Start of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 22340 (bytes i=
nto file)
Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x808d1107, noreorder, pic, cpic, 32=
bitmode, octeon2, o32, mips64r2

The ABI Version being the issue.
Thanks.

--VHV34neTZjn2aNwxPOQY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Reposting in the hopes of getting an answer - I'm stuck.<br /><br />I'm in =
the process of upgrading from Zeus to Dunfell.&nbsp; For my MIPS platform, =
the library ABI version has changed from 0 to 5.&nbsp; I have some backward=
 compatibility issues that require generating at least some libraries with =
ABI version 0.&nbsp; I've tried using -fabi_version=3D0 in my CCFLAGS, but =
that seems to be ignored.&nbsp; Can someone tell me how to set the ABI vers=
ion back to 0 in my image and SDK?<br /><br />I'm building for a custom MIP=
s platform running on a Cavium Octeon II in 32-bit mode.<br /><br />TUNE_FE=
ATURES&nbsp; =3D "o32 bigendian fpu-hard octeon2"<br /><br />A current Dunf=
ell shared library ELF Header looks like this:<br /><br />
<div>ELF Header:</div>
<div>&nbsp; Magic:&nbsp; &nbsp;7f 45 4c 46 01 02 01 00 05 00 00 00 00 00 0=
0 00&nbsp;</div>
<div>&nbsp; Class:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ELF32</div>
<div>&nbsp; Data:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2's complement, big endian<=
/div>
<div>&nbsp; Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 (current)</div>
<div>&nbsp; OS/ABI:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UNIX - System V</div>
<div>&nbsp; ABI Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5</div>
<div>&nbsp; Type:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DYN (Shared object file)</d=
iv>
<div>&nbsp; Machine:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MIPS R3000</div>
<div>&nbsp; Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0x1</div>
<div>&nbsp; Entry point address:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;0x1630</div>
<div>&nbsp; Start of program headers:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 52=
 (bytes into file)</div>
<div>&nbsp; Start of section headers:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 22=
488 (bytes into file)</div>
<div>&nbsp; Flags:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0x808d1107, noreorder, pic,=
 cpic, 32bitmode, octeon2, o32, mips64r2</div>
<div><br />The same library built with Zeus looks like this.<br />
<div><br />ELF Header:</div>
<div>&nbsp; Magic:&nbsp; &nbsp;7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 0=
0 00&nbsp;</div>
<div>&nbsp; Class:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ELF32</div>
<div>&nbsp; Data:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2's complement, big endian<=
/div>
<div>&nbsp; Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 (current)</div>
<div>&nbsp; OS/ABI:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UNIX - System V</div>
<div>&nbsp; ABI Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0</div>
<div>&nbsp; Type:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DYN (Shared object file)</d=
iv>
<div>&nbsp; Machine:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MIPS R3000</div>
<div>&nbsp; Version:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0x1</div>
<div>&nbsp; Entry point address:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;0x1500</div>
<div>&nbsp; Start of program headers:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 52=
 (bytes into file)</div>
<div>&nbsp; Start of section headers:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 22=
340 (bytes into file)</div>
<div>&nbsp; Flags:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0x808d1107, noreorder, pic,=
 cpic, 32bitmode, octeon2, o32, mips64r2</div>
<div>&nbsp;</div>
The ABI Version being the issue.</div>
<br />Thanks.

--VHV34neTZjn2aNwxPOQY--
