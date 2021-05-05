Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.5874.1620211510050815930
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 03:45:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=jt+NE/P4;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1620211510; x=1777891510;
  h=from:to:cc:subject:date:in-reply-to:mime-version;
  bh=fZmT9AM89myp1DyGMXtTUXM/lVNQ+ICfbTa6Op6TpFo=;
  b=jt+NE/P4JssYzdSgztl0C57VpTL9VwY4Yn5dJ6WyaQYK9NB6NyM78vQs
   2fKtssH1plh7KIUr5++pSjqHh5vHccMOZPgT6JDvpHm/V/dY5iXGPpe4F
   Z0QZ+YhIRn/SqVG3etS55KYd/F9v2s5ybPnypPZYBTH8X9LBGkZnOTyqe
   c=;
IronPort-SDR: EOBXsTrXXoM7gCeyHQXlCUmqdt9to0VxVHDPnaz+JJec2Y4DQ8G2zzdRU9xNQhAWOUwwDflJsS
 DL2O52kvrduQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AH5oE2hadEIHiMH+eTwzHkLv/LTGA14qcDmYuw?=
 =?us-ascii?q?qpisKpHd+GZx7+nAna3zctkgFKBZ4jH8fUM07OQ7/mxHzZbvt3Q6TgrS99lb?=
 =?us-ascii?q?1c9k8IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBU?=
 =?us-ascii?q?hrwOhBoKevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrqQjdrNcajIVgJ6o+z?=
 =?us-ascii?q?hbFv2ZDdvhLy29vOV+dhQv36N2q/J5k/SRQuvYh+NBFXK7nYak2TqFWASo/P?=
 =?us-ascii?q?Wwt68LlqRfMTQ2U5nsBSWoWiQZHAxLE7B7hQJj8tDbxu/dn1ymbOc32Sq00W?=
 =?us-ascii?q?Sin4qx2RhLklDsLOjgk+2zMlMd+kLxUrw6gpxxnwo7bfoeVNOZlfqjAed8WX?=
 =?us-ascii?q?HdNUtpNWyBEBI63cokBAPcbPetAr4fzuUYArQewCwevCuPgyD5IiWP50qAhy?=
 =?us-ascii?q?estDQPG0RY8E94SrnjZqsj+OqcIUeCyyanF1TvPYfRR2Tf784jHbA4uoeqUU?=
 =?us-ascii?q?bltbMTR1VcgFx3bgVWWtIfoIS6e2uADvGaG6uZsW/+khmk8qwFtvDev2Nkji?=
 =?us-ascii?q?o/TioIQzVDE8z55z5grKt2jU0N0esSrH4VLtyCaLIt2Xt0tQ2RzuCog1rIGv?=
 =?us-ascii?q?pu7cTEMxZ86yBHRd+aJfJKU4hL/SumROzF4iWprdb6iiBu//0iuxO3zW8e7z?=
 =?us-ascii?q?lpHrTZIn93Ru30MyRDf9MaJRPR98Eu91ziC1wDe5v9ELE46m6TXN5AvzLAsm?=
 =?us-ascii?q?pcTt0nIAyH4mELzjKCMd0Uk/PCl6uTgYrr6up+cMJd0ihv5MqQshMOwHfg4P?=
 =?us-ascii?q?hIJX2iB9uSx0qDo807hQLhSk/E6jrPVvZ7YKMgBuKK1HQ9Y3pwi5hu+Fzuqz?=
 =?us-ascii?q?cgUkWMIIV9KYh6KgJLlN0zOLf3+EPyxmU6jkC1xyPDDJrDhB5LNIWXdn7r5Z?=
 =?us-ascii?q?rZ97lJcyBI0zdBC+5JYErEBL+z3Wk/2rNHXEgU2MxeozObiE9Vw0ocTVGGTD?=
 =?us-ascii?q?qOHKq/St0WH6vg0LOaWeoAVozb8K+M55/HwiH85gkURcrWu3ZsScHy4H/JmL?=
 =?us-ascii?q?FuFYXf0n9sNDX0GswQ8QeDwllGOTz5ea2yzUq89/j07DZipDYbHRoCjmryB2?=
 =?us-ascii?q?yK7E4VNZmBaFF+MD2nnd4OeV/cJbyKSJNRhnSIaWri6UIIuzguhuxHhy7tnN?=
 =?us-ascii?q?erU5jMXtZf41NRv++LTkhQy+SRuD8uBy2GNU310nmQQSj4226BwvVB9ylCY3?=
 =?us-ascii?q?Kh8gvxYDsBT5+hTXgY6Mp7T0/B6C9fqWgLbedeJSkipTcm6AT0rSdIx2dAOM?=
 =?us-ascii?q?A5AHc6/hEXDwzayGO1S0LiKH4AvtLPb1GT2P9x6yXvNyO8mlVZhTYxeMma6g?=
 =?us-ascii?q?eli8RPODd30lV6EnYa2cKBJ3DLR7HzRii2KvVpES0hhVq7ZWmgFYUnbpsi/4?=
 =?us-ascii?q?VnNCLDpGLMsLgwG1MiZN6EZV9vykF96Sef/bdTCf3qqySD3AReT2qjKfY3hZ?=
 =?us-ascii?q?2IFxiLfBUMY1QcJ8jGJchk5DTum5H/YFyFkRm7oNmDs/Ow2knq5BhsuxgPMb?=
 =?us-ascii?q?E1s0pK6/xcUgbqXTPZFjZwevyJ04RBzGk2w0smSQ+GcqhRseu13KZMA2xYNn?=
 =?us-ascii?q?TbCqwFjM5rmKqdknVMTaCx9tk71xg5rB4Bb18MtqSV5n0JJNauE3QYZJHuj1?=
 =?us-ascii?q?pfqN+iSczGqlC0=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ACNvdLqG8oe6aHlTppLqEb8eALOonbusQ8z?=
 =?us-ascii?q?AX/mp2TgFYddHdqtunm+4V2QSxpDEaXnwhnt7oAtjjfVr385lp7Y4NeYqzRQ?=
 =?us-ascii?q?WOghrKEKhOz6vHhwfhFSr36/JH2c5bGJRWJdXsATFB7PrSzxK/F78br+Wv1I?=
 =?us-ascii?q?CNqaPgw2x2TQdsApsN0y5cBhyAGkN7AClqbKBVKLOm6sBKpyWtdB0sB6yGL0?=
 =?us-ascii?q?IIQvTZoJnznI/mCCR2YiIP0hWEjj+j9dfBcySw4xF2aV1y6IZn3Erkt0jC5q?=
 =?us-ascii?q?ulv+rT8G6560bjq7Bt3Pv7ysEGIMCQguUcNz2EsGyVWLg=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AsAAAOdpJg/0LhJQpaHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAmBOggBCwGBIoF/DoEzC4xdiVIDhWmES4UBi0sUgWMFCwEBAQEBAQE?=
 =?us-ascii?q?BAQgBHQEKDAQBAYRQAoF9JjQJDgIEAQEMAQEGAQEBAQEGBAGBA4VQDYI4BQI?=
 =?us-ascii?q?DHwEGg1wBAQEEAQshISsQAgEIDQQEAQEWCwEGByEHCQEUCQgCBA4FCBUEgkw?=
 =?us-ascii?q?FgX5XAz6nMTV4gTQaAmWDSAGBGIJKDYIngToBgWSFEw2BFYVGgg1BgRWDIj6?=
 =?us-ascii?q?CHkIEAYEWCAoBEgFNCggBhTkEgW8TARCBLxQHIwEgMEABCAIEARQpChpkkSu?=
 =?us-ascii?q?LAp4aWwcDgxCJeYwMgWeFOCEQg1SBQYlMhgQDiyKFGaEwgx2PLQwGN4ROAgQ?=
 =?us-ascii?q?CBAUCFoFBE0dccHCDOQkJPhcCjjgXiGKBXYNscwIBNQIGCgEBAwmKSy0rXIE?=
 =?us-ascii?q?QAQE?=
X-IPAS-Result: =?us-ascii?q?A2AsAAAOdpJg/0LhJQpaHQEBAQEJARIBBQUBQAmBOggBC?=
 =?us-ascii?q?wGBIoF/DoEzC4xdiVIDhWmES4UBi0sUgWMFCwEBAQEBAQEBAQgBHQEKDAQBA?=
 =?us-ascii?q?YRQAoF9JjQJDgIEAQEMAQEGAQEBAQEGBAGBA4VQDYI4BQIDHwEGg1wBAQEEA?=
 =?us-ascii?q?QshISsQAgEIDQQEAQEWCwEGByEHCQEUCQgCBA4FCBUEgkwFgX5XAz6nMTV4g?=
 =?us-ascii?q?TQaAmWDSAGBGIJKDYIngToBgWSFEw2BFYVGgg1BgRWDIj6CHkIEAYEWCAoBE?=
 =?us-ascii?q?gFNCggBhTkEgW8TARCBLxQHIwEgMEABCAIEARQpChpkkSuLAp4aWwcDgxCJe?=
 =?us-ascii?q?YwMgWeFOCEQg1SBQYlMhgQDiyKFGaEwgx2PLQwGN4ROAgQCBAUCFoFBE0dcc?=
 =?us-ascii?q?HCDOQkJPhcCjjgXiGKBXYNscwIBNQIGCgEBAwmKSy0rXIEQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,274,1613433600"; 
   d="scan'208,217";a="372221865"
IronPort-SDR: w5kAuVaZUPn3SLMycEX4FTZ9vut42G7ZuDJ4hUACOgxgkCSRlrQpr4AmPQA22jmKJu1ENxXh9I
 Rkv2GK1Pt5ug==
X-IronPort-AV: E=Sophos;i="5.82,274,1613433600"; 
   d="scan'208,217";a="2544966"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations
Thread-Topic: [yocto] #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfgBmHxLAAAnAAIAABZoy0AAAB8oAAAZCwlD///d6AP//jZpw
Date: Wed, 5 May 2021 10:44:07 +0000
In-Reply-To: <CAMKF1srLU5nicXKZOT1tD0RUQ82fQ-iCnhpp7pEMppxpr=0RdA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.167C25C9526934D9.5822@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9be8037056a84d0b866620212066d8b3baesystemscom_"

--_000_9be8037056a84d0b866620212066d8b3baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Khem:

I only have the following libraries present for these:

libclang.so
libclang.so.9
libdrm_intel.so
libdrm_intel.so.1
libdrm_intel.so.1.0.0
libdrm.so
libdrm.so.2
libdrm.so.2.4.0

I do generate the static (*.a) files for both LLVM & Clang and they appear=
 to all be present (No libclang.a was generated).

Steve

From: Khem Raj <raj.khem@gmail.com>
Sent: Tuesday, May 4, 2021 7:46 PM
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


the cmd seems to pass --sysroot correctly so can you search in SDK sysroot=
 if you have libclang.a libdrm_intel.a and libdrm.a ?

On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via lists.yoctoproje=
ct.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@list=
s.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:
Yes, LLVM & Clang...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 5:17 PM
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





--_000_9be8037056a84d0b866620212066d8b3baesystemscom_
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
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">Khem:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">I only have the following libraries =
present for these:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libclang.so&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libclang.so.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm_intel.so<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1.0.0
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm.so
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm.so.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">libdrm.so.2.4.0&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">I do generate the static (*.a) files=
 for both LLVM &amp; Clang and they appear to all be present (No libclang.a=
 was generated).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj &lt;raj.khem@gmail.c=
om&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 7:46 PM<br>
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
<td width=3D"686" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
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
>the cmd seems to pass --sysroot correctly so can you search in SDK sysroot=
 if you have libclang.a&nbsp;</span><span style=3D"font-family:&quot;Arial&=
quot;,sans-serif;color:#1F497D">libdrm_intel.a and libdrm.a ?</span><span s=
tyle=3D"font-family:&quot;Courier New&quot;"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (U=
S) via <a href=3D"http://lists.yoctoproject.org">
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
ans-serif;color:#1F497D">Yes, LLVM &amp; Clang&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot=
;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gma=
il.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
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
<td width=3D"677" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
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
alt:auto"><span style=3D"font-family:&quot;Courier New&quot;">I see its usi=
ng&nbsp;</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier Ne=
w&quot;;color:black">-rdynamic -static</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">so next question is that do you have .a files in your sdk ?=
</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via
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
<td width=3D"668" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
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
<td width=3D"660" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
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
pt">&nbsp;<o:p></o:p></p>
</blockquote>
</div>
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

--_000_9be8037056a84d0b866620212066d8b3baesystemscom_--
