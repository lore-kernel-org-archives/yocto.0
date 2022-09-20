Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1706C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 15:46:48 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.13810.1663688799104574963
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 08:46:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=SkIbGvsx;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1663688799; x=1821368799;
  h=from:to:subject:date:in-reply-to:mime-version;
  bh=ytR3Kau5wsYJCkhYkp+9FSRI2YZdVDWd8n4O+bdkq74=;
  b=SkIbGvsxNY3a/6xqE02goSUB8LxwaNi7QzVv/6YZFaMLVYNFg0XAYf0T
   BtOy0grmIN/ySWm9l4vU+eAT1WkwXAlQkE4O5q9XGtiCRTDju5jliyk9V
   z/WtshYV6vGip7F9sBs5xEap26YE5L0Hgxgs7SYXRrxy2MK4CTo9P3LVb
   A=;
X-IPAS-Result: =?us-ascii?q?A2AGAABe3ylj/0HBJQpaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBQAmBMwQBAQEBCwGBIIICAg6BSheSaYJiA4EThQGKUowqFIFoC?=
 =?us-ascii?q?wEBAQEBAQEBAQgBLAEGDwQBAYUFAoRrJjUIDgECBAEBAQEDAgMBAQEBAQEDA?=
 =?us-ascii?q?QEGAQEBAQEBBgQBgRuFLzkNgjUpAYNjAQEBAQMBLFwCAQgNBAMBAQEWCwcHK?=
 =?us-ascii?q?AoUCQgBAQQBEggSAYJeBYIWgQqrHDV4gTQaAmWEcIUSgT0BgWWGYoMjhDyCD?=
 =?us-ascii?q?UOBFYJzNz6CYgQBgRYICgESAS8SDAoCB4V9BINolRAHNwNEHUEDCw5oAxUDF?=
 =?us-ascii?q?AMFJAcDGQ8jDQ0EFgcMAwMFJQMCAhsHAgIDAgYTBQICFzY4CAQIBCskDwUCB?=
 =?us-ascii?q?y8FBC8CHgQFBhEIAhYCBgQEBAQVAhAIAggmFwcTMxkBBVkQCSEWBg4aDQUGE?=
 =?us-ascii?q?wMgSSYFRQ8oMmsrHRsKgQwqCR8VAwQEAwIGEwMDIgIQKjEUBCkTEi0HK3MJA?=
 =?us-ascii?q?gMiZwUDAwQoLAMJIQIBHAcoJjwHWBIpBAMDECI9BgMJAwIkW4EELCgFAw0ZJ?=
 =?us-ascii?q?ggFIxYeBAg8AgUGJZgzgToUQ3wJCgEbMDBBdyRLA5IUQo0+hAudKgcDg1aLN?=
 =?us-ascii?q?40Dh2cuFoN2gVCLAIZLA4VThi6Fb4c9j00goV0NCDcYhFsCBAIEBQIWgWIBR?=
 =?us-ascii?q?x4+cHCDNwlIFwKXNYVKdQIBOAIGCwEBAwmJaIESAQE?=
IronPort-PHdr: A9a23:+K53hBX/JTyunUdO1/azuU4bLUjV8KzgUjF92vMcY1JmTK2v8tzYM
 VDF4r011RmVB96dsKgVwLuM+4nbGkU4qa6bt34DdJEeHzQksu4x2zIaPcieFEfgJ+TrZSFpV
 O5LVVti4m3peRMNQJW2aFLduGC94iAPERvjKwV1Ov71GonPhMiryuy+4ZLebxtGiTanb75+M
 hG7oQrVu8UInIBvNrs/xhzVr3VSZu9Y33loJVWdnxb94se/4ptu+DlOtvwi6sBNT7z0c7w3Q
 rJEAjsmNXs15NDwuhnYUQSP/HocXX4InRdOHgPI8Qv1Xpb1siv9q+p9xCyXNtD4QLwoRTiv6
 bpgRQT2gykbKTE27GDXitRxjK1FphKhuwd/yJPQbI2MKfZyYr/RcdYcSGFcXMheSjZBD5u8Y
 YUREuQBIehWoYrzp1QMrBuxGQajCfj1xTNUhH/7x7E23/g/HQzAwQcuH8gOsHPRrNjtOqscV
 ue1zK/TzTrdcfxWwi/x45XVfBA9v/6MQ6x/cczMwkQxCgjJilufp5HgMz+by+8AtHOb7/Z+W
 uKxlWEnrRt9oj2oxscqkYnGmJwaykvf+Cpi2ok6O8a4SU5gYd64DpRQsjqaO5FqTcMlRmFlo
 SA3waAJtpCnZiYF0ognxwLBZPyddYiF+hzuWPueLDp2hHxreL2yiRms/UWj1uDxUtS53VdUo
 iZbnNfCuXAD2wDd5MWHSvZx4Ees1ziB2QzP5O9KL1w4mKrdJpU8zLAwkZ8Tvl7CHi/wgEj3j
 KiWeVk4+uiv8+TneLLmpp2COIBolgHyKKMumtawAek+LwMAXHCb9Pyh2LH/50H0TrdHgucrn
 qTdvp3WP8UWq66hDwNIzoov8RmyAji83NkXh3UKIlZIdRSahIbzIV7OOur3DfKnjlSplzdk2
 u7JM6X6ApXIMnjDiLDhfath60JEyAo809Rf55VMB7EfOv3zWknxtNnDDhI9NwG5x/rrBMhn2
 oMYQ22DGLSWP7nMvl+T5uMvOPWMa5EQuDbmMfQq+/nujXohlV8ce6mmw4cXZWilEvh6OUmUb
 3jhjs0cHWoOsAcyVu3nhV2aXT5WfXmyXqY85j8hCIKhCIfOXputgKCf0yelAJJWYHpKClWLE
 XfubIWLRekDaDmJL8B6iDMLS6OhSo861RGyqgD6zqFnIvDI9S0fsJLvzN516PbLmhEo6TN0F
 9id032KT2xsg28EXyU207xnoUxh1leD1rB1gvxfFdNP+/NJVRw3NZrdz+xhF9DyQRjNf9eOS
 Fm6XtWmBikxTsg2w98MfUlyB8miggrE3yqwDL9G34CMUaYz6bmU9WXrO8F7gyL807I6yXM7W
 NdIM0WvnKs5/A/WUcqB2VSenLqtXaAdxzLWsnaExnaJpFtfUgN7TePCR39VLh/Hqt/l4WvGT
 qSyEvI2NQBdztaYLalHYcGvik9JEqTNItPbNiiUnGGrCBuTgvu3cIf0dmNV922dNXNF2UhH5
 mqLKwU4QCKmpXnTASdGH1vieFL37eR7szWwSUpinFLCVFFoy7fgok1dvvebUf5Gm+tc4E8c
IronPort-Data: A9a23:WZqECa6FWlJLvEol9QnsTgxRtKzFchMFZxGqfqrLsTDasY5as4F+v
 mBLW2+EO/7Ya2KhetF1bovkpE0CvMfRzoRlHAtkpHw2Zn8b8sCt6fZ1jqvT04F+CuWZESqLO
 u1HMoGowPgcFyOa/lH0WlTYhSEUOZugH9IQM8aZfHEqLeNYYH1500g7yrRh2tcAbeWRWmthh
 /uj+6UzB3f4g1aYAkpMg05UgEoy1BhakGpwUm0WPZinjneH/5UmJM53yZWKEpfNatI88thW5
 gr05OrREmvxp3/BAz4++1rxWhVirrX6ZWBihpfKMkSvqkAqm8A87ko0HMoGMGB1khG4ptky4
 /5iiZKoYhciOrKZzYzxUzEAe81/FbNP+LnCOinu4JTKiUvPNXHlzu5/F107OJZe8eFyaY1M3
 aVAbmtSKEnS3KTondpXScE17ignBNL3MZ0SvDdlyjfCAPs9aZrKTr7b/sNV2Sx2jcdLdRrbT
 5BAM2U2NEyZC/FJEnBGEpMUwP2kvWPAXWVfgQ+f+po22XeGmWSd15CoarI5YOeiVMJegkGwo
 mPd43+/ExYRKNuH0z2H/3mwwOjVkkvGtJk6TeX+raEs2QzIgDJOYPELaWaGTTCCohbWc7pix
 4Y8o0LCcYBaGJSXc+TA
IronPort-HdrOrdr: A9a23:+J2YN6imWYnCig6DMI5mY/r8cXBQXtQji2hC6mlwRA09TyX4rb
 HWoB1/73SYtN9/YgBGpTn+AtjkfZqxz/JICOoqTNGftXfdyQ+VxehZhOOJrQEIcBeQygcy78
 Zdm+kVMqyTMbGMt6aKgzWFLw==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,330,1654560000";
   d="scan'208,217";a="21271001"
X-IronPort-AV: E=Sophos;i="5.93,330,1654560000";
   d="scan'208,217";a="94641187"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Ross Burton <Ross.Burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] #yocto #dunfell
Thread-Topic: [yocto] #yocto #dunfell
Thread-Index: AdjMU0UdZcuA5K7pTkmpIRZHVGqZIgArrwPQAAEkRHsAAFq/MA==
Date: Tue, 20 Sep 2022 15:45:36 +0000
In-Reply-To: 
 <PA4PR08MB74113B68618561C69A04C478E84C9@PA4PR08MB7411.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.39]
Content-Type: multipart/alternative;
	boundary="_000_fd2847932aac4912823c8363777bc740baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 15:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58097
Message-Id: <20220920154648.D1706C54EE9@smtp.lore.kernel.org>

--_000_fd2847932aac4912823c8363777bc740baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Thanks... will give it a try.

From: Ross Burton <Ross.Burton@arm.com>
Sent: Tuesday, September 20, 2022 11:38 AM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; yocto@lists.yoc=
toproject.org
Subject: Re: [yocto] #yocto #dunfell

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


Hi,

SBSA is EDK2 based, which is basically incredibly painful to patch.  The so=
urce files are windows-style CR/LF so your patch needs to have CR/LF, but i=
f the whole patch has CR/LF then git "helpfully" transforms the patch to ju=
st unix-style LF, which doesn't apply.

The "solution" (workaround) is to convert the patch to LF encoding, and man=
ually add the CR characters to the end of each line in the patch body.

The good news is that EDK2 is moving to LF encoding, so this will be solved=
 at some point.

Ross


From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on behalf =
of Monsees, Steven C (US) via lists.yoctoproject.org <steven.monsees=3Dbaes=
ystems.com@lists.yoctoproject.org<mailto:steven.monsees=3Dbaesystems.com@li=
sts.yoctoproject.org>>
Date: Tuesday, 20 September 2022 at 16:05
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>, yocto@lists.yoctoproject.org<mailto:yocto@lists.yoct=
oproject.org> <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject=
.org>>
Subject: Re: [yocto] #yocto #dunfell

Any hints or ideas on what I might be doing wrong would be appreciated...

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Monday, September 19, 2022 2:22 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] #yocto #dunfell

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.



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

--_000_fd2847932aac4912823c8363777bc740baesystemscom_
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
	{font-family:"Lucida Sans Unicode";
	panose-1:2 11 6 2 3 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Thank=
s&#8230; will give it a try.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt">From:</span></b>=
<span style=3D"font-size:11.0pt"> Ross Burton &lt;Ross.Burton@arm.com&gt;
<br>
<b>Sent:</b> Tuesday, September 20, 2022 11:38 AM<br>
<b>To:</b> Monsees, Steven C (US) &lt;steven.monsees@baesystems.com&gt;; yo=
cto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] #yocto #dunfell<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse;border:none">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><o:p></o:p></=
p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"549" valign=3D"top" style=3D"width:1150.4pt;border:solid red 1=
.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:bla=
ck">This email has been sent from an account outside of the BAE Systems net=
work.<o:p></o:p></span></strong></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><span style=3D"font-size:9.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Hi,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">SBSA=
 is EDK2 based, which is basically incredibly painful to patch.&nbsp; The s=
ource files are windows-style CR/LF so your patch needs to have CR/LF, but =
if the
<b>whole patch</b> has CR/LF then git &#8220;helpfully&#8221; transforms th=
e patch to just unix-style LF, which doesn&#8217;t apply.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">The =
&#8220;solution&#8221; (workaround) is to convert the patch to LF encoding,=
 and manually add the CR characters to the end of each line in the patch bo=
dy.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">The =
good news is that EDK2 is moving to LF encoding, so this will be solved at =
some point.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Ross=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><o:p=
>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black"><a href=3D"mailto:y=
octo@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a> &lt;<a href=
=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>&g=
t; on behalf of Monsees, Steven C (US) via lists.yoctoproject.org
 &lt;<a href=3D"mailto:steven.monsees=3Dbaesystems.com@lists.yoctoproject.o=
rg">steven.monsees=3Dbaesystems.com@lists.yoctoproject.org</a>&gt;<br>
<b>Date: </b>Tuesday, 20 September 2022 at 16:05<br>
<b>To: </b>Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com">steven.monsees@baesystems.com</a>&gt;,
<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.or=
g</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yocto=
project.org</a>&gt;<br>
<b>Subject: </b>Re: [yocto] #yocto #dunfell<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">&nbsp=
;</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Any h=
ints or ideas on what I might be doing wrong would be appreciated&#8230;</s=
pan><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">&nbsp=
;</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt">From:</span></b>=
<span style=3D"font-size:11.0pt">
<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.or=
g</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yocto=
project.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Monday, September 19, 2022 2:22 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> [yocto] #yocto #dunfell<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"549" valign=3D"top" style=3D"width:1150.4pt;border:solid red 1=
.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:bla=
ck">This email has been sent from an account outside of the BAE Systems net=
work.</span></strong><span style=3D"font-size:11.0pt"><o:p></o:p></span></p=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">&nbsp;</span><span style=3D"font-size:11.0pt"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I am seeing an erro=
r when I attempt to apply a patch, and could use some clarification or way =
to resolve&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Am doing something =
wrong in patch creation ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">What is meant by :&=
nbsp; &#8221;Patch console.patch does not apply (enforce with -f)&#8221; ?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">How can I best reso=
lve this issue ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I edited a file in =
the recipe&#8217;s git repo in order to create the patch for the change:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">git diff -u console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">which I used as my =
patch:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">diff --git a/lib/console.c b/lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">index 9c10560..b932a44 100644<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">--- a/lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&#43;&#43;&#43; b/lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">@@ -357,7 &#43;357,7 @@ static struct {<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_SECURITY_VIO=
LATION,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Security Violation&quot;},<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// warnings<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_UNKOWN_GLYPH=
,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Unknown Glyph&quot;},<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_UNKNOWN_=
GLYPH,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Unknown Glyph&quot;},<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_DELETE_=
FAILURE,&nbsp;&nbsp;&nbsp; L&quot;Warning Delete Failure&quot;},<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_WRITE_F=
AILURE,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Write Failure&quot;},<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_WARN_BUFFER_=
TOO_SMALL,&nbsp; L&quot;Warning Buffer Too Small&quot;},<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I am getting the fo=
llowing error when the patch is applied:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ERROR: efitools-nat=
ive-1.7.0&#43;gitAUTOINC&#43;0649468475-r0 do_patch: Applying patch 'consol=
e.patch' on target directory '/disk0/scratch/yocto/workspace/poky-dunfell-2=
3.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0&#43;=
gitAUTOINC&#43;0649468475-r0/git'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Command Error: 'qui=
lt --quiltrc /disk0/scratch/yocto/workspace/poky-dunfell-23.0.19/builds/sbc=
a-default/tmp/work/x86_64-linux/efitools-native/1.7.0&#43;gitAUTOINC&#43;06=
49468475-r0/recipe-sysroot-native/etc/quiltrc
 push' exited with 0&nbsp; Output:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Applying patch cons=
ole.patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">patching file lib/c=
onsole.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hunk #1 FAILED at 3=
57.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">1 out of 1 hunk FAI=
LED -- rejects in file lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Patch console.patch=
 does not apply (enforce with -f)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ERROR: Logfile of f=
ailure stored in: /disk0/scratch/yocto/workspace/poky-dunfell-23.0.19/build=
s/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0&#43;gitAUTOINC&#=
43;0649468475-r0/temp/log.do_patch.7615<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ERROR: Task (/disk0=
/scratch/yocto/workspace/poky-dunfell-23.0.19/meta-bae/meta-limws/meta-inte=
l/meta-sbca/recipes-bsp/efitools/efitools-native_git.bb:do_patch) failed wi=
th exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve<o:p></o:p></s=
pan></p>
</div>
</div>
</div>
</body>
</html>

--_000_fd2847932aac4912823c8363777bc740baesystemscom_--

