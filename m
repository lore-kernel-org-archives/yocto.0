Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23B6DE00303
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 13:57:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2011 13:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,586,1315206000"; d="scan'208,217";a="96231896"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2011 13:57:07 -0800
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Mon, 28 Nov 2011 13:57:06 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Cui, Dexuan"
	<dexuan.cui@intel.com>
Date: Mon, 28 Nov 2011 13:57:05 -0800
Thread-Topic: Chromium browser for Yocto BSPs
Thread-Index: AcyuGKqZrz2neMy8TUW/5+1MSEnhfA==
Message-ID: <4BD43A85686FC34D819098DB1C3999D9018FD98C59@orsmsx502.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Chromium browser for Yocto BSPs
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
X-List-Received-Date: Mon, 28 Nov 2011 21:57:08 -0000
X-Groupsio-MsgNum: 3601
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_"

--_004_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_
Content-Type: multipart/alternative;
	boundary="_000_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_"

--_000_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to plugin the Chromium browser for one of meta-intel bsp.

I get the build failure flash-plugin_10.3.183.10.bb<http://git.yoctoproject=
.org/cgit/cgit.cgi/poky-contrib/tree/meta-chromium/recipes-plugins/adobe-fl=
ash/flash-plugin_10.3.183.10.bb?h=3Ddcui/bsp/pegasus> file for trying to fe=
tch the flash plugin from different mirrors and not able to find.

I am building with bitbake core-image-m2m-jdk.

Attached is the log.

Does anyone saw the same failure?

Thanks
Kishore.

--_000_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></=
p><p class=3DMsoNormal>I am trying to plugin the Chromium browser for one o=
f meta-intel bsp.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p class=3DMsoNormal>I get the build failure <a href=3D"http://git.yoctoproj=
ect.org/cgit/cgit.cgi/poky-contrib/tree/meta-chromium/recipes-plugins/adobe=
-flash/flash-plugin_10.3.183.10.bb?h=3Ddcui/bsp/pegasus"><span style=3D'col=
or:windowtext;text-decoration:none'>flash-plugin_10.3.183.10.bb</span></a> =
file for trying to fetch the flash plugin from different mirrors and not ab=
le to find.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal>I am building with bitbake core-image-m2m-jdk.&nbsp; <o:p></o=
:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Attac=
hed is the log.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Does anyone saw the same failure? <o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks<o:p></o:p></p=
><p class=3DMsoNormal>Kishore.<o:p></o:p></p></div></body></html>=

--_000_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_--

--_004_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_
Content-Type: application/octet-stream; name="log.do_fetch.29542"
Content-Description: log.do_fetch.29542
Content-Disposition: attachment; filename="log.do_fetch.29542"; size=7616;
	creation-date="Mon, 28 Nov 2011 13:57:12 GMT";
	modification-date="Mon, 28 Nov 2011 13:47:48 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IFRyeWluZyBQUkVNSVJST1JTCkRFQlVHOiBUcnlpbmcgVXBzdHJlYW0KTk9URTogZmV0
Y2ggaHR0cDovL2ZwZG93bmxvYWQubWFjcm9tZWRpYS5jb20vZ2V0L2ZsYXNocGxheWVyL2N1cnJl
bnQvL2luc3RhbGxfZmxhc2hfcGxheWVyXzEwX2xpbnV4LnRhci5negpERUJVRzogZXhlY3V0aW5n
IC91c3IvYmluL2VudiB3Z2V0IC10IDUgLXEgLS1wYXNzaXZlLWZ0cCAtLW5vLWNoZWNrLWNlcnRp
ZmljYXRlIC1QIC91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL2Rv
d25sb2FkcyAnaHR0cDovL2ZwZG93bmxvYWQubWFjcm9tZWRpYS5jb20vZ2V0L2ZsYXNocGxheWVy
L2N1cnJlbnQvL2luc3RhbGxfZmxhc2hfcGxheWVyXzEwX2xpbnV4LnRhci5neicKREVCVUc6IEZl
dGNoZXIgYWNjZXNzZWQgdGhlIG5ldHdvcmsgd2l0aCB0aGUgY29tbWFuZCAvdXNyL2Jpbi9lbnYg
d2dldCAtdCA1IC1xIC0tcGFzc2l2ZS1mdHAgLS1uby1jaGVjay1jZXJ0aWZpY2F0ZSAtUCAvdXNy
L2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS9kb3dubG9hZHMgJ2h0dHA6
Ly9mcGRvd25sb2FkLm1hY3JvbWVkaWEuY29tL2dldC9mbGFzaHBsYXllci9jdXJyZW50Ly9pbnN0
YWxsX2ZsYXNoX3BsYXllcl8xMF9saW51eC50YXIuZ3onCkRFQlVHOiBSdW5uaW5nIGV4cG9ydCBI
T01FPSIvaG9tZS9raXNob3JlIjsgZXhwb3J0IFNTSF9BR0VOVF9QSUQ9IjE2NjEiOyBleHBvcnQg
U1NIX0FVVEhfU09DSz0iL3RtcC9rZXlyaW5nLUNtUk9Dai9zc2giOyBleHBvcnQgbm9fcHJveHk9
ImxvY2FsaG9zdCwxMjcuMC4wLjAvOCwqLmxvY2FsIjsgZXhwb3J0IGh0dHBzX3Byb3h5PSJodHRw
czovL3Byb3h5LnNjLmludGVsLmNvbTo5MTEvIjsgZXhwb3J0IGZ0cF9wcm94eT0iaHR0cDovL3By
b3h5LnNjLmludGVsLmNvbTo5MTEvIjsgZXhwb3J0IGh0dHBfcHJveHk9Imh0dHA6Ly9wcm94eS5z
Yy5pbnRlbC5jb206OTExLyI7IGV4cG9ydCBHSVRfQ09ORklHPSIvdXNyL2xvY2FsL3NyYy9yYWh1
bHBva3kvcG9reS1jb250cmliL2J1aWxkMS90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9l
dGMvZ2l0Y29uZmlnIjsgZXhwb3J0IEdJVF9QUk9YWV9DT01NQU5EPSIvdXNyL2xvY2FsL2Jpbi9n
aXQtcHJveHkiOyBleHBvcnQgUEFUSD0iL3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29u
dHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL2NvcmUyLXBva3kt
bGludXg6L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5
c3Jvb3RzL2NlZGFydHJhaWwvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L3Vzci9sb2NhbC9zcmMvcmFo
dWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Iv
c2JpbjovdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS90bXAvc3lz
cm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iaW46L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3kt
Y29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC9zYmluOi91c3IvbG9jYWwv
c3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGlu
dXgvL2JpbjovdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL3NjcmlwdHM6L3Vz
ci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9iaXRiYWtlL2Jpbi86L3Vzci9sb2Nh
bC9zYmluOi91c3IvbG9jYWwvYmluOi91c3Ivc2JpbjovdXNyL2Jpbjovc2JpbjovYmluOi91c3Iv
Z2FtZXM6L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9zY3JpcHRzIjsgL3Vz
ci9iaW4vZW52IHdnZXQgLXQgNSAtcSAtLXBhc3NpdmUtZnRwIC0tbm8tY2hlY2stY2VydGlmaWNh
dGUgLVAgL3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvZG93bmxv
YWRzICdodHRwOi8vZnBkb3dubG9hZC5tYWNyb21lZGlhLmNvbS9nZXQvZmxhc2hwbGF5ZXIvY3Vy
cmVudC8vaW5zdGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGludXgudGFyLmd6JwpXQVJOSU5HOiBGZXRj
aGVyIGZhaWx1cmUgZm9yIFVSTDogJ05vbmUnLiBGZXRjaCBjb21tYW5kIGV4cG9ydCBIT01FPSIv
aG9tZS9raXNob3JlIjsgZXhwb3J0IFNTSF9BR0VOVF9QSUQ9IjE2NjEiOyBleHBvcnQgU1NIX0FV
VEhfU09DSz0iL3RtcC9rZXlyaW5nLUNtUk9Dai9zc2giOyBleHBvcnQgbm9fcHJveHk9ImxvY2Fs
aG9zdCwxMjcuMC4wLjAvOCwqLmxvY2FsIjsgZXhwb3J0IGh0dHBzX3Byb3h5PSJodHRwczovL3By
b3h5LnNjLmludGVsLmNvbTo5MTEvIjsgZXhwb3J0IGZ0cF9wcm94eT0iaHR0cDovL3Byb3h5LnNj
LmludGVsLmNvbTo5MTEvIjsgZXhwb3J0IGh0dHBfcHJveHk9Imh0dHA6Ly9wcm94eS5zYy5pbnRl
bC5jb206OTExLyI7IGV4cG9ydCBHSVRfQ09ORklHPSIvdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kv
cG9reS1jb250cmliL2J1aWxkMS90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9ldGMvZ2l0
Y29uZmlnIjsgZXhwb3J0IEdJVF9QUk9YWV9DT01NQU5EPSIvdXNyL2xvY2FsL2Jpbi9naXQtcHJv
eHkiOyBleHBvcnQgUEFUSD0iL3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9i
dWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL2NvcmUyLXBva3ktbGludXg6
L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3Rz
L2NlZGFydHJhaWwvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5
L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Ivc2Jpbjov
dXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS90bXAvc3lzcm9vdHMv
eDg2XzY0LWxpbnV4L3Vzci9iaW46L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJp
Yi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC9zYmluOi91c3IvbG9jYWwvc3JjL3Jh
aHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvL2Jp
bjovdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL3NjcmlwdHM6L3Vzci9sb2Nh
bC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9iaXRiYWtlL2Jpbi86L3Vzci9sb2NhbC9zYmlu
Oi91c3IvbG9jYWwvYmluOi91c3Ivc2JpbjovdXNyL2Jpbjovc2JpbjovYmluOi91c3IvZ2FtZXM6
L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9zY3JpcHRzIjsgL3Vzci9iaW4v
ZW52IHdnZXQgLXQgNSAtcSAtLXBhc3NpdmUtZnRwIC0tbm8tY2hlY2stY2VydGlmaWNhdGUgLVAg
L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvZG93bmxvYWRzICdo
dHRwOi8vZnBkb3dubG9hZC5tYWNyb21lZGlhLmNvbS9nZXQvZmxhc2hwbGF5ZXIvY3VycmVudC8v
aW5zdGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGludXgudGFyLmd6JyBmYWlsZWQgd2l0aCBzaWduYWwg
OCwgb3V0cHV0OgoKREVCVUc6IFRyeWluZyBNSVJST1JTCk5PVEU6IGZldGNoIGh0dHA6Ly9hdXRv
YnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3NvdXJjZXMvaW5zdGFsbF9mbGFzaF9wbGF5ZXJfMTBf
bGludXgudGFyLmd6CkRFQlVHOiBleGVjdXRpbmcgL3Vzci9iaW4vZW52IHdnZXQgLXQgNSAtcSAt
LXBhc3NpdmUtZnRwIC0tbm8tY2hlY2stY2VydGlmaWNhdGUgLVAgL3Vzci9sb2NhbC9zcmMvcmFo
dWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvZG93bmxvYWRzICdodHRwOi8vYXV0b2J1aWxkZXIu
eW9jdG9wcm9qZWN0Lm9yZy9zb3VyY2VzL2luc3RhbGxfZmxhc2hfcGxheWVyXzEwX2xpbnV4LnRh
ci5neicKREVCVUc6IEZldGNoZXIgYWNjZXNzZWQgdGhlIG5ldHdvcmsgd2l0aCB0aGUgY29tbWFu
ZCAvdXNyL2Jpbi9lbnYgd2dldCAtdCA1IC1xIC0tcGFzc2l2ZS1mdHAgLS1uby1jaGVjay1jZXJ0
aWZpY2F0ZSAtUCAvdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS9k
b3dubG9hZHMgJ2h0dHA6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3NvdXJjZXMvaW5z
dGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGludXgudGFyLmd6JwpERUJVRzogUnVubmluZyBleHBvcnQg
SE9NRT0iL2hvbWUva2lzaG9yZSI7IGV4cG9ydCBTU0hfQUdFTlRfUElEPSIxNjYxIjsgZXhwb3J0
IFNTSF9BVVRIX1NPQ0s9Ii90bXAva2V5cmluZy1DbVJPQ2ovc3NoIjsgZXhwb3J0IG5vX3Byb3h5
PSJsb2NhbGhvc3QsMTI3LjAuMC4wLzgsKi5sb2NhbCI7IGV4cG9ydCBodHRwc19wcm94eT0iaHR0
cHM6Ly9wcm94eS5zYy5pbnRlbC5jb206OTExLyI7IGV4cG9ydCBmdHBfcHJveHk9Imh0dHA6Ly9w
cm94eS5zYy5pbnRlbC5jb206OTExLyI7IGV4cG9ydCBodHRwX3Byb3h5PSJodHRwOi8vcHJveHku
c2MuaW50ZWwuY29tOjkxMS8iOyBleHBvcnQgR0lUX0NPTkZJRz0iL3Vzci9sb2NhbC9zcmMvcmFo
dWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Iv
ZXRjL2dpdGNvbmZpZyI7IGV4cG9ydCBHSVRfUFJPWFlfQ09NTUFORD0iL3Vzci9sb2NhbC9iaW4v
Z2l0LXByb3h5IjsgZXhwb3J0IFBBVEg9Ii91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNv
bnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2Jpbi9jb3JlMi1wb2t5
LWxpbnV4Oi91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL3RtcC9z
eXNyb290cy9jZWRhcnRyYWlsL3Vzci9iaW4vY3Jvc3NzY3JpcHRzOi91c3IvbG9jYWwvc3JjL3Jh
aHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNy
L3NiaW46L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5
c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluOi91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5
LWNvbnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvc2JpbjovdXNyL2xvY2Fs
L3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS90bXAvc3lzcm9vdHMveDg2XzY0LWxp
bnV4Ly9iaW46L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9zY3JpcHRzOi91
c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvYml0YmFrZS9iaW4vOi91c3IvbG9j
YWwvc2JpbjovdXNyL2xvY2FsL2JpbjovdXNyL3NiaW46L3Vzci9iaW46L3NiaW46L2JpbjovdXNy
L2dhbWVzOi91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvc2NyaXB0cyI7IC91
c3IvYmluL2VudiB3Z2V0IC10IDUgLXEgLS1wYXNzaXZlLWZ0cCAtLW5vLWNoZWNrLWNlcnRpZmlj
YXRlIC1QIC91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNvbnRyaWIvYnVpbGQxL2Rvd25s
b2FkcyAnaHR0cDovL2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvc291cmNlcy9pbnN0YWxs
X2ZsYXNoX3BsYXllcl8xMF9saW51eC50YXIuZ3onCkRFQlVHOiBNaXJyb3IgZmV0Y2ggZmFpbHVy
ZSBmb3IgdXJsIGh0dHA6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3NvdXJjZXMvaW5z
dGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGludXgudGFyLmd6IChvcmlnaW5hbCB1cmw6IGh0dHA6Ly9m
cGRvd25sb2FkLm1hY3JvbWVkaWEuY29tL2dldC9mbGFzaHBsYXllci9jdXJyZW50Ly9pbnN0YWxs
X2ZsYXNoX3BsYXllcl8xMF9saW51eC50YXIuZ3opCkRFQlVHOiBGZXRjaGVyIGZhaWx1cmUgZm9y
IFVSTDogJ05vbmUnLiBGZXRjaCBjb21tYW5kIGV4cG9ydCBIT01FPSIvaG9tZS9raXNob3JlIjsg
ZXhwb3J0IFNTSF9BR0VOVF9QSUQ9IjE2NjEiOyBleHBvcnQgU1NIX0FVVEhfU09DSz0iL3RtcC9r
ZXlyaW5nLUNtUk9Dai9zc2giOyBleHBvcnQgbm9fcHJveHk9ImxvY2FsaG9zdCwxMjcuMC4wLjAv
OCwqLmxvY2FsIjsgZXhwb3J0IGh0dHBzX3Byb3h5PSJodHRwczovL3Byb3h5LnNjLmludGVsLmNv
bTo5MTEvIjsgZXhwb3J0IGZ0cF9wcm94eT0iaHR0cDovL3Byb3h5LnNjLmludGVsLmNvbTo5MTEv
IjsgZXhwb3J0IGh0dHBfcHJveHk9Imh0dHA6Ly9wcm94eS5zYy5pbnRlbC5jb206OTExLyI7IGV4
cG9ydCBHSVRfQ09ORklHPSIvdXNyL2xvY2FsL3NyYy9yYWh1bHBva3kvcG9reS1jb250cmliL2J1
aWxkMS90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9ldGMvZ2l0Y29uZmlnIjsgZXhwb3J0
IEdJVF9QUk9YWV9DT01NQU5EPSIvdXNyL2xvY2FsL2Jpbi9naXQtcHJveHkiOyBleHBvcnQgUEFU
SD0iL3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jv
b3RzL3g4Nl82NC1saW51eC91c3IvYmluL2NvcmUyLXBva3ktbGludXg6L3Vzci9sb2NhbC9zcmMv
cmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5c3Jvb3RzL2NlZGFydHJhaWwvdXNy
L2Jpbi9jcm9zc3NjcmlwdHM6L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9i
dWlsZDEvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Ivc2JpbjovdXNyL2xvY2FsL3NyYy9y
YWh1bHBva3kvcG9reS1jb250cmliL2J1aWxkMS90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vz
ci9iaW46L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvdG1wL3N5
c3Jvb3RzL3g4Nl82NC1saW51eC9zYmluOi91c3IvbG9jYWwvc3JjL3JhaHVscG9reS9wb2t5LWNv
bnRyaWIvYnVpbGQxL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvL2JpbjovdXNyL2xvY2FsL3Ny
Yy9yYWh1bHBva3kvcG9reS1jb250cmliL3NjcmlwdHM6L3Vzci9sb2NhbC9zcmMvcmFodWxwb2t5
L3Bva3ktY29udHJpYi9iaXRiYWtlL2Jpbi86L3Vzci9sb2NhbC9zYmluOi91c3IvbG9jYWwvYmlu
Oi91c3Ivc2JpbjovdXNyL2Jpbjovc2JpbjovYmluOi91c3IvZ2FtZXM6L3Vzci9sb2NhbC9zcmMv
cmFodWxwb2t5L3Bva3ktY29udHJpYi9zY3JpcHRzIjsgL3Vzci9iaW4vZW52IHdnZXQgLXQgNSAt
cSAtLXBhc3NpdmUtZnRwIC0tbm8tY2hlY2stY2VydGlmaWNhdGUgLVAgL3Vzci9sb2NhbC9zcmMv
cmFodWxwb2t5L3Bva3ktY29udHJpYi9idWlsZDEvZG93bmxvYWRzICdodHRwOi8vYXV0b2J1aWxk
ZXIueW9jdG9wcm9qZWN0Lm9yZy9zb3VyY2VzL2luc3RhbGxfZmxhc2hfcGxheWVyXzEwX2xpbnV4
LnRhci5neicgZmFpbGVkIHdpdGggc2lnbmFsIDgsIG91dHB1dDoKCkVSUk9SOiBGdW5jdGlvbiAn
RmV0Y2hlciBmYWlsdXJlIGZvciBVUkw6ICdodHRwOi8vZnBkb3dubG9hZC5tYWNyb21lZGlhLmNv
bS9nZXQvZmxhc2hwbGF5ZXIvY3VycmVudC8vaW5zdGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGludXgu
dGFyLmd6Jy4gVW5hYmxlIHRvIGZldGNoIFVSTCBodHRwOi8vZnBkb3dubG9hZC5tYWNyb21lZGlh
LmNvbS9nZXQvZmxhc2hwbGF5ZXIvY3VycmVudC8vaW5zdGFsbF9mbGFzaF9wbGF5ZXJfMTBfbGlu
dXgudGFyLmd6IGZyb20gYW55IHNvdXJjZS4nIGZhaWxlZAo=

--_004_4BD43A85686FC34D819098DB1C3999D9018FD98C59orsmsx502amrc_--
