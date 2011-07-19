Return-Path: <simon.li@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFD5F4C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:18:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jul 2011 23:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,227,1309762800"; 
	d="txt'?conf'?scan'208,217";a="31923535"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2011 23:18:33 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jul 2011 14:17:43 +0800
Received: from pgsmsx507.gar.corp.intel.com ([10.221.43.89]) by
	PGSMSX509.gar.corp.intel.com ([172.30.13.17]) with mapi;
	Tue, 19 Jul 2011 14:17:42 +0800
From: "Li, Simon" <simon.li@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 19 Jul 2011 14:17:40 +0800
Thread-Topic: Build Yocto image for EeePC901
Thread-Index: AcxF24/cuyKWoJQKRECtSdiwzdiI+w==
Message-ID: <23F1A04A50711046AF124F3D4D1EB2ECD100C5F6@pgsmsx507.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Jul 2011 09:20:39 -0500
Subject: Build Yocto image for EeePC901
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
X-List-Received-Date: Tue, 19 Jul 2011 06:18:35 -0000
X-Groupsio-MsgNum: 1992
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_"

--_005_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_
Content-Type: multipart/alternative;
	boundary="_000_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_"

--_000_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

To whom may concern,
I tried to build Yocto for a real device, which is EeePC901. Because of REA=
DME.hardware mentioned.
Here are my steps:

# source poky-bernard-5.0.1/poky-init-build.env build-poky-5.0.1

Modify the local.conf (As attachment)

# bitbake poky-image-sato-directdisk

However I got the build failed, please refer to the attachment, build_fail_=
log.txt
I think the key fail message is
| ERROR: Function 'poky-image-sato-directdisk: LIC_FILES_CHKSUM points to i=
nvalid file: ${COREBASE}/LICENSE' failed

Is there any problem I got? Or where can I find the files? Thanks.

Best Regards,

Simon


--_000_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_
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
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
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
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-TW link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoNormal><span lang=3DEN-US>To whom may concern,<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>I tried to build Yocto fo=
r a real device, which is EeePC901. Because of README.hardware mentioned.<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Here are my ste=
ps:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US># source poky-ber=
nard-5.0.1/poky-init-build.env build-poky-5.0.1<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US>Modify the local.conf (As attachment)<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US># bitbake poky-image-sato-direc=
tdisk<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>However I got t=
he build failed, please refer to the attachment, build_fail_log.txt<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I think the key fail =
message is <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>| =
ERROR: Function 'poky-image-sato-directdisk: LIC_FILES_CHKSUM points to inv=
alid file: ${COREBASE}/LICENSE' failed<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>Is there any problem I got? Or where can I find the files=
? Thanks. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Best Regar=
ds,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Simon<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span><=
/p></div></body></html>=

--_000_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_--

--_005_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_
Content-Type: text/plain; name="build_fail_log.txt"
Content-Description: build_fail_log.txt
Content-Disposition: attachment; filename="build_fail_log.txt"; size=3381;
	creation-date="Tue, 19 Jul 2011 13:17:30 GMT";
	modification-date="Tue, 19 Jul 2011 13:17:30 GMT"
Content-Transfer-Encoding: base64

Tk9URTogcGFja2FnZSB0YXNrLXBva3kteDExLXNhdG8tMS4wLXIzMDogdGFzayBkb19jb21waWxl
OiBTdWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQzOTQgb2YgNTg0NCAoSUQ6IDI3OSwgL21l
ZGlhLzU4OGQ0NDlhLTliZDktNGQ4Ny1hYWUxLTZlM2U4NmM2NjliMy9wb2t5LWJlcm5hcmQtNS4w
LjEvbWV0YS9yZWNpcGVzLXNhdG8vdGFza3MvdGFzay1wb2t5LXgxMS1zYXRvLmJiLCBkb19pbnN0
YWxsKQpOT1RFOiBwYWNrYWdlIHRhc2stcG9reS14MTEtc2F0by0xLjAtcjMwOiB0YXNrIGRvX2lu
c3RhbGw6IFN0YXJ0ZWQKTk9URTogcGFja2FnZSB0YXNrLXBva3kteDExLXNhdG8tMS4wLXIzMDog
dGFzayBkb19pbnN0YWxsOiBTdWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQzOTUgb2YgNTg0
NCAoSUQ6IDI3MCwgL21lZGlhLzU4OGQ0NDlhLTliZDktNGQ4Ny1hYWUxLTZlM2U4NmM2NjliMy9w
b2t5LWJlcm5hcmQtNS4wLjEvbWV0YS9yZWNpcGVzLXNhdG8vdGFza3MvdGFzay1wb2t5LmJiLCBk
b19jb25maWd1cmUpCk5PVEU6IHBhY2thZ2UgdGFzay1wb2t5LTEuMC1yMzM6IHRhc2sgZG9fY29u
ZmlndXJlOiBTdGFydGVkCk5PVEU6IHBhY2thZ2UgdGFzay1wb2t5LTEuMC1yMzM6IHRhc2sgZG9f
Y29uZmlndXJlOiBTdWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQzOTYgb2YgNTg0NCAoSUQ6
IDI3MSwgL21lZGlhLzU4OGQ0NDlhLTliZDktNGQ4Ny1hYWUxLTZlM2U4NmM2NjliMy9wb2t5LWJl
cm5hcmQtNS4wLjEvbWV0YS9yZWNpcGVzLXNhdG8vdGFza3MvdGFzay1wb2t5LmJiLCBkb19jb21w
aWxlKQpOT1RFOiBwYWNrYWdlIHRhc2stcG9reS0xLjAtcjMzOiB0YXNrIGRvX2NvbXBpbGU6IFN0
YXJ0ZWQKTk9URTogcGFja2FnZSB0YXNrLXBva3ktMS4wLXIzMzogdGFzayBkb19jb21waWxlOiBT
dWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQzOTcgb2YgNTg0NCAoSUQ6IDI2NiwgL21lZGlh
LzU4OGQ0NDlhLTliZDktNGQ4Ny1hYWUxLTZlM2U4NmM2NjliMy9wb2t5LWJlcm5hcmQtNS4wLjEv
bWV0YS9yZWNpcGVzLXNhdG8vdGFza3MvdGFzay1wb2t5LmJiLCBkb19pbnN0YWxsKQpOT1RFOiBw
YWNrYWdlIHRhc2stcG9reS0xLjAtcjMzOiB0YXNrIGRvX2luc3RhbGw6IFN0YXJ0ZWQKTk9URTog
cGFja2FnZSB0YXNrLXBva3ktMS4wLXIzMzogdGFzayBkb19pbnN0YWxsOiBTdWNjZWVkZWQKTk9U
RTogUnVubmluZyB0YXNrIDQzOTggb2YgNTg0NCAoSUQ6IDI1NywgL21lZGlhLzU4OGQ0NDlhLTli
ZDktNGQ4Ny1hYWUxLTZlM2U4NmM2NjliMy9wb2t5LWJlcm5hcmQtNS4wLjEvbWV0YS9yZWNpcGVz
LWNvcmUvdGFza3MvdGFzay1iYXNlLmJiLCBkb19jb25maWd1cmUpCk5PVEU6IHBhY2thZ2UgdGFz
ay1iYXNlLTEuMC1yNjk6IHRhc2sgZG9fY29uZmlndXJlOiBTdGFydGVkCk5PVEU6IHBhY2thZ2Ug
dGFzay1iYXNlLTEuMC1yNjk6IHRhc2sgZG9fY29uZmlndXJlOiBTdWNjZWVkZWQKTk9URTogUnVu
bmluZyB0YXNrIDQzOTkgb2YgNTg0NCAoSUQ6IDI1OCwgL21lZGlhLzU4OGQ0NDlhLTliZDktNGQ4
Ny1hYWUxLTZlM2U4NmM2NjliMy9wb2t5LWJlcm5hcmQtNS4wLjEvbWV0YS9yZWNpcGVzLWNvcmUv
dGFza3MvdGFzay1iYXNlLmJiLCBkb19jb21waWxlKQpOT1RFOiBwYWNrYWdlIHRhc2stYmFzZS0x
LjAtcjY5OiB0YXNrIGRvX2NvbXBpbGU6IFN0YXJ0ZWQKTk9URTogcGFja2FnZSB0YXNrLWJhc2Ut
MS4wLXI2OTogdGFzayBkb19jb21waWxlOiBTdWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQ0
MDAgb2YgNTg0NCAoSUQ6IDI1MywgL21lZGlhLzU4OGQ0NDlhLTliZDktNGQ4Ny1hYWUxLTZlM2U4
NmM2NjliMy9wb2t5LWJlcm5hcmQtNS4wLjEvbWV0YS9yZWNpcGVzLWNvcmUvdGFza3MvdGFzay1i
YXNlLmJiLCBkb19pbnN0YWxsKQpOT1RFOiBwYWNrYWdlIHRhc2stYmFzZS0xLjAtcjY5OiB0YXNr
IGRvX2luc3RhbGw6IFN0YXJ0ZWQKTk9URTogcGFja2FnZSB0YXNrLWJhc2UtMS4wLXI2OTogdGFz
ayBkb19pbnN0YWxsOiBTdWNjZWVkZWQKTk9URTogUnVubmluZyB0YXNrIDQ0MDEgb2YgNTg0NCAo
SUQ6IDcsIC9tZWRpYS81ODhkNDQ5YS05YmQ5LTRkODctYWFlMS02ZTNlODZjNjY5YjMvcG9reS1i
ZXJuYXJkLTUuMC4xL21ldGEvcmVjaXBlcy1zYXRvL2ltYWdlcy9wb2t5LWltYWdlLXNhdG8tZGly
ZWN0ZGlzay5iYiwgZG9fY29uZmlndXJlKQpOT1RFOiBwYWNrYWdlIHBva3ktaW1hZ2Utc2F0by1k
aXJlY3RkaXNrLTEuMC1yMDogdGFzayBkb19jb25maWd1cmU6IFN0YXJ0ZWQKRVJST1I6IEZ1bmN0
aW9uICdwb2t5LWltYWdlLXNhdG8tZGlyZWN0ZGlzazogTElDX0ZJTEVTX0NIS1NVTSBwb2ludHMg
dG8gaW52YWxpZCBmaWxlOiAke0NPUkVCQVNFfS9MSUNFTlNFJyBmYWlsZWQKRVJST1I6IExvZ2Zp
bGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46IC9tZWRpYS81ODhkNDQ5YS05YmQ5LTRkODctYWFlMS02
ZTNlODZjNjY5YjMvYnVpbGQtcG9reS01LjAuMS90bXAvd29yay9jb3JlMi1wb2t5LWxpbnV4L3Bv
a3ktaW1hZ2Utc2F0by1kaXJlY3RkaXNrLTEuMC1yMC90ZW1wL2xvZy5kb19jb25maWd1cmUuNzM0
MQpMb2cgZGF0YSBmb2xsb3dzOgp8IE5PVEU6IENoZWNraW5nIGF1dG90b29scyBlbnZpcm9ubWVu
dCBmb3IgY29tbW9uIG1pc2NvbmZpZ3VyYXRpb24KfCBFUlJPUjogRnVuY3Rpb24gJ3Bva3ktaW1h
Z2Utc2F0by1kaXJlY3RkaXNrOiBMSUNfRklMRVNfQ0hLU1VNIHBvaW50cyB0byBpbnZhbGlkIGZp
bGU6ICR7Q09SRUJBU0V9L0xJQ0VOU0UnIGZhaWxlZApOT1RFOiBwYWNrYWdlIHBva3ktaW1hZ2Ut
c2F0by1kaXJlY3RkaXNrLTEuMC1yMDogdGFzayBkb19jb25maWd1cmU6IEZhaWxlZApFUlJPUjog
VGFzayA3ICgvbWVkaWEvNTg4ZDQ0OWEtOWJkOS00ZDg3LWFhZTEtNmUzZTg2YzY2OWIzL3Bva3kt
YmVybmFyZC01LjAuMS9tZXRhL3JlY2lwZXMtc2F0by9pbWFnZXMvcG9reS1pbWFnZS1zYXRvLWRp
cmVjdGRpc2suYmIsIGRvX2NvbmZpZ3VyZSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJwpXYWl0
aW5nIGZvciAxIGFjdGl2ZSB0YXNrcyB0byBmaW5pc2g6CjA6IHp5cHBlci0xLjUuMy1naXQxKzJj
NWJiNmNlYjk5ZWNkOTUwZWY5OTNlNDNkNzdiZjA1NjllYTA1ODItcjUgZG9fY29tcGlsZSAocGlk
IDU4NzkpCk5PVEU6IHBhY2thZ2UgenlwcGVyLTEuNS4zLWdpdDErMmM1YmI2Y2ViOTllY2Q5NTBl
Zjk5M2U0M2Q3N2JmMDU2OWVhMDU4Mi1yNTogdGFzayBkb19jb21waWxlOiBTdWNjZWVkZWQKRVJS
T1I6ICcvbWVkaWEvNTg4ZDQ0OWEtOWJkOS00ZDg3LWFhZTEtNmUzZTg2YzY2OWIzL3Bva3ktYmVy
bmFyZC01LjAuMS9tZXRhL3JlY2lwZXMtc2F0by9pbWFnZXMvcG9reS1pbWFnZS1zYXRvLWRpcmVj
dGRpc2suYmInIGZhaWxlZAoK

--_005_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_
Content-Type: application/octet-stream; name="local.conf"
Content-Description: local.conf
Content-Disposition: attachment; filename="local.conf"; size=9440;
	creation-date="Tue, 19 Jul 2011 13:24:28 GMT";
	modification-date="Mon, 18 Jul 2011 23:47:24 GMT"
Content-Transfer-Encoding: base64

IyBDT05GX1ZFUlNJT04gaXMgaW5jcmVhc2VkIGVhY2ggdGltZSBidWlsZC9jb25mLyBjaGFuZ2Vz
IGluY29tcGF0aWJseQpDT05GX1ZFUlNJT04gPSAiMSIKCiMgVW5jb21tZW50IGFuZCBjaGFuZ2Ug
dG8gY2FjaGUgdGhlIGZpbGVzIFBva3kgZG93bmxvYWRzIGluIGFuIGFsdGVybmF0aXZlCiMgbG9j
YXRpb24sIGRlZmF1bHQgaXQgJHtUT1BESVJ9L2Rvd25sb2FkcwojRExfRElSID89ICIke1RPUERJ
Un0vZG93bmxvYWRzIgojIFVuY29tbWVudCBhbmQgY2hhbmdlIHRvIGNhY2hlIFBva3kncyBidWls
dCBzdGFnaW5nIG91dHB1dCBpbiBhbiBhbHRlcm5hdGl2ZQojIGxvY2F0aW9uLCBkZWZhdWx0ICR7
VE9QRElSfS9zc3RhdGUtY2FjaGUKI1NTVEFURV9ESVIgPz0gIiR7VE9QRElSfS9zc3RhdGUtY2Fj
aGUiCgojIFVuY29tbWVudCBhbmQgc2V0IHRvIGFsbG93IGJpdGJha2UgdG8gZXhlY3V0ZSBtdWx0
aXBsZSB0YXNrcyBhdCBvbmNlLgojIEZvciBhIHF1YWRjb3JlLCBCQl9OVU1CRVJfVEhSRUFEUyA9
ICI0IiwgUEFSQUxMRUxfTUFLRSA9ICItaiA0IiB3b3VsZAojIGJlIGFwcHJvcHJpYXRlLgpCQl9O
VU1CRVJfVEhSRUFEUyA9ICIyIgojIEFsc28sIG1ha2UgY2FuIGJlIHBhc3NlZCBmbGFncyBzbyBp
dCBydW4gcGFyYWxsZWwgdGhyZWFkcyBlLmcuOgpQQVJBTExFTF9NQUtFID0gIi1qIDIiCgojIFNl
dCBhIGRlZmF1bHQgbWFjaGluZSB0byB0YXJnZXQgdW5sZXNzIGEgbWFjaGluZSBpcyBzZWxlY3Rl
ZCBmcm9tIHRoZSAKIyBsaXN0cyBiZWxvdy4KI01BQ0hJTkUgPz89ICJxZW11eDg2IgoKIyBTdXBw
b3J0ZWQgZW11bGF0aW9uIG1hY2hpbmVzCiNNQUNISU5FID89ICJxZW11YXJtIgojTUFDSElORSA/
PSAicWVtdW1pcHMiCiNNQUNISU5FID89ICJxZW11cHBjIgojTUFDSElORSA/PSAicWVtdXg4NiIK
I01BQ0hJTkUgPz0gInFlbXV4ODYtNjQiCgojIFN1cHBvcnRlZCB0YXJnZXQgaGFyZHdhcmUgZm9y
IGRlbW9uc3RyYXRpb24gcHVycG9zZXMKTUFDSElORSA/PSAiYXRvbS1wYyIKI01BQ0hJTkUgPz0g
ImJlYWdsZWJvYXJkIgojTUFDSElORSA/PSAiZW1lbmxvdyIKI01BQ0hJTkUgPz0gIm1wYzgzMTVl
LXJkYiIKI01BQ0hJTkUgPz0gInJvdXRlcnN0YXRpb25wcm8iCgpESVNUUk8gPz0gInBva3kiCiMg
Rm9yIGJsZWVkaW5nIGVkZ2UgLyBleHBlcmltZW50YWwgLyB1bnN0YWJsZSBwYWNrYWdlIHZlcnNp
b25zCiMgRElTVFJPID89ICJwb2t5LWJsZWVkaW5nIgoKQkJNQVNLID0gIiIKCiMgRVhUUkFfSU1B
R0VfRkVBVFVSRVMgYWxsb3dzIGV4dHJhIHBhY2thZ2VzIHRvIGJlIGFkZGVkIHRvIHRoZSBnZW5l
cmF0ZWQgaW1hZ2VzIAojIChTb21lIG9mIHRoZXNlIGFyZSBhdXRvbWF0aWNhbGx5IGFkZGVkIHRv
IGNlcnRhaW4gaW1hZ2UgdHlwZXMpCiMgImRiZy1wa2dzIiAgICAgLSBhZGQgLWRiZyBwYWNrYWdl
cyBmb3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAgICAgICAgICAgICAgICAgKGFkZHMgc3lt
Ym9sIGluZm9ybWF0aW9uIGZvciBkZWJ1Z2dpbmcvcHJvZmlsaW5nKQojICJkZXYtcGtncyIgICAg
IC0gYWRkIC1kZXYgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxsZWQgcGFja2FnZXMKIyAgICAgICAg
ICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gZGV2ZWxvcCBhZ2FpbnN0IGxpYnMgaW4g
dGhlIGltYWdlKQojICJ0b29scy1zZGsiICAgICAgLSBhZGQgZGV2ZWxvcG1lbnQgdG9vbHMgKGdj
YywgbWFrZSwgcGtnY29uZmlnIGV0Yy4pCiMgInRvb2xzLWRlYnVnIiAgICAtIGFkZCBkZWJ1Z2dp
bmcgdG9vbHMgKGdkYiwgc3RyYWNlKQojICJ0b29scy1wcm9maWxlIiAgLSBhZGQgcHJvZmlsaW5n
IHRvb2xzIChvcHJvZmlsZSwgZXhtYXAsIGx0dG5nIHZhbGdyaW5kICh4ODYgb25seSkpCiMgInRv
b2xzLXRlc3RhcHBzIiAtIGFkZCB1c2VmdWwgdGVzdGluZyB0b29scyAodHNfcHJpbnQsIGFwbGF5
LCBhcmVjb3JkIGV0Yy4pCiMgImRlYnVnLXR3ZWFrcyIgICAtIG1ha2UgYW4gaW1hZ2UgZm9yIHN1
aXRhYmxlIG9mIGRldmVsb3BtZW50CiMgICAgICAgICAgICAgICAgICAgIGUuZy4gc3NoIHJvb3Qg
YWNjZXNzIGhhcyBhIGJsYW5rIHBhc3N3b3JkCiMgVGhlcmUgYXJlIG90aGVyIGFwcGxpY2F0aW9u
IHRhcmdldHMgdG9vLCBzZWUgbWV0YS9jbGFzc2VzL3Bva3ktaW1hZ2UuYmJjbGFzcyAKIyBhbmQg
bWV0YS9wYWNrYWdlcy90YXNrcy90YXNrLXBva3kuYmIgZm9yIG1vcmUgZGV0YWlscy4KCkVYVFJB
X0lNQUdFX0ZFQVRVUkVTID0gInRvb2xzLWRlYnVnIHRvb2xzLXByb2ZpbGUgdG9vbHMtdGVzdGFw
cHMgZGVidWctdHdlYWtzIgoKIyBUaGUgZGVmYXVsdCBJTUFHRV9GRUFUVVJFUyBhYm92ZSBhcmUg
dG9vIGxhcmdlIGZvciB0aGUgbXgzMXBoeSBhbmQgCiMgYzcwMC9jNzUwIG1hY2hpbmVzIHdoaWNo
IGhhdmUgbGltaXRlZCBzcGFjZS4gVGhlIGNvZGUgYmVsb3cgbGltaXRzCiMgdGhlIGRlZmF1bHQg
ZmVhdHVyZXMgZm9yIHRob3NlIG1hY2hpbmVzLgpFWFRSQV9JTUFHRV9GRUFUVVJFU19jN3gwID0g
InRvb2xzLXRlc3RhcHBzIGRlYnVnLXR3ZWFrcyIKRVhUUkFfSU1BR0VfRkVBVFVSRVNfbXgzMXBo
eSA9ICJkZWJ1Zy10d2Vha3MiCkVYVFJBX0lNQUdFX0ZFQVRVUkVTX214MzFhZHMgPSAidG9vbHMt
dGVzdGFwcHMgZGVidWctdHdlYWtzIgoKIyBBIGxpc3Qgb2YgcGFja2FnaW5nIHN5c3RlbXMgdXNl
ZCBpbiBnZW5lcmF0ZWQgaW1hZ2VzCiMgVGhlIGZpcnN0IHBhY2thZ2UgdHlwZSBsaXN0ZWQgd2ls
bCBiZSB1c2VkIGZvciByb290ZnMgZ2VuZXJhdGlvbgojIGluY2x1ZGUgJ3BhY2thZ2VfZGViJyBm
b3IgZGVicwojIGluY2x1ZGUgJ3BhY2thZ2VfaXBrJyBmb3IgaXBrcwojIGluY2x1ZGUgJ3BhY2th
Z2VfcnBtJyBmb3IgcnBtcwojUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSBwYWNrYWdl
X2RlYiBwYWNrYWdlX2lwayIKUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSBwYWNrYWdl
X2lwayIKCiMgbWtsaWJzIGxpYnJhcnkgc2l6ZSBvcHRpbWl6YXRpb24gaXMgbW9yZSB1c2VmdWwg
dG8gc21hbGxlciBpbWFnZXMsIAojIGFuZCBsZXNzIHVzZWZ1bCBmb3IgYmlnZ2VyIGltYWdlcy4g
QWxzbyBta2xpYnMgbGlicmFyeSBvcHRpbWl6YXRpb24gY2FuIGJyZWFrIHRoZSBBQkkgY29tcGF0
aWJpbGl0eSwgc28gc2hvdWxkIG5vdCBiZSBhcHBsaWVkIHRvIHRoZSBpbWFnZXMgd2hpY2ggYXJl
IHRvYmUKIyBleHRlbmRlZCBvciB1cGdyYWRlZCBsYXRlci4KI1RoaXMgZW5hYmxlZCBta2xpYnMg
bGlicmFyeSBzaXplIG9wdGltaXphdGlvbiBqdXN0IGZvciB0aGUgc3BlY2lmaWVkIGltYWdlLgoj
TUtMSUJTX09QVElNSVpFRF9JTUFHRVMgPz0gInBva3ktaW1hZ2UtbWluaW1hbCIKI1RoaXMgZW5h
YmxlIG1rbGlicyBsaWJyYXJ5IHNpemUgb3B0aW1pemF0aW9uIHdpbGwgYmUgZm9yIGFsbCB0aGUg
aW1hZ2VzLgojTUtMSUJTX09QVElNSVpFRF9JTUFHRVMgPz0gImFsbCIKCiMgQSBsaXN0IG9mIGFk
ZGl0aW9uYWwgY2xhc3NlcyB0byB1c2Ugd2hlbiBidWlsZGluZyB0aGUgc3lzdGVtCiMgaW5jbHVk
ZSAnaW1hZ2UtbWtsaWJzJyB0byByZWR1Y2Ugc2hhcmVkIGxpYnJhcnkgZmlsZXMgc2l6ZSBmb3Ig
YW4gaW1hZ2UKIyBpbmNsdWRlICdpbWFnZS1wcmVsaW5rJyBpbiBvcmRlciB0byBwcmVsaW5rIHRo
ZSBmaWxlc3lzdGVtIGltYWdlCiMgaW5jbHVkZSAnaW1hZ2Utc3dhYicgdG8gcGVyZm9ybSBob3N0
IHN5c3RlbSBpbnRydXNpb24gZGV0ZWN0aW9uCiMgTk9URTogaWYgbGlzdGluZyBta2xpYnMgJiBw
cmVsaW5rIGJvdGgsIHRoZW4gbWFrZSBzdXJlIG1rbGlicyBpcyBiZWZvcmUgcHJlbGluawpVU0VS
X0NMQVNTRVMgPz0gImltYWdlLW1rbGlicyBpbWFnZS1wcmVsaW5rIgoKIyBQT0tZTU9ERSBjb250
cm9scyB0aGUgY2hhcmFjdGVyaXN0aWNzIG9mIHRoZSBnZW5lcmF0ZWQgcGFja2FnZXMvaW1hZ2Vz
IGJ5CiMgdGVsbGluZyBwb2t5IHdoaWNoIHR5cGUgb2YgdG9vbGNoYWluIHRvIHVzZS4KIwojIE9w
dGlvbnMgaW5jbHVkZSBzZXZlcmFsIGRpZmZlcmVudCBFQUJJIGNvbWJpbmF0aW9ucyBhbmQgYSBj
b21wYXRpYmlsaXR5IAojIG1vZGUgZm9yIHRoZSBPQUJJIG1vZGUgcG9reSBwcmV2aW91c2x5IHVz
ZWQuIAojCiMgVGhlIGRlZmF1bHQgaXMgImVhYmkiCiMgVXNlICJvYWJpIiBmb3IgbWFjaGluZXMg
d2l0aCBrZXJuZWxzIDwgMi42LjE4IG9uIEFSTSBmb3IgZXhhbXBsZS4KIyBVc2UgImV4dGVybmFs
LU1PREUiIHRvIHVzZSB0aGUgcHJlY29tcGlsZWQgZXh0ZXJuYWwgdG9vbGNoYWlucyB3aGVyZSBN
T0RFCiMgaXMgdGhlIHR5cGUgb2YgZXh0ZXJuYWwgdG9vbGNoYWluIHRvIHVzZSBlLmcuIGVhYmku
CiMgUE9LWU1PREUgPSAiZXh0ZXJuYWwtZWFiaSIKCiMgVW5jb21tZW50IHRoaXMgdG8gc3BlY2lm
eSB3aGVyZSBCaXRCYWtlIHNob3VsZCBjcmVhdGUgaXRzIHRlbXBvcmFyeSBmaWxlcy4KIyBOb3Rl
IHRoYXQgYSBmdWxsIGJ1aWxkIG9mIGV2ZXJ5dGhpbmcgaW4gT3BlbkVtYmVkZGVkIHdpbGwgdGFr
ZSBHaWdhQnl0ZXMgb2YgaGFyZAojIGRpc2sgc3BhY2UsIHNvIG1ha2Ugc3VyZSB0byBmcmVlIGVu
b3VnaCBzcGFjZS4gVGhlIGRlZmF1bHQgVE1QRElSIGlzCiMgPGJ1aWxkIGRpcmVjdG9yeT4vdG1w
CiNUTVBESVIgPSAiJHtQT0tZQkFTRX0vYnVpbGQvdG1wIgoKIyBUaGUgZm9sbG93aW5nIGFyZSB1
c2VkIHRvIGNvbnRyb2wgb3B0aW9ucyByZWxhdGVkIHRvIGRlYnVnZ2luZy4KIwojIFVuY29tbWVu
dCB0aGlzIHRvIGNoYW5nZSB0aGUgb3B0aW1pemF0aW9uIHRvIG1ha2UgZGVidWdnaW5nIGVhc2Vy
LCBhdCB0aGUgCiMgcG9zc2libGUgY29zdCBvZiBwZXJmb3JtYW5jZS4KIyBERUJVR19CVUlMRCA9
ICIxIgojCiMgVW5jb21tZW50IHRoaXMgdG8gZGlzYWJsZSB0aGUgc3RyaXBwaW5nIG9mIHRoZSBp
bnN0YWxsZWQgYmluYXJpZXMKIyBJTkhJQklUX1BBQ0tBR0VfU1RSSVAgPSAiMSIKIwojIFVuY29t
bWVudCB0aGlzIHRvIGRpc2FibGUgdGhlIHNwbGl0IG9mIHRoZSBkZWJ1ZyBpbmZvcm1hdGlvbiBp
bnRvIC1kYmcgZmlsZXMKIyBJTkhJQklUX1BBQ0tBR0VfREVCVUdfU1BMSVQgPSAiMSIKIwojIFdo
ZW4gc3BsaXR0aW5nIGRlYnVnIGluZm9ybWF0aW9uLCB0aGUgZm9sbG93aW5nIGNvbnRyb2xzIHRo
ZSByZXN1bHRzIG9mIHRoZQojIGZpbGUgc3BsaXR0aW5nLgojCiMgIC5kZWJ1ZyAoZGVmYXVsdCk6
CiMgICAgV2hlbiBzcGxpdHRpbmcgdGhlIGRlYnVnIGluZm9ybWF0aW9uIHdpbGwgYmUgcGxhY2Vk
IGludG8KIyAgICBhIC5kZWJ1ZyBkaXJlY3RvcnkgaW4gdGhlIHNhbWUgZGlybmFtZSBvZiB0aGUg
YmluYXJ5IHByb2R1Y2VkOgojICAgICAgL2Jpbi9mb28gLT4gL2Jpbi8uZGVidWcvZm9vCiMKIyAg
ZGVidWctZmlsZS1kaXJlY3Rvcnk6CiMgICAgV2hlbiBzcGxpdHRpbmcgdGhlIGRlYnVnIGluZm9y
bWF0aW9uIHdpbGwgYmUgcGxhY2VkIGludG8KIyAgICBhIGNlbnRyYWwgZGVidWctZmlsZS1kaXJl
Y3RvcnksIC91c3IvbGliL2RlYnVnOgojICAgICAgL2Jpbi9mb28gLT4gL3Vzci9saWIvZGVidWcv
YmluL2Zvby5kZWJ1ZwojCiMgICAgQW55IHNvdXJjZSBjb2RlIHJlZmVyZW5jZWQgaW4gdGhlIGRl
YnVnIHN5bWJvbHMgd2lsbCBiZSBjb3BpZWQKIyAgICBhbmQgbWFkZSBhdmFpbGFibGUgd2l0aGlu
IHRoZSAvdXNyL3NyYy9kZWJ1ZyBkaXJlY3RvcnkKIwpQQUNLQUdFX0RFQlVHX1NQTElUX1NUWUxF
ID0gJy5kZWJ1ZycKIyBQQUNLQUdFX0RFQlVHX1NQTElUX1NUWUxFID0gJ2RlYnVnLWZpbGUtZGly
ZWN0b3J5JwoKIyBVbmNvbW1lbnQgdGhlc2UgdG8gYnVpbGQgYSBwYWNrYWdlIHN1Y2ggdGhhdCB5
b3UgY2FuIHVzZSBncHJvZiB0byBwcm9maWxlIGl0LgojIE5PVEU6IFRoaXMgd2lsbCBvbmx5IHdv
cmsgd2l0aCAnbGludXgnIHRhcmdldHMsIG5vdAojICdsaW51eC11Y2xpYmMnLCBhcyB1Q2xpYmMg
ZG9lc24ndCBwcm92aWRlIHRoZSBuZWNlc3NhcnkKIyBvYmplY3QgZmlsZXMuICBBbHNvLCBkb24n
dCBidWlsZCBnbGliYyBpdHNlbGYgd2l0aCB0aGVzZQojIGZsYWdzLCBvciBpdCdsbCBmYWlsIHRv
IGJ1aWxkLgojCiMgUFJPRklMRV9PUFRJTUlaQVRJT04gPSAiLXBnIgojIFNFTEVDVEVEX09QVElN
SVpBVElPTiA9ICIke1BST0ZJTEVfT1BUSU1JWkFUSU9OfSIKIyBMREZMQUdTID0rICItcGciCgoj
IFVuY29tbWVudCB0aGlzIGlmIHlvdSB3YW50IEJpdEJha2UgdG8gZW1pdCBkZWJ1Z2dpbmcgb3V0
cHV0CiMgQkJERUJVRyA9ICJ5ZXMiCiMgVW5jb21tZW50IHRoaXMgaWYgeW91IHdhbnQgQml0QmFr
ZSB0byBlbWl0IHRoZSBsb2cgaWYgYSBidWlsZCBmYWlscy4KQkJJTkNMVURFTE9HUyA9ICJ5ZXMi
CgojIFNldCB0aGlzIGlmIHlvdSB3aXNoIHRvIG1ha2UgcGtnY29uZmlnIGxpYnJhcmllcyBmcm9t
IHlvdXIgc3lzdGVtIGF2YWlsYWJsZSAKIyBmb3IgbmF0aXZlIGJ1aWxkcy4gQ29tYmluZWQgd2l0
aCBleHRyYSBBU1NVTUVfUFJPVklERURzIHRoaXMgY2FuIGFsbG93IAojIG5hdGl2ZSBidWlsZHMg
b2YgYXBwbGljYXRpb25zIGxpa2Ugb3Byb2ZpbGV1aS1uYXRpdmUgKHVuc3VwcG9ydGVkIGZlYXR1
cmUpLgojRVhUUkFfTkFUSVZFX1BLR0NPTkZJR19QQVRIID0gIjovdXNyL2xpYi9wa2djb25maWci
CiNBU1NVTUVfUFJPVklERUQgKz0gImd0aystbmF0aXZlIGxpYmdsYWRlLW5hdGl2ZSIKCkVOQUJM
RV9CSU5BUllfTE9DQUxFX0dFTkVSQVRJT04gPSAiMSIKCiMgVGhlIGFyY2hpdGVjdHVyZSB0byBi
dWlsZCBTREsgaXRlbXMgZm9yLCBieSBzZXR0aW5nIHRoaXMgeW91IGNhbiBidWlsZCBTREsKIyBw
YWNrYWdlcyBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuIHRoZSBob3N0IGkuZS4gYnVpbGRp
bmcgaTY4NiBwYWNrYWdlcwojIG9uIGFuIHg4Nl82NCBob3N0LgojIFN1cHBvcnRlZCB2YWx1ZXMg
YXJlIGk2ODYgYW5kIHg4Nl82NAojU0RLTUFDSElORSA/PSAiaTY4NiIKCiMgUG9reSBjYW4gdHJ5
IGFuZCBmZXRjaCBwYWNrYWdlZC1zdGFnaW5nIHBhY2thZ2VzIGZyb20gYSBodHRwLCBodHRwcyBv
ciBmdHAKIyBtaXJyb3IuIFNldCB0aGlzIHZhcmlhYmxlIHRvIHRoZSByb290IG9mIGEgcHN0YWdl
IGRpcmVjdG9yeSBvbiBhIHNlcnZlci4KI1NTVEFURV9NSVJST1JTID89ICJcCiNmaWxlOi8vLiog
aHR0cDovL3NvbWVzZXJ2ZXIudGxkL3NoYXJlL3NzdGF0ZS8gXG4gXAojZmlsZTovLy4qIGZpbGU6
Ly8vc29tZS9sb2NhbC9kaXIvc3N0YXRlLyIKCiMgU2V0IElNQUdFVEVTVCB0byBxZW11IGlmIHlv
dSB3YW50IHRvIGJ1aWxkIHRlc3RjYXNlcyBhbmQgc3RhcnQgCiMgdGVzdGluZyBpbiBxZW11IGFm
dGVyIGRvX3Jvb3Rmcy4KI0lNQUdFVEVTVCA9ICJxZW11IgoKIyBCeSBkZWZhdWx0IHRlc3QgY2Fz
ZXMgaW4gc2FuaXR5IHN1aXRlIHdpbGwgYmUgcmFuLiBJZiB5b3Ugd2FudCB0byBydW4gb3RoZXIg
CiMgdGVzdCBzdWl0ZSBvciBzcGVjaWZpYyB0ZXN0IGNhc2UoZS5nLiBiYXQgb3IgYm9vdCB0ZXN0
IGNhc2UgdW5kZXIgc2FuaXR5IHN1aXRlKSwgCiMgbGlzdCB0aGVtIGxpa2UgZm9sbG93aW5nLgoj
VEVTVF9TQ0VOID0gInNhbml0eSBiYXQgc2FuaXR5OmJvb3QiCgojQmVjYXVzZSBvZiB0aGUgUUVN
VSBib290aW5nIHNsb3duZXNzIGlzc3VlKHNlZSBidWcgIzY0NiBhbmQgIzYxOCksIGF1dG9idWls
ZGVyCiNtYXkgc3VmZmVyIGEgdGltZW91dCBpc3N1ZSB3aGVuIHJ1bm5pbmcgc2FuaXR5IHRlc3Qu
IFdlIGludHJvZHVjZSB2YXJpYWJsZQojVEVTVF9TRVJJQUxJWkUgaGVyZSB0byByZWR1Y2UgdGhl
IHRpbWUgb24gc2FuaXR5IHRlc3QuIEl0IGlzIGJ5IGRlZmF1bHQgc2V0IAojdG8gMS4gUG9reSB3
aWxsIHN0YXJ0IGltYWdlIGFuZCBydW4gY2FzZXMgaW4gdGhlIHNhbWUgaW1hZ2Ugd2l0aG91dCBy
ZWJvb3QgCiNvciBraWxsLiBJZiBpdCBpcyBzZXQgdG8gMCwgdGhlIGltYWdlIHdpbGwgYmUgY29w
aWVkIGFuZCB0ZXN0ZWQgZm9yIGVhY2ggCiNjYXNlLCB3aGljaCB3aWxsIHRha2UgbXVjaCB0aW1l
LgojVEVTVF9TRVJJQUxJWkUgPSAiMSIKCiMgU2V0IEdMSUJDX0dFTkVSQVRFX0xPQ0FMRVMgdG8g
dGhlIGxvY2FsZXMgeW91IHdpc2ggdG8gZ2VuZXJhdGUgc2hvdWxkIHlvdSBub3QKIyB3aXNoIHRv
IHBlcmZvcm0gdGhlIHRpbWUtY29uc3VtaW5nIHN0ZXAgb2YgZ2VuZXJhdGluZyBhbGwgTElCQyBs
b2NhbGVzLgojIE5PVEU6IElmIHJlbW92aW5nIGVuX1VTLlVURi04IHlvdSB3aWxsIGFsc28gbmVl
ZCB0byB1bmNvbW1lbnQsIGFuZCBzZXQKIyBhcHByb3ByaWF0ZSB2YWx1ZXMgZm9yIElNQUdFX0xJ
TkdVQVMgYW5kIExJTUlUX0JVSUxUX0xPQ0FMRVMKIyBXQVJOSU5HOiB0aGlzIG1heSBicmVhayBs
b2NhbGlzYXRpb24hCiNHTElCQ19HRU5FUkFURV9MT0NBTEVTID0gImVuX0dCLlVURi04IGVuX1VT
LlVURi04IgojIFNlZSBtZXNzYWdlIGFib3ZlIGFzIHRvIHdoZXRoZXIgc2V0dGluZyB0aGVzZSBp
cyByZXF1aXJlZAojSU1BR0VfTElOR1VBUyA/PSAiZW4tZ2IiCiNMSU1JVF9CVUlMVF9MT0NBTEVT
ID89ICJQT1NJWCBlbl9HQiIKCiMgVGhpcyB2YWx1ZSBpcyBjdXJyZW50bHkgdXNlZCBieSBQU0VV
RE8gdG8gZGV0ZXJtaW5lIGlmIHRoZSByZWNpcGUgc2hvdWxkCiMgYnVpbGQgYm90aCB0aGUgMzIt
Yml0IGFuZCA2NC1iaXQgd3JhcHBlciBsaWJyYXJpZXMgb24gYSA2NC1iaXQgYnVpbGQgc3lzdGVt
LgojCiMgUFNFVURPIHdpbGwgYXR0ZW1wdCB0byBkZXRlcm1pbmUgaWYgYSAzMi1iaXQgd3JhcHBl
ciBpcyBuZWNlc3NhcnksIGJ1dCAKIyBpdCBkb2Vzbid0IGFsd2F5cyBndWVzcyBwcm9wZXJseS4g
IElmIHlvdSBoYXZlIDMyLWJpdCBleGVjdXRhYmxlcyBvbiAKIyB5b3VyIDY0LWJpdCBidWlsZCBz
eXN0ZW0sIHlvdSBsaWtlbHkgd2FudCB0byBzZXQgdGhpcyB0byAiMCIsIAojIG90aGVyd2lzZSB5
b3UgY291bGQgZW5kIHVwIHdpdGggaW5jb3JyZWN0IGZpbGUgYXR0cmlidXRlcyBvbiB0aGUgCiMg
dGFyZ2V0IGZpbGVzeXN0ZW0uCiMKIyBEZWZhdWx0IHRvIG5vdCBidWlsZCAzMiBiaXQgbGlicyBv
biA2NCBiaXQgc3lzdGVtcywgY29tbWVudCB0aGlzCiMgb3V0IGlmIHRoYXQgaXMgZGVzaXJlZApO
TzMyTElCUyA9ICIxIgoKIyBJZiB5b3UgZG8gbm90IHVzZSAob3IgaGF2ZSBpbnN0YWxsZWQpIGdu
b21lLXRlcm1pbmFsIHlvdSB3aWxsIG5lZWQgdG8KIyB1bmNvbW1lbnQgdGhlc2UgdmFyaWFibGVz
IGFuZCBzZXQgdGhlbSB0byB0aGUgdGVybWluYWwgeW91IHdpc2ggdG8gdXNlCiMgd2hlbiByZXNv
bHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5ub3QgYmUgYXBwbGllZAojIFN1cHBvcnRlZCBzaGVsbCBw
cmVmaXhlcyBmb3IgKl9URVJNQ01EIGFuZCAqX1RFUk1DTURSVU4gQVJFOgojIEdOT01FLCBTQ1JF
RU4sIFhURVJNIGFuZCBLT05TT0xFCiNURVJNQ01EID0gIiR7S09OU09MRV9URVJNQ01EfSIKI1RF
Uk1DTURSVU4gPSAiJHtLT05TT0xFX1RFUk1DTURSVU59Igo=

--_005_23F1A04A50711046AF124F3D4D1EB2ECD100C5F6pgsmsx507garcor_--
