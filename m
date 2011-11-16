Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA53E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 12:03:00 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2011 12:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208,217";a="76503552"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2011 12:02:59 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 16 Nov 2011 12:02:59 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.87]) with mapi id
	14.01.0355.002; Wed, 16 Nov 2011 12:02:59 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Sergey Lychagin <serg.lychagin@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] qemuarm: Unable to mount rootfs
Thread-Index: AQHMpFhqkU0EUiKEqk+Lu6oPFxjWkJWv6vfA
Date: Wed, 16 Nov 2011 20:02:58 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16EB98D5@ORSMSX101.amr.corp.intel.com>
References: <CAMVXEj+bjMKtrxUwAYpEiigLTEe9ywuq=wWLgAk=WeebVZq0zg@mail.gmail.com>
In-Reply-To: <CAMVXEj+bjMKtrxUwAYpEiigLTEe9ywuq=wWLgAk=WeebVZq0zg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: qemuarm: Unable to mount rootfs
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
X-List-Received-Date: Wed, 16 Nov 2011 20:03:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16EB98D5ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16EB98D5ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sergey,



Couple questions:



1.       So did you extract your qemuarm rootfs using runquem-extract-sdk t=
o a directory?

2.       Point to that directory as sysroot in your Eclipse preference setu=
p page (all of this should be covered in the ADT manual)?

3.       Can you open an xterm and look for qemu process and kill all of th=
em and retry launch?



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Sergey Lychagin
Sent: Wednesday, November 16, 2011 4:07 AM
To: yocto@yoctoproject.org
Subject: [yocto] qemuarm: Unable to mount rootfs



Hello,

I've faced the following problem: "VFS: unable to mount root fs via NFS" du=
ring staring pre-compiled kernel/rootfs images in quemu.
The screen-shot: http://imgur.com/XtvRc
I'm trying to start it via Eclipse as it is shown in http://vimeo.com/30557=
368

I also followed the instructions described ADT user guide: http://www.yocto=
project.org/docs/current/adt-manual/adt-manual.html
Target is qemuarm. kernel & rootfs (core-image-sato-sdkqemuarm & zImage-qem=
uarm.bin) are precompiled and downloaded from here: http://downloads.yoctop=
roject.org/releases/yocto/yocto-1.1/machines/qemu/qemuarm/

As far as I know this kernel image should support NFS.
Could you please help me?

Thanks in advance
Sergey


--_000_C6510F6D410BB64A8C15398EDC6B847C16EB98D5ORSMSX101amrcor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:843132525;
	mso-list-type:hybrid;
	mso-list-template-ids:1969245020 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Sergey,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Couple questions:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">So did you extrac=
t your qemuarm rootfs using runquem-extract-sdk to a directory?<o:p></o:p><=
/span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Point to that dir=
ectory as sysroot in your Eclipse preference setup page (all of this should=
 be covered in the ADT manual)?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you open an x=
term and look for qemu process and kill all of them and retry launch?<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Sergey Lychagin<br>
<b>Sent:</b> Wednesday, November 16, 2011 4:07 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] qemuarm: Unable to mount rootfs<o:p></o:p></span></=
p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<br>
<br>
I've faced the following problem: &quot;VFS: unable to mount root fs via NF=
S&quot; during staring pre-compiled kernel/rootfs images in quemu.<br>
The screen-shot: <a href=3D"http://imgur.com/XtvRc">http://imgur.com/XtvRc<=
/a><br>
I'm trying to start it via Eclipse as it is shown in <a href=3D"http://vime=
o.com/30557368">
http://vimeo.com/30557368</a><br>
<br>
I also followed the instructions described ADT user guide: <a href=3D"http:=
//www.yoctoproject.org/docs/current/adt-manual/adt-manual.html">
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html</a><br>
Target is qemuarm. kernel &amp; rootfs (core-image-sato-sdkqemuarm &amp; zI=
mage-qemuarm.bin) are precompiled and downloaded from here:
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machi=
nes/qemu/qemuarm/">
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu/qe=
muarm/</a><br>
<br>
As far as I know this kernel image should support NFS.<br>
Could you please help me?<br>
<br>
Thanks in advance<br>
Sergey<o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16EB98D5ORSMSX101amrcor_--
