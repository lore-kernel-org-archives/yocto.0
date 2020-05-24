Subject: nodejs 12.16 in Yocto 2.2 compatiblity
To: yocto@lists.yoctoproject.org
From: msrinivasan@mvista.com
X-Originating-Location: Bengaluru, Karnataka, IN (115.99.113.94)
X-Originating-Platform: Linux Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 24 May 2020 08:26:10 -0700
Message-ID: <48AZ.1590333970979854437.xRhW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OSKaJA41NF9pTxdh7r0G"

--OSKaJA41NF9pTxdh7r0G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am cross compile nodejs 12.16 recipe for ARM v7 target using Yocto 2.2. =
I can built nodejs as a individual task (i.e. bitbake -c compile)=C2=A0 (wi=
th some changes in recipe) with dependency over openssl 1.1.1b recipe from =
Yocto 2.6. But further build (i.e. bitbake nodejs)=C2=A0 fails with depende=
ncy rpm-native's compile which depend on default=C2=A0 openssl 1.0.2j from =
sysroot folder (STAGING_DIR) (currently has openssl 1.1.1b's header files a=
t sysroot folder). My aim to have quiet build of nodejs with dependency on =
openssl 1.1.1b only and rest of build depend over openssl 1.0.2q. Finally w=
ith reference from sysroot (STAGING_DIR), image must contains both openssl =
versions (1.1.1b, 1.0.2q) share libraries.
Please let me know your inputs.

Thanks=C2=A0 & Regards
Manjunatha Srinivasvan N

--OSKaJA41NF9pTxdh7r0G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>I am cross compile nodejs 12.16 recipe for ARM v7 target using Yocto =
2.2. I can built nodejs as a individual task (i.e. bitbake -c compile)&nbsp=
; (with some changes in recipe) with dependency over openssl 1.1.1b recipe =
from Yocto 2.6. But further build (i.e. bitbake nodejs)&nbsp; fails with de=
pendency rpm-native's compile which depend on default&nbsp; openssl 1.0.2j =
from sysroot folder (STAGING_DIR) (currently has openssl 1.1.1b's header fi=
les at sysroot folder). My aim to have quiet build of nodejs with dependenc=
y on openssl 1.1.1b only and rest of build depend over openssl 1.0.2q. Fina=
lly with reference from sysroot (STAGING_DIR), image must contains both ope=
nssl versions (1.1.1b, 1.0.2q) share libraries.</div>
<div>Please let me know your inputs.&nbsp;<br /><br />Thanks&nbsp; &amp; R=
egards<br />Manjunatha Srinivasvan N</div>
<div>&nbsp;</div>

--OSKaJA41NF9pTxdh7r0G--
