Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 44A2E4C81201
	for <yocto@yoctoproject.org>; Fri, 13 May 2011 16:07:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2011 14:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; d="scan'208,217";a="1988384"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 13 May 2011 14:07:32 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Fri, 13 May 2011 14:07:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Date: Fri, 13 May 2011 14:07:29 -0700
Thread-Topic: Diagrams
Thread-Index: AcwRscR3lGZGI/R2RIO3Wq3Bnzf71g==
Message-ID: <DE8BA75F34A0404282AC5E15F691BC76D6B78F9B@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Diagrams
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
X-List-Received-Date: Fri, 13 May 2011 21:07:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DE8BA75F34A0404282AC5E15F691BC76D6B78F9Borsmsx504amrcor_"

--_000_DE8BA75F34A0404282AC5E15F691BC76D6B78F9Borsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Currently I have been consistently using a 'figures' directory within each =
manual directory to house any PNG files used in a given manual.  However, t=
he Yocto-docs repository has a 'diagrams' folder at the same level as 'docu=
mentation'.  I think we should continue to keep figures with their respecti=
ve books and not in some higher-level folder at the same level of documenta=
tion.

This brings up some questions.  Let's say you have a figure that is somewha=
t universal and is used often by the community, such as this 'oearch.png' f=
igure.  But, the figure is also part of a manual.  Do we keep the figure in=
 the manual's 'figures' folder exclusively?  Or, duplicate the figure and k=
eep it in the higher-level 'diagrams' folder as well?

It goes against good practice to duplicate things so I would lean toward ke=
eping the figures with the documents.  And, if we have figures that are not=
 used in any documentation we could keep them in the higher-level 'diagrams=
' folder.

Thoughts?

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_DE8BA75F34A0404282AC5E15F691BC76D6B78F9Borsmsx504amrcor_
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Currently I have been consistently using a &#8216;figu=
res&#8217;
directory within each manual directory to house any PNG files used in a giv=
en
manual.&nbsp; However, the Yocto-docs repository has a &#8216;diagrams&#821=
7;
folder at the same level as &#8216;documentation&#8217;.&nbsp; I think we
should continue to keep figures with their respective books and not in some
higher-level folder at the same level of documentation.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>This brings up some questions.&nbsp; Let&#8217;s say y=
ou
have a figure that is somewhat universal and is used often by the community=
,
such as this &#8216;oearch.png&#8217; figure.&nbsp; But, the figure is also
part of a manual.&nbsp; Do we keep the figure in the manual&#8217;s &#8216;=
figures&#8217;
folder exclusively?&nbsp; Or, duplicate the figure and keep it in the highe=
r-level
&#8216;diagrams&#8217; folder as well?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>It goes against good practice to duplicate things so I=
 would
lean toward keeping the figures with the documents.&nbsp; And, if we have
figures that are not used in any documentation we could keep them in the hi=
gher-level
&#8216;diagrams&#8217; folder. <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thoughts?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";
color:blue'>Scott Rifenbark</span></b><b><span style=3D'font-size:10.0pt;
font-family:"Arial","sans-serif";color:blue'><o:p></o:p></span></b></p>

<p class=3DMsoNormal><span style=3D'font-size:7.5pt;font-family:"Arial","sa=
ns-serif";
color:blue'>Intel Corporation</span><span style=3D'font-size:7.5pt;font-fam=
ily:
"Times New Roman","serif"'><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:7.5pt;font-family:"Arial","sa=
ns-serif";
color:blue'>Yocto Project Documentation<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:7.5pt;font-family:"Arial","sa=
ns-serif";
color:blue'>503.712.2702</span><span style=3D'font-size:12.0pt;font-family:=
"Times New Roman","serif"'><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:7.5pt;font-family:"Arial","sa=
ns-serif";
color:blue'>503.341.0418 (cell)</span><span style=3D'font-size:12.0pt;font-=
family:
"Times New Roman","serif"'><o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_DE8BA75F34A0404282AC5E15F691BC76D6B78F9Borsmsx504amrcor_--
