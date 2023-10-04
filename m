Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB4AE8FDDD
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 08:50:28 +0000 (UTC)
Subject: how to get ubxtool into the build
To: yocto@lists.yoctoproject.org
From: "Dave Hitchman" <dave.hitchman@kymati.com>
X-Originating-Location: US (169.155.255.129)
X-Originating-Platform: Linux Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Oct 2023 01:50:18 -0700
Message-ID: <TV38.1696409418990780293.x1Pm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r6mJdRTCka2fg5NExDbQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 08:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61229

--r6mJdRTCka2fg5NExDbQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So I hav a custom recipe, gpsd is in place and functioning along with cgps,=
 I can see the position nicely.

I have also added per instructions I found the whole list of programs relat=
ed to gps utils...
SUMMARY_gps-utils =3D "Utils used for simulating, monitoring,... a GPS"
# Python files are required for gps/fake, required for gpsfake.
FILES_gps-utils =3D "${bindir}/* ${libdir}/gps/*.py ${libdir}/gps/*.so"
FILES_gps-utils +=3D "${bindir}/cgps ${bindir}/gegps ${bindir}/gps2udp"
FILES_gps-utils +=3D "${bindir}/gpscat ${bindir}/gpscsv ${bindir}/gpsctl"
FILES_gps-utils +=3D "${bindir}/gpsdebuginfo ${bindir}/gpsdecode ${bindir}/=
gpsfake"
FILES_gps-utils +=3D "${bindir}/gpsmon ${bindir}/gpspipe ${bindir}/gpsplot"
FILES_gps-utils +=3D "${bindir}/gpsprof ${bindir}/gpsrinex ${bindir}/gpssnm=
p"
FILES_gps-utils +=3D "${bindir}/gpssubframe ${bindir}/gpxlogger ${bindir}/l=
cdgps "
FILES_gps-utils +=3D "${bindir}/ntpshmmon ${bindir}/ppscheck ${bindir}/ubxt=
ool"
FILES_gps-utils +=3D "${bindir}/xgps ${bindir}/xgpsspeed ${bindir}/zerk"

this appears to build without complaining but when I login to the image mos=
t of those tools (including the ubxtool) appear to be missing - though cgps=
 works as it did BEFORE I added all that list of extra tools. ubxtool doesn=
t appear in the files-in-image.txt which suggests I am not so boneheaded as=
 to not be using a right path (I am a bone head in many respects :) ).=C2=
=A0gps-utils appeas in the installed-packages-names.txt which again isnt su=
rprising as cgps is working (installed packages lists gps-utils_3.20-r0_cor=
texa53-crypto.ipk).

I am making progress with understanding yocto building but this is beyond m=
y ken. I guess the files gps utils above doesnt do anything OR is done too =
late to make a difference but there was no complaint that I could see (unle=
ss someone can point me at the right file to check)

Any hints? Seems others have had some issues which is where I got the above=
 stuff from and others claim ubxtool is built but then for some reason not =
included (seems an odd thing)

--r6mJdRTCka2fg5NExDbQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So I hav a custom recipe, gpsd is in place and functioning along with cgps,=
 I can see the position nicely.<br /><br />I have also added per instructio=
ns I found the whole list of programs related to gps utils...<br />
<div>SUMMARY_gps-utils =3D "Utils used for simulating, monitoring,... a GPS=
"</div>
<div># Python files are required for gps/fake, required for gpsfake.</div>
<div>FILES_gps-utils =3D "${bindir}/* ${libdir}/gps/*.py ${libdir}/gps/*.so=
"</div>
<div>FILES_gps-utils +=3D "${bindir}/cgps ${bindir}/gegps ${bindir}/gps2udp=
"</div>
<div>FILES_gps-utils +=3D "${bindir}/gpscat ${bindir}/gpscsv ${bindir}/gpsc=
tl"</div>
<div>FILES_gps-utils +=3D "${bindir}/gpsdebuginfo ${bindir}/gpsdecode ${bin=
dir}/gpsfake"</div>
<div>FILES_gps-utils +=3D "${bindir}/gpsmon ${bindir}/gpspipe ${bindir}/gps=
plot"</div>
<div>FILES_gps-utils +=3D "${bindir}/gpsprof ${bindir}/gpsrinex ${bindir}/g=
pssnmp"</div>
<div>FILES_gps-utils +=3D "${bindir}/gpssubframe ${bindir}/gpxlogger ${bind=
ir}/lcdgps "</div>
<div>FILES_gps-utils +=3D "${bindir}/ntpshmmon ${bindir}/ppscheck ${bindir}=
/ubxtool"</div>
<div>FILES_gps-utils +=3D "${bindir}/xgps ${bindir}/xgpsspeed ${bindir}/zer=
k"<br /><br />this appears to build without complaining but when I login to=
 the image most of those tools (including the ubxtool) appear to be missing=
 - though cgps works as it did BEFORE I added all that list of extra tools.=
 ubxtool doesnt appear in the files-in-image.txt which suggests I am not so=
 boneheaded as to not be using a right path (I am a bone head in many respe=
cts :) ).&nbsp;gps-utils appeas in the installed-packages-names.txt which a=
gain isnt surprising as cgps is working (installed packages lists gps-utils=
_3.20-r0_cortexa53-crypto.ipk).&nbsp;<br /><br />I am making progress with =
understanding yocto building but this is beyond my ken. I guess the files g=
ps utils above doesnt do anything OR is done too late to make a difference =
but there was no complaint that I could see (unless someone can point me at=
 the right file to check)<br /><br />Any hints? Seems others have had some =
issues which is where I got the above stuff from and others claim ubxtool i=
s built but then for some reason not included (seems an odd thing)</div>

--r6mJdRTCka2fg5NExDbQ--

