Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.6391.1620213964653909431
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 04:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=XcBCGUlq;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1620213964; x=1777893964;
  h=from:to:cc:subject:date:in-reply-to:mime-version;
  bh=+5O+cy6jcfTH0YxHTSopny0FUHm0s947wQe7lLirZs0=;
  b=XcBCGUlqLuiNfqtkVU/F6kLVZtnz+nNz4jpJ8gxC/RLyMPFoVq7iMcXC
   zTdK1CgcAkimK7dPykZUFsl+HB4AuLbS4zk7uBPhVHUwoNO8jZWEWcTJH
   HOUFwBLoal0l6BEh6tXy+hEhQic9EPs9kZb0GgIV9RjjmSIVkHAOjvioY
   w=;
IronPort-SDR: TyYVZ5R9uwsMepVbpTfhBYgqiA1lgke3c3vprjRql1XJlH4rYSaFGVIFHUKyqFLCsPwUZA02lE
 HjzqRZYt5TDw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AtlcYqBScLh8P9xLOeWJNN9CIs9psorWYAWYlg?=
 =?us-ascii?q?qEPu/d1aq2muq7aFwnh351FslbFUM3h5u5ejKKO6ua8AD1Gu83e+yFbOLV3F?=
 =?us-ascii?q?DY9wf0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQ?=
 =?us-ascii?q?ka3OgV6PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjVu8UMn4dvJKQ8x?=
 =?us-ascii?q?hTNr3dVZu9b2X5mKVWPkhjm+8y+5oRj8yNeu/Ig885PT6D3dLkmQLJbETorL?=
 =?us-ascii?q?Xk76NXkuhffQwSP4GAcUngNnRpTHwfF9hD6UYzvvSb8q+FwxTOVPczyTbAzR?=
 =?us-ascii?q?DSi86JmQwLmhSsbKzI09nzch9duh6xHvh2uux1/w5bVYI6LMvp+Yrjdds4eS?=
 =?us-ascii?q?WZYQ8pdSzBNDoa6YoASDeQOIPxYopH9qVUQsBW+GQeiCuDhyjBKh3/5waI13?=
 =?us-ascii?q?v87Hg3a3gwtBc4CvGjKoNjzKawcUfq1zK7NzTjbYf9Y3jD96I7Tch8/v/6MR?=
 =?us-ascii?q?qp8etfMx0kzCQzFkEufqYr4ND6Ly+8Bt2aU4fdlWe6hlmUqrBpxoiSxyccyl?=
 =?us-ascii?q?IbJgJgZylXD9SV/24Y6O8O3SFVgbNG/CpRfqTqaNottQsM+XW5ovT06xqcat?=
 =?us-ascii?q?p68eSgH0ZIqzAPQZPKbaYaH+A7jVPqPLjdignJoYLyyiwu9/EWuyuPyVsa53?=
 =?us-ascii?q?llUoidGjtTBsm0A2h3N5sSZRPVz8Uev1SqB2Q3T6uxIP0A5m6TVJZI9zLA+m?=
 =?us-ascii?q?IYfvETFEyTrlkv2i6qWeV8l+uiu8+nmYrLmqYOAN49zkgH+KKMums6hDuskL?=
 =?us-ascii?q?ggCRW+b+f6z1LDl4Eb3Q61Kg+UrnqXFqpzXK8YWqrSnDwNL0osv8ReyAja+3?=
 =?us-ascii?q?NgFgXULNl1IdR2dg4XmIV3CPfD1APGiiFq2ijhr3erJPrj5D5XIKXjMjanuc?=
 =?us-ascii?q?K5m605Z1Aoz1ddf549ICr0ZIPL8REvxtNvAAxAlKQO02ProCNBm1o4aXW+CA?=
 =?us-ascii?q?bOVPL3IvV+O/O0jOfKDa5ULtzbmK/kl/OLugmE8mV8GZ6WmwZwXaHWgEvRnJ?=
 =?us-ascii?q?UWWf2bsj88cHWsWpAYzQu7nhEecXTJNZ3u+RaMx6zAjBIKjF4jDR4StgLKb3?=
 =?us-ascii?q?Ce8G51bfntGCkySHnf2aYqEXe0AaCeVIs9niTwLS6auS5Q62B61rgD11aFnL?=
 =?us-ascii?q?+rP+i0Eq53j0cN16/fPmhE18Dx4F96d3H2VT2FogmMIQCc73aB4oUNh1leD1?=
 =?us-ascii?q?rN1g/hZFdxI+/NJSR02NJ7bz+NmF9DyXRrBfs2OSFakXNqpHS0xQsg2w98Ub?=
 =?us-ascii?q?EYuU+ml21rm2CyxDrIO0/SwGJEq/6SU9DCxGv08gT6Sz7UskVQgBM5IM3ari?=
 =?us-ascii?q?7VX/QHeHJ/Sj0icjOChcqFKmGbu9GqGhVCHvgkMSgdyF6bFUHU3aU7frNC/7?=
 =?us-ascii?q?UTHGeyAE7MiZ0FkzsiZJ6ZRLpXSkVhYSfGrE5yeXlnw0S/kHgqF2L6KKo/tf?=
 =?us-ascii?q?X4Q0T71AkEJiBEI4XuDLk41ASL38DGWNyBnCV+6OxCkyuJ5sn7uCxZsl2m3?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AwnpKB63i09vJ3ns7LWhWggqjBfByeYIsi2?=
 =?us-ascii?q?QD101hICF9WMqeisyogbAnxQb54QxhOk0ItPKhHO27QX3a/YNo+oV5B92fdS?=
 =?us-ascii?q?TvpWfAFuxfxKT4xTmIIUHD38tcz7olT69lFNbrB0N7hsqS2njfL/8F4P2qtJ?=
 =?us-ascii?q?+lnv3fyXAFd3AIV4hF4x1iAgiWVm1aLTMmObMDGJCR5tVKqlObEBwqR/+2H3?=
 =?us-ascii?q?wUG9XEzuelqLvdfRUECxQ7gTPvsRqU7tfBfSSw71M0UzRDwbAtmFK19jDR1+?=
 =?us-ascii?q?GGid6R73bnvFP73tBzouvajvN7JKW3+7AoAwSprg6pYYt7XbnqhkFTnMifrH?=
 =?us-ascii?q?Iji9vBvhEBEq1ImhfsV1DwhRnx8xLr0TYw5xbZuCalqEqmhc7lYDo7Dudipa?=
 =?us-ascii?q?YxSGqj13Yd?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BFAABwf5Jg/0LhJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE8BQEBCwGBIoF/DoEaGQuWLgOFaYRLkEwUgWMFCwEBAQE?=
 =?us-ascii?q?BAQEBAQgBHQEGEAQBAYRQAoF9JjYHDgIEAQEMAQEGAQEBAQEGBAGBA4VQDYI?=
 =?us-ascii?q?4KQGDYgEBAQQBCyFMEAIBCA0EBAEBFgsBBgchBwoUCQgCBAENBQiCZQWBflc?=
 =?us-ascii?q?Dp3s1eIE0GgJlhGGCSw2CJwkBgTABgWSFIIEVgU6DeIINQYEVgyI+gh5CBAG?=
 =?us-ascii?q?BFggKARIBVwgBhTkEgW8TAYE/FCohMEEKBAEUKSaSDYsCnhpbBwODEIl5jAy?=
 =?us-ascii?q?BZ4U4IRCDVIFBiUyGBAOLIoUZlTCPHY8tDAY3hE4CBAIEBQIWgUEZAUBccHC?=
 =?us-ascii?q?DOQlHFwKOOBeIYoFdg2xzAgE1AgYKAQEDCYpLLYEHgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2BFAABwf5Jg/0LhJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE8BQEBCwGBIoF/DoEaGQuWLgOFaYRLkEwUgWMFCwEBAQEBAQEBAQgBHQEGE?=
 =?us-ascii?q?AQBAYRQAoF9JjYHDgIEAQEMAQEGAQEBAQEGBAGBA4VQDYI4KQGDYgEBAQQBC?=
 =?us-ascii?q?yFMEAIBCA0EBAEBFgsBBgchBwoUCQgCBAENBQiCZQWBflcDp3s1eIE0GgJlh?=
 =?us-ascii?q?GGCSw2CJwkBgTABgWSFIIEVgU6DeIINQYEVgyI+gh5CBAGBFggKARIBVwgBh?=
 =?us-ascii?q?TkEgW8TAYE/FCohMEEKBAEUKSaSDYsCnhpbBwODEIl5jAyBZ4U4IRCDVIFBi?=
 =?us-ascii?q?UyGBAOLIoUZlTCPHY8tDAY3hE4CBAIEBQIWgUEZAUBccHCDOQlHFwKOOBeIY?=
 =?us-ascii?q?oFdg2xzAgE1AgYKAQEDCYpLLYEHgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.82,274,1613433600"; 
   d="scan'208,217";a="372227845"
IronPort-SDR: v9650GvqpENGu2uLuGFbLL0ORCQueLwmdNVGbCH2QjNADCUWMfXIknXDz826CtHVHYeq4ArnvM
 +vseDNvoQC4A==
X-IronPort-AV: E=Sophos;i="5.82,274,1613433600"; 
   d="scan'208,217";a="2547263"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, Khem Raj
	<raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations
Thread-Topic: [yocto] #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfgBmHxLAAAnAAIAABZoy0AAAB8oAAAZCwlD///d6AP//jZpw//8ORsA=
Date: Wed, 5 May 2021 11:25:01 +0000
In-Reply-To: <MADEUP.167C25C9526934D9.5822@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167C2804CD3E2703.3471@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2f1f75947ea04d10ada871fb84cf6dacbaesystemscom_"

--_000_2f1f75947ea04d10ada871fb84cf6dacbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


All the libraries are under the SDK here:

-L/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib

I need the DRM libraries to be picked up correctly, libclang.so may not be =
required since I have all the static variations available, (added to while =
testing linker) I have yet to make it through entire build due to linker is=
sue...

Steve

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Wednesday, May 5, 2021 6:44 AM
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.



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

I do generate the static (*.a) files for both LLVM & Clang and they appear =
to all be present (No libclang.a was generated).

Steve

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 7:46 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


the cmd seems to pass --sysroot correctly so can you search in SDK sysroot =
if you have libclang.a libdrm_intel.a and libdrm.a ?

On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via lists.yoctoprojec=
t.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@lists=
.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:
Yes, LLVM & Clang...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 5:17 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


I see its using -rdynamic -static
so next question is that do you have .a files in your sdk ?

On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via lists.yoctoproje=
ct.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@list=
s.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

Attached...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 2:36 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


can you post full linker cmd which is failing ?

On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via lists.yoctoproje=
ct.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@list=
s.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

My standard zeus SDK appears to have an issue linking in my applications dy=
namic libs...

/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -ldrm_intel
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -ldrm
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -lclang
collect2: error: ld returned 1 exit status
The libraries are under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sy=
sroots/corei7-64-poky-linux/usr/lib/

My CMake build app does not appear to have an issue finding the files:

DRM_INTEL_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.=
4/sysroots/corei7-64-poky-linux/usr/lib/libdrm_intel.so
DRM_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysr=
oots/corei7-64-poky-linux/usr/lib/libdrm.so

It appears to be an issue specifically with the ld...

LDFLAGS=3D " --sysroot=3D$ENV{OECORE_TARGET_SYSROOT} -L$ENV{OECORE_TARGET_S=
YSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib/x86_64-poky-linux/9.2=
.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed"

It does not appear to be making use of -L's...

Is there something I might look at/configure (i.e. add paths to search path=
s) ?
Is there a simple test to validate tool ?

Thanks,
Steve

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Monsees, Steven C (US) via lists.yoctoproject.org<http://lists.yoctoproj=
ect.org>
Sent: Sunday, May 2, 2021 1:28 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.



I am using zeus, standard SDK, cmake...

Can I pre-configure the SDK to setup cmake package search paths ?, say for =
find_package, etc. (i.e. detecting external libraries/programs)...

The majority of my env is configuring properly, but I am finding cmake is s=
etup for a standard linux env with regards to these types of searches, and
I wanted the cmake built in to look at my SDK paths (first by default) when=
 doing such things as detecting python interpreter, libraries, etc.

I am working on third party package unaware of my SDK setup.

Thanks,
Steve




--_000_2f1f75947ea04d10ada871fb84cf6dacbaesystemscom_
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">All the libraries are under the SDK h=
ere:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">-L/disk0/scratch/smonsees/sbcbSTD_SDK=
/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I need the DRM libraries to be picked=
 up correctly, libclang.so may not be required since I have all the static =
variations available, (added to while testing
 linker) I have yet to make it through entire build due to linker issue&#82=
30;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto@lists.yoctoproject.org &=
lt;yocto@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Wednesday, May 5, 2021 6:44 AM<br>
<b>To:</b> Khem Raj &lt;raj.khem@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<o:p></o:p></span></=
p>
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
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:1150.4pt;border:solid red 1=
.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.<o:p></o:p></span></s=
trong></p>
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Khem:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I only have the following libraries p=
resent for these:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libclang.so&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libclang.so.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1.0.0
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so.2.4.0&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I do generate the static (*.a) files =
for both LLVM &amp; Clang and they appear to all be present (No libclang.a =
was generated).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 7:46 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
the cmd seems to pass --sysroot correctly so can you search in SDK sysroot =
if you have libclang.a&nbsp;</span><span style=3D"font-family:&quot;Arial&q=
uot;,sans-serif;color:#1F497D">libdrm_intel.a and libdrm.a ?</span><span st=
yle=3D"font-family:&quot;Courier New&quot;"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US=
) via <a href=3D"http://lists.yoctoproject.org">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystem=
s.com@lists.yoctoproject.org">baesystems.com@lists.yoctoproject.org</a>&gt;=
 wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">Yes, LLVM &amp; Clang&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"677" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Courier New&quot;">I see its usin=
g&nbsp;</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black">-rdynamic -static</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">so next question is that do you have .a files in your sdk ?<=
/span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">Attached&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"668" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Courier New&quot;">can you post f=
ull linker cmd which is failing ?</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">My standard zeus SDK appears to have=
 an issue linking in my applications dynamic libs&#8230;</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm_intel</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -lclang</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">collect2: error: ld returned 1 exit =
status</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">The libraries are under: /disk0/scra=
tch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib/=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">My CMake build app does not appear t=
o have an issue finding the files:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">DRM_INTEL_LIBRARIES:STRING=3D/disk0/=
scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/=
lib/libdrm_intel.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">DRM_LIBRARIES:STRING=3D/disk0/scratc=
h/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib/li=
bdrm.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">It appears to be an issue specifical=
ly with the ld&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">LDFLAGS=3D</span>
<span style=3D"color:#1F497D">&quot; --sysroot=3D$ENV{OECORE_TARGET_SYSROOT=
} -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/l=
ib/x86_64-poky-linux/9.2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl=
,--hash-style=3Dgnu -Wl,--as-needed&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">It does not appear to be making use =
of &#8211;L&#8217;s&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Is there something I might look at/c=
onfigure (i.e. add paths to search paths) ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Is there a simple test to validate t=
ool ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Steve</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoct=
oproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><o:p></o:p></=
p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"660" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:black">This email has been sent from an account outside of th=
e BAE Systems network.</span></strong><o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am using zeus, standard SDK, cmake&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Can I pre-configure the SDK to setup cmake package search paths ?,=
 say for find_package, etc. (i.e. detecting external libraries/programs)&#8=
230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The majority of my env is configuring properly, but I am finding c=
make is setup for a standard linux env with regards to these types of searc=
hes, and<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I wanted the cmake built in to look at my SDK paths (first by defa=
ult) when doing such things as detecting python interpreter, libraries, etc=
.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am working on third party package unaware of my SDK setup.<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Steve<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&nbsp;<o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_2f1f75947ea04d10ada871fb84cf6dacbaesystemscom_--
