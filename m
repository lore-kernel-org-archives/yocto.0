Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D4EE00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 02:15:32 -0700 (PDT)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0355.002; Tue, 31 Jul 2012 11:15:29 +0200
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Yocto] general question about how certain features get
	processed into packages
Thread-Index: Ac1u/GuTncsv5cZuQK+q3zrD6TQ7rg==
Date: Tue, 31 Jul 2012 09:15:28 +0000
Message-ID: <4439C3C0562087488F139C696CD862A72C1827@SBS-MEDEC.medecbenelux.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:812:67e5:2c33:1a19]
MIME-Version: 1.0
Subject: general question about how certain features get processed into packages
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
X-List-Received-Date: Tue, 31 Jul 2012 09:15:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4439C3C0562087488F139C696CD862A72C1827SBSMEDECmedecbene_"

--_000_4439C3C0562087488F139C696CD862A72C1827SBSMEDECmedecbene_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

This might be a newbie question but i have not yet found the answer in the =
documentation.

So let's say I want to know what core-image-core has as packages ... then I=
 found the following trace back:

-        Core-image-core.bb uses core-image-base.bb with X11 variables =3D=
=3D> both use core-image.bbclass

-        Core-image.bbclass defines the tasks that needs to be done for cor=
e-image-core.bb

o   Task-core-apps-console

o   Task-core-x11-base

o   Apps-x11-core =3D=3D> task-core-apps-x11-core

o   Package management =3D=3D> ...

o   Task-core-boot

o   Task-base-extended

o   Use image.bbclass

Now my question is, where can I find what for example task-core-apps-consol=
e exactly is as package collection? Since this is a core task list I though=
t I would find it in /meta/recipes-core/tasks but no luck, I did find task-=
core-boot there but that is it ...

Thanks in advance,

Kind regards,

Tim

--_000_4439C3C0562087488F139C696CD862A72C1827SBSMEDECmedecbene_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:506142150;
	mso-list-type:hybrid;
	mso-list-template-ids:1367887850 -2100151302 68354051 68354053 68354049 68=
354051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
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
<body lang=3D"NL" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This might be a newbie question=
 but i have not yet found the answer in the documentation.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So let&#8217;s say I want to kn=
ow what core-image-core has as packages &#8230; then I found the following =
trace back:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Core-image-core.bb uses=
 core-image-base.bb with X11 variables
</span><span lang=3D"EN-US" style=3D"font-family:Wingdings">=E8</span><span=
 lang=3D"EN-US"> both use core-image.bbclass
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Core-image.bbclass defi=
nes the tasks that needs to be done for core-image-core.bb<o:p></o:p></span=
></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Task-core-apps-console<=
o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Task-core-x11-base<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Apps-x11-core </span><s=
pan lang=3D"EN-US" style=3D"font-family:Wingdings">=E8</span><span lang=3D"=
EN-US"> task-core-apps-x11-core<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Package management </sp=
an><span lang=3D"EN-US" style=3D"font-family:Wingdings">=E8</span><span lan=
g=3D"EN-US"> &#8230;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Task-core-boot<o:p></o:=
p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Task-base-extended<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Use image.bbclass<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now my question is, where can I=
 find what for example task-core-apps-console exactly is as package collect=
ion? Since this is a core task list I thought I would find it in /meta/reci=
pes-core/tasks but no luck, I did find
 task-core-boot there but that is it &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tim<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_4439C3C0562087488F139C696CD862A72C1827SBSMEDECmedecbene_--
