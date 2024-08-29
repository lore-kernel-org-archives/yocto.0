Return-Path: <cebel.efecan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25C0C83039
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 10:47:53 +0000 (UTC)
Subject: Re: [yocto] Parallel task limit issue on 80 core (2 CPU) system
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Efecan Cebel" <cebel.efecan@gmail.com>
X-Originating-Location: Victoria, AU (155.190.60.30)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Aug 2024 03:47:46 -0700
References: <CANNYZj_Ls-58iQkQOXbQMP2NTAKWBn08ivkwUJ8_y2NcAQ5KXA@mail.gmail.com>
In-Reply-To: <CANNYZj_Ls-58iQkQOXbQMP2NTAKWBn08ivkwUJ8_y2NcAQ5KXA@mail.gmail.com>
Message-ID: <11473.1724928466443946335@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QldU6XCxTincwBD26Hfv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 10:47:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63766

--QldU6XCxTincwBD26Hfv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Since you cannot see the image, I am adding the image I took during the bui=
ld process as a log below.

Currently 58 running tasks (4463 of 10569) 42%
gcc-source-12.3.0-12.3.0-r0 do_fetch - 9m59s (pid 3098128) 95%
systend-1_253.1-r0 do_fetch - 9ma3s (pid 3105813) 20% |#FMHHHIHHIHEHIHIHIHI=
IHES
rpm-native-1_4.18.1-r0 do_fetch - 9md2s (pid 3106271) 36%
qtbase-native-6.5.0-r0 do_fetch - 9m35s (pid 3112941) 40%
: vulkan-headers-1.3.239.0-r0 do_fetch - 9m35s (pid 3113002) 85%
qtbase-6.5.0-r0 do_fetch - 9m34s (pid 3113027)
qtdeclarative-native-6.5.0-r0 do_fetch - 9m25s (pid 3116190) 54%
qtdeclarative-6.5.0-r0 do_fetch - 9m24s (pid 3116820)
protobuf-native-3.21.12-r0 do_fetch - 9m12s (pid 3124608) 22% |HHHHHHIHEHIH=
IHIHITHIHIRIINE
protobuf-3.21.12-r0 do_fetch - 9m12s (pid 3124638)
openjpeg-2.5.6-r0 do_fetch - 8m31s (pid 3135091) 39%
qtquick3d-6.5.0-r0 do_fetch - 8mi2s (pid 3143227) 50%
qtquick3d-native-6.5.0-r@ do_fetch - 8mils (pid 3143496)
python3-pillow-9.4.0-r0 do_fetch - 7mdds (pid 3189167) 23% |HAMHIHHIHHHIAHH=
IHIIHIHIRAINS
thb-1_2021.8.6-r0 do_fetch - 7m37s (pid 3214348) 80%
tesseract-5.3.0-r0 do_fetch - 7m15s (pid 3283840) 72%
cross-localedef-native-2.37-r0 do_fetch - 7m10s (pid 3308595) 11% |mwmuwsni=
ns
googletest-1.13.0-r0 do_fetch - 7m8s (pid 3312882) 80%
glm-0.9.9.8+0.9.9.9+g1tAUTOINC+efec5dbos1-ro do_fetch - 7m7s (pid 3314028) =
66%
nlohmann-json-3.11.2-r do_fetch - 7mds (pid 3317884) 14% |wummstustnins
assimp-5.2.5-r0 do_fetch - 6ms8s (pid 3329388) 26%
flatbuffers-2.0.7-r0 do_fetch - 6m57s (pid 3329660) 56%
flatbuffers-native-2.0.7-r0 do_fetch - 6m56s (pid 3332064)
tensor flow-protobuf-3.9.2-r0 do_fetch - 6mils (pid 3479741) 21% |wmwwmunsm=
nummununmununsny
tensor flow-protobuf-native-3.9.2-ro do_fetch - 6n7s (pid 3494283)
vin-native-9.0.1592-r0 do_fetch - 6m6s (pid 3498144) 6% |wmwwnun
notary-0.6.1+gitAUTOINC+d6e1431feb-r0 do_fetch - 6mis (pid 3505280) 83%
go-distribution-2.6.6+gitAUTOINC+28602af35a-r6 do_fetch - 6mis (pid 3505950=
) 46% |
grpc-go-1.41.0+gitAUTOINC+5d8e5aad46-re do_fetch - 6mos (pid 3506630) 61%
renderdoc-1.17.imx-r@ do_fetch - 5m35s (pid 3537352) 15% |#ststuintns
vulkan-loader-1.3.239.0-r0 do_fetch - 5m31s (pid 3559029) 51%
ot-daemon-0.1+g1tAUTOINC+98e644d538-r0 do_fetch - 5m30s (pid 3562942) 5% |#=
##u#
glibc-2.37-r1 do_unpack - 4m49s (pid 3606954)
1tp-20230127-r0 do_fetch - 4n37s (pid 3612944) 24% |HmERHHHH HEH IRHTIEHIAH=
HIRITINY
linux-firmware-1_20230515-r0 do_fetch - 3m55s (pid 3644566) 23% |AHHHMHAHIH=
HHIHHHIHHIRIHIANE
ghostscript-10.0.0-r0 do_fetch - 3m43s (pid 3654249) 60%
demo-experience-voice-demo-1.0+AUTOINC+f43c722686_ab9896ecd3-ro do_fetch - =
3maes (pid 3655714) 62%
tesseract-lang-4.1.0-r@ do_fetch - 3m32s (pid 3661577) 0%
cortexn-toolchain-cross-armv7e-n-10.3-2021.10-r0 do_fetch - 3m24s (pid 3681=
451) 27% |MtH#HAHIEHIHHHIEHIHIHIRIINY
boost-build-native-1_1.81.0-r@ do_fetch - 3m23s (pid 3682781) 42%
boost-native-1.81.0-r0 do_fetch - 3m22s (pid 3683030) 21% |#MHHIHHHEHIHHHIE=
HIHINT
ghostscript-native-10.0.0-r0 do_fetch - 3m18s (pid 3689764)
android-tools-5.1.1.r37-r@ do_fetch - 2m55s (pid 3725026) 87%
nss-native-3.74-ro do_compile - 2m23s (pid 3785347)
cmake-native-3.25.2-r6 do_configure - 1m22s (pid 3913462)
parted-native-3.5-ro do_configure - 53s (pid 3972009)
iso-codes-4.15.0-r0 do_install - 28s (pid 4027719)
binutils-cross-aarch64-2.40-ro do_compile - 11s (pid 4047164)
: linux-libc-headers-6.1-r0 do_unpack - 9s (pid 4051739)
coreutils-native-9.1-ro do_compile - 7s (pid 4056462)
dpkg-native-1.21.22-r@ do_compile - 3s (pid 4071241)

Best regards.
Efecan

--QldU6XCxTincwBD26Hfv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>Since you cannot see the image, I am adding the image I took during th=
e build process as a log below.</div>
<div>&nbsp;</div>
<div>Currently 58 running tasks (4463 of 10569) 42%<br />gcc-source-12.3.0-=
12.3.0-r0 do_fetch - 9m59s (pid 3098128) 95%<br />systend-1_253.1-r0 do_fet=
ch - 9ma3s (pid 3105813) 20% |#FMHHHIHHIHEHIHIHIHIIHES<br />rpm-native-1_4.=
18.1-r0 do_fetch - 9md2s (pid 3106271) 36%<br />qtbase-native-6.5.0-r0 do_f=
etch - 9m35s (pid 3112941) 40%<br />: vulkan-headers-1.3.239.0-r0 do_fetch =
- 9m35s (pid 3113002) 85%<br />qtbase-6.5.0-r0 do_fetch - 9m34s (pid 311302=
7)<br />qtdeclarative-native-6.5.0-r0 do_fetch - 9m25s (pid 3116190) 54%<br=
 />qtdeclarative-6.5.0-r0 do_fetch - 9m24s (pid 3116820)<br />protobuf-nati=
ve-3.21.12-r0 do_fetch - 9m12s (pid 3124608) 22% |HHHHHHIHEHIHIHIHITHIHIRII=
NE<br />protobuf-3.21.12-r0 do_fetch - 9m12s (pid 3124638)<br />openjpeg-2.=
5.6-r0 do_fetch - 8m31s (pid 3135091) 39%<br />qtquick3d-6.5.0-r0 do_fetch =
- 8mi2s (pid 3143227) 50%<br />qtquick3d-native-6.5.0-r@ do_fetch - 8mils (=
pid 3143496)<br />python3-pillow-9.4.0-r0 do_fetch - 7mdds (pid 3189167) 23=
% |HAMHIHHIHHHIAHHIHIIHIHIRAINS<br />thb-1_2021.8.6-r0 do_fetch - 7m37s (pi=
d 3214348) 80%<br />tesseract-5.3.0-r0 do_fetch - 7m15s (pid 3283840) 72%<b=
r />cross-localedef-native-2.37-r0 do_fetch - 7m10s (pid 3308595) 11% |mwmu=
wsnins<br />googletest-1.13.0-r0 do_fetch - 7m8s (pid 3312882) 80%<br />glm=
-0.9.9.8+0.9.9.9+g1tAUTOINC+efec5dbos1-ro do_fetch - 7m7s (pid 3314028) 66%=
<br />nlohmann-json-3.11.2-r do_fetch - 7mds (pid 3317884) 14% |wummstustni=
ns<br />assimp-5.2.5-r0 do_fetch - 6ms8s (pid 3329388) 26%<br />flatbuffers=
-2.0.7-r0 do_fetch - 6m57s (pid 3329660) 56%<br />flatbuffers-native-2.0.7-=
r0 do_fetch - 6m56s (pid 3332064)<br />tensor flow-protobuf-3.9.2-r0 do_fet=
ch - 6mils (pid 3479741) 21% |wmwwmunsmnummununmununsny<br />tensor flow-pr=
otobuf-native-3.9.2-ro do_fetch - 6n7s (pid 3494283)<br />vin-native-9.0.15=
92-r0 do_fetch - 6m6s (pid 3498144) 6% |wmwwnun<br />notary-0.6.1+gitAUTOIN=
C+d6e1431feb-r0 do_fetch - 6mis (pid 3505280) 83%<br />go-distribution-2.6.=
6+gitAUTOINC+28602af35a-r6 do_fetch - 6mis (pid 3505950) 46% |<br />grpc-go=
-1.41.0+gitAUTOINC+5d8e5aad46-re do_fetch - 6mos (pid 3506630) 61%<br />ren=
derdoc-1.17.imx-r@ do_fetch - 5m35s (pid 3537352) 15% |#ststuintns<br />vul=
kan-loader-1.3.239.0-r0 do_fetch - 5m31s (pid 3559029) 51%<br />ot-daemon-0=
.1+g1tAUTOINC+98e644d538-r0 do_fetch - 5m30s (pid 3562942) 5% |###u#<br />g=
libc-2.37-r1 do_unpack - 4m49s (pid 3606954)<br />1tp-20230127-r0 do_fetch =
- 4n37s (pid 3612944) 24% |HmERHHHH HEH IRHTIEHIAHHIRITINY<br />linux-firmw=
are-1_20230515-r0 do_fetch - 3m55s (pid 3644566) 23% |AHHHMHAHIHHHIHHHIHHIR=
IHIANE<br />ghostscript-10.0.0-r0 do_fetch - 3m43s (pid 3654249) 60%<br />d=
emo-experience-voice-demo-1.0+AUTOINC+f43c722686_ab9896ecd3-ro do_fetch - 3=
maes (pid 3655714) 62%<br />tesseract-lang-4.1.0-r@ do_fetch - 3m32s (pid 3=
661577) 0%<br />cortexn-toolchain-cross-armv7e-n-10.3-2021.10-r0 do_fetch -=
 3m24s (pid 3681451) 27% |MtH#HAHIEHIHHHIEHIHIHIRIINY<br />boost-build-nati=
ve-1_1.81.0-r@ do_fetch - 3m23s (pid 3682781) 42%<br />boost-native-1.81.0-=
r0 do_fetch - 3m22s (pid 3683030) 21% |#MHHIHHHEHIHHHIEHIHINT<br />ghostscr=
ipt-native-10.0.0-r0 do_fetch - 3m18s (pid 3689764)<br />android-tools-5.1.=
1.r37-r@ do_fetch - 2m55s (pid 3725026) 87%<br />nss-native-3.74-ro do_comp=
ile - 2m23s (pid 3785347)<br />cmake-native-3.25.2-r6 do_configure - 1m22s =
(pid 3913462)<br />parted-native-3.5-ro do_configure - 53s (pid 3972009)<br=
 />iso-codes-4.15.0-r0 do_install - 28s (pid 4027719)<br />binutils-cross-a=
arch64-2.40-ro do_compile - 11s (pid 4047164)<br />: linux-libc-headers-6.1=
-r0 do_unpack - 9s (pid 4051739)<br />coreutils-native-9.1-ro do_compile - =
7s (pid 4056462)<br />dpkg-native-1.21.22-r@ do_compile - 3s (pid 4071241)<=
/div>
<div>&nbsp;</div>
<div>Best regards.</div>
<div>Efecan</div>

--QldU6XCxTincwBD26Hfv--

