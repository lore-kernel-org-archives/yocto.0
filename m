Subject: yocto 3.1.3 cant seem to remove run-postinsts
To: yocto@lists.yoctoproject.org
From: jared_terry@dell.com
X-Originating-Location: Cedar Park, Texas, US (70.124.160.59)
X-Originating-Platform: Windows Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Aug 2021 07:46:07 -0700
Message-ID: <EFKw.1628606767547401561.tix8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aD6PpGbzCzXjLIDM1YDV"

--aD6PpGbzCzXjLIDM1YDV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

https://www.yoctoproject.org/docs/3.1.3/ref-manual/ref-manual.html#migratio=
n-2.1-miscellaneous-changes

IMAGE_FEATURES=3D"debug-tweaks read-only-rootfs"

according to the manual having read-only-rootfs should remove run-postinsts=
 and I still have it.=C2=A0 How can I get rid of this?

local.conf:=C2=A0 =C2=A0PACKAGE_EXCLUDE =3D "run-postinsts"

This didn't do anything either.

--aD6PpGbzCzXjLIDM1YDV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<a href=3D"https://www.yoctoproject.org/docs/3.1.3/ref-manual/ref-manual.ht=
ml#migration-2.1-miscellaneous-changes" target=3D"_blank" rel=3D"noopener">=
https://www.yoctoproject.org/docs/3.1.3/ref-manual/ref-manual.html#migratio=
n-2.1-miscellaneous-changes</a><br /><br />IMAGE_FEATURES=3D"debug-tweaks r=
ead-only-rootfs"<br /><br />according to the manual having read-only-rootfs=
 should remove run-postinsts and I still have it.&nbsp; How can I get rid o=
f this?<br /><br />local.conf:&nbsp; &nbsp;PACKAGE_EXCLUDE =3D "run-postins=
ts"<br /><br />This didn't do anything either.

--aD6PpGbzCzXjLIDM1YDV--
