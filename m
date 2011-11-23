Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D6DDE005B4
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 15:35:13 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2011 15:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,562,1315206000"; d="scan'208,217";a="94779395"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2011 15:35:09 -0800
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Wed, 23 Nov 2011 15:35:09 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Nov 2011 15:35:08 -0800
Thread-Topic: SRCREV variable
Thread-Index: AcyqNkif/8LE2gP5RwywxT9n4j/93AAANGtwAABOnXA=
Message-ID: <4FF5AC937153B0459463C1A88EB478F201A8D4E497@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3833@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3833@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: SRCREV variable
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
X-List-Received-Date: Wed, 23 Nov 2011 23:35:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F201A8D4E497orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F201A8D4E497orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes I saw this other stuff too...but I don't see anywhere the explanation o=
f how a revision identifier is generated or obtained.

Thanks
Rahul


From: Rifenbark, Scott M
Sent: Wednesday, November 23, 2011 3:30 PM
To: Saxena, Rahul; yocto@yoctoproject.org
Subject: RE: SRCREV variable

There is a bit more in the Yocto Project Reference Manual at http://www.yoc=
toproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html.   It states=
:

SRCREV - The revision of the source code used to build the package.  This v=
ariable applies to Subversion, Git, Mercurial and Bazaar only.  Note that i=
f you wish to build a fixed revision and you wish to avoid performing a que=
ry on the remote repository every time BitBake parses your recipe, you shou=
ld specify a SRCREV that is a full revision identifier and not just a tag.

Also, Section 5.1.6 of that reference manual has some information on develo=
ping within Yocto Project for a package that uses an external SCM.

I am not sure if these will help you but this is where the latest documenta=
tion is for SRCREV.

ScottR

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Saxena, Rahul
Sent: Wednesday, November 23, 2011 3:19 PM
To: yocto@yoctoproject.org
Subject: [yocto] SRCREV variable

Hi ,

Can anyone explain how to set the SRCREV variable for a recipe ?

I get a error: "Please Set SRCREV to a valid value"

The poky manual simply has the following explanation:

'SRCREV               Revision of source code used to build package (Subver=
sion, GIT, Bazaar only). '


For example if my source is MesaLib-7.9.tar.bz2 file from following site...=
what steps do I need to do to get the SRCREV ?

ftp://ftp.freedesktop.org/pub/mesa/7.9/



Thanks
Rahul

--_000_4FF5AC937153B0459463C1A88EB478F201A8D4E497orsmsx505amrc_
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META HTTP-EQUI=
V=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"><meta name=3DG=
enerator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Yes I saw this other stuff too&#8230;but I don&#8217;t see an=
ywhere the explanation of how a revision identifier is generated or obtaine=
d.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F49=
7D'>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#=
1F497D'>Rahul<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'colo=
r:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'=
color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;b=
order-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNorm=
al><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>Fr=
om:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-se=
rif"'> Rifenbark, Scott M <br><b>Sent:</b> Wednesday, November 23, 2011 3:3=
0 PM<br><b>To:</b> Saxena, Rahul; yocto@yoctoproject.org<br><b>Subject:</b>=
 RE: SRCREV variable<o:p></o:p></span></p></div></div><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>The=
re is a bit more in the Yocto Project Reference Manual at <a href=3D"http:/=
/www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html">htt=
p://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html</=
a>.&nbsp;&nbsp; It states:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'color:#1F497D'>SRCREV &#8211; The revision of the source code =
used to build the package.&nbsp; This variable applies to Subversion, Git, =
Mercurial and Bazaar only.&nbsp; Note that if you wish to build a fixed rev=
ision and you wish to avoid performing a query on the remote repository eve=
ry time BitBake parses your recipe, you should specify a SRCREV that is a f=
ull revision identifier and not just a tag.<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'color:#1F497D'>Also, Section 5.1.6 of that =
reference manual has some information on developing within Yocto Project fo=
r a package that uses an external SCM.<o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoNormal><span style=3D'color:#1F497D'>I am not sure if these will help yo=
u but this is where the latest documentation is for SRCREV.&nbsp; <o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>ScottR<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:=
p>&nbsp;</o:p></span></p><div><div style=3D'border:none;border-top:solid #B=
5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span style=
=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><sp=
an style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> yocto-boun=
ces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>On Behalf O=
f </b>Saxena, Rahul<br><b>Sent:</b> Wednesday, November 23, 2011 3:19 PM<br=
><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto] SRCREV variab=
le<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p><=
/p><p class=3DMsoNormal>Hi ,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><p class=3DMsoNormal>Can anyone explain how to set the SRCREV var=
iable for a recipe ?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></=
p><p class=3DMsoNormal>I get a error: &#8220;Please Set SRCREV to a valid v=
alue&#8221; <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>The poky manual simply has the following explanation:<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&#82=
16;SRCREV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Revision of source code used to build package (Subversio=
n, GIT, Bazaar only). &#8216; <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>=
For example if my source is MesaLib-7.9.tar.bz2 file from following site&#8=
230;what steps do I need to do to get the SRCREV ?<o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><a href=3D"ftp://ftp=
.freedesktop.org/pub/mesa/7.9/">ftp://ftp.freedesktop.org/pub/mesa/7.9/</a>=
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>Thanks<o:p></o:p></p><p class=3DMsoNormal>Rahul<o:p></o:p></p>=
</div></body></html>=

--_000_4FF5AC937153B0459463C1A88EB478F201A8D4E497orsmsx505amrc_--
