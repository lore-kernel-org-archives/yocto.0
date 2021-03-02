Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.134.1614716796396704562
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:26:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=Eg9NmMX2;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1614716795; x=1772396795;
  h=from:to:subject:date:mime-version;
  bh=2TjjzZm7y+aY9FJ5QMt87c7EAjP/Rwfk3j5Fg7sLX+o=;
  b=Eg9NmMX2UD8vzcZ5fPLaNqhF9ypu3VHk+n27qHxSFMwXSA/IeycqAkzQ
   gwtVHCTGY8vfcFRKVEhPR+kvGkP7r3ImO6JO+d4XwvVgESXD6iAgYdLvb
   hU1VXu7lKzt4Henu9r3WQ5r0K0EBGZ2KtrbpQU2aKm3IPaWgzxnApy/af
   M=;
IronPort-PHdr: =?us-ascii?q?9a23=3Av64QmhR4u0xzd7Iqk/q7G0Zk89psv+yvbD5Q0YIu?=
 =?us-ascii?q?jvd0So/mwa6zbBCN2/xhgRfzUJnB7Loc0qyK6vGmADRYqsbR+Fk5M7V0Hycfjs?=
 =?us-ascii?q?sXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFRrwLxd6?=
 =?us-ascii?q?KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAiyoAnLq8UanZduJqkyxxbKv3BFZ/?=
 =?us-ascii?q?lYyWR0KFyJgh3y/N2w/Jlt8yRRv/Iu6ctNWrjkcqo7ULJVEi0oP3g668P3uxbD?=
 =?us-ascii?q?SxCP5mYHXWUNjhVIGQnF4wrkUZr3ryD3q/By2CiePc3xULA0RTGv5LplRRP0lC?=
 =?us-ascii?q?sKMSMy/WfKgcJyka1bugqsqRxhzYDJfIGbOvlwfqLBctwVXmdORNpdVy5bD4+g?=
 =?us-ascii?q?c4cDEewMNvtYoYnnoFsOqAOzCQerCuPozD9InWH50rMh0+g5DArIwRAgEMwQsH?=
 =?us-ascii?q?vKqtX+KbkfWv2xwKbG0DvPav1a0ir65YjTbhAuv++MUqx2ccbLzEkvEAXFjk6O?=
 =?us-ascii?q?poP7JDOYzf8CvHKF4Op7VeOvkHInpB90oji03Msjlo7JhocMx13C6C52z5o7K8?=
 =?us-ascii?q?eiR05nfd6rDoFQtyeCOoV4TM4vX2BltSQ7x7EYpJK2YisHxZQjyhPQZPGLboaG?=
 =?us-ascii?q?7xLsWuqMJTp1hnJodb2+ihqv70Wtzu7xW8qp3VpXoSRIlMTHuHMV1xHL98SLVu?=
 =?us-ascii?q?Fx80mj1DqVyQzf9OFJLVo1mKfbM5It36I8moAcvEnMBCP7l1/6gLKWe0gi5+Om?=
 =?us-ascii?q?8f7oYq/8qZ+ZL4J0jwb+PbkwlcGnGuQ4NxQOX3Cc+eShyL3v5U35T6tOjv0xiq?=
 =?us-ascii?q?TZrJ/bKt4dpq68GA9Y1pov5wqjAzu7ytgYm2MIIEhedx2dkYfpIFHPIOvkDfih?=
 =?us-ascii?q?hlSsiy1nyOzBPr3kGpnNL37Dn6n9fbtl9kJQ1BA/wN5d6p5OFL0NPvL+VlXwud?=
 =?us-ascii?q?HYFhM5Nha7w+fjCNVzzIMeXmePD7eCMKPOr1CI+PwgI++WaI8Qvzb9LeMl6ODw?=
 =?us-ascii?q?gn8iglISZrOm0oUMaHG4BfRmP1uWYX/3gtsbDWgKuQ8+QPTwiFKeST5Te2qyX6?=
 =?us-ascii?q?Uk6zA7D4KpEZvDRoe2jbyF3Se7BYFWZntcBlGMFnfna5mEW/AUaCKIJc9hkCIL?=
 =?us-ascii?q?WqS9S4M70hGurgD6mPJbKb+e6yoTqZXL0Nlu+/aVhBY56TtsFcOf3mqRCWZukS?=
 =?us-ascii?q?lAEy4x17x4iUh80UuYl7l/iOBfDcZU5f5CTkE9L5GKnMJgDNWnECfGeMyERU3i?=
 =?us-ascii?q?Cu66DC88SJoai58zWAc3U4G5kh3d0izsBrgTjLGGH7Q++6/HzmPtKsNmjX3B0f?=
 =?us-ascii?q?9y3BEdXsJTODj+1eZE/A/JCtuRng=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ABBQAZnz5g/0HhJQpiEwEBdIJygX6BQ?=
 =?us-ascii?q?QqWEZxOCwEBAQEBAQEBAQgBKAwEAQGGSiY4EwIQAQEGAQEBAQEGBAGGUgyCOCK?=
 =?us-ascii?q?EHl4BgQAmAQQbgmmBfoEYrWiBNIREA4EShREJAYEuhnyIU0GDLUmDOBcEh1MEg?=
 =?us-ascii?q?zwGEzEbAoESFgGcR54gBwOCfJwXK6NWlFWdV4RGAgQCBAUCFoFrgXpwUIJpCUc?=
 =?us-ascii?q?XAg2OKheOJnMCNgIGCgEBAwmLBIEPAQE?=
X-IPAS-Result: =?us-ascii?q?A2ABBQAZnz5g/0HhJQpiEwEBdIJygX6BQQqWEZxOCwEBAQE?=
 =?us-ascii?q?BAQEBAQgBKAwEAQGGSiY4EwIQAQEGAQEBAQEGBAGGUgyCOCKEHl4BgQAmAQQbg?=
 =?us-ascii?q?mmBfoEYrWiBNIREA4EShREJAYEuhnyIU0GDLUmDOBcEh1MEgzwGEzEbAoESFgG?=
 =?us-ascii?q?cR54gBwOCfJwXK6NWlFWdV4RGAgQCBAUCFoFrgXpwUIJpCUcXAg2OKheOJnMCN?=
 =?us-ascii?q?gIGCgEBAwmLBIEPAQE?=
X-IronPort-AV: E=Sophos;i="5.81,217,1610409600"; 
   d="scan'208,217";a="352433316"
X-IronPort-AV: E=Sophos;i="5.81,217,1610409600"; 
   d="scan'208,217";a="100533163"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk
Thread-Topic: #yocto #sdk
Thread-Index: AdcPn6I2ghHaXn1CTeiKtZaR2VVgoA==
Date: Tue, 2 Mar 2021 20:25:46 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1668A05F90D71BE1.11804@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7241b3816fda498089da115745ce03a3baesystemscom_"

--_000_7241b3816fda498089da115745ce03a3baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I still appear to be having an issue with the SXT SDK install...

Building for zeus/x86_64 Intel based platform...
I build my kernel image clean, fully functional...
Standard SDK builds clean and appears functional...

Ext SDK builds clean, but on install I am still seeing Error below...


(1)    What is it comparing  between unhash/task hash ?, more sig issues ?


(2)    What is meant by "This is usually due to missing setscene tasks" ?



(3)    In the local.conf under the SDK they set :



SSTATE_MIRRORS +=3D " file://universal/(.*) file://universal-4.9/\1 file://=
universal-4.9/(.*) file://universal-4.8/\1<file://universal-4.8/1>"



Under sdk-extra.conf I set :



SSTATE_MIRRORS +=3D file://.* file:///ede/tms/yocto/zeus/sstate_cache/PATH<=
file://.*%20file:/ede/tms/yocto/zeus/sstate_cache/PATH>



My SSTATE_MIRRIOR is based off the clean builds I mentioned above, is this =
the correct procedure ?

I am trying to figure out how best to debug this issue, it is occurring on =
the post install, and everything pretty much appears in place.

Steve

14:43 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/deploy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-tool=
chain-ext-3.0.4.sh
LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Enter target directory for SDK (default: ~/limws_sdk): /disk0/scratch/smons=
ees/testSDK
You are about to install the SDK to "/disk0/scratch/smonsees/testSDK". Proc=
eed [Y/n]? Y
Extracting SDK.............................................................=
.................done
Setting it up...
Extracting buildtools...
Preparing build system...
Parsing recipes: 100% |####################################################=
#######################################| Time: 0:01:32
Initialising tasks: 100% |#################################################=
#######################################| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
#######################################| Time: 0:00:03
ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
Task /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/libur=
cu/liburcu_0.11.1.bb:do_populate_sysroot, unihash cdb08644b85fa162bd9f88cb0=
0113fe3193cc347e39e33e8f405f9c23f60c601, taskhash cdb08644b85fa162bd9f88cb0=
0113fe3193cc347e39e33e8f405f9c23f60c601
Task /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-devtools/pyth=
on/python3_3.7.8.bb:do_packagedata, unihash 925a72cbe872aad09bd3fbbe74ed1c9=
44e9c19a732e120feae5c4784e6330d4f, taskhash 925a72cbe872aad09bd3fbbe74ed1c9=
44e9c19a732e120feae5c4784e6330d4f
.
.
.

This is usually due to missing setscene tasks. Those missing in this build =
were:

<<appears to list every recipe under ./testSDK/layers directory here>>

--_000_7241b3816fda498089da115745ce03a3baesystemscom_
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
	{mso-list-id:328796104;
	mso-list-type:hybrid;
	mso-list-template-ids:1846686500 2020363234 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
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
	{mso-list-id:1075009170;
	mso-list-type:hybrid;
	mso-list-template-ids:-440360906 -1520768958 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I still appear to be having an issue with the SXT SD=
K install&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Building for zeus/x86_64 Intel based platform&#8230;=
<o:p></o:p></p>
<p class=3D"MsoNormal">I build my kernel image clean, fully functional&#823=
0;<o:p></o:p></p>
<p class=3D"MsoNormal">Standard SDK builds clean and appears functional&#82=
30;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ext SDK builds clean, but on install I am still seei=
ng Error below&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>What is it comparing&nbsp; between unhash/task hash=
 ?, more sig issues ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>What is meant by &#8220;This is usually due to miss=
ing setscene tasks&#8221; ?<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(3)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>In the local.conf under the SDK they set : <o:p></o=
:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">SSTATE_MIRRORS &#43;=3D &quot; file://univers=
al/(.*) file://universal-4.9/\1 file://universal-4.9/(.*)
<a href=3D"file://universal-4.8/1">file://universal-4.8/\1</a>&quot;<o:p></=
o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">Under sdk-extra.conf I set :<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">SSTATE_MIRRORS &#43;=3D <a href=3D"file://.*%=
20file:/ede/tms/yocto/zeus/sstate_cache/PATH">
file://.* file:///ede/tms/yocto/zeus/sstate_cache/PATH</a><o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">My SSTATE_MIRRIOR is based off the clean buil=
ds I mentioned above, is this the correct procedure ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to figure out how best to debug this iss=
ue, it is occurring on the post install, and everything pretty much appears=
 in place.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">14:43 smonsees@yix490038 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds2/sbcb-default/tmp/deploy/sdk&gt;./limws-glibc-x86_64-=
aiox_orange-corei7-64-toolchain-ext-3.0.4.sh<o:p></o:p></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) Extensible SDK install=
er version 3.0.4<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoNormal">Enter target directory for SDK (default: ~/limws_sdk=
): /disk0/scratch/smonsees/testSDK<o:p></o:p></p>
<p class=3D"MsoNormal">You are about to install the SDK to &quot;/disk0/scr=
atch/smonsees/testSDK&quot;. Proceed [Y/n]? Y<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting SDK......................................=
........................................done<o:p></o:p></p>
<p class=3D"MsoNormal">Setting it up...<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting buildtools...<o:p></o:p></p>
<p class=3D"MsoNormal">Preparing build system...<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
##############################################################| Time: 0:01:=
32<o:p></o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
##############################################################| Time: 0:00:=
04<o:p></o:p></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |##=
##############################################################| Time: 0:00:=
03<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task quilt-native.do_fetch attempted to execu=
te unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">Task /disk0/scratch/smonsees/testSDK/layers/poky/met=
a/recipes-support/liburcu/liburcu_0.11.1.bb:do_populate_sysroot, unihash cd=
b08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601, taskhash cd=
b08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601<o:p></o:p></=
p>
<p class=3D"MsoNormal">Task /disk0/scratch/smonsees/testSDK/layers/poky/met=
a/recipes-devtools/python/python3_3.7.8.bb:do_packagedata, unihash 925a72cb=
e872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f, taskhash 925a72cb=
e872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is usually due to missing setscene tasks. Those=
 missing in this build were:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&lt;&lt;appears to list every recipe under ./testSDK=
/layers directory here&gt;&gt;<o:p></o:p></p>
</div>
</body>
</html>

--_000_7241b3816fda498089da115745ce03a3baesystemscom_--
