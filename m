Return-Path: <bojanjov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28836C433EF
	for <webhook@archiver.kernel.org>; Wed, 10 Nov 2021 14:29:57 +0000 (UTC)
Subject: Re: Cross-compile custom ROS2 package for Yocto #bitbake
To: yocto@lists.yoctoproject.org
From: "bojankoce" <bojanjov@gmail.com>
X-Originating-Location: =?utf-8?b?QXJwYWpvbiwgw45sZS1kZS1GcmFuY2UsIEZSICg5?=
 =?utf-8?b?MS4xNzQuMjM1LjIwMSk=?=
X-Originating-Platform: Windows Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Nov 2021 06:29:56 -0800
References: <1ff40696-f207-70f0-1cd6-7aa47a18bdde@googlemail.com>
In-Reply-To: <1ff40696-f207-70f0-1cd6-7aa47a18bdde@googlemail.com>
Message-ID: <11037.1636554596013489582@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xTFdcTYboFlwXuW4khEM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Nov 2021 14:29:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55304

--xTFdcTYboFlwXuW4khEM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, Matthias.

I added `amente-cmake-native` inti DEPENDS and, indeed, I got a different e=
rror this time:

>=20
> Initialising tasks: 100%
> |########################################################################=
##############################|
> Time: 0:00:02
> Sstate summary: Wanted 0 Local 0 Network 0 Missed 0 Current 578 (0% match=
,
> 100% complete)
> NOTE: Executing Tasks
> NOTE: my-first-yocto-pkg: compiling from external source tree
> /home/bojan/var-fslc-yocto-playground/build_xwayland/workspace/sources/my=
-first-yocto-pkg
>=20
> ERROR: my-first-yocto-pkg-0.1.0-r0 do_package: QA Issue:
> my-first-yocto-pkg: Files/directories were installed but not shipped in
> any package:
> /usr/share/my_first_yocto_pkg
> /usr/share/my_first_yocto_pkg/local_setup.zsh
> /usr/share/my_first_yocto_pkg/local_setup.bash
> /usr/share/my_first_yocto_pkg/package.xml
> /usr/share/my_first_yocto_pkg/local_setup.sh
> /usr/share/my_first_yocto_pkg/package.dsv
> /usr/share/my_first_yocto_pkg/local_setup.dsv
> /usr/share/my_first_yocto_pkg/environment
> /usr/share/my_first_yocto_pkg/cmake
> /usr/share/my_first_yocto_pkg/environment/path.sh
> /usr/share/my_first_yocto_pkg/environment/path.dsv
> /usr/share/my_first_yocto_pkg/environment/ament_prefix_path.dsv
> /usr/share/my_first_yocto_pkg/environment/ament_prefix_path.sh
> /usr/share/my_first_yocto_pkg/cmake/my_first_yocto_pkgConfig.cmake
> /usr/share/my_first_yocto_pkg/cmake/my_first_yocto_pkgConfig-version.cmak=
e
>=20
> /usr/lib/my_first_yocto_pkg/talker
> /usr/lib/my_first_yocto_pkg/listener
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
> my-first-yocto-pkg: 17 installed and not shipped files.
> [installed-vs-shipped]
> ERROR: my-first-yocto-pkg-0.1.0-r0 do_package: Fatal QA errors found,
> failing task.
> ERROR: Logfile of failure stored in:
> /home/bojan/var-fslc-yocto-playground/build_xwayland/tmp/work/cortexa53-c=
rypto-fslc-linux/my-first-yocto-pkg/0.1.0-r0/temp/log.do_package.15149
>=20
> ERROR: Task
> (/home/bojan/var-fslc-yocto-playground/build_xwayland/workspace/recipes/m=
y-first-yocto-pkg/my-first-yocto-pkg_git.bb:do_package)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2200 tasks of which 2192 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 3 seconds
>=20
> Summary: 1 task failed:
> /home/bojan/var-fslc-yocto-playground/build_xwayland/workspace/recipes/my=
-first-yocto-pkg/my-first-yocto-pkg_git.bb:do_package
>=20
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.

I needed to append the following lines at the end of my-first-yocto-pkg_git=
.bb file in order to resolve it:
>=20
>=20
> FILES_${PN} +=3D "/usr/share/my_first_yocto_pkg/*"
> FILES_${PN} +=3D "/usr/lib/my_first_yocto_pkg/*"
> FILES_${PN}-dev =3D "/usr/share/my_first_yocto_pkg/*
> /usr/lib/my_first_yocto_pkg/* ${includedir}"

--xTFdcTYboFlwXuW4khEM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, Matthias. <br /><br />I added `amente-cmake-native` inti DEPENDS and=
, indeed, I got a different error this time:<br />
<blockquote>Initialising tasks: 100% |#####################################=
#################################################################| Time: 0:=
00:02<br />Sstate summary: Wanted 0 Local 0 Network 0 Missed 0 Current 578 =
(0% match, 100% complete)<br />NOTE: Executing Tasks<br />NOTE: my-first-yo=
cto-pkg: compiling from external source tree /home/bojan/var-fslc-yocto-pla=
yground/build_xwayland/workspace/sources/my-first-yocto-pkg<br />ERROR: my-=
first-yocto-pkg-0.1.0-r0 do_package: QA Issue: my-first-yocto-pkg: Files/di=
rectories were installed but not shipped in any package:<br />&nbsp; /usr/s=
hare/my_first_yocto_pkg<br />&nbsp; /usr/share/my_first_yocto_pkg/local_set=
up.zsh<br />&nbsp; /usr/share/my_first_yocto_pkg/local_setup.bash<br />&nbs=
p; /usr/share/my_first_yocto_pkg/package.xml<br />&nbsp; /usr/share/my_firs=
t_yocto_pkg/local_setup.sh<br />&nbsp; /usr/share/my_first_yocto_pkg/packag=
e.dsv<br />&nbsp; /usr/share/my_first_yocto_pkg/local_setup.dsv<br />&nbsp;=
 /usr/share/my_first_yocto_pkg/environment<br />&nbsp; /usr/share/my_first_=
yocto_pkg/cmake<br />&nbsp; /usr/share/my_first_yocto_pkg/environment/path.=
sh<br />&nbsp; /usr/share/my_first_yocto_pkg/environment/path.dsv<br />&nbs=
p; /usr/share/my_first_yocto_pkg/environment/ament_prefix_path.dsv<br />&nb=
sp; /usr/share/my_first_yocto_pkg/environment/ament_prefix_path.sh<br />&nb=
sp; /usr/share/my_first_yocto_pkg/cmake/my_first_yocto_pkgConfig.cmake<br /=
>&nbsp; /usr/share/my_first_yocto_pkg/cmake/my_first_yocto_pkgConfig-versio=
n.cmake<br />&nbsp; /usr/lib/my_first_yocto_pkg/talker<br />&nbsp; /usr/lib=
/my_first_yocto_pkg/listener<br />Please set FILES such that these items ar=
e packaged. Alternatively if they are unneeded, avoid installing them or de=
lete them within do_install.<br />my-first-yocto-pkg: 17 installed and not =
shipped files. [installed-vs-shipped]<br />ERROR: my-first-yocto-pkg-0.1.0-=
r0 do_package: Fatal QA errors found, failing task.<br />ERROR: Logfile of =
failure stored in: /home/bojan/var-fslc-yocto-playground/build_xwayland/tmp=
/work/cortexa53-crypto-fslc-linux/my-first-yocto-pkg/0.1.0-r0/temp/log.do_p=
ackage.15149<br />ERROR: Task (/home/bojan/var-fslc-yocto-playground/build_=
xwayland/workspace/recipes/my-first-yocto-pkg/my-first-yocto-pkg_git.bb:do_=
package) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 2200=
 tasks of which 2192 didn't need to be rerun and 1 failed.<br />NOTE: Writi=
ng buildhistory<br />NOTE: Writing buildhistory took: 3 seconds<br /><br />=
Summary: 1 task failed:<br />&nbsp; /home/bojan/var-fslc-yocto-playground/b=
uild_xwayland/workspace/recipes/my-first-yocto-pkg/my-first-yocto-pkg_git.b=
b:do_package<br />Summary: There was 1 WARNING message shown.<br />Summary:=
 There were 2 ERROR messages shown, returning a non-zero exit code.</blockq=
uote>
I needed to append the following lines at the end of <code>my-first-yocto-p=
kg_git.bb</code> file in order to resolve it:
<blockquote>FILES_${PN} +=3D "/usr/share/my_first_yocto_pkg/*"<br />FILES_$=
{PN} +=3D "/usr/lib/my_first_yocto_pkg/*"<br />FILES_${PN}-dev =3D "/usr/sh=
are/my_first_yocto_pkg/* /usr/lib/my_first_yocto_pkg/* ${includedir}"</bloc=
kquote>

--xTFdcTYboFlwXuW4khEM--

