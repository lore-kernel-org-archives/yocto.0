Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web10.9991.1602929591177762800
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 03:13:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=guPAXbWR;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id v23so2897559vsp.6;
        Sat, 17 Oct 2020 03:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=08mHo0BJM+Uj49m7jJlsIv/ASSCVuKd6aRCIUgMQLGw=;
        b=guPAXbWR13cKpS8y+3zL1eXCKruGq7GyIea5ZHF028uBH4LypoNPvvXaJP4fR21diE
         wrWwHnJTwu7PlL+3mkyMydhNOuqqmv1YxtXwB1gxFrb2MNxE6Ht5suML5xwi7mh2kSBO
         g4PEK/U8dwOfhfBPPNBvU5FJc9DAIs0O08axhg+dxNKF5dYi5sVjWIEGkh+Mvd88tCJM
         GScaVrZ1WEkND9pxBF9cZzR3ChNDf+jBBYDkB97kGzgMNbDmnVMUt4GC7eNeB3TRVQSn
         yUtAQ96bd/dAs4LbMfutVkn4ArZtNuK4OfOejdOdlEDad/3YMGIo1BhNatdnsoU9ArC6
         XxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=08mHo0BJM+Uj49m7jJlsIv/ASSCVuKd6aRCIUgMQLGw=;
        b=M+u/8m1jhJmQdTKIBmzEpTCLkM2eMX197/bD+AGFNipe9+90ob6giOAf7GV3HLC/WK
         C6CshC2mX1wU6rcVx/i60x43vo0qT9w71/McT1yT7NAsWq7BE90I7aOKuEgY0gbRUQSN
         yDb51ux2bKegaFWZ8/L1uu4vaIETREmzOJW0mG7IW0b7w2QjF5ZXdT/muv8YsKKO2iso
         S1G/kt3f5nYuGhYQVSt6NeiOwZu9VjZNVO9qMlU4ZQ/AdjTP1jO5M5dMEqi9kTnsIrgu
         LGuTDv624V/ThqhnloKoNdhUmkHwX2aoxXtQZ3utacW0SKRktQyUqDPBl7eTVYC9RdeC
         j4Eg==
X-Gm-Message-State: AOAM531vXWxgPyNAvFkOwQUaS145yxboNPfYG7Jzb1y3SMgV/lQxNdcX
	g9Vo+q+sukgYJ1kiVMotEg8O5+40lG09hTZPVKLG4E9i/4RPkA==
X-Google-Smtp-Source: ABdhPJzWVvec7YG5wmZgkhdFwwesb/8XDvzqEjKDHo0GuDdV17v5LaRxj8Jx/9BqrREhqy7PkwQLSJNfowonScvMIOA=
X-Received: by 2002:a67:8c44:: with SMTP id o65mr4548866vsd.45.1602929589771;
 Sat, 17 Oct 2020 03:13:09 -0700 (PDT)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sat, 17 Oct 2020 15:42:58 +0530
Message-ID: <CAJw=dJ9p32njrkVW_dhftEDbLpF9cSDXj66qbr2cWhnmKieF2A@mail.gmail.com>
Subject: do_fetch error while compiling code
To: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cc61c305b1db2006"

--000000000000cc61c305b1db2006
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team ,
      We are compiling a source code in yocto . but while comiping we are
getting following error . we are not able to find solution for these .

ERROR: Task
(/data/pradeep/inti_dmsv/yocto_build/meta/recipes-multimedia/libsndfile/lib=
sndfile1_1.0.28.bb:do_fetch)
failed with exit code '1'
ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure: Fetch command
export PSEUDO_DISABLED=3D1; export
PATH=3D"/data/pradeep/inti_dmsv/yocto_build/build/tmp/sysroots-uninative/x8=
6_64-linux/usr/bin:/data/pradeep/inti_dmsv/yocto_build/scripts:/data/pradee=
p/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.=
1.15-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/data/pradeep/inti_=
dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0=
/recipe-sysroot/usr/bin/crossscripts:/data/pradeep/inti_dmsv/yocto_build/bu=
ild/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-nat=
ive/usr/sbin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-p=
oky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/bin:/data/pradee=
p/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.=
1.15-r0/recipe-sysroot-native/sbin:/data/pradeep/inti_dmsv/yocto_build/buil=
d/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-nativ=
e/bin:/data/pradeep/inti_dmsv/yocto_build/bitbake/bin:/data/pradeep/inti_dm=
sv/yocto_build/build/tmp/hosttools";
export HOME=3D"/home/pradeep"; /usr/bin/env wget -t 2 -T 30 --passive-ftp
--no-check-certificate -P
/data/pradeep/inti_dmsv/yocto_build/build/downloads '
http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.b=
z2'
--progress=3Ddot -v failed with exit code 4, output:
--2020-10-17 09:20:20--
http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.b=
z2
Resolving xorg.freedesktop.org (xorg.freedesktop.org)... 131.252.210.176,
2610:10:20:722:a800:ff:feda:470f
Connecting to xorg.freedesktop.org
(xorg.freedesktop.org)|131.252.210.176|:80...
connected.
HTTP request sent, awaiting response... Read error (Connection timed out)
in headers.
Retrying.

--2020-10-17 09:20:52--  (try: 2)
http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.b=
z2
Connecting to xorg.freedesktop.org
(xorg.freedesktop.org)|131.252.210.176|:80...
connected.
HTTP request sent, awaiting response... Read error (Connection timed out)
in headers.
Giving up.

ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure for URL: '
http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.b=
z2'.
Unable to fetch URL from any source.
ERROR: libxcursor-1_1.1.15-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/lib=
xcursor/1_1.1.15-r0/temp/log.do_fetch.19859
ERROR: Task
(/data/pradeep/inti_dmsv/yocto_build/meta/recipes-graphics/xorg-lib/libxcur=
sor_1.1.15.bb:do_fetch)
failed with exit code '1'


*what will be the solution for these ?*

--000000000000cc61c305b1db2006
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team ,<div>=C2=A0 =C2=A0 =C2=A0 We are compiling a sour=
ce code in yocto . but while comiping=C2=A0we are getting following error .=
 we are not able to find solution for these .=C2=A0</div><div><br></div><di=
v>ERROR: Task (/data/pradeep/inti_dmsv/yocto_build/meta/recipes-multimedia/=
libsndfile/libsndfile1_1.0.28.bb:do_fetch) failed with exit code &#39;1&#39=
;<br>ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure: Fetch command=
 export PSEUDO_DISABLED=3D1; export PATH=3D&quot;/data/pradeep/inti_dmsv/yo=
cto_build/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/data/pradeep/i=
nti_dmsv/yocto_build/scripts:/data/pradeep/inti_dmsv/yocto_build/build/tmp/=
work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/=
bin/x86_64-poky-linux:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/co=
rei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot/usr/bin/crossscrip=
ts:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/=
libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/sbin:/data/pradeep/inti_dm=
sv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/r=
ecipe-sysroot-native/usr/bin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/=
work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/sbin=
:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/li=
bxcursor/1_1.1.15-r0/recipe-sysroot-native/bin:/data/pradeep/inti_dmsv/yoct=
o_build/bitbake/bin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/hosttools=
&quot;; export HOME=3D&quot;/home/pradeep&quot;; /usr/bin/env wget -t 2 -T =
30 --passive-ftp --no-check-certificate -P /data/pradeep/inti_dmsv/yocto_bu=
ild/build/downloads &#39;<a href=3D"http://xorg.freedesktop.org/releases/in=
dividual/lib/libXcursor-1.1.15.tar.bz2">http://xorg.freedesktop.org/release=
s/individual/lib/libXcursor-1.1.15.tar.bz2</a>&#39; --progress=3Ddot -v fai=
led with exit code 4, output:<br>--2020-10-17 09:20:20-- =C2=A0<a href=3D"h=
ttp://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz=
2">http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.ta=
r.bz2</a><br>Resolving <a href=3D"http://xorg.freedesktop.org">xorg.freedes=
ktop.org</a> (<a href=3D"http://xorg.freedesktop.org">xorg.freedesktop.org<=
/a>)... 131.252.210.176, 2610:10:20:722:a800:ff:feda:470f<br>Connecting to =
<a href=3D"http://xorg.freedesktop.org">xorg.freedesktop.org</a> (<a href=
=3D"http://xorg.freedesktop.org">xorg.freedesktop.org</a>)|131.252.210.176|=
:80... connected.<br>HTTP request sent, awaiting response... Read error (Co=
nnection timed out) in headers.<br>Retrying.<br><br>--2020-10-17 09:20:52--=
 =C2=A0(try: 2) =C2=A0<a href=3D"http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXcursor-1.1.15.tar.bz2">http://xorg.freedesktop.org/releases/i=
ndividual/lib/libXcursor-1.1.15.tar.bz2</a><br>Connecting to <a href=3D"htt=
p://xorg.freedesktop.org">xorg.freedesktop.org</a> (<a href=3D"http://xorg.=
freedesktop.org">xorg.freedesktop.org</a>)|131.252.210.176|:80... connected=
.<br>HTTP request sent, awaiting response... Read error (Connection timed o=
ut) in headers.<br>Giving up.</div><div><br></div><div>ERROR: libxcursor-1_=
1.1.15-r0 do_fetch: Fetcher failure for URL: &#39;<a href=3D"http://xorg.fr=
eedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2">http://xor=
g.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2</a>&#39=
;. Unable to fetch URL from any source.<br>ERROR: libxcursor-1_1.1.15-r0 do=
_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of failure stored =
in: /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux=
/libxcursor/1_1.1.15-r0/temp/log.do_fetch.19859<br>ERROR: Task (/data/prade=
ep/inti_dmsv/yocto_build/meta/recipes-graphics/xorg-lib/libxcursor_1.1.15.b=
b:do_fetch) failed with exit code &#39;1&#39;<br><br>=C2=A0 =C2=A0 =C2=A0<b=
r></div><div><b>what will be the solution for these ?</b></div></div>

--000000000000cc61c305b1db2006--
