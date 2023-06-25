Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8852C0015E
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 15:06:05 +0000 (UTC)
Subject: #gcc Is it possible to have Yocto Build go with distcc?
To: yocto@lists.yoctoproject.org
From: mwen@ambarella.com
X-Originating-Location: Shanghai, CN (116.246.37.178)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Jun 2023 08:06:01 -0700
Message-ID: <295f.1687705561082738712.NH3Z@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yPac2RrSwRdUkF9qRn0o"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 15:06:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60435

--yPac2RrSwRdUkF9qRn0o
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

As you know Yocto Build is time consuming, we'd like to check with you to s=
ee if there is any way to have Yocto Build go with distcc as we have multip=
le build servers shared by the office members. If going with distcc, they c=
an be effectively leveraged.
We did some try, but hit below error immediately. :(

ljiang@shbuild10 13:25:50 :/daily_build/yocto/yocto_daily/ambarella/out/yoc=
to_out/cv72_gage$ make ipcam_config

/usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3: DeprecationWarnin=
g: Using or importing the ABCs from 'collections' instead of from 'collecti=
ons.abc' is deprecated since Python 3.3, and in 3.10 it will stop working

from collections import Mapping

ERROR: Error running gcc=C2=A0 --version: distcc[3226461] (main) CRITICAL! =
distcc seems to have invoked itself recursively!

distcc[3226460] ERROR: compile (null) on localhost failed with exit code 11=
1

make: *** [/daily_build/yocto/yocto_daily/ambarella/build/bin/yocto/inc-yoc=
to-build.mk:96: kconfig-native] Error 1

--yPac2RrSwRdUkF9qRn0o
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0<br/><br/>As you know Yocto Build is time consuming, we&#39;d like =
to check with you to see if there is any way to have Yocto Build go with di=
stcc as we have multiple build servers shared by the office members. If goi=
ng with distcc, they can be effectively leveraged.<br/>We did some try, but=
 hit below error immediately. :(<br/><br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;">=C2=
=A0 =C2=A0ljiang@shbuild10 13:25:50 :/daily_build/yocto/yocto_daily/ambarel=
la/out/yocto_out/cv72_gage$ make ipcam_config</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;">/us=
r/lib/python3/dist-packages/html5lib/_trie/_base.py:3: DeprecationWarning: =
Using or importing the ABCs from &#39;collections&#39; instead of from &#39=
;collections.abc&#39; is deprecated since Python 3.3, and in 3.10 it will s=
top working</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;">=C2=
=A0 from collections import Mapping</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864; back=
ground: yellow; mso-highlight: yellow;">ERROR: Error running gcc=C2=A0 --ve=
rsion: distcc[3226461] (main) CRITICAL! distcc seems to have invoked itself=
 recursively!</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864; back=
ground: yellow; mso-highlight: yellow;">distcc[3226460] ERROR: compile (nul=
l) on localhost failed with exit code 111</span><span style=3D"font-size: 1=
4.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;"></span><=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 14.0pt; font-family: &#39;MingLiU-ExtB&#39;,serif; color: #1f3864;">mak=
e: *** [/daily_build/yocto/yocto_daily/ambarella/build/bin/yocto/inc-yocto-=
build.mk:96: kconfig-native] Error 1</span></p>

--yPac2RrSwRdUkF9qRn0o--

