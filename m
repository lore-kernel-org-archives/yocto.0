Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F47AE009A6; Thu,  8 May 2014 03:05:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from GWS06.hcl.com (unknown [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E99B1E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:05:34 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,1010,1389724200"; 
	d="png'150?scan'150,208,217,150";a="68795241"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 08 May 2014 15:29:25 +0530
Received: from NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN (10.98.132.29) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 8 May 2014 15:35:32 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN ([10.98.132.29]) with mapi id
	14.03.0123.003; Thu, 8 May 2014 15:35:32 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Third Party Components Integration in Yocto
Thread-Index: Ac9pOpAuRv9q6K+2TDy/G0K3Sq4Nk///s3mA//ziTxA=
Date: Thu, 8 May 2014 10:05:31 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536903ED.1040806@dynamicdevices.co.uk>
In-Reply-To: <536903ED.1040806@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Subject: Re: Third Party Components Integration in Yocto
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
X-List-Received-Date: Thu, 08 May 2014 10:05:56 -0000
X-Groupsio-MsgNum: 19440
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_";
	type="multipart/alternative"

--_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: multipart/alternative;
	boundary="_000_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_"

--_000_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Alex,

Yes I installed  FILES_${PN} all package folders are creating
Tried devshell  but there is no installed bb-example in image/usr/include/.=
..empty include folder. Bb-example is not loading inside image/......
Analysed  log_devshell , log_package, do_install, do_make.

Even I compared with other recipes folder structures  it is going right dir=
ection but only the binaries are not loading.

I guess I missed something in do_install ? no proper path?
After do_compile and make, at  do_install binaries are not able to load.


Regards
Meena

From: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
Sent: Tuesday, May 06, 2014 9:17 PM
To: Meenakumari Shedole; yocto@yoctoproject.org; Beauchesne, Gwenole
Subject: Re: [yocto] Third Party Components Integration in Yocto


On 06/05/2014 15:57, Meenakumari Shedole wrote:
Hi,

To add 3rd party components in yocto we created bb file and modified local.=
conf file.
After a yocto build, 3rd party component executing the binaries and rpm pac=
kages but executed binaries are not loading inside the rpm packages, rpm pa=
ckage is empty.

Used below function in bb file.

do_install () {

  install -d ${D}${bindir}

  install -m 0755 bb-example ${D}${bindir}

}


Hi Meena,

That seems a little odd as files in ${bindir} should be packaged into the d=
efault output package as I understand it

ref: http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html

If it were successfully installed but not packaged for any reason (e.g. in =
this case not a part of FILES_${PN}) then you should see a warning about an=
 installed-vs-packaged file issue.

If you enter a devshell with bitbake -c devshell recipe-foo then do you see=
 the installed bb-example file in within ../image/ tree?

Have you also tried looking (from the devshell) in ../temp/log.do_install, =
../temp/log.do_xxx to see what is happening?

Cheers,

Alex


can anyone please suggest me how to move further.

Regards
Meena


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.
---------------------------------------------------------------------------=
-------------------------------------------------------------------------



--

[Dynamic Devices Ltd]<http://www.dynamicdevices.co.uk/>

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA

mobile: +44 (0)7956 668178

[Linkedin]<http://www.linkedin.com/in/alexjlennon>[Skype]<skype:alexjlennon=
?add>

This e-mail message may contain confidential or legally privileged informat=
ion and is intended only for the use of the intended recipient(s). Any unau=
thorized disclosure, dissemination, distribution, copying or the taking of =
any action in reliance on the information herein is prohibited. E-mails are=
 not secure and cannot be guaranteed to be error free as they can be interc=
epted, amended, or contain viruses. Anyone who communicates with us by e-ma=
il is deemed to have accepted these risks. Company Name is not responsible =
for errors or omissions in this message and denies any responsibility for a=
ny damage arising from the use of e-mail. Any opinion and other statement c=
ontained in this message and any attachment are solely those of the author =
and do not necessarily represent those of the company.

--_000_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style id=3DowaParaStyle>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.nf
	{mso-style-name:nf;}
span.p
	{mso-style-name:p;}
span.err
	{mso-style-name:err;}
span.nv
	{mso-style-name:nv;}
span.o
	{mso-style-name:o;}
span.kt
	{mso-style-name:kt;}
span.err0
	{mso-style-name:"er\000D\000Ar";}
span.mi
	{mso-style-name:mi;}
span.txt
	{mso-style-name:txt;}
p.txt1, li.txt1, div.txt1
	{mso-style-name:txt1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Thanks Alex,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Yes I installed &nbsp;FILES_${PN} all package folders are cr=
eating
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Tried devshell&nbsp; but there is no installed bb-example in=
 image/usr/include/&#8230;empty include folder. Bb-example is not loading i=
nside image/&#8230;&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Analysed &nbsp;log_devshell , log_package, do_install, do_ma=
ke.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Even I compared with other recipes folder structures &nbsp;i=
t is going right direction but only the binaries are not loading.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">I guess I missed something in do_install ? no proper path?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">After do_compile and make, at &nbsp;do_install binaries are =
not able to load.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Meena<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;
color:windowtext">From:</span></b><span style=3D"font-size:10.0pt;font-fami=
ly:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Alex J Lennon =
[mailto:ajlennon@dynamicdevices.co.uk]
<br>
<b>Sent:</b> Tuesday, May 06, 2014 9:17 PM<br>
<b>To:</b> Meenakumari Shedole; yocto@yoctoproject.org; Beauchesne, Gwenole=
<br>
<b>Subject:</b> Re: [yocto] Third Party Components Integration in Yocto<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 06/05/2014 15:57, Meenakumari Shedole wrote:<o:p>=
</o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hi,
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">To add 3rd party components in yocto we =
created bb file and modified local.conf file.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">After a yocto build, 3rd party component=
 executing the binaries and rpm packages but executed binaries are not load=
ing inside the rpm packages, rpm package is empty.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Used below function in bb file.&nbsp;<o:=
p></o:p></span></p>
</div>
<div>
<div id=3D"file-bb-example-bb-LC28">
<pre style=3D"line-height:16.2pt;background:ghostwhite"><span class=3D"nf">=
<b><span style=3D"font-size:9.0pt;font-family:Consolas;color:#990000">do_in=
stall</span></b></span><span style=3D"font-size:9.0pt;font-family:Consolas"=
> <span class=3D"p">()</span> </span><span class=3D"err"><span style=3D"fon=
t-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span style=3D"font-size:9.0pt;font-fami=
ly:
Consolas"><o:p></o:p></span></pre>
</div>
<div id=3D"file-bb-example-bb-LC29">
<pre style=3D"line-height:16.2pt;background:ghostwhite"><span style=3D"font=
-size:9.0pt;font-family:Consolas">&nbsp; </span><span class=3D"nv"><span st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:teal">install</span></spa=
n><span style=3D"font-size:9.0pt;font-family:Consolas"> <span class=3D"o"><=
b>-</b></span></span><span class=3D"nv"><span style=3D"font-size:9.0pt;font=
-family:Consolas;color:teal">d</span></span><span style=3D"font-size:9.0pt;=
font-family:Consolas"> </span><span class=3D"kt"><b><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#445588">$</span></b></span><span class=
=3D"err"><span style=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span class=3D"nv"><span style=3D"font-s=
ize:9.0pt;
font-family:Consolas;color:teal">D</span></span><span class=3D"err0"><span =
style=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;background:#E3D=
2D2">}${</span></span><span class=3D"nv"><span style=3D"font-size:9.0pt;fon=
t-family:Consolas;color:teal">bindir</span></span><span class=3D"err"><span=
 style=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style=3D"font-size:9.0pt;font-fami=
ly:
Consolas"><o:p></o:p></span></pre>
</div>
<div id=3D"file-bb-example-bb-LC30">
<pre style=3D"line-height:16.2pt;background:ghostwhite"><span style=3D"font=
-size:9.0pt;font-family:Consolas">&nbsp; </span><span class=3D"nv"><span st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:teal">install</span></spa=
n><span style=3D"font-size:9.0pt;font-family:Consolas"> <span class=3D"o"><=
b>-</b></span></span><span class=3D"nv"><span style=3D"font-size:9.0pt;font=
-family:Consolas;color:teal">m</span></span><span style=3D"font-size:9.0pt;=
font-family:Consolas"> </span><span class=3D"mi"><span style=3D"font-size:9=
.0pt;font-family:Consolas;color:#009999">0755</span></span><span style=3D"f=
ont-size:9.0pt;font-family:Consolas"> </span><span class=3D"nv"><span style=
=3D"font-size:9.0pt;font-family:Consolas;color:teal">bb</span></span><span =
class=3D"o"><b><span style=3D"font-size:9.0pt;font-family:Consolas">-</span=
></b></span><span class=3D"nv"><span style=3D"font-size:9.0pt;font-family:C=
onsolas;color:teal">example</span></span><span style=3D"font-size:9.0pt;fon=
t-family:Consolas"> </span><span class=3D"kt"><b><span style=3D"font-size:9=
.0pt;font-family:Consolas;color:#445588">$</span></b></span><span class=3D"=
err"><span style=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span class=3D"nv"><span style=3D"font-s=
ize:9.0pt;
font-family:Consolas;color:teal">D</span></span><span class=3D"err"><span s=
tyle=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;background:#E3D2=
D2">}${</span></span><span class=3D"nv"><span style=3D"font-size:9.0pt;font=
-family:Consolas">bindir</span></span><span class=3D"err"><span style=3D"fo=
nt-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style=3D"font-size:9.0pt;font-fami=
ly:
Consolas"><o:p></o:p></span></pre>
</div>
<div id=3D"file-bb-example-bb-LC31">
<pre style=3D"line-height:16.2pt;background:ghostwhite"><span class=3D"err"=
><span style=3D"font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style=3D"font-size:9.0pt;font-fami=
ly:
Consolas"><o:p></o:p></span></pre>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><br>
Hi Meena,<br>
<br>
That seems a little odd as files in ${bindir} should be packaged into the d=
efault output package as I understand it<br>
<br>
ref: <a href=3D"http://www.embeddedlinux.org.cn/OEManual/recipes_packages.h=
tml">http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html</a><br>
<br>
If it were successfully installed but not packaged for any reason (e.g. in =
this case not a part of FILES_${PN}) then you should see a warning about an=
 installed-vs-packaged file issue.<br>
<br>
If you enter a devshell with bitbake -c devshell recipe-foo then do you see=
 the installed bb-example file in within ../image/ tree?<br>
<br>
Have you also tried looking (from the devshell) in ../temp/log.do_install, =
../temp/log.do_xxx to see what is happening?<br>
<br>
Cheers, <br>
<br>
Alex<br>
<br>
<br>
<o:p></o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">can anyone please suggest me how to move=
 further.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Regards<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Meena<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br>
<span style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:gray">::DISCLAIMER::<br>
---------------------------------------------------------------------------=
-------------------------------------------------------------------------</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;
color:gray">The contents of this e-mail and any attachment(s) are confident=
ial and intended for the named recipient(s) only.<br>
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
<br>
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
<br>
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
<br>
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
<br>
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
<br>
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
<br>
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
<br>
Before opening any email and/or attachments, please check them for viruses =
and other defects.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;
color:gray">---------------------------------------------------------------=
---------------------------------------------------------------------------=
----------</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;
color:gray"><br>
<br>
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<div>
<p style=3D"line-height:9.0pt"><span style=3D"font-size:7.5pt;font-family:&=
quot;Helvetica&quot;,&quot;sans-serif&quot;"><a href=3D"http://www.dynamicd=
evices.co.uk/"><span style=3D"text-decoration:none"><img border=3D"0" width=
=3D"108" height=3D"61" id=3D"sig-logo" src=3D"cid:image001.png@01CF6AD2.417=
F1E40" alt=3D"Dynamic Devices Ltd"></span></a><o:p></o:p></span></p>
<p style=3D"line-height:9.0pt"><span class=3D"txt"><b><span style=3D"font-s=
ize:7.5pt;
font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#999999">Ale=
x J Lennon</span></b></span><span style=3D"font-size:7.5pt;font-family:&quo=
t;Helvetica&quot;,&quot;sans-serif&quot;;color:#999999"> /
<span class=3D"txt">Director</span><br>
<span class=3D"txt">1 Queensway, Liverpool L22 4RA</span> <o:p></o:p></span=
></p>
<p style=3D"margin-bottom:12.0pt;line-height:9.0pt"><span class=3D"txt"><sp=
an style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;;color:#999999">mobile: &#43;44 (0)7956 668178</span></span><span =
style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif=
&quot;">
<o:p></o:p></span></p>
<p style=3D"line-height:9.0pt"><span style=3D"font-size:7.5pt;font-family:&=
quot;Helvetica&quot;,&quot;sans-serif&quot;"><a href=3D"http://www.linkedin=
.com/in/alexjlennon" id=3D"linkedin-input"><span style=3D"text-decoration:n=
one"><img border=3D"0" width=3D"16" height=3D"16" id=3D"_x0000_i1026" src=
=3D"cid:image002.png@01CF6AD2.417F1E40" alt=3D"Linkedin"></span></a><a href=
=3D"skype:alexjlennon?add" id=3D"skype-input"><span style=3D"text-decoratio=
n:none"><img border=3D"0" width=3D"16" height=3D"16" id=3D"_x0000_i1027" sr=
c=3D"cid:image003.png@01CF6AD2.417F1E40" alt=3D"Skype"></span></a><o:p></o:=
p></span></p>
<p class=3D"txt1" style=3D"line-height:9.0pt" id=3D"disclaimer-input"><span=
 style=3D"font-size:7.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-seri=
f&quot;;color:#999999">This e-mail message may contain confidential or lega=
lly privileged information and is intended only for the use
 of the intended recipient(s). Any unauthorized disclosure, dissemination, =
distribution, copying or the taking of any action in reliance on the inform=
ation herein is prohibited. E-mails are not secure and cannot be guaranteed=
 to be error free as they can be
 intercepted, amended, or contain viruses. Anyone who communicates with us =
by e-mail is deemed to have accepted these risks. Company Name is not respo=
nsible for errors or omissions in this message and denies any responsibilit=
y for any damage arising from the
 use of e-mail. Any opinion and other statement contained in this message a=
nd any attachment are solely those of the author and do not necessarily rep=
resent those of the company.<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_--

--_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3997;
	creation-date="Thu, 08 May 2014 10:05:30 GMT";
	modification-date="Thu, 08 May 2014 10:05:30 GMT"
Content-ID: <image001.png@01CF6AD2.417F1E40>
Content-Transfer-Encoding: base64

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
RU5ErkJggg==

--_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=631;
	creation-date="Thu, 08 May 2014 10:05:30 GMT";
	modification-date="Thu, 08 May 2014 10:05:30 GMT"
Content-ID: <image002.png@01CF6AD2.417F1E40>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=800;
	creation-date="Thu, 08 May 2014 10:05:30 GMT";
	modification-date="Thu, 08 May 2014 10:05:30 GMT"
Content-ID: <image003.png@01CF6AD2.417F1E40>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--_006_E4938C0D959B3445943720B88F0721341562D593NDAHCLTMBS02hcl_--
