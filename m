Subject: Can't found the zip.h during bitbake #yocto #devtool
To: yocto@lists.yoctoproject.org
From: "Jaymin Dabhi" <jaymin.dabhi@vivaldi.net>
X-Originating-Location: Ghaziabad, Uttar Pradesh, IN (14.99.145.142)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Sep 2020 00:40:40 -0700
Message-ID: <x65f.1600674040918174696.8JJ1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="H542m18zQmKcXPjD5cCw"

--H542m18zQmKcXPjD5cCw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Team,

I need to include zip.h header file in one of my C code (#include <zip.h>)=
.
I have created a .bb file and added following command for compilation:

>=20
> ${CC} -Wall -I/usr/include/libxml2 -o my_code my_code.c -lxml2 -lzip -lz

But, during bitbake it says:

>=20
> | In file included from fota_update.c:1:0:
> | fota_update.h:5:17: fatal error: zip.h: No such file or directory
> |=C2=A0 #include <zip.h>
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^
> | compilation terminated.
>=20

Using the same compilation command, I am able to compile the code on my PC=
. But, can't compile with Yocto.

I have tried with lzip and zip packages by adding into local.conf, but did=
n't work.

Which zip package I need to use for including the zip.h header file?

--H542m18zQmKcXPjD5cCw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Team,<br /><br />I need to include zip.h header file in one of my C code (#=
include &lt;zip.h&gt;).<br />I have created a .bb file and added following =
command for compilation:<br />
<blockquote>${CC} -Wall -I/usr/include/libxml2 -o my_code my_code.c -lxml2=
 -lzip -lz</blockquote>
But, during bitbake it says:<br /><br />
<blockquote>
<div>| In file included from fota_update.c:1:0:</div>
<div>| fota_update.h:5:17: fatal error: zip.h: No such file or directory</=
div>
<div>|&nbsp; #include &lt;zip.h&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</di=
v>
<div>| compilation terminated.</div>
</blockquote>
<div>Using the same compilation command, I am able to compile the code on =
my PC. But, can't compile with Yocto.<br /><br />I have tried with lzip and=
 zip packages by adding into local.conf, but didn't work.<br /><br />Which =
zip package I need to use for including the zip.h header file?</div>

--H542m18zQmKcXPjD5cCw--
