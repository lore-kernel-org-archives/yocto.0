Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF21E004D1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 06:44:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Sep 2011 06:44:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,387,1312182000"; d="scan'208,217";a="51790663"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2011 06:44:10 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 15 Sep 2011 21:44:08 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 15 Sep 2011 21:44:07 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: =?gb2312?B?sszV8b78?= <caizhenjun@insigma.com.cn>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 15 Sep 2011 21:43:55 +0800
Thread-Topic: tcf-agent fail to run on imx28evk
Thread-Index: AcxziahIeUfV53xdRHK0lEPBIN69DQAI1wKw
Message-ID: <1865303E0DED764181A9D882DEF65FB6BC05D6E36B@shsmsx502.ccr.corp.intel.com>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC00638@WX-ExchMB.insigma.com.cn>
In-Reply-To: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC00638@WX-ExchMB.insigma.com.cn>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: tcf-agent fail to run on imx28evk
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
X-List-Received-Date: Thu, 15 Sep 2011 13:44:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1865303E0DED764181A9D882DEF65FB6BC05D6E36Bshsmsx502ccrc_"

--_000_1865303E0DED764181A9D882DEF65FB6BC05D6E36Bshsmsx502ccrc_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

Q2FuIHlvdSBwbGVhc2UgdHJ5IHRvIHJlbW92ZSChsGltYWdlLXByZWxpbmsiIGZyb20gY29uZi9s
b2NhbC5jb25moa9zIFVTRVJfQ0xBU1NFUyBhbmQgcmUtYnVpbGQgYW4gaW1hZ2UgdG8gc2VlIGlm
IHRoYXQgd291bGQgbWFrZSBhIGRpZmZlcmVuY2U/DQoNClJlY2VudGx5IGxvb2tzIHByZWxpbmtp
bmcgd2FzIGJyb2tlbiBhbmQgdGhpcyBjYXVzZXMgc2VnZmF1bHRzIGluIHNvbWUgcGFja2FnZXMu
DQoNClRoYW5rcywNCi0tIERleHVhbg0KDQpGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVj
dC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBP
ZiCyzNXxvvwNClNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMTUsIDIwMTEgNToyNyBQTQ0KVG86
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0b10gdGNmLWFnZW50IGZhaWwg
dG8gcnVuIG9uIGlteDI4ZXZrDQoNCkhpIEFMTCwNCiAgICAgICAgIEkgYnVpbGQgb25lIGltYWdl
IGZvciBpbXgyOGV2ay4gQnV0IHRjZi1hZ2VudCBmYWlsIHRvIHN0YXJ0IGluIGJvb3QgcHJvY2Vz
cyBhbmQgZ2V0IHNhbWUgZmF1bHQgd2hlbiBJIHJ1biBpdCBtYW51YWxseS4NCkxvZyBsaWtlIHRo
aXM6DQogICAgICAgICAgICAgICAgSU5JVDogRW50ZXJpbmcgcnVubGV2ZWw6IDUNClN0YXJ0aW5n
IHN5c2xvZ2Qva2xvZ2Q6IGRvbmUNClN0YXJ0aW5nIHRjZi1hZ2VudDogQWxpZ25tZW50IHRyYXA6
IHRjZi1hZ2VudCAoMTUyNikgUEM9MHg0ZTcwNGNhNCBJbnN0cj0weGU3OTEzMTAzIEFkZHJlc3M9
MHhmZmZmZmZmZSBGU1IgMHgwMDENClNlZ21lbnRhdGlvbiBmYXVsdA0KRkFJTA0KU3RvcHBpbmcg
Qm9vdGxvZyBkYWVtb246IGJvb3Rsb2dkLg0KICAgICAgICAgSSBoYXZlIHRyaWVkIHRvIHVwZGF0
ZSB0aGUgdmVyc2lvbiBvZiB0Y2YtYWdlbnQuIEVycm9yIHN0aWxsIGV4aXN0Lg0KDQpCZXN0IHJl
Z2FyZHMNCkZleWUNCg0KDQqyzNXxvvwNCs340MK8vMr109DP3rmry77O78GqzfjKwtK1sr8NCrq8
1t3M7MS/yb3CtzIyNrrFzfjQwrTzz8MNCrXnu7AtMTM4IDY3NDUgMTkxMA0KDQo=

--_000_1865303E0DED764181A9D882DEF65FB6BC05D6E36Bshsmsx502ccrc_
Content-Type: text/html; charset="gb2312"
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
v=3DContent-Type content=3D"text/html; charset=3Dgb2312"><meta name=3DGener=
ator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><div><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span l=
ang=3DEN-US style=3D'color:#1F497D'>Can you please try to remove =A1=B0imag=
e-prelink&quot; from conf/local.conf=A1=AFs USER_CLASSES and re-build an im=
age to see if that would make a difference?</span><span lang=3DEN style=3D'=
font-size:12.0pt;font-family:=CB=CE=CC=E5;color:#1F497D'><o:p></o:p></span>=
</p><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN style=3D'font-size:12.0pt;font-family:=CB=CE=CC=E5;color:#1F497D'><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><span lang=3DEN style=3D'font-size:12.0pt;font-family:=CB=CE=CC=
=E5;color:#1F497D'>Recently looks prelinking was broken and this causes seg=
faults in some packages.<o:p></o:p></span></p><p class=3DMsoNormal align=3D=
left style=3D'text-align:left'><span lang=3DEN style=3D'font-size:12.0pt;fo=
nt-family:=CB=CE=CC=E5;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks,<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>-=
- Dexuan<o:p></o:p></span></p></div><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:n=
one;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=
=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</s=
pan></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctopro=
ject.org] <b>On Behalf Of </b></span><span style=3D'font-size:10.0pt;font-f=
amily:=CB=CE=CC=E5'>=B2=CC=D5=F1=BE=FC</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Tahoma","sans-serif"'><br><b>Sent:</b> Thursday=
, September 15, 2011 5:27 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Sub=
ject:</b> [yocto] tcf-agent fail to run on imx28evk<o:p></o:p></span></p></=
div></div><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span=
 lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>Hi ALL,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I build one image for i=
mx28evk. But tcf-agent fail to start in boot process and get same fault whe=
n I run it manually.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>Log like this:<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; <i>INIT: Entering runlevel: 5<o:p></o:p></i></spa=
n></p><p class=3DMsoNormal style=3D'margin-left:42.0pt;mso-para-margin-left=
:4.0gd'><i><span lang=3DEN-US>Starting syslogd/klogd: done<o:p></o:p></span=
></i></p><p class=3DMsoNormal style=3D'margin-left:42.0pt;mso-para-margin-l=
eft:4.0gd'><i><span lang=3DEN-US>Starting tcf-agent: Alignment trap: tcf-ag=
ent (1526) PC=3D0x4e704ca4 Instr=3D0xe7913103 Address=3D0xfffffffe FSR 0x00=
1<o:p></o:p></span></i></p><p class=3DMsoNormal style=3D'margin-left:42.0pt=
;mso-para-margin-left:4.0gd'><i><span lang=3DEN-US>Segmentation fault<o:p><=
/o:p></span></i></p><p class=3DMsoNormal style=3D'margin-left:42.0pt;mso-pa=
ra-margin-left:4.0gd'><i><span lang=3DEN-US>FAIL<o:p></o:p></span></i></p><=
p class=3DMsoNormal style=3D'margin-left:42.0pt;mso-para-margin-left:4.0gd'=
><i><span lang=3DEN-US>Stopping Bootlog daemon: bootlogd.<o:p></o:p></span>=
</i></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; I have tried to update the version of tcf-agent. Erro=
r still exist.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Best r=
egards<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Feye<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-family:=CB=CE=CC=E5'>=B2=CC=
=D5=F1=BE=FC</span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-family:=CB=CE=CC=E5'>=CD=F8=D0=C2=BC=BC=CA=F5=D3=
=D0=CF=DE=B9=AB=CB=BE=CE=EF=C1=AA=CD=F8=CA=C2=D2=B5=B2=BF</span><span lang=
=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-fam=
ily:=CB=CE=CC=E5'>=BA=BC=D6=DD=CC=EC=C4=BF=C9=BD=C2=B7</span><span lang=3DE=
N-US>226</span><span style=3D'font-family:=CB=CE=CC=E5'>=BA=C5=CD=F8=D0=C2=
=B4=F3=CF=C3</span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-family:=CB=CE=CC=E5'>=B5=E7=BB=B0</span><span lan=
g=3DEN-US>-138 6745 1910<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US><o:p>&nbsp;</o:p></span></p></div></div></body></html>=

--_000_1865303E0DED764181A9D882DEF65FB6BC05D6E36Bshsmsx502ccrc_--
