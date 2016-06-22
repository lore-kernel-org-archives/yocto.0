Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E543E00A6D; Wed, 22 Jun 2016 07:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [168.127.0.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from fncnmp04.fnc.fujitsu.com (fncnmp04.fnc.fujitsu.com
	[168.127.0.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AF3CE009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:34:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,509,1459832400"; d="scan'208,217";a="80344733"
Received: from rchexhcp2.fnc.net.local ([168.127.134.76])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	22 Jun 2016 09:34:10 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP2.fnc.net.local ([168.127.134.76]) with mapi id 14.03.0294.000;
	Wed, 22 Jun 2016 09:34:09 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error applying patch - openvswitch
Thread-Index: AdHMkw194/p20ixUTZulCrLDbODXUg==
Date: Wed, 22 Jun 2016 14:34:08 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22408.000
x-tm-as-result: No--51.318500-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Error applying patch - openvswitch
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
X-List-Received-Date: Wed, 22 Jun 2016 14:34:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_111ACD726EC3464BAED310F5EA7BEBDA600CE1RCHEXMBP1fncnetlo_"

--_000_111ACD726EC3464BAED310F5EA7BEBDA600CE1RCHEXMBP1fncnetlo_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

In order to make source code changes to openvswitch present under layer met=
a-virtualization, I did the following:


-        The file I want to change is ofproto.c - copy it into data/users/m=
rajase/extra and make all the changes there.

-        Create a patch file between the original file and this updated fil=
e (this error is with using "git diff --no-prefix". I also tried by using d=
iff -Naur). So now I have a locally present patch file.

-        Copy the patch file into repo/poky/meta-virtualization/recipes-net=
working/openvswitch/files/

-        Edit repo/poky/meta-virtualization/recipes-networking/openvswitch/=
openvswitch_2.0.0.bb and add the line  SRC_URI =3D "file://openvswitch-Firs=
ttt.patch;patch=3D1 \"

-        Clean and build the image again.


This is my error:

ERROR: Command Error: exit status: 1  Output:
Applying patch openvswitch-Firsttt.patch
can't find file to patch at input line 5
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|diff --git data/users/mrajase/l100_label_based_r100poc/repo/poky/build/tmp=
/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-2.0.0/ofproto/of=
proto.c data/users/mrajase/extra/ofproto.c
|index ea812ad..76c355f 100644
|--- data/users/mrajase/l100_label_based_r100poc/repo/poky/build/tmp/work/c=
ore2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-2.0.0/ofproto/ofproto.c
|+++ data/users/mrajase/extra/ofproto.c
--------------------------
No file to patch.  Skipping patch.
3 out of 3 hunks ignored
Patch openvswitch-Firsttt.patch does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /data/users/mrajase/l100_label_based_r=
100poc/repo/poky/build/tmp/work/corei7-64-enea-linux/openvswitch/2.0.0-r0/t=
emp/log.do_patch.27838
ERROR: Task 1236 (/data/users/mrajase/l100_label_based_r100poc/repo/poky/me=
ta-virtualization/recipes-networking/openvswitch/openvswitch_2.0.0.bb, do_p=
atch) failed with exit code '1'

Any help?

Thanks,
Monica


--_000_111ACD726EC3464BAED310F5EA7BEBDA600CE1RCHEXMBP1fncnetlo_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1583756796;
	mso-list-type:hybrid;
	mso-list-template-ids:2025070096 2074404500 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In order to make source code changes to openvswitch =
present under layer meta-virtualization, I did the following:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>The file I want to change is ofproto.c &#8211; copy=
 it into data/users/mrajase/extra and make all the changes there.<o:p></o:p=
></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Create a patch file between the original file and t=
his updated file (this error is with using &#8220;<span style=3D"font-size:=
12.0pt;color:black">git diff --no-prefix</span>&#8221;. I also tried by usi=
ng
<span style=3D"font-size:12.0pt;color:black">diff -Naur</span>). So now I h=
ave a locally present patch file.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Copy the patch file into repo/poky/meta-virtualizat=
ion/recipes-networking/openvswitch/files/<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Edit repo/poky/meta-virtualization/recipes-networki=
ng/openvswitch/<span style=3D"font-size:12.0pt;color:black">openvswitch_2.0=
.0.bb and add the line&nbsp; SRC_URI =3D &#8220;file://openvswitch-Firsttt.=
patch;patch=3D1 \&#8221;</span><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Clean and build the image again.<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is my error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Command Error: exit status: 1&nbsp; Output:<o=
:p></o:p></p>
<p class=3D"MsoNormal">Applying patch openvswitch-Firsttt.patch<o:p></o:p><=
/p>
<p class=3D"MsoNormal">can't find file to patch at input line 5<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Perhaps you used the wrong -p or --strip option?<o:p=
></o:p></p>
<p class=3D"MsoNormal">The text leading up to this was:<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">|diff --git data/users/mrajase/l100_label_based_r100=
poc/repo/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openv=
switch-2.0.0/ofproto/ofproto.c data/users/mrajase/extra/ofproto.c<o:p></o:p=
></p>
<p class=3D"MsoNormal">|index ea812ad..76c355f 100644<o:p></o:p></p>
<p class=3D"MsoNormal">|--- data/users/mrajase/l100_label_based_r100poc/rep=
o/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-=
2.0.0/ofproto/ofproto.c<o:p></o:p></p>
<p class=3D"MsoNormal">|&#43;&#43;&#43; data/users/mrajase/extra/ofproto.c<=
o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">No file to patch.&nbsp; Skipping patch.<o:p></o:p></=
p>
<p class=3D"MsoNormal">3 out of 3 hunks ignored<o:p></o:p></p>
<p class=3D"MsoNormal">Patch openvswitch-Firsttt.patch does not apply (enfo=
rce with -f)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: patch_do_patch<o:p></o:p></p=
>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /data/users/mra=
jase/l100_label_based_r100poc/repo/poky/build/tmp/work/corei7-64-enea-linux=
/openvswitch/2.0.0-r0/temp/log.do_patch.27838<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 1236 (/data/users/mrajase/l100_label_bas=
ed_r100poc/repo/poky/meta-virtualization/recipes-networking/openvswitch/ope=
nvswitch_2.0.0.bb, do_patch) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>Thanks,<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Monica <o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_111ACD726EC3464BAED310F5EA7BEBDA600CE1RCHEXMBP1fncnetlo_--
