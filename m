Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A74DC54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 19:15:52 +0000 (UTC)
Subject: AUTOREV not functioning #bitbake #devtool #github
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 12:15:50 -0700
Message-ID: <g1fd.1747941350140121827.kmBu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ciR9aRO8SNIF8MfZW5a3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 19:15:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65407

--ciR9aRO8SNIF8MfZW5a3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

$ bitbake --version
BitBake Build Tool Core version 2.8.0
$ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep DISTRO_VERSIO=
N
DISTRO_VERSION =3D "5.0.1"

Looking at the manual: https://docs.yoctoproject.org/5.0.9/singleindex.html=
#automatically-incrementing-a-package-version-number

I'm finding the -e functionality in bitbake super useful, I'm running 'bitb=
ake -e my-recipe > my-recipe.out' to get an idea of what is going on.

In my recipe I'm using:
....
# Modify these as desired
SRCREV =3D "${AUTOREV}"
PV =3D "1.0+git"
....

I see(in my -e output):
....
AUTOREV=3D"AUTOINC"
....
SRCREV=3D"AUTOINC"
....
PV=3D"1.0+git+AUTOINC+04f5ca7725"
....

...and 04f5ca7 is the head version of my repo. It's not causing any bitbake=
 errors, it's just still using code that I revised(which is faulty).

I get no error as seen here: https://lists.yoctoproject.org/g/yocto/topic/a=
utorev_not_works_in_bitbake/97515997
I'm not using BB_SRCREV_POLICY as seen here: https://yocto.yoctoproject.nar=
kive.com/0CH39UMW/autorev-problems

Just to get around this can I just delete the sources/ directory in my work=
space? I'm afraid to because, playing around I think I did that once and co=
rrupted my workspace and had to wipe it and restart.

I see references to a 'PR Service' but have no idea if that's in play or no=
t as far as I know.

Thanks.

--ciR9aRO8SNIF8MfZW5a3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div data-olk-copy-source=3D"MessageBody">$ bitbake --version</div>
<div>BitBake Build Tool Core version 2.8.0</div>
<div>$ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep DISTRO_V=
ERSION</div>
<div>DISTRO_VERSION =3D "5.0.1"</div>
<div>&nbsp;</div>
<div>Looking at the manual: <a href=3D"https://docs.yoctoproject.org/5.0.9/=
singleindex.html#automatically-incrementing-a-package-version-number" targe=
t=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/5.0.9/singleind=
ex.html#automatically-incrementing-a-package-version-number</a></div>
<div>&nbsp;</div>
<div>I'm finding the -e functionality in bitbake super useful, I'm running =
'bitbake -e my-recipe &gt; my-recipe.out' to get an idea of what is going o=
n.<br /><br />In my recipe I'm using:<br />....</div>
<div># Modify these as desired<br />SRCREV =3D "${AUTOREV}"<br />PV =3D "1.=
0+git"</div>
<div>....</div>
<div>&nbsp;</div>
<div><br />I see(in my -e output):</div>
<div>....</div>
<div>AUTOREV=3D"AUTOINC"</div>
<div>....</div>
<div>SRCREV=3D"AUTOINC"</div>
<div>....</div>
<div>PV=3D"1.0+git+AUTOINC+04f5ca7725"</div>
<div>....</div>
<div>&nbsp;</div>
<div>...and <span class=3D"sha-block m-0"><span class=3D"sha user-select-co=
ntain">04f5ca7 is the head version of my repo. It's not causing any bitbake=
 errors, it's just still using code that I revised(which is faulty).</span>=
</span></div>
<div><span class=3D"sha-block m-0"><span class=3D"sha user-select-contain">=
<br />I get no error as seen here: <a href=3D"https://lists.yoctoproject.or=
g/g/yocto/topic/autorev_not_works_in_bitbake/97515997" target=3D"_blank" re=
l=3D"noopener">https://lists.yoctoproject.org/g/yocto/topic/autorev_not_wor=
ks_in_bitbake/97515997</a><br />I'm not using &nbsp;<span id=3D"selection_u=
rl_f"></span>BB_SRCREV_POLICY as seen here: https://yocto.yoctoproject.nark=
ive.com/0CH39UMW/autorev-problems<br /><br /><br />Just to get around this =
can I just delete the sources/ directory in my workspace? I'm afraid to bec=
ause, playing around I think I did that once and corrupted my workspace and=
 had to wipe it and restart.<br /><br />I see references to a 'PR Service' =
but have no idea if that's in play or not as far as I know.</span></span></=
div>
<div>&nbsp;</div>
<div><span class=3D"sha-block m-0"><span class=3D"sha user-select-contain">=
Thanks.</span></span></div>
</div>

--ciR9aRO8SNIF8MfZW5a3--

