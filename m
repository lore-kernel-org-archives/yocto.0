Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E29EE00A10; Tue, 16 Dec 2014 05:58:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00, HTML_IMAGE_ONLY_28, 
	HTML_MESSAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.4 HTML_IMAGE_ONLY_28 BODY: HTML: images with 2400-2800 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8AFF5E009E2;
	Tue, 16 Dec 2014 05:58:09 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Tue, 16 Dec 2014 14:58:04 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>, Otavio Salvador
	<otavio@ossystems.com.br>
Thread-Topic: meta-fsl-ppc uses Openssl 1.0.1g in master
Thread-Index: AdAZN1Z4a+Q6OnPDSp63F686y6cGpg==
Date: Tue, 16 Dec 2014 13:58:03 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Cc: "Paul Eggleton
	\(paul.eggleton@linux.intel.com\)" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Tue, 16 Dec 2014 13:58:16 -0000
X-Groupsio-MsgNum: 22640
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_";
	type="multipart/alternative"

--_004_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_
Content-Type: multipart/alternative;
	boundary="_000_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_"

--_000_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Is there any specific reason why openssl 1.0.1g is used by default? Yocto i=
s using 1.0.1j in master to address some security issues (SSLv3 protocol vu=
lnerability). If there is a strong reason to stay on 1.0.1g, I suggest we a=
pply sslv3 patches  otherwise we just remove this line.

https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine/i=
nclude/qoriq-default-versions.inc

PREFERRED_VERSION_openssl =3D "1.0.1g"

Cheers
Sona

Sona Sarmadi
Software Engineer/Security Responsible for Enea Linux
Enea
Jan Stenbecks torg 17,
Box 1033, SE-164 21 Kista, Sweden
Direct: +46 8 5071  4475
Mobile: +46 70 971 4475
sona.sarmadi@enea.com<mailto:sona.sarmadi@enea.com>
www.enea.com<http://www.enea.com/>

 [cid:image002.jpg@01CFDC00.44AA35B0]

This message, including attachments, is CONFIDENTIAL. It may also be privil=
eged or otherwise protected by law. If you received this email by mistake p=
lease let us know by reply and then delete it from your system; you should =
not copy it or disclose its contents to anyone.




--_000_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Hi guys,</div>
<div>&nbsp;</div>
<div>Is there any specific reason why openssl 1.0.1g is used by default? Yo=
cto is using 1.0.1j in master to address some security issues (SSLv3 protoc=
ol vulnerability). If there is a strong reason to stay on 1.0.1g, I suggest=
 we apply sslv3 patches&nbsp; otherwise
we just remove this line.</div>
<div>&nbsp;</div>
<div><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tre=
e/conf/machine/include/qoriq-default-versions.inc"><font color=3D"#0563C1">=
<u>https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machin=
e/include/qoriq-default-versions.inc</u></font></a></div>
<div>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span style=3D"font-size:10pt;">=
PREFERRED_VERSION_openssl =3D &quot;1.0.1g&quot;</span></font></div>
<div>&nbsp;</div>
<div>Cheers</div>
<div>Sona</div>
<div>&nbsp;</div>
<div><font face=3D"Arial" size=3D"2"><span style=3D"font-size:10pt;">Sona S=
armadi<br>

<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">Software =
Engineer/Security Responsible for Enea Linux<br>

</span></font>Enea<br>

Jan Stenbecks torg 17,<br>

Box 1033, SE-164 21&nbsp;Kista,&nbsp;Sweden<br>

Direct: &#43;46 8 5071&nbsp; 4475<br>

Mobile: &#43;46 70 971 4475</span></font></div>
<div><a href=3D"mailto:sona.sarmadi@enea.com"><font face=3D"Arial" size=3D"=
2" color=3D"blue"><span style=3D"font-size:10pt;"><u>sona.sarmadi@enea.com<=
/u></span></font></a><br>

<a href=3D"http://www.enea.com/"><font face=3D"Arial" size=3D"2" color=3D"b=
lue"><span style=3D"font-size:10pt;"><u>www.enea.com</u></span></font></a><=
font face=3D"Arial" size=3D"2"><span style=3D"font-size:10pt;">
<br>

<br>

</span></font><img src=3D"cid:image002.jpg@01CFDC00.44AA35B0"><img src=3D"c=
id:F6FBF3EE362AD348B7FB00A79B5F6CEB@local"><br>

<br>

<font face=3D"Arial" size=3D"1"><span style=3D"font-size:7.5pt;">This messa=
ge, includin</span></font><font face=3D"Arial" size=3D"1"><span style=3D"fo=
nt-size:7.5pt;">g attachments, is CONFIDENTIAL. It may also be privileged o=
r otherwise protected by law. If you received
this email by mistake please let us know by reply and then delete it from y=
our system; you should not copy it or disclose its contents to anyone.</spa=
n></font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_--

--_004_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_
Content-Type: image/jpeg; name="Picture (Device Independent Bitmap) 1.jpg"
Content-Description: Picture (Device Independent Bitmap) 1.jpg
Content-Disposition: inline;
	filename="Picture (Device Independent Bitmap) 1.jpg";
	creation-date="Tue, 16 Dec 2014 13:58:03 GMT";
	modification-date="Tue, 16 Dec 2014 13:58:03 GMT"
Content-ID: <F6FBF3EE362AD348B7FB00A79B5F6CEB@local>
Content-Transfer-Encoding: base64

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

--_004_3230301C09DEF9499B442BBE162C5E48257EA92FSESTOEX04enease_--
