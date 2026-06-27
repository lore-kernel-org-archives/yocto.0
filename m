Return-Path: <99thornroad@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AB5FC43458
	for <webhook@archiver.kernel.org>; Sat, 27 Jun 2026 00:44:42 +0000 (UTC)
Subject: I got an error stating that "python3-pytest contains reference to the build host HOME directory" when attempting the Yocto Project Quick Build. What do I do?
To: yocto@lists.yoctoproject.org
From: 99thornroad@protonmail.com
X-Originating-Location: Houston, Texas, US (139.94.115.197)
X-Originating-Platform: Linux Firefox 152
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Jun 2026 17:44:37 -0700
Message-ID: <An64.1782521077873496785.i3e6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hDJ2OpXBU6oOyN8SS8BW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jun 2026 00:44:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66612

--hDJ2OpXBU6oOyN8SS8BW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi. I am a new user of Yocto Project, and have limited experience with embe=
dded linux in general. I tried to start off by building the Yocto Project Q=
uick Build ( https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html =
) , following the same commands as the tutorial, but when I try to do so I =
get the following errors:

>=20
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File
> /usr/lib/python3.14/site-packages/_pytest/main.py in package
> python3-pytest contains reference to the build host HOME directory
> [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File
> /usr/lib/python3.14/site-packages/_pytest/assertion/rewrite.py in package
> python3-pytest contains reference to the build host HOME directory
> [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File
> /usr/lib/python3.14/site-packages/_pytest/__pycache__/main.cpython-314.py=
c
> in package python3-pytest contains reference to the build host HOME
> directory [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: Fatal QA errors were found,
> failing task.
> ERROR: Logfile of failure stored in:
> /home/user/asteroid/bitbake-builds/poky-master/build/tmp/work/x86-64-v3-p=
oky-linux/python3-pytest/9.1.0/temp/log.do_package_qa.1216269
>=20
> ERROR: Task
> (/home/user/asteroid/bitbake-builds/poky-master/layers/openembedded-core/=
meta/recipes-devtools/python/python3-pytest_9.1.0.bb:do_package_qa)
> failed with exit code '1'
>=20

What should I do to fix this?
I am Using Debian 13.5.

--hDJ2OpXBU6oOyN8SS8BW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi. I am a new user of Yocto Project, and have limited experience with=
 embedded linux in general. I tried to start off by building the <a href=3D=
"https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html" target=3D"_=
blank" rel=3D"noopener">Yocto Project Quick Build</a>, following the same c=
ommands as the tutorial, but when I try to do so I get the following errors=
:</div>
<blockquote>
<div>ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/=
python3.14/site-packages/_pytest/main.py in package python3-pytest contains=
 reference to the build host HOME directory [buildpaths]<br />ERROR: python=
3-pytest-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/python3.14/site-pa=
ckages/_pytest/assertion/rewrite.py in package python3-pytest contains refe=
rence to the build host HOME directory [buildpaths]<br />ERROR: python3-pyt=
est-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/python3.14/site-package=
s/_pytest/__pycache__/main.cpython-314.pyc in package python3-pytest contai=
ns reference to the build host HOME directory [buildpaths]<br />ERROR: pyth=
on3-pytest-9.1.0-r0 do_package_qa: Fatal QA errors were found, failing task=
.<br />ERROR: Logfile of failure stored in: /home/user/asteroid/bitbake-bui=
lds/poky-master/build/tmp/work/x86-64-v3-poky-linux/python3-pytest/9.1.0/te=
mp/log.do_package_qa.1216269<br />ERROR: Task (/home/user/asteroid/bitbake-=
builds/poky-master/layers/openembedded-core/meta/recipes-devtools/python/py=
thon3-pytest_9.1.0.bb:do_package_qa) failed with exit code '1'</div>
</blockquote>
<div>What should I do to fix this?</div>
<div>I am Using Debian 13.5.</div>

--hDJ2OpXBU6oOyN8SS8BW--

