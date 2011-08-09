Return-Path: <jani.uusi-rantala@nokia.com>
Received: from mgw-da01.nokia.com (smtp.nokia.com [147.243.128.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F088DE011EF
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 08:57:52 -0700 (PDT)
Received: from vaebh106.NOE.Nokia.com (vaebh106.europe.nokia.com
	[10.160.244.32])
	by mgw-da01.nokia.com (Switch-3.4.4/Switch-3.4.3) with ESMTP id
	p79FvAYZ009161; Tue, 9 Aug 2011 18:57:58 +0300
Received: from smtp.mgd.nokia.com ([65.54.30.5]) by vaebh106.NOE.Nokia.com
	over TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 9 Aug 2011 18:57:47 +0300
Received: from 008-AM1MMR1-005.mgdnok.nokia.com (65.54.30.60) by
	NOK-am1MHUB-01.mgdnok.nokia.com (65.54.30.5) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 9 Aug 2011 17:57:47 +0200
Received: from 008-AM1MPN1-011.mgdnok.nokia.com ([169.254.2.187]) by
	008-AM1MMR1-005.mgdnok.nokia.com ([65.54.30.60]) with mapi id
	14.01.0323.002; Tue, 9 Aug 2011 17:57:46 +0200
From: <jani.uusi-rantala@nokia.com>
To: <yocto@yoctoproject.org>
Thread-Topic: [yocto] Magic/File problems
Thread-Index: AcxWqwalXSgElPh4S1OZvHBM27FWnw==
Date: Tue, 9 Aug 2011 15:57:46 +0000
Message-ID: <B497E783C723AE4386DDEA96AF1D2B989EB3D4@008-AM1MPN1-011.mgdnok.nokia.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.178.239]
MIME-Version: 1.0
X-OriginalArrivalTime: 09 Aug 2011 15:57:47.0484 (UTC)
	FILETIME=[155FE9C0:01CC56AD]
X-Nokia-AV: Clean
Subject: Re: Magic/File problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Aug 2011 15:57:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B497E783C723AE4386DDEA96AF1D2B989EB3D4008AM1MPN1011mgdn_"

--_000_B497E783C723AE4386DDEA96AF1D2B989EB3D4008AM1MPN1011mgdn_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I was experiencing same issue today with latest Yocto master ca394457c5d7b2=
cb4544de7ce2d29008ec6173ae (in Fedora R15):

| error: magic_load(ms, /usr/share/misc/magic) failed: File 5.4 supports on=
ly version 7 magic files. `/usr/share/misc/magic.mgc' is version 8
| rpmbuild.real: rpmfc.c:1154: rpmfcClassify: Assertion `mg !=3D ((void *)0=
)' failed.


This seems to be a problem with rpmbuild using the wrong magic file from rp=
mfcClassify. This kind of simple fix in package_rpm.class appears to work:

Defines _rpmfc_magic_path variable:

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bb=
class
index ddbfc09..3f00857 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -822,6 +822,8 @@ python do_package_rpm () {
        targetvendor =3D bb.data.getVar('TARGET_VENDOR', d, True)
        pkgwritedir =3D bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}',=
 d)
        pkgarch =3D bb.data.expand('${PACKAGE_ARCH}', d)
+       magicfile =3D bb.data.expand('${STAGING_DIR_NATIVE}/usr/share/misc/=
magic.mgc', d)
+
        bb.mkdirhier(pkgwritedir)
        os.chmod(pkgwritedir, 0755)

@@ -834,7 +836,7 @@ python do_package_rpm () {
        cmd =3D cmd + " --define '__find_provides " + outprovides + "'"
        cmd =3D cmd + " --define '_unpackaged_files_terminate_build 0'"
        cmd =3D cmd + " --define 'debug_package %{nil}'"
+       cmd =3D cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
        cmd =3D cmd + " -bb " + outspecfile


- Jani


--_000_B497E783C723AE4386DDEA96AF1D2B989EB3D4008AM1MPN1011mgdn_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">I was experiencing same issue today with latest Yocto master ca39445=
7c5d7b2cb4544de7ce2d29008ec6173ae (in Fedora R15):<br>
<br>
| error: magic_load(ms, /usr/share/misc/magic) failed: File 5.4 supports on=
ly version 7 magic files. `/usr/share/misc/magic.mgc' is version 8<br>
| rpmbuild.real: rpmfc.c:1154: rpmfcClassify: Assertion `mg !=3D ((void *)0=
)' failed.<br>
<br>
<br>
This seems to be a problem with rpmbuild using the wrong magic file from rp=
mfcClassify. This kind of simple fix in package_rpm.class appears to work:<=
br>
<br>
Defines _rpmfc_magic_path variable:<br>
<br>
diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bb=
class<br>
index ddbfc09..3f00857 100644<br>
--- a/meta/classes/package_rpm.bbclass<br>
&#43;&#43;&#43; b/meta/classes/package_rpm.bbclass<br>
@@ -822,6 &#43;822,8 @@ python do_package_rpm () {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; targetvendor =3D bb.data.getVar(=
'TARGET_VENDOR', d, True)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkgwritedir =3D bb.data.expand('=
${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkgarch =3D bb.data.expand('${PA=
CKAGE_ARCH}', d)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; magicfile =3D bb.data.expand('${S=
TAGING_DIR_NATIVE}/usr/share/misc/magic.mgc', d)<br>
&#43;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.mkdirhier(pkgwritedir)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.chmod(pkgwritedir, 0755)<br>
&nbsp;<br>
@@ -834,7 &#43;836,7 @@ python do_package_rpm () {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D cmd &#43; &quot; --defin=
e '__find_provides &quot; &#43; outprovides &#43; &quot;'&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D cmd &#43; &quot; --defin=
e '_unpackaged_files_terminate_build 0'&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D cmd &#43; &quot; --defin=
e 'debug_package %{nil}'&quot;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D cmd &#43; &quot; --define=
 '_rpmfc_magic_path &quot; &#43; magicfile &#43; &quot;'&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D cmd &#43; &quot; -bb &qu=
ot; &#43; outspecfile<br>
<br>
<br>
- Jani<br>
<br>
</div>
</body>
</html>

--_000_B497E783C723AE4386DDEA96AF1D2B989EB3D4008AM1MPN1011mgdn_--
