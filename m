Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24D824C80050
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 19:53:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Apr 2011 17:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,285,1299484800"; 
	d="scan'208,217";a="728163465"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 01 Apr 2011 17:53:47 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 2 Apr 2011 08:53:46 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 2 Apr 2011 08:53:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Sat, 2 Apr 2011
	08:53:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 2 Apr 2011 08:53:43 +0800
Thread-Topic: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems
	to be corrupted
Thread-Index: AcvwHS2MREokbm+EQTakXlrBwcWJbQACkXygACN5q7AABo6lUA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F15059F629DEE1@shsmsx502.ccr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2ECFA02A8@orsmsx505.amr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F15059F629DBB6@shsmsx502.ccr.corp.intel.com>
	<4FF5AC937153B0459463C1A88EB478F2ECFA0A83@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2ECFA0A83@orsmsx505.amr.corp.intel.com>
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
X-List-Received-Date: Sat, 02 Apr 2011 00:53:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F15059F629DEE1shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DEE1shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

could you double confirm the link below is used in your side?

Ideally the gnu mirror should be used, e.g. ftp://ftp.gnu.org/gnu/gcc/gcc-4=
.5.1/gcc-4.5.1.tar.bz2 in my log though it's 4.5.1

If the upstream tar ball itself is broken, there's nothing to do with bitba=
ke itself. You have to find an alternative download site with a good tar ba=
ll, or wait for the original link to fix the problem. We did observe one or=
 a few such issues, but it's very rare case and we haven't seen such report=
 on gcc yet.

Thanks
Kevin

From: Saxena, Rahul
Sent: Saturday, April 02, 2011 5:44 AM
To: Tian, Kevin; yocto@yoctoproject.org
Subject: RE: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems=
 to be corrupted

The file seems to be copied from here by bitbake:

http://gcc.get-software.com/releases/gcc-4.5.0/gcc-4.5.0.tar.bz2

I manually downloaded it too it still shows up to be corrupted.

Not sure what does one do in such cases..

Thanks
Rahul

From: Tian, Kevin
Sent: Thursday, March 31, 2011 9:45 PM
To: Saxena, Rahul; yocto@yoctoproject.org
Subject: RE: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems=
 to be corrupted

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

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DEE1shsmsx502ccrc_
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
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
US style=3D'font-size:10.5pt;color:#1F497D'>could you double confirm the li=
nk below is used in your side?<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5p=
t;color:#1F497D'>Ideally the gnu mirror should be used, e.g. <a href=3D"ftp=
://ftp.gnu.org/gnu/gcc/gcc-4.5.1/gcc-4.5.1.tar.bz2">ftp://ftp.gnu.org/gnu/g=
cc/gcc-4.5.1/gcc-4.5.1.tar.bz2</a> in my log though it&#8217;s 4.5.1<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:1=
0.5pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>If the upstream tar =
ball itself is broken, there&#8217;s nothing to do with bitbake itself. You=
 have to find an alternative download site with a good tar ball, or wait fo=
r the original link to fix the problem. We did observe one or a few such is=
sues, but it&#8217;s very rare case and we haven&#8217;t seen such report o=
n gcc yet.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Th=
anks<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:10.5pt;color:#1F497D'>Kevin<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp=
;</o:p></span></p><div style=3D'border:none;border-left:solid blue 1.5pt;pa=
dding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #B=
5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:=
</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif"'> Saxena, Rahul <br><b>Sent:</b> Saturday, April 02, 2011 5:=
44 AM<br><b>To:</b> Tian, Kevin; yocto@yoctoproject.org<br><b>Subject:</b> =
RE: [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to be co=
rrupted<o:p></o:p></span></p></div></div><p class=3DMsoNormal><span lang=3D=
EN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US s=
tyle=3D'color:#1F497D'>The file seems to be copied from here by bitbake:<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#=
1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'><a href=3D"http://gcc.get-software.com/releases/gc=
c-4.5.0/gcc-4.5.0.tar.bz2">http://gcc.get-software.com/releases/gcc-4.5.0/g=
cc-4.5.0.tar.bz2</a><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'color:#1F497D'>I manually downloaded it =
too it still shows up to be corrupted.<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Not sure =
what does one do in such cases..<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D=
'>Rahul<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:no=
ne;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMso=
Normal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma"=
,"sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Tahoma","sans-serif"'> Tian, Kevin <br><b>Sent:</b> Thursday,=
 March 31, 2011 9:45 PM<br><b>To:</b> Saxena, Rahul; yocto@yoctoproject.org=
<br><b>Subject:</b> RE: [yocto] Failure while running bitbake: gcc-4.5.0.ta=
r.bz2 seems to be corrupted<o:p></o:p></span></p></div></div><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>could you try m=
anually download the tar ball from the link, and then copy to the /home/rsa=
xena/poky-4.0-build/downloads/?<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5=
pt;color:#1F497D'>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Kevin<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color=
:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left=
:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none=
;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNo=
rmal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Tahoma","sans-serif"'> yocto-bounces@yoctoproject.org [mailto:y=
octo-bounces@yoctoproject.org] <b>On Behalf Of </b>Saxena, Rahul<br><b>Sent=
:</b> Friday, April 01, 2011 11:31 AM<br><b>To:</b> yocto@yoctoproject.org<=
br><b>Subject:</b> [yocto] Failure while running bitbake: gcc-4.5.0.tar.bz2=
 seems to be corrupted<o:p></o:p></span></p></div></div><p class=3DMsoNorma=
l><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&nb=
sp;I get a failure when I run the bitbake &nbsp;example stated in the Yocto=
 Project Quick Start Guide<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>$ bitbake poky-image-sato <o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US>Gives the following error: <o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#C00000'>&gt;&gt;<o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: R=
unning task 256 of 1633 (ID: 1585, /home/rsaxena/poky-laverne-4.0/meta/reci=
pes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_unpack)<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: pac=
kage gcc-cross-initial-4.5.0-r10: task do_unpack: Started<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'>NOTE: U=
npacking /home/rsaxena/poky-4.0-build/downloads/gcc-4.5.0.tar.bz2 to /home/=
rsaxena/poky-4.0-build/tmp/work/i586-poky-linux/gcc-cross-initial-4.5.0-r10=
/<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'col=
or:#C00000'>ERROR: Task failed: <o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#C00000'>NOTE: package gcc-cross-initial-=
4.5.0-r10: task do_unpack: Failed<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#C00000'>ERROR: Task 1585 (/home/rsaxena=
/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_=
unpack) failed with 1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#C00000'>ERROR: '/home/rsaxena/poky-laverne-4.0/met=
a/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb' failed<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'>&lt;&lt=
;<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#C00000'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:black'>I find that if I manually try to untar th=
e downloaded gcc-4.5.0.tar.bz2 file, I get a &#8220;not a bzip2 file&#8221;=
 error.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:black'>I get the same error if I&nbsp; download the file again an=
d untar it.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:black'>So it seems like the &nbsp;gcc-4.5.0.tar=
.bz2 is corrupted for some reason.<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Pl let me know of=
 any suggestions on how to get this resolved..<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'color:#C00000'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Tha=
nks<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:black'>Rahul<o:p></o:p></span></p></div></div></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F15059F629DEE1shsmsx502ccrc_--
