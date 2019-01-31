Return-Path: <denis.hopp@vaillant-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ECF3E00D20; Wed, 30 Jan 2019 23:00:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.15.0.25 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailgw01.vaillant-group.net (mailgw01.vaillant-group.net
	[213.15.0.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC62CE00D17
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 23:00:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailgw01.vaillant-group.net (Postfix) with ESMTP id DB8199C581;
	Thu, 31 Jan 2019 08:00:36 +0100 (CET)
X-Virus-Scanned: Virusscanner at mailgw01
Received: from mailgw01.vaillant-group.net ([127.0.0.1])
	by localhost (mailgw01.hp-net.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ja_fMbFmxBR; Thu, 31 Jan 2019 08:00:36 +0100 (CET)
Received: from jv-de-dc-fideas01.vaillant.vhgroup.lan
	(jv-de-dc-fideas01.vaillant.vhgroup.lan [10.107.7.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw01.vaillant-group.net (Postfix) with ESMTPS id 9E4E99C54B;
	Thu, 31 Jan 2019 08:00:36 +0100 (CET)
Received: from DEFRVAI0005.vaillant.vhgroup.lan
	(defrvai0005.vaillant.vhgroup.lan [10.108.7.16])
	by jv-de-dc-fideas01.vaillant.vhgroup.lan (Postfix) with ESMTPS;
	Thu, 31 Jan 2019 08:00:36 +0100 (CET)
Received: from DEFRVAI0013.vaillant.vhgroup.lan ([169.254.1.178]) by
	DEFRVAI0005.vaillant.vhgroup.lan ([10.108.7.16]) with mapi id
	14.03.0435.000; Thu, 31 Jan 2019 08:00:23 +0100
From: "Hopp, Denis" <Denis.Hopp@vaillant-group.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Thread-Topic: [yocto] RDEPENDS and do_rootfs
Thread-Index: AQHUuTFQJxuxsB0SuE6ZOvnztd+AXqXI8Viw
Date: Thu, 31 Jan 2019 07:00:23 +0000
Message-ID: <0EACE12BE5CA844DB512EF10CAC5B840448B4FD5@DEFRVAI0013.vaillant.vhgroup.lan>
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
In-Reply-To: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.185.224]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 07:00:39 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_0EACE12BE5CA844DB512EF10CAC5B840448B4FD5DEFRVAI0013vail_"

--_000_0EACE12BE5CA844DB512EF10CAC5B840448B4FD5DEFRVAI0013vail_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darcy,

I cannot assure you of that specific case but to my understanding you could=
 find out with the taskexp:

bitbake -g -u taskexp <your_package_B>
There you will have a graphical interface to explore your package dependenc=
ies and which task will be executed before another. Hope that helps.



Greetings, Denis



******** Hi,



******** Can someone knowledgeable with the inner workings of the build sys=
tem please confirm...



******** IF package B has RDEPENDS on package A



******** THEN during do_rootfs task, package A will always be installed int=
o rootfs first AND the post-inst scripts of package A will always be run pr=
ior to those for package B.



******** Also, if that can be confirmed for 'daisy' branch, that would real=
ly be helpful.  If not, then please mention as far back the branch that you=
 know for sure.  Thanks!







******** --





******** Regards,



******** Darcy



******** --

******** _______________________________________________

******** yocto mailing list

******** yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

******** https://lists.yoctoproject.org/listinfo/yocto


--_000_0EACE12BE5CA844DB512EF10CAC5B840448B4FD5DEFRVAI0013vail_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Nur Text Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.NurTextZchn
	{mso-style-name:"Nur Text Zchn";
	mso-style-priority:99;
	mso-style-link:"Nur Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:225339551;
	mso-list-type:hybrid;
	mso-list-template-ids:-291968138 -1614794464 67567619 67567621 67567617 67=
567619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F03E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hi Darcy,<o:p></o:p></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-GB">I cannot assure you of that =
specific case but to my understanding you could find out with the taskexp:<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-GB">bitbake -g -u taskexp &lt;yo=
ur_package_B&gt;<br>
There you will have a graphical interface to explore your package dependenc=
ies and which task will be executed before another. Hope that helps.<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-GB">Greetings, Denis<o:p></o:p><=
/span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Can someone knowledgeable with the inner wor=
kings of the build system please confirm...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>IF package B has RDEPENDS on package A<o:p><=
/o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>THEN during do_rootfs task, package A will a=
lways be installed into rootfs first AND the post-inst scripts of package A=
 will always be run prior to those for package B.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Also, if that can be confirmed for 'daisy' b=
ranch, that would really be helpful.&nbsp; If not, then please mention as f=
ar back the branch that you know for sure.&nbsp; Thanks!<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>-- <o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:2.25pt"><o:p>&nbsp;</o:p></p=
>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Darcy<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:2.25pt"><o:p>&nbsp;</o:p></p=
>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>--<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>____________________________________________=
___<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>yocto mailing list<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"mailto:yocto@yoctoproject.org"><s=
pan style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org<=
/span></a><o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&gt;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto"><span style=3D"color:windowtext;text-decoration:none">https:/=
/lists.yoctoproject.org/listinfo/yocto</span></a><o:p></o:p></p>
</div>
</body>
</html>

--_000_0EACE12BE5CA844DB512EF10CAC5B840448B4FD5DEFRVAI0013vail_--
