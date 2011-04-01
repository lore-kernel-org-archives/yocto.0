Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E9FB4C80AE6
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 23:45:55 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Mar 2011 21:45:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,280,1299484800"; 
	d="scan'208,217";a="727782489"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 31 Mar 2011 21:45:54 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Apr 2011 12:45:08 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 1 Apr 2011
	12:45:07 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 1 Apr 2011 12:45:05 +0800
Thread-Topic: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems
	to be corrupted
Thread-Index: AcvwHS2MREokbm+EQTakXlrBwcWJbQACkXyg
Message-ID: <625BA99ED14B2D499DC4E29D8138F15059F629DBB6@shsmsx502.ccr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2ECFA02A8@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2ECFA02A8@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to be corrupted
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
X-List-Received-Date: Fri, 01 Apr 2011 04:45:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F15059F629DBB6shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DBB6shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

could you try manually download the tar ball from the link, and then copy t=
o the /home/rsaxena/poky-4.0-build/downloads/?

Thanks
Kevin

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Saxena, Rahul
Sent: Friday, April 01, 2011 11:31 AM
To: yocto@yoctoproject.org
Subject: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to =
be corrupted

Hi,

 I get a failure when I run the bitbake  example stated in the Yocto Projec=
t Quick Start Guide

$ bitbake poky-image-sato

Gives the following error:

>>
NOTE: Running task 256 of 1633 (ID: 1585, /home/rsaxena/poky-laverne-4.0/me=
ta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_unpack)
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Started
NOTE: Unpacking /home/rsaxena/poky-4.0-build/downloads/gcc-4.5.0.tar.bz2 to=
 /home/rsaxena/poky-4.0-build/tmp/work/i586-poky-linux/gcc-cross-initial-4.=
5.0-r10/
ERROR: Task failed:
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Failed
ERROR: Task 1585 (/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/=
gcc-cross-initial_4.5.0.bb, do_unpack) failed with 1
ERROR: '/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-=
initial_4.5.0.bb' failed
<<

I find that if I manually try to untar the downloaded gcc-4.5.0.tar.bz2 fil=
e, I get a "not a bzip2 file" error.
I get the same error if I  download the file again and untar it.

So it seems like the  gcc-4.5.0.tar.bz2 is corrupted for some reason.

Pl let me know of any suggestions on how to get this resolved..

Thanks
Rahul

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DBB6shsmsx502ccrc_
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
	{font-family:SimSun;
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.5pt;color:#1F497D'>could you try manually download=
 the tar ball from the link, and then copy to the /home/rsaxena/poky-4.0-bu=
ild/downloads/?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D=
'>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.5pt;color:#1F497D'>Kevin<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&=
nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid blue 1.5p=
t;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:soli=
d #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>Fro=
m:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoc=
toproject.org] <b>On Behalf Of </b>Saxena, Rahul<br><b>Sent:</b> Friday, Ap=
ril 01, 2011 11:31 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</=
b> [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to be cor=
rupted<o:p></o:p></span></p></div></div><p class=3DMsoNormal><span lang=3DE=
N-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Hi=
,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;I get a failu=
re when I run the bitbake &nbsp;example stated in the Yocto Project Quick S=
tart Guide<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>$ bitbake =
poky-image-sato <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Give=
s the following error: <o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'color:#C00000'>&gt;&gt;<o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: Running task 256 =
of 1633 (ID: 1585, /home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc=
/gcc-cross-initial_4.5.0.bb, do_unpack)<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: package gcc-cross-i=
nitial-4.5.0-r10: task do_unpack: Started<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: Unpacking /home/r=
saxena/poky-4.0-build/downloads/gcc-4.5.0.tar.bz2 to /home/rsaxena/poky-4.0=
-build/tmp/work/i586-poky-linux/gcc-cross-initial-4.5.0-r10/<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'>ERRO=
R: Task failed: <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'color:#C00000'>NOTE: package gcc-cross-initial-4.5.0-r10: task =
do_unpack: Failed<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#C00000'>ERROR: Task 1585 (/home/rsaxena/poky-laverne-4.=
0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_unpack) failed w=
ith 1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#C00000'>ERROR: '/home/rsaxena/poky-laverne-4.0/meta/recipes-devtool=
s/gcc/gcc-cross-initial_4.5.0.bb' failed<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'color:#C00000'>&lt;&lt;<o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:black'>I find that if I manually try to untar the downloaded gcc-=
4.5.0.tar.bz2 file, I get a &#8220;not a bzip2 file&#8221; error.<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>I=
 get the same error if I&nbsp; download the file again and untar it.<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:black'>So it seems like the &nbsp;gcc-4.5.0.tar.bz2 is corrupted =
for some reason.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:black'>Pl let me know of any suggestions o=
n how to get this resolved..<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#C00000'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Thanks<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Rahul<=
o:p></o:p></span></p></div></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DBB6shsmsx502ccrc_--
