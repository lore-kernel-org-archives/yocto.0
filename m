Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD939E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 22:15:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2012 22:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="128999698"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 09 Apr 2012 22:15:37 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 22:15:36 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Tue, 10 Apr 2012 13:15:35 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ADT Manual v1.1.1 Issues - 3 of 3
Thread-Index: Ac0W0nXrmIVCeE4/TyKnoNthBRXOPwABZZWA
Date: Tue, 10 Apr 2012 05:15:34 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD3364A@SHSMSX102.ccr.corp.intel.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEF@EXMBX05.mmeprod.cbeyond>
In-Reply-To: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEF@EXMBX05.mmeprod.cbeyond>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: ADT Manual v1.1.1 Issues - 3 of 3
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
X-List-Received-Date: Tue, 10 Apr 2012 05:15:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_857BE142E5399E46B20FD45B9DB8A7BC0FD3364ASHSMSX102ccrcor_"

--_000_857BE142E5399E46B20FD45B9DB8A7BC0FD3364ASHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Beth,

Looks like the 1.1.1 rootfs on adtrepo was populated into a wrong URL. It s=
hould be http://adtrepo.yoctoproject.org/1.1.1/rootfs/ instead of http://ad=
trepo.yoctoproject.org/1.1.1/adt-ipk/rootfs/.

Hi Andy,

Please file a bug against 1.1.1. Before we got that fixed, you may tweak th=
e adt-installer to work around the issue.


1.       Open adt-installer script, find the function "download_file"

2.       Find the last statement: wget "$YOCTOADT_REPO/rootfs/$1" ..., and =
change that to wget "$YOCTOADT_REPO/adt-ipk/rootfs/$1".

Best Regards,
Lianhao

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andy Gikling
Sent: Tuesday, April 10, 2012 12:43 PM
To: yocto@yoctoproject.org
Subject: [yocto] ADT Manual v1.1.1 Issues - 3 of 3

All,

I ran through the ADT manual and ran into some goofynees in section 2.1.1.2=
. Configuring and Running the ADT Installer Script.

My adt_installer.conf contains:
YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.1.1"
YOCTOADT_TARGETS=3D"x86_64"
YOCTOADT_QEMU=3D"Y"
YOCTOADT_NFS_UTIL=3D"Y"
YOCTOADT_ROOTFS_x86_64=3D"minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_x86_64=3D"minimal"
YOCTOADT_TARGET_SYSROOT_LOC_x86_64=3D"$HOME/Desktop/ADT_Try2/sysroot"

Which should all be just fine.  When you run the installer script with thes=
e settings you will come to a 404 Not Found Error.

The image that was supposed to be downloaded to the /download_image/ folder=
 is not there and eventually you will get an error from the script when it =
tries to extract the sysroot image it thought it downloaded.  I've found th=
e sysroot file it's looking for in the Yocto downloads and put it in /downl=
oad_image/ folder manually.  Once that's done the ADT installer script will=
 then complete successfully.  There's a broken link there.

Does the YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.1.1" need to co=
ntain a more exact path.  I'll try again with YOCTOADT_REPO=3D"http://adtre=
po.yoctoproject.org/1.1.1/adt-ipk/x86_64/"  or something like that...

Just an FYI,

~Andy Gikling
LasX Industries Inc.


--_000_857BE142E5399E46B20FD45B9DB8A7BC0FD3364ASHSMSX102ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-indent:21.0pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1651058546;
	mso-list-type:hybrid;
	mso-list-template-ids:809301594 1213250114 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;
	mso-ansi-font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Hi Beth=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Looks l=
ike the 1.1.1 rootfs on adtrepo was populated into a wrong URL. It should b=
e
</span><span lang=3D"EN-US"><a href=3D"http://adtrepo.yoctoproject.org/1.1.=
1/rootfs/">http://adtrepo.yoctoproject.org/1.1.1/rootfs/</a><span style=3D"=
color:#1F497D">
</span>instead of <a href=3D"http://adtrepo.yoctoproject.org/1.1.1/adt-ipk/=
rootfs/">
http://adtrepo.yoctoproject.org/1.1.1/adt-ipk/rootfs/</a>.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US">Hi Andy,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US">Please file a bug against 1.1.1. Before we got t=
hat fixed, you may tweak the adt-installer to work around the issue.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;text-align:justif=
y;text-justify:inter-ideograph;text-indent:-18.0pt;mso-list:l0 level1 lfo1"=
>
<![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:Ignore">1=
.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;color:#1F497D">Open adt-installer script, find the function &#8220;downl=
oad_file&#8221;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;text-align:justif=
y;text-justify:inter-ideograph;text-indent:-18.0pt;mso-list:l0 level1 lfo1"=
>
<![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:Ignore">2=
.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;color:#1F497D">Find the last statement: wget &#8220;$YOCTOADT_REPO/rootf=
s/$1&#8221; &#8230;, and change that to wget &#8220;$YOCTOADT_REPO/adt-ipk/=
rootfs/$1&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Best Re=
gards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Lianhao=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@=
yoctoproject.org]
<b>On Behalf Of </b>Andy Gikling<br>
<b>Sent:</b> Tuesday, April 10, 2012 12:43 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] ADT Manual v1.1.1 Issues - 3 of 3<o:p></o:p></span>=
</p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I ran through the ADT manual an=
d ran into some goofynees in section 2.1.1.2. Configuring and Running the A=
DT Installer Script.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My adt_installer.conf contains:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_REPO=3D&quot;<a href=
=3D"http://adtrepo.yoctoproject.org/1.1.1">http://adtrepo.yoctoproject.org/=
1.1.1</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_TARGETS=3D&quot;x86_64=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_QEMU=3D&quot;Y&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_NFS_UTIL=3D&quot;Y&quo=
t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_ROOTFS_x86_64=3D&quot;=
minimal&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_TARGET_SYSROOT_IMAGE_x=
86_64=3D&quot;minimal&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">YOCTOADT_TARGET_SYSROOT_LOC_x86=
_64=3D&quot;$HOME/Desktop/ADT_Try2/sysroot&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Which should all be just fine.&=
nbsp; When you run the installer script with these settings you will come t=
o a 404 Not Found Error.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The image that was supposed to =
be downloaded to the /download_image/ folder is not there and eventually yo=
u will get an error from the script when it tries to extract the sysroot im=
age it thought it downloaded.&nbsp; I&#8217;ve
 found the sysroot file it&#8217;s looking for in the Yocto downloads and p=
ut it in /download_image/ folder manually.&nbsp; Once that&#8217;s done the=
 ADT installer script will then complete successfully.&nbsp; There&#8217;s =
a broken link there.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Does the YOCTOADT_REPO=3D&quot;=
<a href=3D"http://adtrepo.yoctoproject.org/1.1.1">http://adtrepo.yoctoproje=
ct.org/1.1.1</a>&quot; need to contain a more exact path.&nbsp; I&#8217;ll =
try again with YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoctoproject=
.org/1.1.1/adt-ipk/x86_64/">http://adtrepo.yoctoproject.org/1.1.1/adt-ipk/x=
86_64/</a>&#8221;&nbsp;
 or something like that&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Just an FYI,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">~Andy Gikling<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LasX Industries Inc.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_857BE142E5399E46B20FD45B9DB8A7BC0FD3364ASHSMSX102ccrcor_--
