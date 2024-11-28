Return-Path: <juan.aguirre@omron.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502FBD70DF6
	for <webhook@archiver.kernel.org>; Thu, 28 Nov 2024 22:06:30 +0000 (UTC)
Subject: Trying to build image with example proyect but getting (do_fetch: Fetcher failure for URL) error #bitbake #poky #zeus
To: yocto@lists.yoctoproject.org
From: juan.aguirre@omron.com
X-Originating-Location: Miguel Hidalgo, Mexico City, MX (165.225.218.93)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 28 Nov 2024 14:06:27 -0800
Message-ID: <L5gW.1732831587616598404.F3hX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8syDsEHZUDxFQK0JGrR0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 22:06:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64374

--8syDsEHZUDxFQK0JGrR0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi. I=C2=B4m trying to build an image for a Beaglebone black using default =
poky recipes in the Zeus branch for core-image-minimal, but I=C2=B4m gettin=
g the following errors:

WARNING: bmap-tools-native-3.5+gitAUTOINC+db7087b883-r0 do_fetch: Failed to=
 fetch URL git://github.com/intel/bmap-tools, attempting MIRRORS if availab=
le
ERROR: bmap-tools-native-3.5+gitAUTOINC+db7087b883-r0 do_fetch: Fetcher fai=
lure: Unable to find revision db7087b883bf52cbff063ad17a41cc1cbb85104d in b=
ranch master even from upstream
ERROR: bmap-tools-native-3.5+gitAUTOINC+db7087b883-r0 do_fetch: Fetcher fai=
lure for URL: 'git://github.com/intel/bmap-tools'. Unable to fetch URL from=
 any source.
ERROR: Logfile of failure stored in: /home/yocto/YCBuild/tmp/work/x86_64-li=
nux/bmap-tools-native/3.5+gitAUTOINC+db7087b883-r0/temp/log.do_fetch.413495
ERROR: Task (virtual:native:/home/yocto/poky/meta/recipes-support/bmap-tool=
s/bmap-tools_3.5.bb:do_fetch) failed with exit code '1'

WARNING: lz4-native-1_1.9.2-r0 do_fetch: Failed to fetch URL git://github.c=
om/lz4/lz4.git, attempting MIRRORS if available
ERROR: lz4-native-1_1.9.2-r0 do_fetch: Fetcher failure: Unable to find revi=
sion fdf2ef5809ca875c454510610764d9125ef2ebbd in branch master even from up=
stream
ERROR: lz4-native-1_1.9.2-r0 do_fetch: Fetcher failure for URL: 'git://gith=
ub.com/lz4/lz4.git'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/yocto/YCBuild/tmp/work/x86_64-li=
nux/lz4-native/1_1.9.2-r0/temp/log.do_fetch.413501
ERROR: Task (virtual:native:/home/yocto/poky/meta/recipes-support/lz4/lz4_1=
.9.2.bb:do_fetch) failed with exit code '1'

I tried to clone manually and it was possible to download git://github.com/=
intel/bmap-tools and git://github.com/lz4/lz4.git

I'm using a docker container with ubuntu:18.04

I thought that should be enough get in the Zeus branch, configure the envir=
onment (with oe-init-build-env script, and modify local.conf to build for t=
he desired machine), run bitbake (for core-image-minimal) and after 2hr of =
building you get your image. Im missing any step?

Also, I try bitbake with sato but it gives me similar errors but with diffe=
rent URL is there a proper way to manage this kind of errors (without modif=
ying the recipes, in this case are recipes inside meta and meta-poky)

Cheers.

--8syDsEHZUDxFQK0JGrR0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi. I&acute;m trying to build an image for a Beaglebone black using de=
fault poky recipes in the Zeus branch for core-image-minimal, but I&acute;m=
 getting the following errors:</div>
<div>&nbsp;</div>
<div>WARNING: bmap-tools-native-3.5+gitAUTOINC+db7087b883-r0 do_fetch: Fail=
ed to fetch URL git://github.com/intel/bmap-tools, attempting MIRRORS if av=
ailable<br />ERROR: bmap-tools-native-3.5+gitAUTOINC+db7087b883-r0 do_fetch=
: Fetcher failure: Unable to find revision db7087b883bf52cbff063ad17a41cc1c=
bb85104d in branch master even from upstream<br />ERROR: bmap-tools-native-=
3.5+gitAUTOINC+db7087b883-r0 do_fetch: Fetcher failure for URL: 'git://gith=
ub.com/intel/bmap-tools'. Unable to fetch URL from any source.<br />ERROR: =
Logfile of failure stored in: /home/yocto/YCBuild/tmp/work/x86_64-linux/bma=
p-tools-native/3.5+gitAUTOINC+db7087b883-r0/temp/log.do_fetch.413495<br />E=
RROR: Task (virtual:native:/home/yocto/poky/meta/recipes-support/bmap-tools=
/bmap-tools_3.5.bb:do_fetch) failed with exit code '1'</div>
<div><br />WARNING: lz4-native-1_1.9.2-r0 do_fetch: Failed to fetch URL git=
://github.com/lz4/lz4.git, attempting MIRRORS if available<br />ERROR: lz4-=
native-1_1.9.2-r0 do_fetch: Fetcher failure: Unable to find revision fdf2ef=
5809ca875c454510610764d9125ef2ebbd in branch master even from upstream<br /=
>ERROR: lz4-native-1_1.9.2-r0 do_fetch: Fetcher failure for URL: 'git://git=
hub.com/lz4/lz4.git'. Unable to fetch URL from any source.<br />ERROR: Logf=
ile of failure stored in: /home/yocto/YCBuild/tmp/work/x86_64-linux/lz4-nat=
ive/1_1.9.2-r0/temp/log.do_fetch.413501<br />ERROR: Task (virtual:native:/h=
ome/yocto/poky/meta/recipes-support/lz4/lz4_1.9.2.bb:do_fetch) failed with =
exit code '1'</div>
<div>&nbsp;</div>
<div>
<div>I tried to clone manually and it was possible to download git://github=
.com/intel/bmap-tools and git://github.com/lz4/lz4.git&nbsp;</div>
<div><br />I'm using a docker container with ubuntu:18.04</div>
<div><br />I thought that should be enough get in the Zeus branch, configur=
e the environment (with oe-init-build-env script, and modify local.conf to =
build for the desired machine), run bitbake (for core-image-minimal) and af=
ter 2hr of building you get your image. Im missing any step?&nbsp;</div>
</div>
<div>&nbsp;</div>
<div>Also, I try bitbake with sato but it gives me similar errors but with =
different URL is there a proper way to manage this kind of errors (without =
modifying the recipes, in this case are recipes inside meta and meta-poky)<=
/div>
<div>&nbsp;</div>
<div>Cheers.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--8syDsEHZUDxFQK0JGrR0--

