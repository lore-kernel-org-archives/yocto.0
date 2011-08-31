Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3659E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 16:49:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Aug 2011 16:49:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,310,1312182000"; 
	d="log'?scan'208,217";a="44495919"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 31 Aug 2011 16:49:28 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Wed, 31 Aug 2011 16:49:05 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 31 Aug 2011 16:49:00 -0700
Thread-Topic: RT kernel with core-image-sato build failed for sugarbay 
Thread-Index: AcxoOI4zYXW2eR/RSxu8EQ9CAGhL7Q==
Message-ID: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: RT kernel with core-image-sato build failed for sugarbay
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
X-List-Received-Date: Wed, 31 Aug 2011 23:49:35 -0000
X-Groupsio-MsgNum: 2607
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_"

--_004_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_
Content-Type: multipart/alternative;
	boundary="_000_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_"

--_000_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build core-image-sato with rt kernel for sugarbay and it fai=
ls for the do_rootfs .

Attached is the build log.

Could you please let me know what went wrong?

Thanks
Kishore.

--_000_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equi=
v=3DContent-Type content=3D"text/html; charset=3Dus-ascii"><meta name=3DGen=
erator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
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
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am tryin=
g to build core-image-sato with rt kernel for sugarbay and it fails for the=
 do_rootfs .<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>Attached is the build log.<o:p></o:p></p><p class=3DMsoNorma=
l><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Could you please let me know wh=
at went wrong?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoNormal>Thanks<o:p></o:p></p><p class=3DMsoNormal>Kishore.<o:p></o=
:p></p></div></body></html>=

--_000_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_--

--_004_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_
Content-Type: application/octet-stream; name="error.log"
Content-Description: error.log
Content-Disposition: attachment; filename="error.log"; size=4284;
	creation-date="Wed, 31 Aug 2011 16:47:11 GMT";
	modification-date="Wed, 31 Aug 2011 16:48:14 GMT"
Content-Transfer-Encoding: base64

Tk9URTogcGFja2FnZSBjb3JlLWltYWdlLXNhdG8tMS4wLXIwOiB0YXNrIGRvX3Jvb3RmczogU3Rh
cnRlZA0KRVJST1I6IEZ1bmN0aW9uICdkb19yb290ZnMnIGZhaWxlZCAoc2VlIC91c3IvbG9jYWwv
c3JjL2NyZi90ZXN0L2J1aWxkc3VnYXJiYXkvdG1wL3dvcmsvc3VnYXJiYXktcG9reS1saW51eC9j
b3JlLWltYWdlLXNhdG8tMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rmcy4yNjk5MiBmb3IgZnVydGhl
ciBpbmZvcm1hdGlvbikNCkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvdXNy
L2xvY2FsL3NyYy9jcmYvdGVzdC9idWlsZHN1Z2FyYmF5L3RtcC93b3JrL3N1Z2FyYmF5LXBva3kt
bGludXgvY29yZS1pbWFnZS1zYXRvLTEuMC1yMC90ZW1wL2xvZy5kb19yb290ZnMuMjY5OTINCkxv
ZyBkYXRhIGZvbGxvd3M6DQp8IEdlbmVyYXRpbmcgc29sdmUgZGIgZm9yIC91c3IvbG9jYWwvc3Jj
L2NyZi90ZXN0L2J1aWxkc3VnYXJiYXkvdG1wL2RlcGxveS9ycG0vc3VnYXJiYXkuLi4NCnwgICAg
dG90YWw6ICAgICAgICAgICAgICAgMSAgICAgIDAuMDAwMDAwIE1CICAgICAgOC41OTc0MjIgc2Vj
cw0KfCAgICBmaW5nZXJwcmludDogICAgICAxMDc0ICAgICAgMC4wMDc5MjQgTUIgICAgICAwLjMz
OTk5MiBzZWNzDQp8ICAgIGluc3RhbGw6ICAgICAgICAgICAzNTggICAgICAwLjAwMDAwMCBNQiAg
ICAgIDAuNDUxMzUxIHNlY3MNCnwgICAgZGJhZGQ6ICAgICAgICAgICAgIDM1OCAgICAgIDAuMDAw
MDAwIE1CICAgICAgMC40NDAyMzAgc2Vjcw0KfCAgICBkYmdldDogICAgICAgICAgICAyMzI3ICAg
ICAgMC4wMDAwMDAgTUIgICAgICAwLjAwNTUwNyBzZWNzDQp8ICAgIGRicHV0OiAgICAgICAgICAg
ICAzNTggICAgICAxLjgyNzMxNiBNQiAgICAgIDAuMzc3MDU2IHNlY3MNCnwgICAgcmVhZGhkcjog
ICAgICAgICAgMzU4MSAgICAgIDMuNTg2NDY0IE1CICAgICAgNi4xNDIwMjYgc2Vjcw0KfCAgICBo
ZHJsb2FkOiAgICAgICAgICAxNzkwICAgICAgNS4zMzM0OTIgTUIgICAgICAwLjAwODk5MCBzZWNz
DQp8ICAgIGhkcmdldDogICAgICAgICAgNjQzMzQgICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDUw
MzM0IHNlY3MNCnwgR2VuZXJhdGluZyBzb2x2ZSBkYiBmb3IgL3Vzci9sb2NhbC9zcmMvY3JmL3Rl
c3QvYnVpbGRzdWdhcmJheS90bXAvZGVwbG95L3JwbS94ODZfNjQuLi4NCnwgICAgdG90YWw6ICAg
ICAgICAgICAgICAgMSAgICAgIDAuMDAwMDAwIE1CICAgIDM4MS40Mzg1Mjggc2Vjcw0KfCAgICBm
aW5nZXJwcmludDogICAgIDE2ODI3ICAgICAgMC4xOTQ1OTQgTUIgICAgICA0LjY0ODYwOCBzZWNz
DQp8ICAgIGluc3RhbGw6ICAgICAgICAgIDU2MDkgICAgICAwLjAwMDAwMCBNQiAgICAgMzAuMTUx
OTU1IHNlY3MNCnwgICAgZGJhZGQ6ICAgICAgICAgICAgNTYwOSAgICAgIDAuMDAwMDAwIE1CICAg
ICAyOC4wMzMxMjMgc2Vjcw0KfCAgICBkYmdldDogICAgICAgICAgIDYxNzMzICAgICAgMC4wMDAw
MDAgTUIgICAgICAxLjc5OTM2NiBzZWNzDQp8ICAgIGRicHV0OiAgICAgICAgICAgIDU2MDkgICAg
IDI4LjI1NTU4MCBNQiAgICAgMjYuMjIxMjkzIHNlY3MNCnwgICAgcmVhZGhkcjogICAgICAgICA1
NjA5MSAgICAgNTYuMjMyNzcwIE1CICAgIDMxMS44MDMxNDcgc2Vjcw0KfCAgICBoZHJsb2FkOiAg
ICAgICAgIDMxMTYxICAgICA5OS4zNjgyODYgTUIgICAgICAwLjI4OTk1NSBzZWNzDQp8ICAgIGhk
cmdldDogICAgICAgIDEwMTEyODkgICAgICAwLjAwMDAwMCBNQiAgICAgIDEuMjcxMDkxIHNlY3MN
CnwgR2VuZXJhdGluZyBzb2x2ZSBkYiBmb3IgL3Vzci9sb2NhbC9zcmMvY3JmL3Rlc3QvYnVpbGRz
dWdhcmJheS90bXAvZGVwbG95L3JwbS9hbGwuLi4NCnwgICAgdG90YWw6ICAgICAgICAgICAgICAg
MSAgICAgIDAuMDAwMDAwIE1CICAgICAgMC42NTUzMTEgc2Vjcw0KfCAgICBmaW5nZXJwcmludDog
ICAgICAgIDk2ICAgICAgMC4wMDMyNTggTUIgICAgICAwLjA5NjE1OSBzZWNzDQp8ICAgIGluc3Rh
bGw6ICAgICAgICAgICAgMzIgICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDU1MDcxIHNlY3MNCnwg
ICAgZGJhZGQ6ICAgICAgICAgICAgICAzMiAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4wNTIyMTAg
c2Vjcw0KfCAgICBkYmdldDogICAgICAgICAgICAgNTg1ICAgICAgMC4wMDAwMDAgTUIgICAgICAw
LjAwMDYyOSBzZWNzDQp8ICAgIGRicHV0OiAgICAgICAgICAgICAgMzIgICAgICAwLjI2MTU0MCBN
QiAgICAgIDAuMDMwODYxIHNlY3MNCnwgICAgcmVhZGhkcjogICAgICAgICAgIDMyMSAgICAgIDAu
NTIwNTA0IE1CICAgICAgMC40Mzg3Nzkgc2Vjcw0KfCAgICBoZHJsb2FkOiAgICAgICAgICAgMTYz
ICAgICAgMC43ODMyNzYgTUIgICAgICAwLjAwMDk0OSBzZWNzDQp8ICAgIGhkcmdldDogICAgICAg
ICAgIDUyNzggICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDA0OTMyIHNlY3MNCnwgR2VuZXJhdGlu
ZyBzb2x2ZSBkYiBmb3IgL3Vzci9sb2NhbC9zcmMvY3JmL3Rlc3QvYnVpbGRzdWdhcmJheS90bXAv
ZGVwbG95L3JwbS9hbGwuLi4NCnwgICAgdG90YWw6ICAgICAgICAgICAgICAgMSAgICAgIDAuMDAw
MDAwIE1CICAgICAgMC4xMjM3NTcgc2Vjcw0KfCAgICBmaW5nZXJwcmludDogICAgICAgIDk2ICAg
ICAgMC4wMDMyNTggTUIgICAgICAwLjAwNDMxOSBzZWNzDQp8ICAgIGluc3RhbGw6ICAgICAgICAg
ICAgMzIgICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDY3NjE2IHNlY3MNCnwgICAgZGJhZGQ6ICAg
ICAgICAgICAgICAzMiAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4wNjQ2Nzkgc2Vjcw0KfCAgICBk
YmdldDogICAgICAgICAgICAgNTg1ICAgICAgMC4wMDAwMDAgTUIgICAgICAwLjAwMDY3OSBzZWNz
DQp8ICAgIGRicHV0OiAgICAgICAgICAgICAgMzIgICAgICAwLjI2MTU0MCBNQiAgICAgIDAuMDM2
Nzc0IHNlY3MNCnwgICAgcmVhZGhkcjogICAgICAgICAgIDMyMSAgICAgIDAuNTIwNTA0IE1CICAg
ICAgMC4wMDA4MjEgc2Vjcw0KfCAgICBoZHJsb2FkOiAgICAgICAgICAgMTYzICAgICAgMC43ODMy
NzYgTUIgICAgICAwLjAwMDkxMCBzZWNzDQp8ICAgIGhkcmdldDogICAgICAgICAgIDUyNzggICAg
ICAwLjAwMDAwMCBNQiAgICAgIDAuMDA1MzMyIHNlY3MNCnwgUHJvY2Vzc2luZyBsb2NhbGUtYmFz
ZS1lbi11cy4uLg0KfCBQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLWVuLWdiLi4uDQp8IFByb2Nlc3Np
bmcgdGFzay1jb3JlLWFwcHMtY29uc29sZS4uLg0KfCBQcm9jZXNzaW5nIHRhc2stY29yZS1zc2gt
ZHJvcGJlYXIuLi4NCnwgUHJvY2Vzc2luZyB0YXNrLWNvcmUtYXBwcy14MTEtcGltbGljby4uLg0K
fCBQcm9jZXNzaW5nIHRhc2stY29yZS14MTEtc2F0by4uLg0KfCBQcm9jZXNzaW5nIHp5cHBlci4u
Lg0KfCBQcm9jZXNzaW5nIHJ0LXRlc3RzLi4uDQp8IFByb2Nlc3NpbmcgdGFzay1jb3JlLXgxMS1i
YXNlLi4uDQp8IFByb2Nlc3NpbmcgdGFzay1jb3JlLWFwcHMteDExLWdhbWVzLi4uDQp8IFByb2Nl
c3NpbmcgdGFzay1jb3JlLWFwcHMteDExLWNvcmUuLi4NCnwgUHJvY2Vzc2luZyBycG0uLi4NCnwg
ZXJyb3I6IEZhaWxlZCBkZXBlbmRlbmNpZXM6DQp8ICAgICAgIGJsdWV6NCBpcyBuZWVkZWQgYnkg
Y29ubm1hbi1wbHVnaW4tYmx1ZXRvb3RoLTAuNzUtcjEueDg2XzY0DQp8ICAgICAgIG9mb25vIGlz
IG5lZWRlZCBieSBjb25ubWFuLXBsdWdpbi1vZm9uby0wLjc1LXIxLng4Nl82NA0KfCAgICAgICB3
cGEtc3VwcGxpY2FudCBpcyBuZWVkZWQgYnkgY29ubm1hbi1wbHVnaW4td2lmaS0wLjc1LXIxLng4
Nl82NA0KfCBFUlJPUjogRnVuY3Rpb24gJ2RvX3Jvb3RmcycgZmFpbGVkIChzZWUgL3Vzci9sb2Nh
bC9zcmMvY3JmL3Rlc3QvYnVpbGRzdWdhcmJheS90bXAvd29yay9zdWdhcmJheS1wb2t5LWxpbnV4
L2NvcmUtaW1hZ2Utc2F0by0xLjAtcjAvdGVtcC9sb2cuZG9fcm9vdGZzLjI2OTkyIGZvciBmdXJ0
aGVyIGluZm9ybWF0aW9uKQ0KTk9URTogcGFja2FnZSBjb3JlLWltYWdlLXNhdG8tMS4wLXIwOiB0
YXNrIGRvX3Jvb3RmczogRmFpbGVkDQpFUlJPUjogVGFzayA4ICgvdXNyL2xvY2FsL3NyYy9jcmYv
dGVzdC9tZXRhL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS1zYXRvLmJiLCBkb19yb290
ZnMpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCkVSUk9SOiAnL3Vzci9sb2NhbC9zcmMvY3Jm
L3Rlc3QvbWV0YS9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by5iYicgZmFpbGVk
DQpraXNob3JlQGtpc2hvcmUtZGVza3RvcDovdXNyL2xvY2FsL3NyYy9jcmYvdGVzdC9idWlsZHN1
Z2FyYmF5JA0K

--_004_4BD43A85686FC34D819098DB1C3999D901889D799Forsmsx502amrc_--
