Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.517.1620166790312613293
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 15:19:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=DxG2X6B8;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1620166790; x=1777846790;
  h=from:to:cc:subject:date:in-reply-to:mime-version;
  bh=dMArZxnv+nfED5dRgY2XITPGFdBzniv5pHzkU/LMqmU=;
  b=DxG2X6B82+DEA5BAkjE3RbwyVQfllonlL1+e6Lz69dCT0uaRugcsDcMJ
   aSv5wX7DuNUEIV3XrNujH0ZopVkxHt0p9zwDN2/NaKhpd7eqD+V7YxSkA
   ht07dPZI7hDyl57UQWWHFDIy/zbswqzYsIUfKevCSP+hhSoUFFIeQ/A8Z
   E=;
IronPort-SDR: HOq1eo+HOcNJi4mg+BecEdDjjgz/FbArAj3Im7uhmNujev9gPxSwNWQFV5APDzC7kfVyvRQtwc
 misf/l3FOdNQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AkY9JzxIOIWXJl1HtitmcuNFhWUAX047cDksu8?=
 =?us-ascii?q?pMizoh2WeGdxfzKAkXT6L1XgUPTWs2DsrQY0ruQ6fu+EjVevN6oizMrSNR0T?=
 =?us-ascii?q?RgLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdF?=
 =?us-ascii?q?Q/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vKBi6txvdu8cXjIdtN6o8y?=
 =?us-ascii?q?xvEqWZUdupLwm9lOUidlAvm6Meq+55j/SVQu/Y/+MNFTK73Yac2Q6FGATo/K?=
 =?us-ascii?q?2w669HluhfFTQuU+3sTSX4WnQZSAwjE9x71QJH8uTbnu+Vn2SmaOcr2Ta0oW?=
 =?us-ascii?q?Tmn8qxmRgPkhDsBOjUk62zclNB+g7xHrxKgvxx/wpDbYIeJNPplY6jRecoWS?=
 =?us-ascii?q?XddUspNUiBMBJ63YYkSAOobJetWr5fzqUYSrRWwBgesCuHgyj5UiXD5xqA1y?=
 =?us-ascii?q?fgtEQPc0QA8A94CrnLZp8j1OqcIVuC1ybHFwTvEYfNR3zf985bHfQ46of2UQ?=
 =?us-ascii?q?Ll+bNbRxlcxFwzbiFWbtJLoNC6R2usDrmaX6uRsXv+ohm48twF+vCavydkqi?=
 =?us-ascii?q?oXTg4IVzVbE9T5nz4krPt21U1V0bsS6H5tLtyCaLJd2Td0nQ2Fzoio11roGu?=
 =?us-ascii?q?ZuicSUM1Z8oyALRZeadfIiU/hLsSvyRITFgiX9rZb6yiBi//0igxODzWce4z?=
 =?us-ascii?q?lVHozZBn9TRt30ByQLf5MaIRPV94kuv1zaC2gDN5uxEL046m7bXJZAvzLIsl?=
 =?us-ascii?q?pcet1nIECHxmEXzlqCWd0Mk9/Co6uTgfrrmupicN5duigH5MKQhhNCwAfgiP?=
 =?us-ascii?q?ggJRWib9uKx36Dg803hWLhGk+E6nrPXvZ3YP8gXu6q0DgFP3osi6huzFyqq3?=
 =?us-ascii?q?MgCkXQHLF9JYgyLgobrNl3UI/31D/GyiEm2njhx3fDJJLjhD43ILnjEjbjuY?=
 =?us-ascii?q?65w61VZyAov1dBf4I9UCq0ZLPLzREDxsNvYAwc/Mwy0xeboEtB91pgdVG+PH?=
 =?us-ascii?q?qOVLL7evUWO5u01OeWDf5UatyjmK/kl/P7ukWE2mVoGfaWzwZQXb3W4EuxnI?=
 =?us-ascii?q?0Wff3Xsns8MHXoWsgYkQuHnikeOXSNXanu8Ra4x5zA2BJqjDYjZR4CthLKB3?=
 =?us-ascii?q?D28Hp1Tfm1GEUyMHmn2d4qaXfcAcieSIshnkjwfS7euVZQh2Aq1uwDg1bVnN?=
 =?us-ascii?q?erV+jYEtZ390dh1/Pffmg019TxxF8idyX2CT3lonmMUQD87xKB+oUthxVef1?=
 =?us-ascii?q?qh1mPhYFd1I5/NVSQc2L57dz+tmBNDuXQLBZs2JSFGkQtq4HT4xUsg9w9gUY?=
 =?us-ascii?q?0ZySJ2fiAve1X+qH6MNjO7MQ5g16b7HmWn2LNp602zB1qQqkx8hWMQIOiq3g?=
 =?us-ascii?q?aVj8E/OAZXUmRakkb23f4QA2SqY9Huf1XHc+wZcURVsSuPUWnsDYVPMqtb07?=
 =?us-ascii?q?V+ESKWhTrtgIwxK1cnFN61Rd9e6sFNdWf3fNcTCNmKth3+rV1HPwrKXcJGsa?=
 =?us-ascii?q?mIWwCLFEk8GngsPu3GcOk8xQTamqH7ZSyFoDk/lMH/rpMp+pXbzdEY2h1WQZ?=
 =?us-ascii?q?k8n1Lq4/zYagPWdT7UY2bdS6wk7rDAhVnO62cnbBsHE7zF9cbtRZ5sWqBd67?=
 =?us-ascii?q?iOT/1hmIpG+IqYkg1kYaAl6pGvk3hhsG55cnM0x6ngtyVwheuqjzFpdembAj?=
 =?us-ascii?q?tjLMbrNJzy3pUj3A5M=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A99sI0K0I6c6ar820c0nh0gqjBSByeYIsi2?=
 =?us-ascii?q?QD101hICF9WsaTm9my2NES0hHpgDgcMUtQ4+yoEoPoewK/ybde544NMbC+GC?=
 =?us-ascii?q?zvv2W1JI9vhLGSvgHIMSv46+JbyONcY7FzYeeAf2RSoM7m7GCDYrAd6fad9q?=
 =?us-ascii?q?TAv4fj5ldrCTpncqRxqzp+YzzraXFeZBJBAqM+D4fZ3Od9zgDKRV0yTuCWQk?=
 =?us-ascii?q?YIRPLCodqjruOSXTcjCwQ84AeDyROEgYSKaiSw5RsVXzNRzbpKywGs/GKZ2o?=
 =?us-ascii?q?yZv/620RPa3WPIhq4m4OfJ8ddfGNeKzvEcNzSEsHfdWK1aR7aAsDopydvfjW?=
 =?us-ascii?q?oCrdjWrx8se+R15n/BF1vFxifF5gj63D4ir0Ll0F+T6EGTxfDReTRSMbsjua?=
 =?us-ascii?q?tpNjfJ4Uspu99xlJlG2mqI3qA8MTrw2ADGo/nBTVVDi1e9q3tKq59us1VvFa?=
 =?us-ascii?q?8lLIJ3gaNa1kVPC5sEFD/98+kcYZZTJfCZ3tpwXH+gK1Dh11MD/PWcGk4eOT?=
 =?us-ascii?q?qreQw4lvWo7hBqvFZfpnF1+OUTm25F7Yk6RoVP+o3/Q9pVvbxKV4sMYap2Ge?=
 =?us-ascii?q?cGRqKMexzwaB/IKSaMLU/8FKcBUki92qLf8fEy/+GleJsB0Zs0ltDASTpjxB?=
 =?us-ascii?q?0PR34=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AeAABAyJFg/0LBJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE6BwEBCwGBIoF/DoEzC4xdiVEDhWmES4UBi0sUgWgLAQE?=
 =?us-ascii?q?BAQEBAQEBCAEdAQoMBAEBhFACgXwmNAkOAgQBAQwBAQYBAQEBAQYEAYEDhVA?=
 =?us-ascii?q?NgjgFAgMfAQaDXAEBAQQBCyEhKxACAQgNBAQBARYLBwchBwkBFAkIAQEEDgU?=
 =?us-ascii?q?IFQSCTAWBflcDPqgeNXiBNBoCZYNIAYEYgkcNgicJAYEwAYFkhRMNgRWFRoI?=
 =?us-ascii?q?NQYEVgyI+gh5CBAGBFggKARIBTQoIAYU5BIFvEwEQgS8UByMBIDBAAQgCBBU?=
 =?us-ascii?q?pChpkkSuLAp4aWwcDgxCJeYwMgWeFOCEQg1SBQYlMhgQDiyKFGaEwgx2PLQw?=
 =?us-ascii?q?GN4ROAgQCBAUCFoFBE0dccHCDOQkJPhcCjjgXiGKBXYNscwIBNQIGCgEBAwm?=
 =?us-ascii?q?KSy0rXIEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2AeAABAyJFg/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE6BwEBCwGBIoF/DoEzC4xdiVEDhWmES4UBi0sUgWgLAQEBAQEBAQEBCAEdA?=
 =?us-ascii?q?QoMBAEBhFACgXwmNAkOAgQBAQwBAQYBAQEBAQYEAYEDhVANgjgFAgMfAQaDX?=
 =?us-ascii?q?AEBAQQBCyEhKxACAQgNBAQBARYLBwchBwkBFAkIAQEEDgUIFQSCTAWBflcDP?=
 =?us-ascii?q?qgeNXiBNBoCZYNIAYEYgkcNgicJAYEwAYFkhRMNgRWFRoINQYEVgyI+gh5CB?=
 =?us-ascii?q?AGBFggKARIBTQoIAYU5BIFvEwEQgS8UByMBIDBAAQgCBBUpChpkkSuLAp4aW?=
 =?us-ascii?q?wcDgxCJeYwMgWeFOCEQg1SBQYlMhgQDiyKFGaEwgx2PLQwGN4ROAgQCBAUCF?=
 =?us-ascii?q?oFBE0dccHCDOQkJPhcCjjgXiGKBXYNscwIBNQIGCgEBAwmKSy0rXIEQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,272,1613433600"; 
   d="scan'208,217";a="372135803"
IronPort-SDR: 7BeoTZK9iJp9nZPM5kYBy2S2bC6ZAzTIrfT9XzoaLRE1OFubUuq4fJqcuRaJUk+bt+0h2Jk1rI
 gsK/FI29FGWD+3gTHikTpHyD6PWCmPaZeJJLSLsJhvv1aMB/Gz4hR8rSS7ZbW6l+MWXZeVurgP
 LTZRTn6aH9G4L+YEDyYnJNd5fDv/b5Mg7gGEzkbtpzFOv4F9LMqtgF52H6pfw+2qgKOXCs3U8W
 xrM4NWWcKduEvm/e8rsj+wNHSEr3R243zOL9PeoBrgnTHWYYbxZ+6nAsrS15dfQ1vTp87EItaF
 g20=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations
Thread-Topic: [yocto] #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfgBmHxLAAAnAAIAABZoy0AAAB8oAAAZCwlA=
Date: Tue, 4 May 2021 22:18:23 +0000
In-Reply-To: <CAMKF1sq9PXQs1UVGawYYyFVM4u0yWWENhMZ8mO5AWbv43TYouw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.55.237.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167BFD1D2E76D988.30203@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7652c5a3dfd247a190e08dc417deb011baesystemscom_"

--_000_7652c5a3dfd247a190e08dc417deb011baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, LLVM & Clang...

From: Khem Raj <raj.khem@gmail.com>
Sent: Tuesday, May 4, 2021 5:17 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems networ=
k.
Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.  For further i=
nformation on how to spot phishing, access "Cybersecurity OneSpace Page" an=
d report phishing by clicking the button "Report Phishing" on the Outlook t=
oolbar.


I see its using -rdynamic -static
so next question is that do you have .a files in your sdk ?

On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via lists.yoctoproj=
ect.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@lis=
ts.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

Attached...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 2:36 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mo=
nsees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems networ=
k.
Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.  For further i=
nformation on how to spot phishing, access "Cybersecurity OneSpace Page" an=
d report phishing by clicking the button "Report Phishing" on the Outlook t=
oolbar.


can you post full linker cmd which is failing ?

On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via lists.yoctoproj=
ect.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@lis=
ts.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

My standard zeus SDK appears to have an issue linking in my applications d=
ynamic libs...

/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-li=
nux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cann=
ot find -ldrm_intel
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-li=
nux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cann=
ot find -ldrm
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-li=
nux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cann=
ot find -lclang
collect2: error: ld returned 1 exit status
The libraries are under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/

My CMake build app does not appear to have an issue finding the files:

DRM_INTEL_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0=
.4/sysroots/corei7-64-poky-linux/usr/lib/libdrm_intel.so
DRM_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sys=
roots/corei7-64-poky-linux/usr/lib/libdrm.so

It appears to be an issue specifically with the ld...

LDFLAGS=3D " --sysroot=3D$ENV{OECORE_TARGET_SYSROOT} -L$ENV{OECORE_TARGET_=
SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib/x86_64-poky-linux/9.=
2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed"

It does not appear to be making use of -L's...

Is there something I might look at/configure (i.e. add paths to search pat=
hs) ?
Is there a simple test to validate tool ?

Thanks,
Steve

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <y=
octo@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf=
 Of Monsees, Steven C (US) via lists.yoctoproject.org<http://lists.yoctopro=
ject.org>
Sent: Sunday, May 2, 2021 1:28 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems networ=
k.
Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.  For further i=
nformation on how to spot phishing, access "Cybersecurity OneSpace Page" an=
d report phishing by clicking the button "Report Phishing" on the Outlook t=
oolbar.



I am using zeus, standard SDK, cmake...

Can I pre-configure the SDK to setup cmake package search paths ?, say for=
 find_package, etc. (i.e. detecting external libraries/programs)...

The majority of my env is configuring properly, but I am finding cmake is =
setup for a standard linux env with regards to these types of searches, and
I wanted the cmake built in to look at my SDK paths (first by default) whe=
n doing such things as detecting python interpreter, libraries, etc.

I am working on third party package unaware of my SDK setup.

Thanks,
Steve




--_000_7652c5a3dfd247a190e08dc417deb011baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">Yes, LLVM &amp; Clang&#8230;<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj &lt;raj.khem@gmail.c=
om&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;steven.monsees@baesystems.com&gt;<br=
>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collaps=
e:collapse;border:none">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0=
pt;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert=
</span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"549" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;=
margin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;back=
ground:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been s=
ent from an account outside of the BAE Systems network.</span></strong><o:p=
></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.&nbsp; For further information on how to spot phishing, ac=
cess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outl=
ook toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;"=
>I see its using&nbsp;</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;Courier New&quot;;color:black">-rdynamic -static</span><span style=3D"f=
ont-family:&quot;Courier New&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;C=
ourier New&quot;;color:black">so next question is that do you have .a files=
 in your sdk ?</span><span style=3D"font-family:&quot;Courier New&quot;"><o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (=
US) via <a href=3D"http://lists.yoctoproject.org">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesyste=
ms.com@lists.yoctoproject.org">baesystems.com@lists.yoctoproject.org</a>&gt=
; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0=
in 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:#1F497D">Attached&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot=
;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gma=
il.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collaps=
e:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0=
pt;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert=
</span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"540" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been s=
ent from an account outside of the BAE Systems network.</span></strong><o:p=
></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.&nbsp; For further information on how to spot phishing, ac=
cess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outl=
ook toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-family:&quot;Courier New&quot;">can you post =
full linker cmd which is failing ?</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yo=
ctoproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>=
&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0=
in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin=
-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">My standard zeus SDK appears to hav=
e an issue linking in my applications dynamic libs&#8230;</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK=
/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gc=
c/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm_intel</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK=
/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gc=
c/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK=
/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gc=
c/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -lclang</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">collect2: error: ld returned 1 exit=
 status</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">The libraries are under: /disk0/scr=
atch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib=
/</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">My CMake build app does not appear =
to have an issue finding the files:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">DRM_INTEL_LIBRARIES:STRING=3D/disk0=
/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr=
/lib/libdrm_intel.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">DRM_LIBRARIES:STRING=3D/disk0/scrat=
ch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib/l=
ibdrm.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">It appears to be an issue specifica=
lly with the ld&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">LDFLAGS=3D</span>
<span style=3D"color:#1F497D">&quot; --sysroot=3D$ENV{OECORE_TARGET_SYSROO=
T} -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/=
lib/x86_64-poky-linux/9.2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -W=
l,--hash-style=3Dgnu -Wl,--as-needed&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">It does not appear to be making use=
 of &#8211;L&#8217;s&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">Is there something I might look at/=
configure (i.e. add paths to search paths) ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">Is there a simple test to validate =
tool ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">Steve</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@li=
sts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org=
" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collaps=
e:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0=
pt;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:red">External Email Alert</span></u></strong><o:p></o:p><=
/p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"532" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:black">This email has been sent from an account outside of t=
he BAE Systems network.</span></strong><o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;m=
argin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.&nbsp; For further information on how to spot phishing, ac=
cess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outl=
ook toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">I am using zeus, standard SDK, cmake&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">Can I pre-configure the SDK to setup cmake package search paths ?=
, say for find_package, etc. (i.e. detecting external libraries/programs)&#=
8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">The majority of my env is configuring properly, but I am finding =
cmake is setup for a standard linux env with regards to these types of sear=
ches, and<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">I wanted the cmake built in to look at my SDK paths (first by def=
ault) when doing such things as detecting python interpreter, libraries, et=
c.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">I am working on third party package unaware of my SDK setup.<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">Steve<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0=
pt"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_7652c5a3dfd247a190e08dc417deb011baesystemscom_--
