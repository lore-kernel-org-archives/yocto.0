Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 450DAE00303
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 10:19:34 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2014 10:19:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,759,1384329600"; 
	d="scan'208,217";a="473977890"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2014 10:19:30 -0800
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 31 Jan 2014 18:19:29 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.202]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.196]) with mapi id
	14.03.0123.003; Fri, 31 Jan 2014 18:19:29 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Khaja Hussain Shaik <khajahussain-s@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, Carlos Rafael Giani <dv@pseudoterminal.org>, 
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"nicolas.dechesne@linaro.org" <nicolas.dechesne@linaro.org>
Thread-Topic: MP4 Playback Issue with GST-1.0
Thread-Index: Ac8cJxsgVQFD3Yt3QvCzCNVz6TMVWABjwhKgAD5ObeA=
Date: Fri, 31 Jan 2014 18:19:29 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16CFA7B3@IRSMSX105.ger.corp.intel.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08E3FE43@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <31DD9473F5EB4E468EDC3B5642AD64BD08E3FE43@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>, "Kishore Divvela -ERS, HCL
	Tech" <kishore-d@hcl.com>
Subject: Re: MP4 Playback Issue with GST-1.0
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
X-List-Received-Date: Fri, 31 Jan 2014 18:19:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB16CFA7B3IRSMSX105gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB16CFA7B3IRSMSX105gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Khaja,

There are several things you can do in order to solve this issue:


1.       Please test with the latest master of poky if the issue is still r=
eproducible. Let us know of the result.

2.       Open a bug report on bugzilla.yoctoproject.org .

3.       State more info related to your issue: version of poky, version on=
 gstreamer1.0, your target hardware platform, BSP used, maybe other meta-la=
yers that are used (if applies).

Also, please provide on a download site the sample that you use to test pla=
yback.

Please note that the fact that it works correctly with gstreamer-0.10 is no=
t a testament of the fact the MP4 video sample used is indeed correct from =
a more modern decoder point of view.
In which case it might explain the decoding artefacts.

In the end, given the fact that it might be hard for us to reproduce this i=
ssue (HW not available, etc), it will reduce to the saying: "What have you =
tried?".
Your help on this one is mightily needed.

Regards,
Cristian Iorga
YP
Intel


From: Khaja Hussain Shaik [mailto:khajahussain-s@hcl.com]
Sent: Thursday, January 30, 2014 2:33 PM
To: yocto@yoctoproject.org; Carlos Rafael Giani; paul.eggleton@linux.intel.=
com; nicolas.dechesne@linaro.org; Iorga, Cristian
Cc: Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech
Subject: FW: MP4 Playback Issue with GST-1.0

Hi all,

Did anybody get a chance to look into the below issue?

Any suggestion would be greatly helpful.

Thanks & Regards
Khaja

From: Khaja Hussain Shaik
Sent: Tuesday, January 28, 2014 6:18 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Cc: Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech; 'Carlos Rafael Giani'
Subject: MP4 Playback Issue with GST-1.0

Hi All,

We are having some mp4 playback issue with GST-1.0.

Used port and commands:


1.       Yocto Dora

2.       GSTreamer 1.0

3.       Command: gst-launch-1.0 playbin uri=3Dfile:///home/Media_Sample/mp=
4Sample2.mp4

Video playback is happening blur and majorly last 30%-40% video is displaye=
d in front and shows a zig-zag kind of pattern. However using gst-0.10 vide=
o playback happens properly.
Please see the attached snapshot of the problem. (Sorry for not be able to =
explain the problem in writing)

We have saved gst logs, also attached in this mail.

Any suggestion will be a great help.

Thanks & Regards,
Khaja


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

--_000_969F26A8BAB325438E7EB80D3C3134FB16CFA7B3IRSMSX105gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
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
/* List Definitions */
@list l0
	{mso-list-id:988824609;
	mso-list-type:hybrid;
	mso-list-template-ids:2104145710 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1279677946;
	mso-list-type:hybrid;
	mso-list-template-ids:763518016 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Khaja,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There are several thin=
gs you can do in order to solve this issue:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Please test wi=
th the latest master of poky if the issue is still reproducible. Let us kno=
w of the result.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Open a bug rep=
ort on bugzilla.yoctoproject.org .<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">State more inf=
o related to your issue: version of poky, version on gstreamer1.0, your tar=
get hardware platform, BSP used, maybe other meta-layers that are used (if =
applies).<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">Also, please pr=
ovide on a download site the sample that you use to test playback.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please note that the f=
act that it works correctly with gstreamer-0.10 is not a testament of the f=
act the MP4 video sample used is indeed correct from a more modern decoder =
point of view.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">In which case it might=
 explain the decoding artefacts.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">In the end, given the =
fact that it might be hard for us to reproduce this issue (HW not available=
, etc), it will reduce to the saying: &#8220;What have you tried?&#8221;.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Your help on this one =
is mightily needed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cristian Iorga<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">YP<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Intel<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Khaja Hussain Shaik [mailto:khajahussai=
n-s@hcl.com]
<br>
<b>Sent:</b> Thursday, January 30, 2014 2:33 PM<br>
<b>To:</b> yocto@yoctoproject.org; Carlos Rafael Giani; paul.eggleton@linux=
.intel.com; nicolas.dechesne@linaro.org; Iorga, Cristian<br>
<b>Cc:</b> Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech<br>
<b>Subject:</b> FW: MP4 Playback Issue with GST-1.0<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi all,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Did anybody get a chan=
ce to look into the below issue?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any suggestion would b=
e greatly helpful.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks &amp; Regards<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Khaja<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khaja Hu=
ssain Shaik
<br>
<b>Sent:</b> Tuesday, January 28, 2014 6:18 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Cc:</b> Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech; 'Carlos Rafael =
Giani'<br>
<b>Subject:</b> MP4 Playback Issue with GST-1.0<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are having some mp4 playback issue with GST-1.0.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Used port and commands:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Yocto Dora<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>GSTreamer 1.0<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Command: gst-launch-1.0 playbin uri=3Dfile:///home/=
Media_Sample/mp4Sample2.mp4<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Video playback is happening blur and majorly last 30=
%-40% video is displayed in front and shows a zig-zag kind of pattern<b>. H=
owever using gst-0.10 video playback happens properly</b>.<o:p></o:p></p>
<p class=3D"MsoNormal">Please see the attached snapshot of the problem. (So=
rry for not be able to explain the problem in writing)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have saved gst logs, also attached in this mail.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestion will be a great help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Khaja<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:gray"><br>
<br>
</span><span style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:gray">::DISCLAIMER::<br>
---------------------------------------------------------------------------=
-------------------------------------------------------------------------</=
span><span style=3D"color:gray"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:gray">The contents of this e-mail and=
 any attachment(s) are confidential and intended for the named recipient(s)=
 only.<br>
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
and other defects.</span><span style=3D"color:gray"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:gray">-------------------------------=
---------------------------------------------------------------------------=
------------------------------------------</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB16CFA7B3IRSMSX105gercor_--
