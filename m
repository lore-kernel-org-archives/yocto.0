Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A00A9E009D8; Mon, 17 Oct 2016 12:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 166 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Oct 2016 12:15:01 PDT
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C2D6E0095D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 12:15:01 -0700 (PDT)
Received: from 1bwDKX-0007oy-W3 by out10b.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>) id 1bwDKY-0007pg-Tl
	for yocto@yoctoproject.org; Mon, 17 Oct 2016 12:12:14 -0700
Received: by emcmailer; Mon, 17 Oct 2016 12:12:14 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10b.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>) id 1bwDKX-0007oy-W3
	for yocto@yoctoproject.org; Mon, 17 Oct 2016 12:12:13 -0700
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Mon, 17 Oct 2016 21:11:52 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: General policies for CVE fixes
Thread-Index: AdIops8PMQLs+sONS66i/C5NaWzGDw==
Date: Mon, 17 Oct 2016 19:11:51 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: General policies for CVE fixes
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
X-List-Received-Date: Mon, 17 Oct 2016 19:15:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3230301C09DEF9499B442BBE162C5E48ABE85854sestoex09enease_"

--_000_3230301C09DEF9499B442BBE162C5E48ABE85854sestoex09enease_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
General policies:

  *   Fixes must go into master first unless they are applicable only to th=
e stable branch; if back-porting to an older stable branch, the fix should =
first be applied to the newer stable branches before being back-ported to t=
he older branch
Does anyone know the reason for the policy above i.e. why fixes have to go =
to master first?

1)      It makes more sense at least for users  to get CVE fixes as soon as=
 possible in the maintenance branches.

2)      Normally the versions are different in master and maintenance branc=
hes so different patches are required.
Thanks
//Sona

--_000_3230301C09DEF9499B442BBE162C5E48ABE85854sestoex09enease_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:276253267;
	mso-list-template-ids:333113310;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1826312056;
	mso-list-type:hybrid;
	mso-list-template-ids:-1862247648 69009425 69009433 69009435 69009423 6900=
9433 69009435 69009423 69009433 69009435;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<body lang=3D"SV" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;T=
imes New Roman&quot;,serif;mso-fareast-language:SV">Hi all,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;T=
imes New Roman&quot;,serif;mso-fareast-language:SV">From
<a href=3D"https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance">ht=
tps://wiki.yoctoproject.org/wiki/Stable_branch_maintenance</a>:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quo=
t;Times New Roman&quot;,serif;mso-fareast-language:SV">General policies:
<o:p></o:p></span></i></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo1">
<i><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;Times N=
ew Roman&quot;,serif;mso-fareast-language:SV">Fixes must go into master fir=
st unless they are applicable only to the stable branch; if back-porting to=
 an older stable branch, the fix should first
 be applied to the newer stable branches before being back-ported to the ol=
der branch<o:p></o:p></span></i></li></ul>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;T=
imes New Roman&quot;,serif;mso-fareast-language:SV">Does anyone know the re=
ason for the policy above i.e. why fixes have to go
 to master first? <o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;text-indent:-18.0pt;mso-list:l1 level1 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-fa=
mily:&quot;Times New Roman&quot;,serif;mso-fareast-language:SV"><span style=
=3D"mso-list:Ignore">1)<span style=3D"font:7.0pt &quot;Times New Roman&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:12.0=
pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-language:SV">I=
t makes more sense at least for users&nbsp; to get CVE fixes as soon as pos=
sible in the maintenance branches.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;text-indent:-18.0pt;mso-list:l1 level1 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-fa=
mily:&quot;Times New Roman&quot;,serif;mso-fareast-language:SV"><span style=
=3D"mso-list:Ignore">2)<span style=3D"font:7.0pt &quot;Times New Roman&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:12.0=
pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-language:SV">N=
ormally the versions are different in master and maintenance branches so di=
fferent patches are required.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">//Sona<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_3230301C09DEF9499B442BBE162C5E48ABE85854sestoex09enease_--
