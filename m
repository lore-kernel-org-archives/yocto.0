Return-Path: <vrajaram@cisco.com>
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1534DE00CA8
	for <yocto@yoctoproject.org>; Mon,  7 Apr 2014 05:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=5805; q=dns/txt; s=iport;
	t=1396873960; x=1398083560;
	h=from:to:subject:date:message-id:mime-version;
	bh=LQS/250NIFaRWdgbspk5wgFIdD0JR+ilWJ6O4hD8Hgs=;
	b=Ec6Uagbhj7uHz6AyatmisW/KIHsF2qhDJBdJriNDDvS6xTKMVPewvzsS
	slm0f8v88Cq3QaDiRr3cikgamgpVw51kiRrhPQg2m075LV7XA9Y9LtiB9
	ISGKNpVDksRhAqevNlR2fYcuePwxgrkTqldRXDuqTL0lQblvbkVgkYcuU 0=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhIFAJKaQlOtJA2E/2dsb2JhbABZgkJEO1fFOxZ0giyBCwEMdCcEiAyaGbE7F5MwBJhbgTSRC4Mwgis
X-IronPort-AV: E=Sophos;i="4.97,810,1389744000"; 
	d="scan'208,217";a="315802653"
Received: from alln-core-10.cisco.com ([173.36.13.132])
	by rcdn-iport-6.cisco.com with ESMTP; 07 Apr 2014 12:32:15 +0000
Received: from xhc-aln-x01.cisco.com (xhc-aln-x01.cisco.com [173.36.12.75])
	by alln-core-10.cisco.com (8.14.5/8.14.5) with ESMTP id s37CWFXt018715
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 7 Apr 2014 12:32:15 GMT
Received: from xmb-aln-x10.cisco.com ([169.254.5.135]) by
	xhc-aln-x01.cisco.com ([173.36.12.75]) with mapi id 14.03.0123.003;
	Mon, 7 Apr 2014 07:32:15 -0500
From: "Vinodh Rajaraman (vrajaram)" <vrajaram@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Provides/Depends
Thread-Index: AQHPUl1nD6lftrqrJ06oALLpFN/sXg==
Date: Mon, 7 Apr 2014 12:32:14 +0000
Message-ID: <CF689193.37F0%vrajaram@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.142.105.204]
MIME-Version: 1.0
Subject: Provides/Depends
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Apr 2014 12:32:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CF68919337F0vrajaramciscocom_"

--_000_CF68919337F0vrajaramciscocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Am new to BitBake, and would need some help understanding RPROVIDES/RDEPEND=
S and how I need to write Recipes with respect to these. Am writing a new R=
ecipe to generate a RPM, and we get few dependency errors as below.

Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no pack=
age provides libdevmapper.so.1.02
Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no pack=
age provides /usr/bin/expect
Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no pack=
age provides libicudata.so.36


In my workspace, I see that nobody is providing this library, but a rpm que=
ry on system yields as below

$ rpm --query --provides device-mapper
libdevmapper-event.so.1.02()(64bit)
libdevmapper-event.so.1.02(Base)(64bit)
libdevmapper.so.1.02()(64bit)
libdevmapper.so.1.02(Base)(64bit)
device-mapper =3D 1.02.67-2.el5
libdevmapper-event.so.1.02
libdevmapper-event.so.1.02(Base)
libdevmapper.so.1.02
libdevmapper.so.1.02(Base)
device-mapper =3D 1.02.67-2.el5

I see that there is a package that provides this library that my Bitbake re=
cipe is dependent on.
sjc-ads-1625:/ws/vrajaram-sjc/demo/satori/target-n9000/bitbake_build/tmp/wo=
rk=3D>$find . -name "libicudata*"
./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so.36.0
./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so.36
./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so
./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so.36.0
./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so.36
./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so
./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so.36.0
./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so
./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so.36

sjc-ads-1625:/ws/vrajaram-sjc/demo/satori/target-n9000/bitbake_build/tmp/wo=
rk=3D>$which expect
/usr/bin/expect


Now question is, how do I make my recipe refer to above packages, or librar=
ies ? Do I need to add them to RDEPENDS_{PN} +=3D " " ? And what syntax sho=
uld I use for referencing for each case above? Not sure from where I can ge=
t /usr/bin/expect from ? Should we download ?

Vinodh

--_000_CF68919337F0vrajaramciscocom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <956146E189F29841A22B6D9AEFF21EBE@emea.cisco.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px; font-fami=
ly: Baskerville, sans-serif; ">
<div>Hi,</div>
<div><br>
</div>
<div>Am new to BitBake, and would need some help understanding RPROVIDES/RD=
EPENDS and how I need to write Recipes with respect to these. Am writing a =
new Recipe to generate a RPM, and we get few dependency errors as below.</d=
iv>
<div><br>
</div>
<div>Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no=
 package provides libdevmapper.so.1.02</div>
<div>Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no=
 package provides /usr/bin/expect</div>
<div>Computing transaction...error: Can't install core-1.0-r0@lib32_x86: no=
 package provides libicudata.so.36</div>
<div><br>
</div>
<div><br>
</div>
<div>In my workspace, I see that nobody is providing this library, but a rp=
m query on system yields as below</div>
<div><br>
</div>
<div>
<div>$ rpm --query --provides device-mapper</div>
<div>libdevmapper-event.so.1.02()(64bit)</div>
<div>libdevmapper-event.so.1.02(Base)(64bit)</div>
<div>libdevmapper.so.1.02()(64bit)</div>
<div>libdevmapper.so.1.02(Base)(64bit)</div>
<div>device-mapper =3D 1.02.67-2.el5</div>
<div>libdevmapper-event.so.1.02</div>
<div>libdevmapper-event.so.1.02(Base)</div>
<div><b>libdevmapper.so.1.02</b></div>
<div><b>libdevmapper.so.1.02(Base)</b></div>
<div>device-mapper =3D 1.02.67-2.el5</div>
</div>
<div><br>
</div>
<div>I see that there is a package that provides this library that my Bitba=
ke recipe is dependent on.</div>
<div>
<div>sjc-ads-1625:/ws/vrajaram-sjc/demo/satori/target-n9000/bitbake_build/t=
mp/work=3D&gt;$find . -name &quot;libicudata*&quot;</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so.36.0</=
div>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so.36</di=
v>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/stubdata/libicudata.so</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so.36.0</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so.36</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/icu/source/lib/libicudata.so</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so.36.0</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so</div>
<div>./x86_64-wrs-linux/icu-3.6-r7/image/usr/lib64/libicudata.so.36</div>
</div>
<div><br>
</div>
<div>
<div>sjc-ads-1625:/ws/vrajaram-sjc/demo/satori/target-n9000/bitbake_build/t=
mp/work=3D&gt;$which expect</div>
<div>/usr/bin/expect</div>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Now question is, how do I make my recipe refer to above packages, or l=
ibraries ? Do I need to add them to RDEPENDS_{PN} &#43;=3D &quot; &quot; ? =
And what syntax should I use for referencing for each case above? Not sure =
from where I can get /usr/bin/expect from ? Should
 we download ?</div>
<div><br>
</div>
<div>Vinodh</div>
</body>
</html>

--_000_CF68919337F0vrajaramciscocom_--
