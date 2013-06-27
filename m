Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45389E01518
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:21:03 -0700 (PDT)
Received: from mail54-co1-R.bigfish.com (10.243.78.229) by
	CO1EHSOBE012.bigfish.com (10.243.66.75) with Microsoft SMTP Server id
	14.1.225.23; Thu, 27 Jun 2013 07:21:02 +0000
Received: from mail54-co1 (localhost [127.0.0.1])	by mail54-co1-R.bigfish.com
	(Postfix) with ESMTP id 83E87C60FC1;
	Thu, 27 Jun 2013 07:21:02 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zz9371Ic85fhzz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzz1d7338h177df4h17326ah18c673h1c8fb4h1954cbh1d68deh8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1bceh1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail54-co1 (localhost.localdomain [127.0.0.1]) by mail54-co1
	(MessageSwitch) id 1372317660645198_846; Thu, 27 Jun 2013 07:21:00 +0000
	(UTC)
Received: from CO1EHSMHS016.bigfish.com (unknown [10.243.78.232])	by
	mail54-co1.bigfish.com (Postfix) with ESMTP id 919D82C0057;
	Thu, 27 Jun 2013 07:21:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS016.bigfish.com
	(10.243.66.26) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 27 Jun 2013 07:21:00 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.148]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0328.011;
	Thu, 27 Jun 2013 07:20:59 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
Thread-Topic: [yocto] First UBI build
Thread-Index: AQHOcwSWof1LTt5aRkuP6BRU7pDCv5lJJoOg
Date: Thu, 27 Jun 2013 07:20:58 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A015BEE44@039-SN2MPN1-022.039d.mgd.msft.net>
References: <CAFMfyzLw9nOseL_zBZ8BDLOf2EqRp3rKpnN+QEdBB534q5Usvg@mail.gmail.com>
In-Reply-To: <CAFMfyzLw9nOseL_zBZ8BDLOf2EqRp3rKpnN+QEdBB534q5Usvg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: First UBI build
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
X-List-Received-Date: Thu, 27 Jun 2013 07:21:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA452391058F6D4E9715FB2C29D9312A015BEE44039SN2MPN102203_"

--_000_CA452391058F6D4E9715FB2C29D9312A015BEE44039SN2MPN102203_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Add below two variables in conf/local.conf, the value is just for sample an=
d might need change.

MKUBIFS_ARGS =3D " -m 512 -e 15360 -c 3600 "
UBINIZE_ARGS =3D " -p 16KiB -m 512 -s 512 "


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of DAMARLA Satya Swaroop
Sent: Thursday, June 27, 2013 3:04 PM
To: yocto@yoctoproject.org
Subject: [yocto] First UBI build

Hi Guys,

I had great success and actually feel yocto with building images. Now I wan=
t to run the image from the flash drive and trying to build a UBIFS but I g=
et strange errors which I didnot get when I am building a normal tar.gz fil=
e for the SDCARD. The error is as follows... Can you guys please tell me wh=
at is the new stuff I had to add to overcome this issue?

| Size after prelinking 276884.
| Error: min. I/O unit was not specified (use -h for help)
| ERROR: Function failed: do_rootfs (log file is located at /home/damarla/o=
penYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/root=
fs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)
ERROR: Task 7 (/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/i=
mages/rootfs-smartcpu.bb<http://rootfs-smartcpu.bb>, do_rootfs) failed with=
 exit code '1'
NOTE: Tasks Summary: Attempted 5188 tasks of which 4394 didn't need to be r=
erun and 1 failed.
No currently running tasks (5187 of 5189)

Summary: 1 task failed:
  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/rootfs-=
smartcpu.bb<http://rootfs-smartcpu.bb>, do_rootfs
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Cheers.
Sati

--_000_CA452391058F6D4E9715FB2C29D9312A015BEE44039SN2MPN102203_
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
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Add below two variables i=
n conf/local.conf, the value is just for sample and might need change.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">MKUBIFS_ARGS =3D &quot; -=
m 512 -e 15360 -c 3600 &quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">UBINIZE_ARGS =3D &quot; -=
p 16KiB -m 512 -s 512 &quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Thursday, June 27, 2013 3:04 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] First UBI build<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I had great success and actually feel yocto with bui=
lding images. Now I want to run the image from the flash drive and trying t=
o build a UBIFS but I get strange errors which I didnot get when I am build=
ing a normal tar.gz file for the SDCARD.
 The error is as follows... Can you guys please tell me what is the new stu=
ff I had to add to overcome this issue?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>| Size after prelinking 276884.</i><o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal"><i>| Error: min. I/O unit was not specified (use -h =
for help)</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>| ERROR: Function failed: do_rootfs (log file is =
located at /home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-unt=
ersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)</i><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>ERROR: Task 7 (/home/damarla/openYocto/poky/meta-=
skidata/recipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu.bb">rootf=
s-smartcpu.bb</a>, do_rootfs) failed with exit code '1'</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>NOTE: Tasks Summary: Attempted 5188 tasks of whic=
h 4394 didn't need to be rerun and 1 failed.</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>No currently running tasks (5187 of 5189)</i><o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: 1 task failed:</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>&nbsp; /home/damarla/openYocto/poky/meta-skidata/=
recipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu.bb">rootfs-smartc=
pu.bb</a>, do_rootfs</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: There was 1 WARNING message shown.</i><o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: There was 1 ERROR message shown, returni=
ng a non-zero exit code.</i><o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Sati<o:p></o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CA452391058F6D4E9715FB2C29D9312A015BEE44039SN2MPN102203_--
