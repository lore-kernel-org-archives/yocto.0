Return-Path: <kanapathy.murugayah@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F345DE002A8
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 01:06:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2012 01:06:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="log'?scan'208,217";a="170336292"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2012 01:06:43 -0700
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 11 Jul 2012 16:05:09 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.79]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.83]) with mapi id
	14.01.0355.002; Wed, 11 Jul 2012 16:05:09 +0800
From: "Murugayah, Kanapathy" <kanapathy.murugayah@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unable to start X on Yocto 1.2
Thread-Index: Ac1fAQdV/xl5TTe0S162ZPBSeERK+gAOtIFQ
Date: Wed, 11 Jul 2012 08:05:09 +0000
Message-ID: <DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: FW: Unable to start X on Yocto 1.2
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
X-List-Received-Date: Wed, 11 Jul 2012 08:06:46 -0000
X-Groupsio-MsgNum: 7822
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_"

--_004_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_
Content-Type: multipart/alternative;
	boundary="_000_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_"

--_000_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi I am having some issues with Yocto 1.2 on Crownbay.
After building an image (core-image-sato) with crownbay bsp + emgd, it fail=
s to startx.


Regards,
Kanapathy Murugayah


--_000_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Neo Sans Intel";
	panose-1:2 11 5 4 2 2 2 2 2 4;}
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
	{mso-style-type:personal;
	font-family:"Neo Sans Intel","sans-serif";
	color:#002060;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Neo Sans Intel","sans-serif";
	color:#5F497A;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ne=
o Sans Intel&quot;,&quot;sans-serif&quot;;color:#002060">Hi I am having som=
e issues with Yocto 1.2 on Crownbay.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ne=
o Sans Intel&quot;,&quot;sans-serif&quot;;color:#002060">After building an =
image (core-image-sato) with crownbay bsp &#43; emgd, it fails to startx.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ne=
o Sans Intel&quot;,&quot;sans-serif&quot;;color:#002060"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ne=
o Sans Intel&quot;,&quot;sans-serif&quot;;color:#002060"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:12.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:#002060">Regards,<o:p></o:p></=
span></i></b></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:12.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:#002060">Kanapathy Murugayah
<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_--

--_004_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_
Content-Type: application/octet-stream; name="Xorg.0.log"
Content-Description: Xorg.0.log
Content-Disposition: attachment; filename="Xorg.0.log"; size=6535;
	creation-date="Wed, 11 Jul 2012 01:02:42 GMT";
	modification-date="Wed, 11 Jul 2012 01:02:42 GMT"
Content-Transfer-Encoding: base64

WzE0NDI5NDcuODMzXSAKWC5PcmcgWCBTZXJ2ZXIgMS45LjMKUmVsZWFzZSBEYXRlOiAyMDEwLTEy
LTEzClsxNDQyOTQ3LjgzM10gWCBQcm90b2NvbCBWZXJzaW9uIDExLCBSZXZpc2lvbiAwClsxNDQy
OTQ3LjgzM10gQnVpbGQgT3BlcmF0aW5nIFN5c3RlbTogTGludXggMy4yLjAtMjUtZ2VuZXJpYyB4
ODZfNjQgClsxNDQyOTQ3LjgzM10gQ3VycmVudCBPcGVyYXRpbmcgU3lzdGVtOiBMaW51eCBjcm93
bmJheSAzLjIuMTgteW9jdG8tc3RhbmRhcmQgIzEgU01QIFBSRUVNUFQgVGh1IEp1bCA1IDA0OjEy
OjAyIE1ZVCAyMDEyIGk2ODYKWzE0NDI5NDcuODMzXSBLZXJuZWwgY29tbWFuZCBsaW5lOiBpbml0
cmQ9L2luaXRyZCBMQUJFTD1ib290IHJvb3Q9L2Rldi9yYW0wIHZpZGVvPXZlc2FmYiB2Z2E9MHgz
MTggQk9PVF9JTUFHRT0vdm1saW51eiAKWzE0NDI5NDcuODM0XSBCdWlsZCBEYXRlOiAwNSBKdWx5
IDIwMTIgIDA0OjI4OjI5QU0KWzE0NDI5NDcuODM0XSAgClsxNDQyOTQ3LjgzNF0gQ3VycmVudCB2
ZXJzaW9uIG9mIHBpeG1hbjogMC4yNS4yClsxNDQyOTQ3LjgzNF0gCUJlZm9yZSByZXBvcnRpbmcg
cHJvYmxlbXMsIGNoZWNrIGh0dHA6Ly93aWtpLngub3JnCgl0byBtYWtlIHN1cmUgdGhhdCB5b3Ug
aGF2ZSB0aGUgbGF0ZXN0IHZlcnNpb24uClsxNDQyOTQ3LjgzNF0gTWFya2VyczogKC0tKSBwcm9i
ZWQsICgqKikgZnJvbSBjb25maWcgZmlsZSwgKD09KSBkZWZhdWx0IHNldHRpbmcsCgkoKyspIGZy
b20gY29tbWFuZCBsaW5lLCAoISEpIG5vdGljZSwgKElJKSBpbmZvcm1hdGlvbmFsLAoJKFdXKSB3
YXJuaW5nLCAoRUUpIGVycm9yLCAoTkkpIG5vdCBpbXBsZW1lbnRlZCwgKD8/KSB1bmtub3duLgpb
MTQ0Mjk0Ny44MzVdICg9PSkgTG9nIGZpbGU6ICIvdmFyL2xvZy9Yb3JnLjAubG9nIiwgVGltZTog
VGh1IEp1bCAgNSAwNzoxOTowNCAyMDEyClsxNDQyOTQ3Ljg4NV0gKD09KSBVc2luZyBjb25maWcg
ZmlsZTogIi9ldGMvWDExL3hvcmcuY29uZiIKWzE0NDI5NDcuODg1XSAoPT0pIFVzaW5nIHN5c3Rl
bSBjb25maWcgZGlyZWN0b3J5ICIvdXNyL3NoYXJlL1gxMS94b3JnLmNvbmYuZCIKWzE0NDI5NDcu
ODk3XSAoPT0pIFNlcnZlckxheW91dCAiRGVmYXVsdCBMYXlvdXQiClsxNDQyOTQ3Ljg5N10gKCoq
KSB8LS0+U2NyZWVuICJTY3JlZW4wIiAoMCkKWzE0NDI5NDcuODk3XSAoKiopIHwgICB8LS0+TW9u
aXRvciAiPGRlZmF1bHQgbW9uaXRvcj4iClsxNDQyOTQ3Ljg5OF0gKCoqKSB8ICAgfC0tPkRldmlj
ZSAiSW50ZWxFTUdELTAiClsxNDQyOTQ3Ljg5OF0gKD09KSBObyBtb25pdG9yIHNwZWNpZmllZCBm
b3Igc2NyZWVuICJTY3JlZW4wIi4KCVVzaW5nIGEgZGVmYXVsdCBtb25pdG9yIGNvbmZpZ3VyYXRp
b24uClsxNDQyOTQ3Ljg5OF0gKCoqKSBPcHRpb24gIkRvbnRaYXAiICIwIgpbMTQ0Mjk0Ny44OThd
ICgqKikgT3B0aW9uICJBdXRvQWRkRGV2aWNlcyIgIkZhbHNlIgpbMTQ0Mjk0Ny44OThdICgqKikg
Tm90IGF1dG9tYXRpY2FsbHkgYWRkaW5nIGRldmljZXMKWzE0NDI5NDcuODk4XSAoPT0pIEF1dG9t
YXRpY2FsbHkgZW5hYmxpbmcgZGV2aWNlcwpbMTQ0Mjk0Ny45MDBdIChXVykgVGhlIGRpcmVjdG9y
eSAiL3Vzci9zaGFyZS9mb250cy9YMTEvbWlzYy8iIGRvZXMgbm90IGV4aXN0LgpbMTQ0Mjk0Ny45
MDBdIAlFbnRyeSBkZWxldGVkIGZyb20gZm9udCBwYXRoLgpbMTQ0Mjk0Ny45MDBdIChXVykgVGhl
IGRpcmVjdG9yeSAiL3Vzci9zaGFyZS9mb250cy9YMTEvVFRGLyIgZG9lcyBub3QgZXhpc3QuClsx
NDQyOTQ3LjkwMF0gCUVudHJ5IGRlbGV0ZWQgZnJvbSBmb250IHBhdGguClsxNDQyOTQ3LjkwMF0g
KFdXKSBUaGUgZGlyZWN0b3J5ICIvdXNyL3NoYXJlL2ZvbnRzL1gxMS9PVEYvIiBkb2VzIG5vdCBl
eGlzdC4KWzE0NDI5NDcuOTAxXSAJRW50cnkgZGVsZXRlZCBmcm9tIGZvbnQgcGF0aC4KWzE0NDI5
NDcuOTAxXSAoV1cpIFRoZSBkaXJlY3RvcnkgIi91c3Ivc2hhcmUvZm9udHMvWDExL1R5cGUxLyIg
ZG9lcyBub3QgZXhpc3QuClsxNDQyOTQ3LjkwMV0gCUVudHJ5IGRlbGV0ZWQgZnJvbSBmb250IHBh
dGguClsxNDQyOTQ3LjkwMV0gKFdXKSBUaGUgZGlyZWN0b3J5ICIvdXNyL3NoYXJlL2ZvbnRzL1gx
MS8xMDBkcGkvIiBkb2VzIG5vdCBleGlzdC4KWzE0NDI5NDcuOTAxXSAJRW50cnkgZGVsZXRlZCBm
cm9tIGZvbnQgcGF0aC4KWzE0NDI5NDcuOTAxXSAoV1cpIFRoZSBkaXJlY3RvcnkgIi91c3Ivc2hh
cmUvZm9udHMvWDExLzc1ZHBpLyIgZG9lcyBub3QgZXhpc3QuClsxNDQyOTQ3LjkwMV0gCUVudHJ5
IGRlbGV0ZWQgZnJvbSBmb250IHBhdGguClsxNDQyOTQ3LjkwMV0gKD09KSBGb250UGF0aCBzZXQg
dG86CgkKWzE0NDI5NDcuOTAxXSAoPT0pIE1vZHVsZVBhdGggc2V0IHRvICIvdXNyL2xpYi94b3Jn
L21vZHVsZXMiClsxNDQyOTQ3LjkwMV0gKD09KSB8LS0+SW5wdXQgRGV2aWNlICI8ZGVmYXVsdCBw
b2ludGVyPiIKWzE0NDI5NDcuOTAxXSAoPT0pIHwtLT5JbnB1dCBEZXZpY2UgIjxkZWZhdWx0IGtl
eWJvYXJkPiIKWzE0NDI5NDcuOTAxXSAoPT0pIFRoZSBjb3JlIHBvaW50ZXIgZGV2aWNlIHdhc24n
dCBzcGVjaWZpZWQgZXhwbGljaXRseSBpbiB0aGUgbGF5b3V0LgoJVXNpbmcgdGhlIGRlZmF1bHQg
bW91c2UgY29uZmlndXJhdGlvbi4KWzE0NDI5NDcuOTAxXSAoPT0pIFRoZSBjb3JlIGtleWJvYXJk
IGRldmljZSB3YXNuJ3Qgc3BlY2lmaWVkIGV4cGxpY2l0bHkgaW4gdGhlIGxheW91dC4KCVVzaW5n
IHRoZSBkZWZhdWx0IGtleWJvYXJkIGNvbmZpZ3VyYXRpb24uClsxNDQyOTQ3LjkwMV0gKElJKSBM
b2FkZXIgbWFnaWM6IDB4ODIxMjQwMApbMTQ0Mjk0Ny45MDFdIChJSSkgTW9kdWxlIEFCSSB2ZXJz
aW9uczoKWzE0NDI5NDcuOTAxXSAJWC5PcmcgQU5TSSBDIEVtdWxhdGlvbjogMC40ClsxNDQyOTQ3
LjkwMV0gCVguT3JnIFZpZGVvIERyaXZlcjogOC4wClsxNDQyOTQ3LjkwMV0gCVguT3JnIFhJbnB1
dCBkcml2ZXIgOiAxMS4wClsxNDQyOTQ3LjkwMV0gCVguT3JnIFNlcnZlciBFeHRlbnNpb24gOiA0
LjAKWzE0NDI5NDcuOTA3XSAoLS0pIFBDSToqKDA6MDoyOjApIDgwODY6NDEwODowMDAwOjAwMDAg
cmV2IDMsIE1lbSBAIDB4ZDAwMDAwMDAvMTA0ODU3NiwgMHhhMDAwMDAwMC81MzY4NzA5MTIsIDB4
ZDA1ODAwMDAvNTI0Mjg4LCBJL08gQCAweDAwMDBmMDEwLzgKWzE0NDI5NDcuOTA4XSAoSUkpIE9w
ZW4gQUNQSSBzdWNjZXNzZnVsICgvdmFyL3J1bi9hY3BpZC5zb2NrZXQpClsxNDQyOTQ3LjkwOF0g
KElJKSBMb2FkTW9kdWxlOiAiZXh0bW9kIgpbMTQ0Mjk0Ny45MDldIChJSSkgTG9hZGluZyAvdXNy
L2xpYi94b3JnL21vZHVsZXMvZXh0ZW5zaW9ucy9saWJleHRtb2Quc28KWzE0NDI5NDcuOTI3XSAo
SUkpIE1vZHVsZSBleHRtb2Q6IHZlbmRvcj0iWC5PcmcgRm91bmRhdGlvbiIKWzE0NDI5NDcuOTI3
XSAJY29tcGlsZWQgZm9yIDEuOS4zLCBtb2R1bGUgdmVyc2lvbiA9IDEuMC4wClsxNDQyOTQ3Ljky
N10gCU1vZHVsZSBjbGFzczogWC5PcmcgU2VydmVyIEV4dGVuc2lvbgpbMTQ0Mjk0Ny45MjddIAlB
QkkgY2xhc3M6IFguT3JnIFNlcnZlciBFeHRlbnNpb24sIHZlcnNpb24gNC4wClsxNDQyOTQ3Ljky
N10gKElJKSBMb2FkaW5nIGV4dGVuc2lvbiBNSVQtU0NSRUVOLVNBVkVSClsxNDQyOTQ3LjkyN10g
KElJKSBMb2FkaW5nIGV4dGVuc2lvbiBYRnJlZTg2LVZpZE1vZGVFeHRlbnNpb24KWzE0NDI5NDcu
OTI3XSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIFhGcmVlODYtREdBClsxNDQyOTQ3LjkyN10gKElJ
KSBMb2FkaW5nIGV4dGVuc2lvbiBEUE1TClsxNDQyOTQ3LjkyN10gKElJKSBMb2FkaW5nIGV4dGVu
c2lvbiBYVmlkZW8KWzE0NDI5NDcuOTI3XSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIFhWaWRlby1N
b3Rpb25Db21wZW5zYXRpb24KWzE0NDI5NDcuOTI3XSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIFgt
UmVzb3VyY2UKWzE0NDI5NDcuOTI3XSAoSUkpIExvYWRNb2R1bGU6ICJkYmUiClsxNDQyOTQ3Ljky
OF0gKElJKSBMb2FkaW5nIC91c3IvbGliL3hvcmcvbW9kdWxlcy9leHRlbnNpb25zL2xpYmRiZS5z
bwpbMTQ0Mjk0Ny45NDhdIChJSSkgTW9kdWxlIGRiZTogdmVuZG9yPSJYLk9yZyBGb3VuZGF0aW9u
IgpbMTQ0Mjk0Ny45NDhdIAljb21waWxlZCBmb3IgMS45LjMsIG1vZHVsZSB2ZXJzaW9uID0gMS4w
LjAKWzE0NDI5NDcuOTQ4XSAJTW9kdWxlIGNsYXNzOiBYLk9yZyBTZXJ2ZXIgRXh0ZW5zaW9uClsx
NDQyOTQ3Ljk0OF0gCUFCSSBjbGFzczogWC5PcmcgU2VydmVyIEV4dGVuc2lvbiwgdmVyc2lvbiA0
LjAKWzE0NDI5NDcuOTQ4XSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIERPVUJMRS1CVUZGRVIKWzE0
NDI5NDcuOTQ4XSAoSUkpIExvYWRNb2R1bGU6ICJnbHgiClsxNDQyOTQ3Ljk0OV0gKElJKSBMb2Fk
aW5nIC91c3IvbGliL3hvcmcvbW9kdWxlcy9leHRlbnNpb25zL2xpYmdseC5zbwpbMTQ0Mjk0OC4w
MjRdIChJSSkgTW9kdWxlIGdseDogdmVuZG9yPSJYLk9yZyBGb3VuZGF0aW9uIgpbMTQ0Mjk0OC4w
MjRdIAljb21waWxlZCBmb3IgMS45LjMsIG1vZHVsZSB2ZXJzaW9uID0gMS4wLjAKWzE0NDI5NDgu
MDI0XSAJQUJJIGNsYXNzOiBYLk9yZyBTZXJ2ZXIgRXh0ZW5zaW9uLCB2ZXJzaW9uIDQuMApbMTQ0
Mjk0OC4wMjRdICg9PSkgQUlHTFggZW5hYmxlZApbMTQ0Mjk0OC4wMjRdIChJSSkgTG9hZGluZyBl
eHRlbnNpb24gR0xYClsxNDQyOTQ4LjAzM10gKElJKSBMb2FkTW9kdWxlOiAiZHJpIgpbMTQ0Mjk0
OC4wMzNdIChJSSkgTG9hZGluZyAvdXNyL2xpYi94b3JnL21vZHVsZXMvZXh0ZW5zaW9ucy9saWJk
cmkuc28KWzE0NDI5NDguMDUxXSAoSUkpIE1vZHVsZSBkcmk6IHZlbmRvcj0iWC5PcmcgRm91bmRh
dGlvbiIKWzE0NDI5NDguMDUxXSAJY29tcGlsZWQgZm9yIDEuOS4zLCBtb2R1bGUgdmVyc2lvbiA9
IDEuMC4wClsxNDQyOTQ4LjA1MV0gCUFCSSBjbGFzczogWC5PcmcgU2VydmVyIEV4dGVuc2lvbiwg
dmVyc2lvbiA0LjAKWzE0NDI5NDguMDUxXSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIFhGcmVlODYt
RFJJClsxNDQyOTQ4LjA1MV0gKElJKSBMb2FkTW9kdWxlOiAiZHJpMiIKWzE0NDI5NDguMDUyXSAo
SUkpIExvYWRpbmcgL3Vzci9saWIveG9yZy9tb2R1bGVzL2V4dGVuc2lvbnMvbGliZHJpMi5zbwpb
MTQ0Mjk0OC4wNzNdIChJSSkgTW9kdWxlIGRyaTI6IHZlbmRvcj0iWC5PcmcgRm91bmRhdGlvbiIK
WzE0NDI5NDguMDczXSAJY29tcGlsZWQgZm9yIDEuOS4zLCBtb2R1bGUgdmVyc2lvbiA9IDEuMi4w
ClsxNDQyOTQ4LjA3M10gCUFCSSBjbGFzczogWC5PcmcgU2VydmVyIEV4dGVuc2lvbiwgdmVyc2lv
biA0LjAKWzE0NDI5NDguMDczXSAoSUkpIExvYWRpbmcgZXh0ZW5zaW9uIERSSTIKWzE0NDI5NDgu
MDczXSAoSUkpIExvYWRNb2R1bGU6ICJlbWdkIgpbMTQ0Mjk0OC4wNzVdIChXVykgV2FybmluZywg
Y291bGRuJ3Qgb3BlbiBtb2R1bGUgZW1nZApbMTQ0Mjk0OC4wNzVdIChJSSkgVW5sb2FkTW9kdWxl
OiAiZW1nZCIKWzE0NDI5NDguMDc1XSAoRUUpIEZhaWxlZCB0byBsb2FkIG1vZHVsZSAiZW1nZCIg
KG1vZHVsZSBkb2VzIG5vdCBleGlzdCwgMCkKWzE0NDI5NDguMDc1XSAoSUkpIExvYWRNb2R1bGU6
ICJtb3VzZSIKWzE0NDI5NDguMDc2XSAoSUkpIExvYWRpbmcgL3Vzci9saWIveG9yZy9tb2R1bGVz
L2lucHV0L21vdXNlX2Rydi5zbwpbMTQ0Mjk0OC4wODRdIChJSSkgTW9kdWxlIG1vdXNlOiB2ZW5k
b3I9IlguT3JnIEZvdW5kYXRpb24iClsxNDQyOTQ4LjA4NF0gCWNvbXBpbGVkIGZvciAxLjkuMywg
bW9kdWxlIHZlcnNpb24gPSAxLjcuMgpbMTQ0Mjk0OC4wODRdIAlNb2R1bGUgY2xhc3M6IFguT3Jn
IFhJbnB1dCBEcml2ZXIKWzE0NDI5NDguMDg0XSAJQUJJIGNsYXNzOiBYLk9yZyBYSW5wdXQgZHJp
dmVyLCB2ZXJzaW9uIDExLjAKWzE0NDI5NDguMDg0XSAoSUkpIExvYWRNb2R1bGU6ICJrYmQiClsx
NDQyOTQ4LjA4NV0gKElJKSBMb2FkaW5nIC91c3IvbGliL3hvcmcvbW9kdWxlcy9pbnB1dC9rYmRf
ZHJ2LnNvClsxNDQyOTQ4LjA4NV0gKElJKSBNb2R1bGUga2JkOiB2ZW5kb3I9IlguT3JnIEZvdW5k
YXRpb24iClsxNDQyOTQ4LjA4NV0gCWNvbXBpbGVkIGZvciAxLjkuMywgbW9kdWxlIHZlcnNpb24g
PSAxLjYuMQpbMTQ0Mjk0OC4wODVdIAlNb2R1bGUgY2xhc3M6IFguT3JnIFhJbnB1dCBEcml2ZXIK
WzE0NDI5NDguMDg2XSAJQUJJIGNsYXNzOiBYLk9yZyBYSW5wdXQgZHJpdmVyLCB2ZXJzaW9uIDEx
LjAKWzE0NDI5NDguMDg2XSAoRUUpIE5vIGRyaXZlcnMgYXZhaWxhYmxlLgpbMTQ0Mjk0OC4wODZd
IApGYXRhbCBzZXJ2ZXIgZXJyb3I6ClsxNDQyOTQ4LjA4Nl0gbm8gc2NyZWVucyBmb3VuZApbMTQ0
Mjk0OC4wODZdIApQbGVhc2UgY29uc3VsdCB0aGUgVGhlIFguT3JnIEZvdW5kYXRpb24gc3VwcG9y
dCAKCSBhdCBodHRwOi8vd2lraS54Lm9yZwogZm9yIGhlbHAuIApbMTQ0Mjk0OC4wODZdIFBsZWFz
ZSBhbHNvIGNoZWNrIHRoZSBsb2cgZmlsZSBhdCAiL3Zhci9sb2cvWG9yZy4wLmxvZyIgZm9yIGFk
ZGl0aW9uYWwgaW5mb3JtYXRpb24uClsxNDQyOTQ4LjA4Nl0gCg==

--_004_DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876PGSMSX101garcor_--
