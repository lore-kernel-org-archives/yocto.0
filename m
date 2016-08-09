Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F093E00EB4; Tue,  9 Aug 2016 04:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.194 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1236]
X-Greylist: delayed 413 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Aug 2016 04:31:14 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 873DFE00E7A
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 04:31:14 -0700 (PDT)
Received: from [216.82.242.131] by server-2.bemta-8.messagelabs.com id
	9B/DB-05338-46DB9A75; Tue, 09 Aug 2016 11:24:20 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRWlGSWpSXmKPExsXinSZ8TDdl78p
	wgz3zRCwmvVzD5sDo0X6ijy2AMYo1My8pvyKBNWP1OuOCedYVUw+dYmtg/GPexcjFISSwmVHi
	4LOVzHDOrsd9bBDOAUaJsxO7gBxODjYBQ4krPXcZQWwRAVOJF8e+gMWFBewk1u+7CRV3lrj89
	Q0rhK0n8XzGRRYQm0VAReLX4ZPsIDavgLvEjMMbmEBsRgFZiS+Nq5lBbGYBcYlbT+aDxSUERC
	QeXjzNBmGLSrx8/I8VwjaQ2Lp0HwuErSCxsruBDaI3TWJF0zYWiPmCEidnPgGzhQRUJbYs/M0
	ygVF4FpIVs5C0zELSAhHPkWjZ3coIYetILNj9iQ3C1pZYtvA1M4x95sBjJkxxR4kbh+9DzVGX
	+DjhAZDNBWSvZZSY8O4xK0RCUWJK90P2BYw8qxjVi1OLylKLdI31kooy0zNKchMzc3QNDSz0c
	lOLixPTU3MSk4r1kvNzNzECI5gBCHYw7v/ndIhRkoNJSZR38uqV4UJ8SfkplRmJxRnxRaU5qc
	WHGGU4OJQkeJt3A+UEi1LTUyvSMnOAqQQmLcHBoyTCm7UHKM1bXJCYW5yZDpE6xagoJc67ECQ
	hAJLIKM2Da4Olr0uMslLCvIxAhwjxFKQW5WaWoMq/YhTnYFQS5t0CMoUnM68EbvoroMVMQIuT
	VFeALC5JREhJNTBqTniW+CDef7Xxbc3tDJ+uLf55uG7ZJnWps7P1dvgLzFqVGCQg3Pn9/L2at
	InXHX7vK1L+oLaoLej7QcujeW8dlT0z1lm/P5ebX/CpcX7/2SgjP09DhUtu5055vDhd/zC000
	aHbVfr74kLXbbkNcnmu6tpiebLudpO7OG4tNl4BqOpxjxmq2tKLMUZiYZazEXFiQDU8GOGWgM
	AAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-11.tower-76.messagelabs.com!1470741859!66999843!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.77; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 7583 invoked from network); 9 Aug 2016 11:24:20 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC02.ad.harman.com)
	(75.102.19.198)
	by server-11.tower-76.messagelabs.com with AES128-SHA encrypted SMTP;
	9 Aug 2016 11:24:20 -0000
Received: from HIBDWSMB05.ad.harman.com (10.99.236.95) by
	HICGWSEXHC02.ad.harman.com (10.10.23.73) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Tue, 9 Aug 2016 06:24:19 -0500
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB05.ad.harman.com (10.99.236.95) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Tue, 9 Aug 2016 16:54:14 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::5058:c273:dbeb:fa1b]) by
	HIBDWSMB02.ad.harman.com ([fe80::5058:c273:dbeb:fa1b%16]) with mapi id
	15.00.1130.005; Tue, 9 Aug 2016 16:54:13 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: useradd does not creates user in rootfs but sysroot ?
Thread-Index: AdHyMI47xDmOL1dhS9eE57ri7B0oxg==
Date: Tue, 9 Aug 2016 11:24:13 +0000
Message-ID: <dfa7690d8eab4e0aaf2e4236dfef0831@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Subject: useradd does not creates user in rootfs but sysroot ?
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
X-List-Received-Date: Tue, 09 Aug 2016 11:31:18 -0000
X-Groupsio-MsgNum: 31422
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_"

--_004_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_
Content-Type: multipart/alternative;
	boundary="_000_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_"

--_000_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Team,

Downloaded   " krogoth" release ,  with intension  to use the above bb  fil=
e  to create users( user1,user2 etc.)  The expectation was that the users s=
hould get created in the "rootfs" .
But to dismay, this get created in the sysroot (poky/build/tmp/sysroots/qem=
ux86/etc/passwd).

This works as expected in  "jethro"  release.  Do we have alternate way to =
achieve the same in  " krogoth" release   ?

Regards
Shrawan



--_000_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Downloaded &nbsp;&nbsp;&#8220; krogoth&#8221; releas=
e , &nbsp;with intension &nbsp;to use the above bb &nbsp;file &nbsp;to crea=
te users( user1,user2 etc.) &nbsp;The expectation was that the users should=
 get created in the &#8220;rootfs&#8221; .
<o:p></o:p></p>
<p class=3D"MsoNormal">But to dismay, this get created in the sysroot (poky=
/build/tmp/sysroots/qemux86/etc/passwd).
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This works as expected in &nbsp;&#8220;jethro&#8221;=
 &nbsp;release. &nbsp;Do we have alternate way to achieve the same in &nbsp=
;&#8220; krogoth&#8221; release&nbsp; &nbsp;?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_--

--_004_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_
Content-Type: application/octet-stream; name="useradd-example.bb"
Content-Description: useradd-example.bb
Content-Disposition: attachment; filename="useradd-example.bb"; size=2652;
	creation-date="Tue, 09 Aug 2016 06:10:00 GMT";
	modification-date="Mon, 08 Aug 2016 09:57:11 GMT"
Content-Transfer-Encoding: base64

U1VNTUFSWSA9ICJFeGFtcGxlIHJlY2lwZSBmb3IgdXNpbmcgaW5oZXJpdCB1c2VyYWRkIgpERVND
UklQVElPTiA9ICJUaGlzIHJlY2lwZSBzZXJ2ZXMgYXMgYW4gZXhhbXBsZSBmb3IgdXNpbmcgZmVh
dHVyZXMgZnJvbSB1c2VyYWRkLmJiY2xhc3MiClNFQ1RJT04gPSAiZXhhbXBsZXMiClBSID0gInIx
IgpMSUNFTlNFID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtDT1JFQkFTRX0v
TElDRU5TRTttZDU9NGQ5MmNkMzczYWJkYTM5MzdjMmJjNDdmYmM0OWQ2OTAgXAogICAgICAgICAg
ICAgICAgICAgIGZpbGU6Ly8ke0NPUkVCQVNFfS9tZXRhL0NPUFlJTkcuTUlUO21kNT0zZGE5Y2Zi
Y2I3ODhjODBhMDM4NDM2MWI0ZGUyMDQyMCIKClNSQ19VUkkgPSAiZmlsZTovL2ZpbGUxIFwKICAg
ICAgICAgICBmaWxlOi8vZmlsZTIgXAogICAgICAgICAgIGZpbGU6Ly9maWxlMyBcCiAgICAgICAg
ICAgZmlsZTovL2ZpbGU0IgoKUyA9ICIke1dPUktESVJ9IgoKUEFDS0FHRVMgPSsgIiR7UE59LXVz
ZXIzIgoKaW5oZXJpdCB1c2VyYWRkCgojIFlvdSBtdXN0IHNldCBVU0VSQUREX1BBQ0tBR0VTIHdo
ZW4geW91IGluaGVyaXQgdXNlcmFkZC4gVGhpcwojIGxpc3RzIHdoaWNoIG91dHB1dCBwYWNrYWdl
cyB3aWxsIGluY2x1ZGUgdGhlIHVzZXIvZ3JvdXAKIyBjcmVhdGlvbiBjb2RlLgpVU0VSQUREX1BB
Q0tBR0VTID0gIiR7UE59ICR7UE59LXVzZXIzIgoKIyBZb3UgbXVzdCBhbHNvIHNldCBVU0VSQURE
X1BBUkFNIGFuZC9vciBHUk9VUEFERF9QQVJBTSB3aGVuCiMgeW91IGluaGVyaXQgdXNlcmFkZC4K
CiMgVVNFUkFERF9QQVJBTSBzcGVjaWZpZXMgY29tbWFuZCBsaW5lIG9wdGlvbnMgdG8gcGFzcyB0
byB0aGUKIyB1c2VyYWRkIGNvbW1hbmQuIE11bHRpcGxlIHVzZXJzIGNhbiBiZSBjcmVhdGVkIGJ5
IHNlcGFyYXRpbmcKIyB0aGUgY29tbWFuZHMgd2l0aCBhIHNlbWljb2xvbi4gSGVyZSB3ZSdsbCBj
cmVhdGUgdHdvIHVzZXJzLAojIHVzZXIxIGFuZCB1c2VyMjoKVVNFUkFERF9QQVJBTV8ke1BOfSA9
ICItdSAxMjAwIC1kIC9ob21lL3VzZXIxIC1yIC1zIC9iaW4vYmFzaCB1c2VyMTsgLXUgMTIwMSAt
ZCAvaG9tZS91c2VyMiAtciAtcyAvYmluL2Jhc2ggdXNlcjIiCgojIHVzZXIzIHdpbGwgYmUgbWFu
YWdlZCBpbiB0aGUgdXNlcmFkZC1leGFtcGxlLXVzZXIzIHBhY2FrZ2U6CiMgQXMgYW4gZXhhbXBs
ZSwgd2UgdXNlIHRoZSAtUCBvcHRpb24gdG8gc2V0IGNsZWFyIHRleHQgcGFzc3dvcmQgZm9yIHVz
ZXIzClVTRVJBRERfUEFSQU1fJHtQTn0tdXNlcjMgPSAiLXUgMTIwMiAtZCAvaG9tZS91c2VyMyAt
ciAtcyAvYmluL2Jhc2ggLVAgJ3VzZXIzJyB1c2VyMyIKCiMgR1JPVVBBRERfUEFSQU0gd29ya3Mg
dGhlIHNhbWUgd2F5LCB3aGljaCB5b3Ugc2V0IHRvIHRoZSBvcHRpb25zCiMgeW91J2Qgbm9ybWFs
bHkgcGFzcyB0byB0aGUgZ3JvdXBhZGQgY29tbWFuZC4gVGhpcyB3aWxsIGNyZWF0ZQojIGdyb3Vw
cyBncm91cDEgYW5kIGdyb3VwMjoKR1JPVVBBRERfUEFSQU1fJHtQTn0gPSAiLWcgODgwIGdyb3Vw
MTsgLWcgODkwIGdyb3VwMiIKCiMgTGlrZXdpc2UsIHdlJ2xsIG1hbmFnZSBncm91cDMgaW4gdGhl
IHVzZXJhZGQtZXhhbXBsZS11c2VyMyBwYWNrYWdlOgpHUk9VUEFERF9QQVJBTV8ke1BOfS11c2Vy
MyA9ICItZyA5MDAgZ3JvdXAzIgoKZG9faW5zdGFsbCAoKSB7CglpbnN0YWxsIC1kIC1tIDc1NSAk
e0R9JHtkYXRhZGlyfS91c2VyMQoJaW5zdGFsbCAtZCAtbSA3NTUgJHtEfSR7ZGF0YWRpcn0vdXNl
cjIKCWluc3RhbGwgLWQgLW0gNzU1ICR7RH0ke2RhdGFkaXJ9L3VzZXIzCgoJaW5zdGFsbCAtcCAt
bSA2NDQgZmlsZTEgJHtEfSR7ZGF0YWRpcn0vdXNlcjEvCglpbnN0YWxsIC1wIC1tIDY0NCBmaWxl
MiAke0R9JHtkYXRhZGlyfS91c2VyMS8KCglpbnN0YWxsIC1wIC1tIDY0NCBmaWxlMiAke0R9JHtk
YXRhZGlyfS91c2VyMi8KCWluc3RhbGwgLXAgLW0gNjQ0IGZpbGUzICR7RH0ke2RhdGFkaXJ9L3Vz
ZXIyLwoKCWluc3RhbGwgLXAgLW0gNjQ0IGZpbGUzICR7RH0ke2RhdGFkaXJ9L3VzZXIzLwoJaW5z
dGFsbCAtcCAtbSA2NDQgZmlsZTQgJHtEfSR7ZGF0YWRpcn0vdXNlcjMvCgoJIyBUaGUgbmV3IHVz
ZXJzIGFuZCBncm91cHMgYXJlIGNyZWF0ZWQgYmVmb3JlIHRoZSBkb19pbnN0YWxsCgkjIHN0ZXAs
IHNvIHlvdSBhcmUgbm93IGZyZWUgdG8gbWFrZSB1c2Ugb2YgdGhlbToKCWNob3duIC1SIHVzZXIx
ICR7RH0ke2RhdGFkaXJ9L3VzZXIxCgljaG93biAtUiB1c2VyMiAke0R9JHtkYXRhZGlyfS91c2Vy
MgoJY2hvd24gLVIgdXNlcjMgJHtEfSR7ZGF0YWRpcn0vdXNlcjMKCgljaGdycCAtUiBncm91cDEg
JHtEfSR7ZGF0YWRpcn0vdXNlcjEKCWNoZ3JwIC1SIGdyb3VwMiAke0R9JHtkYXRhZGlyfS91c2Vy
MgoJY2hncnAgLVIgZ3JvdXAzICR7RH0ke2RhdGFkaXJ9L3VzZXIzCn0KCkZJTEVTXyR7UE59ID0g
IiR7ZGF0YWRpcn0vdXNlcjEvKiAke2RhdGFkaXJ9L3VzZXIyLyoiCkZJTEVTXyR7UE59LXVzZXIz
ID0gIiR7ZGF0YWRpcn0vdXNlcjMvKiIKCiMgUHJldmVudHMgZG9fcGFja2FnZSBmYWlsdXJlcyB3
aXRoOgojIGRlYnVnc291cmNlcy5saXN0OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5OgpJTkhJ
QklUX1BBQ0tBR0VfREVCVUdfU1BMSVQgPSAiMSIK

--_004_dfa7690d8eab4e0aaf2e4236dfef0831HIBDWSMB02adharmancom_--
