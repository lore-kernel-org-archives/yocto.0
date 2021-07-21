Subject: How to pass arguments to a shell function from python task bb.build.exec_func ? #yocto #bitbake
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: El mourouj 2, Gouvernorat de Tunis, TN (197.238.19.230)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 21 Jul 2021 08:45:08 -0700
Message-ID: <kJcG.1626882308938472767.cDax@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hxfxhbly8bgnx2krYAQA"

--hxfxhbly8bgnx2krYAQA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have this example that can call a shell function from a python task:

*shell_function(){*
*bbwarn "This is a shell function, arg1 =3D $1"*
*}*

*python do_something(){*
*bb.build.exec_func('shell_function', d)*
*}*

How to pass arguments to the shell function ?

I tried this : " *bb.build.exec_func('shell_function 1', d)"* but it fails=
 with the error: "shell_function 1" not found.

Thanks,
Talel

--hxfxhbly8bgnx2krYAQA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I have this example that can call a shell function from =
a python task:<br /><br /><strong>shell_function(){</strong><br /><strong>&=
nbsp;&nbsp;&nbsp; bbwarn "This is a shell function, arg1 =3D $1"</strong><b=
r /><strong>}</strong><br /><br /><strong>python do_something(){</strong><b=
r /><strong>&nbsp;&nbsp; bb.build.exec_func('shell_function', d)</strong><b=
r /><strong>}</strong><br /><br />How to pass arguments to the shell functi=
on ?<br /><br />I tried this : "<strong>bb.build.exec_func('shell_function =
1', d)"</strong> but it fails with the error: "shell_function 1" not found.=
 <br /><br />Thanks,<br />Talel

--hxfxhbly8bgnx2krYAQA--
