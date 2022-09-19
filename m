Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BD5ECAAA1
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 18:23:22 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.2529.1663611797786177105
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 11:23:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=BSaCftWz;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1663611797; x=1821291797;
  h=from:to:subject:date:mime-version;
  bh=Ol+2a++Q5bWeaMYT+ojnpFvI3WwOF7G6PI1TcDH1jgs=;
  b=BSaCftWzskddgtv/cea5dZMUCP8R+rN+9AE2i/GmkhWa7mpHnkJjPk0f
   WbfS53Na7UVj7F9rbGKvVcgNZTWBpurxABcfy/quyKkIU1ojB1K+VQpMS
   995/3g4AM+gTSYDlVNQ8fJCLVyXpVlK+Gkozyph0XyF9pjt21fwLBlq+T
   8=;
X-IPAS-Result: =?us-ascii?q?A2AmAACTsihj/wFUSQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YEyBwEBCwGBIIICAoFvjFaGE4JinROBfAsBAQEBAQEBAQEIAUIEAQGJciY0C?=
 =?us-ascii?q?Q4BAgQBAQEBAwIDAQEBAQEBAwEBBgEBAQEBAQYEAYEbhS86DII1IoQfXgEVa?=
 =?us-ascii?q?yYBBBuCdoIWgQqsJIEzGgJlhHCFEoE9AYFlhl+DIxKGN0OECIt1BJh2BzcDR?=
 =?us-ascii?q?R1BAwsOaAMVAxQDBSQHAxkPIw0NBB0MAwMFJQMCAhsHAgIDAgYTBQICTTgIB?=
 =?us-ascii?q?AgEKyQPBQIHLwUELwIeBAUGEQgCFgIGBAQEBBUCEAgCCCYXBxMzGQEFWRAJI?=
 =?us-ascii?q?RwoDQUGEwMgbwVFDygyaysdGwqBDCooFQMEBAMCBhMDAyICECoxFAQpExItB?=
 =?us-ascii?q?ytzCQIDImwDAwQoLAMJIQIBHAcoJjwHWD8DAxAiPQYDCQMCJFqBMCgFAw0ZJ?=
 =?us-ascii?q?ggFOR0ECDwCBQYlmkN8CQpMgWgkSwOSFI4AhAudKgcDg1agIS4WlxEDhVOMH?=
 =?us-ascii?q?Yc9j00gokGEWwIEAgQFAhaBYYIVcIM4UBcCnH+BMAIGCwEBAwmJZIESAQE?=
IronPort-PHdr: A9a23:Mf7btRdEddDcehLXOxfqrUoAlGM+Jt7LVj580XLHo4xHfqnrxZn+J
 kuXvawr0AWSG96BtLkd0baempujcFRI2YyGvnEGfc4EfD4+ouJSoTYdBtWYA1bwNv/gYn9yN
 s1DUFh44yPzahANS47xaFLIv3K98yMZFAnhOgppPOT1HZPZg9iq2+yo9JDffQtFiCCzbL9sL
 hi6ohjdutcZjIB/Nqs/1xzFr2dSde9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0Q
 rNEAjsoNWA1/9DrugLYTQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVTi+6
 apgVRnlgzoFOTEk6mHaksx+grxGrhK9qRJxwI/Ub52aO/dlZKzRYdEaSHBdUspNSSBMBJ63Y
 YsVD+oGOOZVt4fxqVwJrRu4HgmjGv3gyiRQinTrwKM6z/ouER/Y0wwmAtkDrmnfoNH7O6kPV
 Oy5wrTDwDLYb/NKxzj99pbHchY7rfGJWrJwd9HRxlcxGAPelVifspbqMC2O1uUNqGib8/RvV
 ee0i2I9tw5xpT2vy94qh4LUiY0b1krK+j9lwIYpO9K4Ukh7bMaqHpZeqyyXNol7T8I8T211p
 is3yb0LtJq0cSUF1ZgpyR7SZfOaf4WM4B/uVOmcLDZliH97fL+yhBW//FW9xuPzUMS/zVVEr
 jJdn9XRqnwBzR7e58adRvZ+8UqtwyuD2xjO5u1YO0w5mqXWJ4Quz7IqmJcetULOFTLslkrsl
 q+ZbEAk9/Ct6+Tgf7rpuIeRN5RxigHiKqQundG/AfggPggOQWeb/eO82aX//Uz2WrpKiPg2k
 rLdvZzGOcgXurO1DxVI0oY48RqwFC2p38oDnXgHN1JFZAyIj43yO13UPP/4CvK/j0ytkDdt2
 f/GIqXsDojRInTZkrrsc6xx5k1TxQYp0NxT/5dUBasAIPL3VE/xrtvYDhohPgyv3+boFst92
 Z0YWW6VB6+ZN6XSsUSW6e0xOOmBf5QatyzjJPg+5//ulmM5lkEYfamyx5cYdHe4HvF+L0Wfe
 nXjms0BHnsSvgoiUOzqj0WPXSNLa3aoQ608/i07CJ6hDYrbRoGth6CO3Du8HpBNYmBGC0uME
 Wvzd4meW/YMbz6dItNmkjwcT7ihTI0h2g+yuw/m0bZnKfDU+iJL/a7kgZJk4ObPkjk29CdoF
 IKM1GqRSHlumWEFTCNw27pw6wQp21CIza9Qh/1DCccV9vRCTgAiL5newudmTdfoVVSSUM2OT
 QPsZ9KgGjw8VZZ5+MMDfUt7U/7qzi34nmDiV6QJmqKGAtox9aTH0nXqD8x0xm3Xz7UsikJgS
 cxKYz71zpVj/hTeUtaa236SkLynIPx04Q==
IronPort-Data: A9a23:LWcTWqrbLpsBllUbJ38bl6Dku9NeBmKQZxIvgKrLsJaIsI4StFCzt
 garIBmBb6zfNmKgfNlxPNji80pQupTSydFmHQJlr3gxRSJBpePIVI+TRqvS04N+DSFhoGZPt
 Zh2hgzodZhsJpPkjk7xdOCn9BGQ7InQLlbGILes1htZGEk1E0/NtTo5w7Rj2t8x0IDja++wk
 YqaT/P3aQfNNwFcbzp8B5Kr8HuDa9yr5Vv0FnRnDRx6lAe2e0s9VfrzFontR5fMebS4K8bhL
 wr1IBBVyUuCl/slIovNfr8W6STmSJaKVeSFoiI+t6RPHnGuqwRqupvXOsbwZm9I1zeFkdROz
 uxpnoKVbVouAI3SgN4SBkww/yFWZcWq+ZfbMXG5tNfClxWeKj3x2LNkBUwtLJYE9+NsR2pJ8
 JT0KhhUNlbc3KTmnPTiIgVvrp1LwM3DJ58SpHxmizTeC+0rTIvrSazH/s5DwDo1nYZFGvO2i
 88xM2M3NU+cOE0n1lE/GoMztbyh2ULFXRpCplXSuKws4EPvw1kkuFTqGJ+PEjCQfu1EmU2Eo
 UrC/n/lGVcLM9eDziKf9XChjfOJmjn0ML/+D5Xhrrg12xvDmipKYPELaWaGTTCCohbWc7pix
 4Y8o0LCcYBaGJSXc+TA
IronPort-HdrOrdr: A9a23:/QYyxqB1Ldrd4rDlHel055DYdb4zR+YMi2TDtnoQdfUxSKelfq
 +V9sjzuSWYtN9pYgBapTniAsi9qBHnmqKdiLN5VYtKNzOJhILHFu1fBQuL+UyCJ8WpnNQtrZ
 uJ8MBFeaTN5d8Tt7ef3OE7e+xQpuVucciT9IXjJ/IEd3AOV0lKhT0JcDpyPidNNW57OaY=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,328,1654560000";
   d="scan'208,217";a="21013438"
X-IronPort-AV: E=Sophos;i="5.93,328,1654560000";
   d="scan'208,217";a="141677916"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #dunfell
Thread-Topic: #yocto #dunfell
Thread-Index: AdjMU0UdZcuA5K7pTkmpIRZHVGqZIg==
Date: Mon, 19 Sep 2022 18:22:15 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.39]
Content-Type: multipart/alternative;
	boundary="_000_b90d1f463475484b99204cb0d97ea147baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 18:23:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58081
Message-Id: <20220919182322.A3BD5ECAAA1@smtp.lore.kernel.org>

--_000_b90d1f463475484b99204cb0d97ea147baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am seeing an error when I attempt to apply a patch, and could use some cl=
arification or way to resolve...

Am doing something wrong in patch creation ?
What is meant by :  "Patch console.patch does not apply (enforce with -f)" =
?
How can I best resolve this issue ?

I edited a file in the recipe's git repo in order to create the patch for t=
he change:

git diff -u console.c

which I used as my patch:

diff --git a/lib/console.c b/lib/console.c
index 9c10560..b932a44 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -357,7 +357,7 @@ static struct {
        {  EFI_SECURITY_VIOLATION,     L"Security Violation"},
        // warnings
-       {  EFI_WARN_UNKOWN_GLYPH,      L"Warning Unknown Glyph"},
+       {  EFI_WARN_UNKNOWN_GLYPH,     L"Warning Unknown Glyph"},
        {  EFI_WARN_DELETE_FAILURE,    L"Warning Delete Failure"},
        {  EFI_WARN_WRITE_FAILURE,     L"Warning Write Failure"},
        {  EFI_WARN_BUFFER_TOO_SMALL,  L"Warning Buffer Too Small"},

I am getting the following error when the patch is applied:

ERROR: efitools-native-1.7.0+gitAUTOINC+0649468475-r0 do_patch: Applying pa=
tch 'console.patch' on target directory '/disk0/scratch/yocto/workspace/pok=
y-dunfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native=
/1.7.0+gitAUTOINC+0649468475-r0/git'
Command Error: 'quilt --quiltrc /disk0/scratch/yocto/workspace/poky-dunfell=
-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0+gi=
tAUTOINC+0649468475-r0/recipe-sysroot-native/etc/quiltrc push' exited with =
0  Output:
Applying patch console.patch
patching file lib/console.c
Hunk #1 FAILED at 357.
1 out of 1 hunk FAILED -- rejects in file lib/console.c
Patch console.patch does not apply (enforce with -f)
ERROR: Logfile of failure stored in: /disk0/scratch/yocto/workspace/poky-du=
nfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7=
.0+gitAUTOINC+0649468475-r0/temp/log.do_patch.7615
ERROR: Task (/disk0/scratch/yocto/workspace/poky-dunfell-23.0.19/meta-bae/m=
eta-limws/meta-intel/meta-sbca/recipes-bsp/efitools/efitools-native_git.bb:=
do_patch) failed with exit code '1'

Thanks,
Steve

--_000_b90d1f463475484b99204cb0d97ea147baesystemscom_
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
<p class=3D"MsoNormal">I am seeing an error when I attempt to apply a patch=
, and could use some clarification or way to resolve&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Am doing something wrong in patch creation ?<o:p></o=
:p></p>
<p class=3D"MsoNormal">What is meant by :&nbsp; &#8221;Patch console.patch =
does not apply (enforce with -f)&#8221; ?<o:p></o:p></p>
<p class=3D"MsoNormal">How can I best resolve this issue ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I edited a file in the recipe&#8217;s git repo in or=
der to create the patch for the change:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">git diff -u console.c<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">which I used as my patch:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">diff --git a/lib/console.=
c b/lib/console.c<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">index 9c10560..b932a44 10=
0644<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">--- a/lib/console.c<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&#43;&#43;&#43; b/lib/con=
sole.c<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">@@ -357,7 &#43;357,7 @@ s=
tatic struct {<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; {&nbsp; EFI_SECURITY_VIOLATION,&nbsp;&nbsp;&nbsp;&nbsp; L=
&quot;Security Violation&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;// warnings<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">-&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; {&nbsp; EFI_WARN_UNKOWN_GLYPH,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L=
&quot;Warning Unknown Glyph&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&#43;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_UNKNOWN_GLYPH,&nbsp;&nbsp;&nbsp;&nbsp; L&=
quot;Warning Unknown Glyph&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_DELETE_FAILURE,&nbsp;&nbsp;&nbsp; L&quot=
;Warning Delete Failure&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_WRITE_FAILURE,&nbsp;&nbsp;&nbsp;&nbsp; L=
&quot;Warning Write Failure&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_BUFFER_TOO_SMALL,&nbsp; L&quot;Warning B=
uffer Too Small&quot;},<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am getting the following error when the patch is a=
pplied:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: efitools-native-1.7.0&#43;gitAUTOINC&#43;0649=
468475-r0 do_patch: Applying patch 'console.patch' on target directory '/di=
sk0/scratch/yocto/workspace/poky-dunfell-23.0.19/builds/sbca-default/tmp/wo=
rk/x86_64-linux/efitools-native/1.7.0&#43;gitAUTOINC&#43;0649468475-r0/git'=
<o:p></o:p></p>
<p class=3D"MsoNormal">Command Error: 'quilt --quiltrc /disk0/scratch/yocto=
/workspace/poky-dunfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/e=
fitools-native/1.7.0&#43;gitAUTOINC&#43;0649468475-r0/recipe-sysroot-native=
/etc/quiltrc push' exited with 0&nbsp; Output:<o:p></o:p></p>
<p class=3D"MsoNormal">Applying patch console.patch<o:p></o:p></p>
<p class=3D"MsoNormal">patching file lib/console.c<o:p></o:p></p>
<p class=3D"MsoNormal">Hunk #1 FAILED at 357.<o:p></o:p></p>
<p class=3D"MsoNormal">1 out of 1 hunk FAILED -- rejects in file lib/consol=
e.c<o:p></o:p></p>
<p class=3D"MsoNormal">Patch console.patch does not apply (enforce with -f)=
<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
yocto/workspace/poky-dunfell-23.0.19/builds/sbca-default/tmp/work/x86_64-li=
nux/efitools-native/1.7.0&#43;gitAUTOINC&#43;0649468475-r0/temp/log.do_patc=
h.7615<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/yocto/workspace/poky-dun=
fell-23.0.19/meta-bae/meta-limws/meta-intel/meta-sbca/recipes-bsp/efitools/=
efitools-native_git.bb:do_patch) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_b90d1f463475484b99204cb0d97ea147baesystemscom_--

