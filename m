Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72E2CCD193
	for <webhook@archiver.kernel.org>; Thu, 23 Oct 2025 10:21:01 +0000 (UTC)
Received: from cloud-out-c.spamtitan.com (cloud-out-c.spamtitan.com [52.2.95.112])
 by mx.groups.io with SMTP id smtpd.web10.902.1761008524471828485
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Oct 2025 18:02:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aecontrols.com header.s=mail header.b=Zxm3kH/y;
 spf=pass (domain: aecontrols.com, ip: 52.2.95.112, mailfrom: jweyer@aecontrols.com)
Received: from cloud-out-c.spamtitan.com (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id B23F4D7897
	for <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 01:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aecontrols.com;
	s=mail; t=1761008523;
	bh=XGyV/cDV6/WYPjBIh36d21D8TqaJChPdkHSYmi4gphU=;
	h=From:To:Subject:Date;
	b=Zxm3kH/yHtMl3pB2DA5quwgY6k8OPCuJFhwXJ0lDZJWxKVJ8GxP0HdN2aIde7vgiD
	 QEC7EAr2y3OjI9UPrRubjcXVCIWprc5qSdHi17SPlxzOz02E7r19C/PXFyGVDf5dg1
	 zY67MkVvCcDZtOuNDReGvRm1oDhZ7QllhsKFu9Lr17OzXPnbioK8gChb+S5H0qD/w3
	 uPBolN2ohMArZYplZmnWIehqIumigrL17qUJ/xutrFtH90+vArgxwr02ny0ee0tzQ8
	 GBr416MUcizghKlwPv8t498NcoCaf+UlhFT9434dYZsccIBWGtmZmuTeuChUkNXhgX
	 LvKq0mfC49R5Q==
Received: from localhost (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id AD11BD7891
	for <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 01:02:03 +0000 (UTC)
X-Virus-Scanned: by SpamTitan at ec2.internal
Received: from cloud-out-c.spamtitan.com (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id BEF62D78CE
	for <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 01:02:02 +0000 (UTC)
Authentication-Results: cloud-out-c.spamtitan.com;
        x-trusted-ip=pass
Received: from mail.aecontrols.com (mail.aecontrols.com [50.248.202.241])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTPS id 8E74AD78CB
	for <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 01:02:02 +0000 (UTC)
Received: from AEC-Exchange.AEC.local (192.168.0.46) by AEC-Exchange.AEC.local
 (192.168.0.46) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Mon, 20 Oct
 2025 18:02:01 -0700
Received: from AEC-Exchange.AEC.local ([fe80::a53c:dc10:161f:ae5c]) by
 AEC-Exchange.AEC.local ([fe80::a53c:dc10:161f:ae5c%13]) with mapi id
 15.00.1497.048; Mon, 20 Oct 2025 18:02:01 -0700
From: "Jared Weyer" <jweyer@aecontrols.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Issues with DEPENDS
Thread-Topic: Issues with DEPENDS
Thread-Index: AQHcQiDWYC4fUCIYgUmIp+MANz5ZrQ==
Date: Tue, 21 Oct 2025 01:02:01 +0000
Message-ID: <1761008477730.70625@aecontrols.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_176100847773070625aecontrolscom_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 10:21:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65963

--_000_176100847773070625aecontrolscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Hoping to get some help with an issue I have been having with DEPENDS. I'm =
sure I am missing something obvious, but I can't seem to figure out what is=
 going on. Essentially, I have two recipes, I will call them recipe A and r=
ecipe B; recipe A has a build time dependency on recipe B. To troubleshoot =
the issue, I've reduced recipe A and B to very contrived examples, but the =
issue still persists.


Below is recipe B:

SUMMARY =3D "TI ARM-CGT-CLANG compiler tools"
HOMEPAGE =3D "https://www-a.ti.com/downloads/sds_support/TICodegenerationTo=
ols/download.htm"
LICENSE =3D "CLOSED"

BBCLASSEXTEND =3D "native nativesdk"

# I don't believe I need this... but just in case
SYSROOT_DIRS_NATIVE +=3D " \
    /usr/share/ti \
    /usr
"

FILES:${PN} +=3D " \
   /usr \
"

do_install() {
?    install -d ${D}/usr/share/ti
    install -d ${D}/usr/

    echo test > ${S}/test.txt
    echo test2 > ${S}/test2.txt

    install -m 0755 ${S}/test.txt ${D}/usr/share/ti
    install -m 0755 ${S}/test2.txt ${D}/usr
}

INHIBIT_PACKAGE_STRIP =3D "1"
INHIBIT_SYSROOT_STRIP =3D "1"
INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"

?Below is recipe A:
??
SUMMARY =3D "TI MCU+ SDK for AM263Px"
HOMEPAGE =3D "https://www.ti.com/tool/MCU-PLUS-SDK-AM263PX"
LICENSE =3D "CLOSED"

BBCLASSEXTEND =3D "nativesdk native"

DEPENDS =3D " \
    ti-cgt-armllvm-native \ ### RECIPE B ###
    sysconfig-native \
"

FILES:${PN} +=3D " \
    /usr/share \
"

do_install() {
    install -d ${D}/usr/share
    cp -r ${STAGING_DIR_NATIVE}/. ${D}/usr/share
}

My understanding is that adding the DEPENDS =3D "ti-cgt-armllvm-native" sho=
uld install all files installed by ti-cgt-armllvm (recipe B) into the STAGI=
NG_DIR_NATIVE directory of recipe A; however, this is not occurring as ther=
e is no 'recipe-sysroot-native/usr/test2.txt' or 'recipe-sysroot-native/usr=
/share/ti/test.txt' file in recipe A staging directory.

The issue does seem to be with DEPENDS because recipe B does install the te=
st files correctly when run independently. When looking into this further, =
I found that 'sysroot-components/x86_64/ti-cgt-armllvm-native' (recipe B sy=
sroot components is empty):

tmp-aec/sysroots-components/x86_64/ti-cgt-armllvm-native/
??? sysroot-providers
    ??? ti-cgt-armllvm-native


My understanding is that this directory should contain the test files; howe=
ver, I cannot figure out why it does not.

Does anyone see any obvious mistakes that I am making?

Apologies for the extensive email and thank you to anyone willing to help w=
ith this!!!

- Jared Weyer


--_000_176100847773070625aecontrolscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!-- p { margin-top: 0px; m=
argin-bottom: 0px; }--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,<br>
</p>
<p><br>
</p>
<p>Hoping to get some help with an issue I have been having with DEPENDS. I=
'm sure I am missing something obvious, but I can't seem to figure out what=
 is going on. Essentially, I have two recipes, I will call them recipe A an=
d recipe B; recipe A has a build
 time dependency on recipe B. To troubleshoot the issue, I've reduced&nbsp;=
recipe A and B to very contrived examples, but the issue still persists.<br=
>
</p>
<p><br>
</p>
<p>Below is recipe B:<br>
</p>
<br>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>SUMMARY =3D &quot;TI ARM-CGT-CLANG compiler tools&quot;</div>
<div>HOMEPAGE =3D &quot;https://www-a.ti.com/downloads/sds_support/TICodege=
nerationTools/download.htm&quot;</div>
<div>LICENSE =3D &quot;CLOSED&quot;</div>
<div><br>
</div>
<div>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div>
<div><br>
# I don't believe I need this... but just in case<br>
</div>
<div>SYSROOT_DIRS_NATIVE &#43;=3D &quot; \<br>
</div>
<div>&nbsp; &nbsp; /usr/share/ti \<br>
</div>
<div>&nbsp; &nbsp; /usr<br>
</div>
<div>&quot;<br>
</div>
<div><br>
</div>
<div>FILES:${PN} &#43;=3D &quot; \</div>
<div>&nbsp; &nbsp;/usr \</div>
<div>&quot;</div>
<div><br>
</div>
<div>do_install() {<br>
</div>
</blockquote>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>&#8203;&nbsp; &nbsp;&nbsp;<span style=3D"font-family: Calibri, Arial, =
Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255=
);">install -d ${D}/usr/share/ti</span><br>
</div>
</blockquote>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>&nbsp; &nbsp; install -d ${D}/usr/<br>
</div>
<div><br>
</div>
</blockquote>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>&nbsp; &nbsp; echo test &gt; ${S}/test.txt</div>
<div>&nbsp; &nbsp; echo test2 &gt; ${S}/test2.txt<br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/test.txt ${D}/usr/share/ti</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/test2.txt ${D}/usr<br>
</div>
</blockquote>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>}</div>
<div><br>
</div>
<div>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;</div>
<div>INHIBIT_SYSROOT_STRIP =3D &quot;1&quot;</div>
<div>INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
</div>
<div><br>
</div>
</blockquote>
<span style=3D"font-size: 12pt;">&#8203;Below is recipe A:</span><br>
<span style=3D"font-size: 12pt;">&#8203;</span><span style=3D"font-size: 12=
pt;">&#8203;</span><br>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>SUMMARY =3D &quot;TI MCU&#43; SDK for AM263Px&quot;</div>
<div>HOMEPAGE =3D &quot;https://www.ti.com/tool/MCU-PLUS-SDK-AM263PX&quot;<=
/div>
<div>LICENSE =3D &quot;CLOSED&quot;</div>
<div><br>
</div>
<div>BBCLASSEXTEND =3D &quot;nativesdk native&quot;</div>
<div><br>
</div>
<div>DEPENDS =3D &quot; \</div>
<div>&nbsp; &nbsp; ti-cgt-armllvm-native \ ### RECIPE B&nbsp;###<br>
</div>
<div>&nbsp; &nbsp; sysconfig-native \</div>
<div>&quot;</div>
<div><br>
</div>
<div>FILES:${PN} &#43;=3D &quot; \</div>
<div>&nbsp; &nbsp; /usr/share \</div>
<div>&quot;</div>
<div><br>
</div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}/usr/share</div>
<div>&nbsp; &nbsp; cp -r ${STAGING_DIR_NATIVE}/. ${D}/usr/share&nbsp;<br>
</div>
<div>}<br>
</div>
<br>
</blockquote>
My understanding is that adding the DEPENDS =3D &quot;ti-cgt-armllvm-native=
&quot; should install all files installed by ti-cgt-armllvm (recipe B) into=
 the STAGING_DIR_NATIVE directory of recipe A; however, this is not occurri=
ng as there is no 'recipe-sysroot-native/usr/test2.txt'
 or 'recipe-sysroot-native/usr/share/ti/test.txt' file in recipe A staging =
directory.&nbsp;
<div><br>
</div>
<div>The issue does seem to be with DEPENDS because recipe B&nbsp;does inst=
all the test files correctly when run independently. When looking into this=
 further, I found that 'sysroot-components/x86_64/ti-cgt-armllvm-native' (r=
ecipe B sysroot components is empty):<br>
<br>
</div>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>tmp-aec/sysroots-components/x86_64/ti-cgt-armllvm-native/</div>
<div>&#9492;&#9472;&#9472; sysroot-providers</div>
<div>&nbsp; &nbsp; &#9492;&#9472;&#9472; ti-cgt-armllvm-native<br>
</div>
<br>
</blockquote>
<div><br>
My understanding is that this directory should contain the test files; howe=
ver, I cannot figure out why it does not.<br>
<br>
Does anyone see any obvious mistakes that I am making?<br>
<br>
Apologies for the extensive email and&nbsp;thank you to anyone willing to h=
elp with this!!!&nbsp;</div>
<div><br>
</div>
<div>- Jared Weyer<br>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<p><br>
</p>
</blockquote>
</div>
</body>
</html>

--_000_176100847773070625aecontrolscom_--

