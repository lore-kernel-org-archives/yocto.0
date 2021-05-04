Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.11360.1620158228984558826
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 12:57:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=CQwptmmI;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1620158229; x=1777838229;
  h=from:to:cc:subject:date:in-reply-to:mime-version;
  bh=nSN4DdkhneQWyFfI79RIgftaN2F1qU86mEXrmILHmRk=;
  b=CQwptmmIj0NFdg6CAION0z9oc81cHOYDbsf298bpSeSksVKbMrvUmldo
   d/7EDVPPr0X8DRoGzJwd8lXw5o77LQl9dflSbnoLIpmG1wVLs8v1DiFzR
   bggwHLhIVORQAaF7C3joXXZBDubtLeWmjuluQiX2AlAt73gOw9GhzF5KL
   4=;
IronPort-SDR: d5rq4PCSBv+WIkKcLSkJrCm5pNn/McboJINMEI+Kkr1kGMX1MMX2Vd1pAOTQo4+zcYpDMDpf5L
 wzJSUoZHN0RQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ACMuDnBeC9Bgf2uibHwSGCHcSlGM+AdnLVj590?=
 =?us-ascii?q?bIXzolWe6HmxazJeXLljd1ThVPEFb/W9+hDw7KP9fy5CCpausjK6SlZOLV3F?=
 =?us-ascii?q?DY9wf0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQ?=
 =?us-ascii?q?ka3OgV6PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjVu8UMn4dvJKc8x?=
 =?us-ascii?q?hTUrndVdeld2H9lK0+Ukxvg/Mm74YRt8z5Xu/Iv9s5AVbv1cqElRrFGDzooL?=
 =?us-ascii?q?n446tTzuRbMUQWA6H0cUn4LkhVTGAjK8Av6XpbqvSTksOd2xTSXMtf3TbAwX?=
 =?us-ascii?q?jSi8rtrRRr1gyoJKzI17GfagdFrgalFvByuuQBww4/MYIGUKvV+eL/dfcgHT?=
 =?us-ascii?q?mZFR8pdSjBNDp+5Y4YJEuEPP/tXr5PlqlUOsxWwGBWsCu3sxD9GhHD23LE13?=
 =?us-ascii?q?Os6HAHDwAAgHcgDvGjIoNnrMqoZTOC7zLPPzTXGd/5a1zDz6I/OchA6v/6DQ?=
 =?us-ascii?q?6lwfdLMwkcyCwPKkEuQppLjPziIyOkGrmyX4OR9W+6qhWIstgZ8oiOzxsgyl?=
 =?us-ascii?q?InGmIQVxkrB9SV+xoY1PsO3R1BgYdO/C5RfrT+VN5B2Q8M5X2FnpiM6yqYct?=
 =?us-ascii?q?ZGneygKzY0qyhjCYPOIb4aG+AjsVPqNIThmnnJlfqqyigq9/0avyeDyWc253?=
 =?us-ascii?q?lhKoCZbjNXAq38A2hjc58WaVPZx4Eas1DSP2g3T9uxJIU85mKTZJpMv3rM9i?=
 =?us-ascii?q?54evFrdEyLwhU74gqiWdkA+9eip7eTqerXnppiAOI9ojQH+Kr4umsu9AesmL?=
 =?us-ascii?q?gcOQ3KX+eOm1L3s+0DyXbZEjuUun6XErJzWP8oWq6yjDwNLzIou6wyzAjan3?=
 =?us-ascii?q?dgAgHULMEhJdR2IgoTzNFzCOu30APe5jl+xijlk3erGMafkApjVK3jDl6ruc?=
 =?us-ascii?q?qhl5k5HzQoz0chf55VJCrEdOP7zWlH+tNjfDhIhLwO72f3nB8l41oMFXW+CB?=
 =?us-ascii?q?qyUPL/MvVOS4OIgOfOAa5QPtznjMPgk5+XujWMnll8YZqmlx4cYaHe9Hvh+I?=
 =?us-ascii?q?kWZZ2TjgssZHGsXogYyVuLnhV+YXTJNeXq/X7gw6zA6BY6+CIfMXIGtgLiP3?=
 =?us-ascii?q?CehGZ1WY3hLCkuQEXj2aYWLRfEMZDiXIs9mlDwETqauRJE61Ry1rwD10aRoL?=
 =?us-ascii?q?vHU+y0DqZLsyt115/bJmR4u8jx0CtyR03uRQGFsgmMIWzg20bh/oEx61liDz?=
 =?us-ascii?q?a94judcFdxS/PNJThw6OYTczux9F9/yRgXBfs+TSFahQNWpHy0+Ts4rz98Je?=
 =?us-ascii?q?UZ9FIbqsxbYwiD/A6MJj6fZQ9sw87nAxD7gIM1hzG7c06sshEVgRdFAcmLhl?=
 =?us-ascii?q?6l06w+UGojSjk/KqqCxaK48wCvJoWef0XKV7gYfVA9rTb6DTHcUekzOt9P76?=
 =?us-ascii?q?0jeCbi0BvModRpGwtKFbbZMccDj3mhAX+rpBNnOfzexh3uoHkTPgbeNd5bxP?=
 =?us-ascii?q?XQa1znaEFIDkQ0Y4TCBLwd5CWCwpGnCC3tzE0nyaRDQ9rxdqH6+BnU9zUned?=
 =?us-ascii?q?URjkbm19xs9ivmVSvdV1bUB7nQPsTJxSRyY2NTNBteb40JaYKhCbNV1yx8H6?=
 =?us-ascii?q?FmY/UQpJYCtMa1kwFsZdR96sljG3Rx6EZRbjcUvtzUhyw8kevHQ609Iaz7Nh?=
 =?us-ascii?q?cO4AbbQMGSnuUn3M8br?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Akb/eDaHDx6dYXciTpLqFQZTXdLJzesId70?=
 =?us-ascii?q?hD6mlYcjYQWtCElsyogfQQ3QL1jjFUY307hdWcIsC7IE/03aVepa0cJ62rUg?=
 =?us-ascii?q?WjgmunK4l+8ZDvqgePJwTXzcQY76tpdsFFZ+HYJVJxgd/mpCyxFNg9yNeKmZ?=
 =?us-ascii?q?rY+Nv25V0Fd3AOV4hL6QBlBgGHVmh/QwdbDZQ0faDsmvZvjTymZHgRc4CHFm?=
 =?us-ascii?q?AINtKz6+HjubDHRVo9BxAh4BSTlj/A0tWbLzG01goTOgk/uIsK3nPCl2XCl8?=
 =?us-ascii?q?aemtG9jiTRzmrCq6lR8eGRsOdrIOyppowrJi73igCuDb4RFIGqmDwuuumg5B?=
 =?us-ascii?q?ILvbD30m8dFv9+4X/QYW25yCGFs2Td+Q0j5HP4xViTjWGLm72DeBsAB9dcno?=
 =?us-ascii?q?UcSxPF6iMbzZZB+ZhW1GGUvYc/N2KloA3B5sPFXxwvtk24rWtKq590s1VjUJ?=
 =?us-ascii?q?ATYLIUkIoH/Ek9KuZmIAvG7ukcYYtTJfCZzOpacU67Qhni1FVH8ZiGRXQ8Hw?=
 =?us-ascii?q?qDSkgG/vGP2zJVkGsR9TpA+OUv2l0a8ogmcoJJ4+TfPr5ImLlCQtQNQqJ5Ge?=
 =?us-ascii?q?sbTcadGlbARh/nNmWULV77ErpvAR7wgq+yxI9wyPCheZQOwpd3so/GSklkuW?=
 =?us-ascii?q?k7fF+rIdGS3bVQmyq9DlmVbHDI8IVz9pJ5srrzSP7AKiuYUm0jlMOmvrE2Ht?=
 =?us-ascii?q?DbYfCuI5hbasWTbFfGKMJs5UnTSpNSIX4RXIk+odAgQW+DpcrNN8nMuvHEdu?=
 =?us-ascii?q?3QYJ7gCywtVG+6InZrZkmyGOxwqmSQHlPoihnYXH3gPmbl+4hrLaTc9+8PjI?=
 =?us-ascii?q?cXMIlBtRUUlES56smHJSYqiN11QGJOZJfc1o+rr2i/+mjFq09zPABGM0pT6L?=
 =?us-ascii?q?L8F3NGzDV6dn/cQPImgZGyaGpS1HyIKltUVMXNCjNSoFxx5OawNJyfxScrDt?=
 =?us-ascii?q?q9KWKEh34PpHaHJq1s2ZGr1IPAQNcVH5wmUKt+GUH3DBRzgx9ts3oGQhQDXF?=
 =?us-ascii?q?XjGjTnjriFgJQYCPrETcR1hB6mLKdv2DbinHTZgftqZ3MAGxayTMacgG8VNk?=
 =?us-ascii?q?Vpr2w015VavZ2ttnKEL3AljOExLVtWAV7nfo5uPUCif4tdnbD5cBxxS2CqiT?=
 =?us-ascii?q?SWhwooQ3Hn7UkImWDtRBfkP83jCkZBu3xez6bh+E51cGLYZE5rdnVmq+RGZB?=
 =?us-ascii?q?X7k2c23umRaqWp1WyNLlME3+EGKTnAJSAfOwV02rmMpVSosSfHEXUt3ZM1OO?=
 =?us-ascii?q?PBSLwlbrHIw3uoQbf43Z0uDrtR/Jx/MsrpvfJOWeWDexWNJDe9D+8ywQSaqj?=
 =?us-ascii?q?IkPyZzwUNU2s/AyVng7GKi2mQ4DueXKFN6R6sDK9XZ9nP6XZ+zoeJEpMNwuf?=
 =?us-ascii?q?H1PnT6a9aAx62SZzlfKgnLqWrzS+0zs5hbsa87qbMbJeiXbRLYkHVcmBkuJs?=
 =?us-ascii?q?b9k00TBL52573MIYdjdc0fcSAxxCthqP2faE8w9gDmCO43el8gy2LBN9SS+r?=
 =?us-ascii?q?zStP4hBFaCqAaYAyjqzwRNu/PeGy2N2r4RB/hufSBYaE0g5G9j++3HfYvKEw?=
 =?us-ascii?q?muf/xC+l3/MnLVSs4udIGVXbEL6hB96JWUmuXScSzy0gXZpyF6LaJD6HzPe7?=
 =?us-ascii?q?LFPCucXepTt8WnMlGNiLaw6MG9jD3rWSK2An5o9rFtZAgVdIBfkTEsg408zz?=
 =?us-ascii?q?iqRqH2qkwjlUFC4TsPrC+Z5qG2pGHBHU9HNgXFgpJZGTlLW0L4/fj4zQ=3D?=
 =?us-ascii?q?=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AwAADcpZFg/0LhJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE7BgEBCwGBIlmBJg6BMwuWLgOFaYRLhQGLSxSBaAsBAQE?=
 =?us-ascii?q?BAQEBAQEIAR0BCgwEAQGEUAKBfCY1CA4CBAEBDAEBBgEBAQEBBgQBgQOFUA2?=
 =?us-ascii?q?COAUCAx8BBoNcAQEBBAELISErEAIBCA0EBAEBFgsHBwIfBwkBFAkIAQEEDgU?=
 =?us-ascii?q?IBg8EgkwFglUDPqg2NXiBNBoCZYNIAYEYgkkNghcQCQGBMAGBZIQPgQQNgRW?=
 =?us-ascii?q?FRoINQYQ3PoIeQgQBgRYICgESATgVCggBhTkEgW8TARCBLxQHIwEFEgkwQAE?=
 =?us-ascii?q?IAgQVGwEXGmSRCyCLAoFpnDFbBwODEIUOgneBdIwMgWeFOCEQg1SBQYlMhgQ?=
 =?us-ascii?q?DiyKFGaEwgx2PLQwGN4ROAgQCBAUCFoFBFQFEXHBwgzkJRxcCjjgXgQIBAYd?=
 =?us-ascii?q?egV2DbHMCATUCBgoBAQMJikstK1yBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2AwAADcpZFg/0LhJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE7BgEBCwGBIlmBJg6BMwuWLgOFaYRLhQGLSxSBaAsBAQEBAQEBAQEIAR0BC?=
 =?us-ascii?q?gwEAQGEUAKBfCY1CA4CBAEBDAEBBgEBAQEBBgQBgQOFUA2COAUCAx8BBoNcA?=
 =?us-ascii?q?QEBBAELISErEAIBCA0EBAEBFgsHBwIfBwkBFAkIAQEEDgUIBg8EgkwFglUDP?=
 =?us-ascii?q?qg2NXiBNBoCZYNIAYEYgkkNghcQCQGBMAGBZIQPgQQNgRWFRoINQYQ3PoIeQ?=
 =?us-ascii?q?gQBgRYICgESATgVCggBhTkEgW8TARCBLxQHIwEFEgkwQAEIAgQVGwEXGmSRC?=
 =?us-ascii?q?yCLAoFpnDFbBwODEIUOgneBdIwMgWeFOCEQg1SBQYlMhgQDiyKFGaEwgx2PL?=
 =?us-ascii?q?QwGN4ROAgQCBAUCFoFBFQFEXHBwgzkJRxcCjjgXgQIBAYdegV2DbHMCATUCB?=
 =?us-ascii?q?goBAQMJikstK1yBEAEB?=
X-IronPort-AV: E=Sophos;i="5.82,272,1613433600"; 
   d="txt'?scan'208,217";a="372090431"
IronPort-SDR: R7jFnqByGMbBZk6EfxmihRlPxSlqx+2aB2cmKio801uECd6DAfsHl8xMiBGeLZ/PCIOuE0wjXD
 qdDU36XAPEHA==
X-IronPort-AV: E=Sophos;i="5.82,272,1613433600"; 
   d="txt'?scan'208,217";a="2512353"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations
Thread-Topic: [yocto] #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfgBmHxLAAAnAAIAABZoy0A==
Date: Tue, 4 May 2021 19:56:04 +0000
In-Reply-To: <CAMKF1so2jpYNBenCT60FBFV4ofy=oJotbkDuC8Ocnt6kCG6x+A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167BF553E042ED1A.3648@lists.yoctoproject.org>
X-Groupsio-MsgNum: 53369
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_"

--_004_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_
Content-Type: multipart/alternative;
	boundary="_000_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_"

--_000_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Attached...

From: Khem Raj <raj.khem@gmail.com>
Sent: Tuesday, May 4, 2021 2:36 PM
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



--_000_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_
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
alibri&quot;,sans-serif;color:#1F497D">Attached&#8230;<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj &lt;raj.khem@gmail.c=
om&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
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
>can you post full linker cmd which is failing ?<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (=
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
<td width=3D"677" valign=3D"top" style=3D"width:15.0in;border:solid red 1.=
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
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_--

--_004_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_
Content-Type: text/plain; name="link.txt"
Content-Description: link.txt
Content-Disposition: attachment; filename="link.txt"; size=7009;
	creation-date="Tue, 04 May 2021 19:55:50 GMT";
	modification-date="Tue, 04 May 2021 19:54:18 GMT"
Content-Transfer-Encoding: base64

L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9TREsvbGltd3MvMy4wLjQvc3lzcm9vdHMv
eDg2XzY0LXBva3lzZGstbGludXgvdXNyL2Jpbi94ODZfNjQtcG9reS1saW51eC94ODZfNjQtcG9r
eS1saW51eC1nKysgIC0tc3lzcm9vdD0vZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy9zYmNiU1REX1NE
Sy9saW13cy8zLjAuNC9zeXNyb290cy9jb3JlaTctNjQtcG9reS1saW51eCAtTzIgLXBpcGUgLWcg
LWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzICAgLWZ1bnJvbGwtbG9vcHMgLWZzdHJpY3Qt
YWxpYXNpbmcgLW1zc2UyIC1tc3NlMyAtbXNzc2UzIC1tc3NlNC4xIC1mUElDIC1XYWxsIC1tZnBt
YXRoPXNzZSAtV2Nhc3QtYWxpZ24gIC1zdGQ9YysrMHggLVduby1pbnZhbGlkLW9mZnNldG9mIC1m
bm8tcnR0aSAtSS9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3NiY2JTVERfU0RLL2xpbXdzLzMuMC40
L3N5c3Jvb3RzL2NvcmVpNy02NC1wb2t5LWxpbnV4L3Vzci9pbmNsdWRlIC1EX0dOVV9TT1VSQ0Ug
LURfX1NURENfQ09OU1RBTlRfTUFDUk9TIC1EX19TVERDX0ZPUk1BVF9NQUNST1MgLURfX1NURENf
TElNSVRfTUFDUk9TIC1ER0JFX0RFQlVHX01FTU9SWT0wICAtREdCRV9DT01QSUxFUl9BVkFJTEFC
TEU9MSAtZnZpc2liaWxpdHk9aGlkZGVuIC1PMCAtZyAtREdCRV9ERUJVRz0xICAtLXN5c3Jvb3Q9
L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9TREsvbGltd3MvMy4wLjQvc3lzcm9vdHMv
Y29yZWk3LTY0LXBva3ktbGludXggLUwvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy9zYmNiU1REX1NE
Sy9saW13cy8zLjAuNC9zeXNyb290cy9jb3JlaTctNjQtcG9reS1saW51eC91c3IvbGliIC1ML2Rp
c2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9TREsvbGltd3MvMy4wLjQvc3lzcm9vdHMvY29y
ZWk3LTY0LXBva3ktbGludXgvdXNyL2xpYi94ODZfNjQtcG9reS1saW51eC85LjIuMCAtbHB0aHJl
YWQgLXB0aHJlYWQgLU8yIC1waXBlIC1XbCwtTzEgLVdsLC1PMSAtV2wsLS1oYXNoLXN0eWxlPWdu
dSAtV2wsLS1hcy1uZWVkZWQgLXJkeW5hbWljIC1zdGF0aWMgQ01ha2VGaWxlcy9nYmVfYmluX2dl
bmVyYXRlci5kaXIvZ2JlX2Jpbl9nZW5lcmF0ZXIuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dl
bmVyYXRlci5kaXIvc3lzL2ludHJ1c2l2ZV9saXN0LmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9n
ZW5lcmF0ZXIuZGlyL3N5cy9hc3NlcnQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRl
ci5kaXIvc3lzL2FsbG9jLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL3N5
cy9tdXRleC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9zeXMvcGxhdGZv
cm0uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvc3lzL2N2YXIuY3BwLm8g
Q01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvY29udGV4dC5jcHAubyBDTWFrZUZp
bGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9wcm9maWxlLmNwcC5vIENNYWtlRmlsZXMvZ2Jl
X2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL3R5cGUuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvaXIvdW5pdC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9p
ci9jb25zdGFudC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9zYW1w
bGVyLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL2ltYWdlLmNwcC5v
IENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL2hhbGYuY3BwLm8gQ01ha2VGaWxl
cy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvaW5zdHJ1Y3Rpb24uY3BwLm8gQ01ha2VGaWxlcy9n
YmVfYmluX2dlbmVyYXRlci5kaXIvaXIvbGl2ZW5lc3MuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmlu
X2dlbmVyYXRlci5kaXIvaXIvcmVnaXN0ZXIuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvaXIvZnVuY3Rpb24uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5k
aXIvaXIvdmFsdWUuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvbG93
ZXJpbmcuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvcHJvZmlsaW5n
LmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL3ByaW50Zi5jcHAubyBD
TWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9pbW1lZGlhdGUuY3BwLm8gQ01ha2VG
aWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvc3RydWN0dXJpemVyLmNwcC5vIENNYWtlRmls
ZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL3JlbG9jLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jp
bl9nZW5lcmF0ZXIuZGlyL2JhY2tlbmQvY29udGV4dC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5f
Z2VuZXJhdGVyLmRpci9iYWNrZW5kL3Byb2dyYW0uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dl
bmVyYXRlci5kaXIvbGx2bS9sbHZtX3NhbXBsZXJfZml4LmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jp
bl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9iaXRjb2RlX2xpbmsuY3BwLm8gQ01ha2VGaWxlcy9n
YmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX2dlbl9iYWNrZW5kLmNwcC5vIENNYWtlRmls
ZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9wYXNzZXMuY3BwLm8gQ01ha2VGaWxl
cy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX3NjYWxhcml6ZS5jcHAubyBDTWFrZUZp
bGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9sbHZtL2xsdm1faW50cmluc2ljX2xvd2VyaW5nLmNw
cC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9iYXJyaWVyX25v
ZHVwLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9wcmlu
dGZfcGFyc2VyLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2
bV9wcm9maWxpbmcuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9F
eHBhbmRDb25zdGFudEV4cHIuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIv
bGx2bS9FeHBhbmRVdGlscy5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9s
bHZtL1Byb21vdGVJbnRlZ2Vycy5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRp
ci9sbHZtL0V4cGFuZExhcmdlSW50ZWdlcnMuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvbGx2bS9sbHZtX2RldmljZV9lbnF1ZXVlLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jp
bl9nZW5lcmF0ZXIuZGlyL2xsdm0vU3RyaXBBdHRyaWJ1dGVzLmNwcC5vIENNYWtlRmlsZXMvZ2Jl
X2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV90b19nZW4uY3BwLm8gQ01ha2VGaWxlcy9nYmVf
YmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX2xvYWRzdG9yZV9vcHRpbWl6YXRpb24uY3BwLm8g
Q01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX3Vucm9sbC5jcHAubyBD
TWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbi9nZW5fbWVzYV9kaXNh
c20uYy5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2JhY2tlbmQvZ2VuX2luc25f
c2VsZWN0aW9uLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2JhY2tlbmQv
Z2VuX2luc25fc2VsZWN0aW9uX29wdGltaXplLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5l
cmF0ZXIuZGlyL2JhY2tlbmQvZ2VuX2luc25fc2NoZWR1bGluZy5jcHAubyBDTWFrZUZpbGVzL2di
ZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbl9pbnNuX3NlbGVjdGlvbl9vdXRwdXQuY3Bw
Lm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW5fcmVnX2FsbG9j
YXRpb24uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW5f
Y29udGV4dC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dl
bjc1X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2Vu
ZC9nZW44X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFj
a2VuZC9nZW45X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIv
YmFja2VuZC9nZW5fcHJvZ3JhbS5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRp
ci9iYWNrZW5kL2dlbl9pbnNuX2NvbXBhY3QuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvYmFja2VuZC9nZW5fZW5jb2Rlci5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2Vu
ZXJhdGVyLmRpci9iYWNrZW5kL2dlbjdfZW5jb2Rlci5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5f
Z2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbjc1X2VuY29kZXIuY3BwLm8gQ01ha2VGaWxlcy9nYmVf
YmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW44X2VuY29kZXIuY3BwLm8gQ01ha2VGaWxlcy9n
YmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW45X2VuY29kZXIuY3BwLm8gIC1vIGdiZV9i
aW5fZ2VuZXJhdGVyIC1sZHJtX2ludGVsIC1sZHJtIC1sY2xhbmcgLVdsLC1Cc3RhdGljIC1sY2xh
bmdBbmFseXNpcyAtbGNsYW5nQVJDTWlncmF0ZSAtbGNsYW5nQVNUIC1sY2xhbmdBU1RNYXRjaGVy
cyAtbGNsYW5nQmFzaWMgLWxjbGFuZ0NvZGVHZW4gLWxjbGFuZ0Nyb3NzVFUgLWxjbGFuZ0RyaXZl
ciAtbGNsYW5nRHluYW1pY0FTVE1hdGNoZXJzIC1sY2xhbmdFZGl0IC1sY2xhbmdGb3JtYXQgLWxj
bGFuZ0Zyb250ZW5kIC1sY2xhbmdGcm9udGVuZFRvb2wgLWxjbGFuZ0hhbmRsZUNYWCAtbGNsYW5n
SW5kZXggLWxjbGFuZ0xleCAtbGNsYW5nUGFyc2UgLWxjbGFuZ1Jld3JpdGUgLWxjbGFuZ1Jld3Jp
dGVGcm9udGVuZCAtbGNsYW5nU2VtYSAtbGNsYW5nU2VyaWFsaXphdGlvbiAtbGNsYW5nU3RhdGlj
QW5hbHl6ZXJDaGVja2VycyAtbGNsYW5nU3RhdGljQW5hbHl6ZXJDb3JlIC1sY2xhbmdTdGF0aWNB
bmFseXplckZyb250ZW5kIC1sY2xhbmdUb29saW5nIC1XbCwtQmR5bmFtaWMgLWxMTFZNWFJheSAt
bExMVk1XaW5kb3dzTWFuaWZlc3QgLWxMTFZNVGV4dEFQSSAtbExMVk1UYWJsZUdlbiAtbExMVk1T
eW1ib2xpemUgLWxMTFZNRGVidWdJbmZvUERCIC1sTExWTU9yY0pJVCAtbExMVk1KSVRMaW5rIC1s
TExWTU9iamVjdFlBTUwgLWxMTFZNTUNBIC1sTExWTUxUTyAtbExMVk1QYXNzZXMgLWxMTFZNT2Jq
Q0FSQ09wdHMgLWxMTFZNTGluZUVkaXRvciAtbExMVk1MaWJEcml2ZXIgLWxMTFZNSW50ZXJwcmV0
ZXIgLWxMTFZNRnV6ek11dGF0ZSAtbExMVk1NQ0pJVCAtbExMVk1FeGVjdXRpb25FbmdpbmUgLWxM
TFZNUnVudGltZUR5bGQgLWxMTFZNRGxsdG9vbERyaXZlciAtbExMVk1PcHRpb24gLWxMTFZNRGVi
dWdJbmZvR1NZTSAtbExMVk1Db3ZlcmFnZSAtbExMVk1Db3JvdXRpbmVzIC1sTExWTVg4NkRpc2Fz
c2VtYmxlciAtbExMVk1YODZBc21QYXJzZXIgLWxMTFZNWDg2Q29kZUdlbiAtbExMVk1YODZEZXNj
IC1sTExWTVg4NlV0aWxzIC1sTExWTVg4NkluZm8gLWxMTFZNUklTQ1ZEaXNhc3NlbWJsZXIgLWxM
TFZNUklTQ1ZDb2RlR2VuIC1sTExWTVJJU0NWQXNtUGFyc2VyIC1sTExWTVJJU0NWRGVzYyAtbExM
Vk1SSVNDVlV0aWxzIC1sTExWTVJJU0NWSW5mbyAtbExMVk1Qb3dlclBDRGlzYXNzZW1ibGVyIC1s
TExWTVBvd2VyUENDb2RlR2VuIC1sTExWTVBvd2VyUENBc21QYXJzZXIgLWxMTFZNUG93ZXJQQ0Rl
c2MgLWxMTFZNUG93ZXJQQ0luZm8gLWxMTFZNTWlwc0Rpc2Fzc2VtYmxlciAtbExMVk1NaXBzQ29k
ZUdlbiAtbExMVk1NaXBzQXNtUGFyc2VyIC1sTExWTU1pcHNEZXNjIC1sTExWTU1pcHNJbmZvIC1s
TExWTUJQRkRpc2Fzc2VtYmxlciAtbExMVk1CUEZDb2RlR2VuIC1sTExWTUJQRkFzbVBhcnNlciAt
bExMVk1CUEZEZXNjIC1sTExWTUJQRkluZm8gLWxMTFZNQVJNRGlzYXNzZW1ibGVyIC1sTExWTUFS
TUNvZGVHZW4gLWxMTFZNQVJNQXNtUGFyc2VyIC1sTExWTUFSTURlc2MgLWxMTFZNQVJNVXRpbHMg
LWxMTFZNQVJNSW5mbyAtbExMVk1BQXJjaDY0RGlzYXNzZW1ibGVyIC1sTExWTUFBcmNoNjRDb2Rl
R2VuIC1sTExWTUFBcmNoNjRBc21QYXJzZXIgLWxMTFZNQUFyY2g2NERlc2MgLWxMTFZNQUFyY2g2
NFV0aWxzIC1sTExWTUFBcmNoNjRJbmZvIC1sTExWTUFNREdQVURpc2Fzc2VtYmxlciAtbExMVk1N
Q0Rpc2Fzc2VtYmxlciAtbExMVk1BTURHUFVDb2RlR2VuIC1sTExWTU1JUlBhcnNlciAtbExMVk1H
bG9iYWxJU2VsIC1sTExWTVNlbGVjdGlvbkRBRyAtbExMVk1pcG8gLWxMTFZNSW5zdHJ1bWVudGF0
aW9uIC1sTExWTVZlY3Rvcml6ZSAtbExMVk1MaW5rZXIgLWxMTFZNSVJSZWFkZXIgLWxMTFZNQXNt
UGFyc2VyIC1sTExWTUFzbVByaW50ZXIgLWxMTFZNRGVidWdJbmZvRFdBUkYgLWxMTFZNQ29kZUdl
biAtbExMVk1UYXJnZXQgLWxMTFZNU2NhbGFyT3B0cyAtbExMVk1JbnN0Q29tYmluZSAtbExMVk1B
Z2dyZXNzaXZlSW5zdENvbWJpbmUgLWxMTFZNVHJhbnNmb3JtVXRpbHMgLWxMTFZNQml0V3JpdGVy
IC1sTExWTUFuYWx5c2lzIC1sTExWTVByb2ZpbGVEYXRhIC1sTExWTU9iamVjdCAtbExMVk1CaXRS
ZWFkZXIgLWxMTFZNQml0c3RyZWFtUmVhZGVyIC1sTExWTUFNREdQVUFzbVBhcnNlciAtbExMVk1N
Q1BhcnNlciAtbExMVk1BTURHUFVEZXNjIC1sTExWTUFNREdQVVV0aWxzIC1sTExWTU1DIC1sTExW
TURlYnVnSW5mb0NvZGVWaWV3IC1sTExWTURlYnVnSW5mb01TRiAtbExMVk1Db3JlIC1sTExWTVJl
bWFya3MgLWxMTFZNQmluYXJ5Rm9ybWF0IC1sTExWTUFNREdQVUluZm8gLWxMTFZNU3VwcG9ydCAt
bExMVk1EZW1hbmdsZSAtbHogLWxydCAtbGRsIC1scHRocmVhZCAtbG0gLWx4bWwyIC1sZGwgCg==

--_004_a8597943cc2540269bd3e2e291c25b9ebaesystemscom_--
