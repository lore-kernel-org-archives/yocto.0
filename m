Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DE26C433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 12:15:06 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.10901.1645013704454620894
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 04:15:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=DjX7RjGT;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1645013704; x=1802693704;
  h=from:to:subject:date:mime-version;
  bh=5Tteua4gEI0mctnkvZu/LSczvQj3KsVhV3u2qJRiP9o=;
  b=DjX7RjGTAkmsw6agU8+323gYMkKGiQNMWdKADAj497fEMjIKorHBeAZN
   0zdf24rG640+lME7eu6roLZFZltj1vmwCaoyt9JoZNTouLsp/q5xDnBem
   ZrePbVFZpF0sZxvvEBANa2Gb7p6D6d7L1ySZQ0NQdwt+IrNr5lD8sxeu/
   I=;
IronPort-SDR: 
 CRRiqc1lDZWb64ozCEC29V1IfovrpBSaxCkUhATRv4CvA1Rm0mFfk3DgGEbvapnBTZ6TFd1SLK
 tyjyrAZYCEHg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AeqVXKRIwLbamjv/sgNmcuCNhWUAX0o4c3iYr4?=
 =?us-ascii?q?5Yqw4hDbr6kt8y7ehCFv7Mx1RSQAN+Tq6odzbaM6ua4AS1IyK3CmUhKSIZLW?=
 =?us-ascii?q?R4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIB?=
 =?us-ascii?q?xrwKxd+KPjrFY7OlcS30P2594HObwlSizexf61+IA+5oAnMucUanItvJrgsw?=
 =?us-ascii?q?RfNvndEZv5ayGx2KV6OhRrw+tu88Jt++ClMpvwt8NJNX7/ndKoiV7xYCzomM?=
 =?us-ascii?q?2Ex5ML1sBTIUBWC6HgBXGgIixREGwfK4g30UZf3qSv6q/Fy2DKGMs3sTLA7Q?=
 =?us-ascii?q?iqt4qF2QxL1kigHNjo58GbKisxsia9QvRysqwBjz4PSfYqYMud1cKHActMAX?=
 =?us-ascii?q?WdPXthfWTFdAo2ybIUPDvYOMulDoobnu1cOrwGzCRWwCO/xzDJDm3/43bc90?=
 =?us-ascii?q?+QkCQzK0gsuH9UIsHTPstr6KrwSXfiox6fV0TXMce1W1in76IPVbB0qvPWAU?=
 =?us-ascii?q?rxtf8bUx0UkCgTIjk6MqYP7ITOayOINv3Ke7+pnU+KvkHAopB9qojW03cgjk?=
 =?us-ascii?q?JfGhpkVy1Df6SV23oM1JcaiREFnZt6kFYJduieHPIR5Xs0sWXtnuDomyrIYo?=
 =?us-ascii?q?567ejAHxZo7yxPfa/KKfYyF7xD9WOqPLjp2im9pdbO8ihuu80WuxO/xW8m03?=
 =?us-ascii?q?VpXsyZLnNfBumwR2xHN7sWKSfRw81qg1DuJygvd5OZEIUUumqraLZ4s2qM/l?=
 =?us-ascii?q?p0PvkTAACD2gl/6g7ORdkUh/OWj9ufpYq3+q5OBK4N4kAPzP6o0lsG8Duk0K?=
 =?us-ascii?q?BUCU3CG9eigzrHu8kL0TK9Fg/Esj6XUsJbXLtkBqKGjGQ9ayIMj5g66Dzehz?=
 =?us-ascii?q?dsXg2EKLElAeBKbl4jpPEzOIOzgAfe/nVuslDBryujaPrzuGJrNKH3DkKzlc?=
 =?us-ascii?q?Lph90JQ1Bc/wcpC55JPEL0OO+j8VVHqtN3YFR85LxK7w+P8CNlnyoweXmePD?=
 =?us-ascii?q?reYMKPUr1CI+voiL/SQaIMPujvwJeIp6v3hgHMjhFMRZayp0oEWaHC8EPRmO?=
 =?us-ascii?q?UKZYX/0j9caDWcFoBQ+Q/LsiFGYVD5TYHCyX7ki6T4lE4KrFpzMSZqzj7ya3?=
 =?us-ascii?q?Ca7BYFWaX5DClCXC3vna4KEW/IUZCKIPsBhiiAEVaSmS4I51RCusxP1y6ZgL?=
 =?us-ascii?q?ufP/i0YtInj1MRu5+HJlRAy8iB7D9ia02GVVWF0mWEISCEq06Bju0B9zU2D0?=
 =?us-ascii?q?acry8BfQJZC4PhVVS8+NIXA1KprDNvuXRrbedWEQ0rgRc+pS3llX9U639gmZ?=
 =?us-ascii?q?0dmB87knxfIwy2yGbgXmreXQpsu/fSP8WL2IpM37nHAz6QslB1ueddCK2Cgz?=
 =?us-ascii?q?oU3tzXoRsSBx16Fmrinc+IZ2yjW+WqY5WCHsVpJSxJ9VL6DVncaMBiF5e/l7?=
 =?us-ascii?q?1/PGuf9QY8sNRFMnJbqFw=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AAFSeu6jAx18a4X/zlthlzTxoX161ThIKZh0uj?=
 =?us-ascii?q?C45NGQN5FlHY01jehtvWj+FM/6OZWqkfdgkbt7nphtUu5HSyYJgHgBsqnphH?=
 =?us-ascii?q?i5jpJueD7x1DKtQ0wB+jCH7ockOA/w2MrEsF+hpCC+MzvuRGuK59yMkj/nRH?=
 =?us-ascii?q?uOU5NPsY0ideyc1EE/Ntjo+w4bVsqYw6TSIK1vlVeHa+qUzC3f5s9JACV/43?=
 =?us-ascii?q?orYwP9ZUFUejxtD1rA2TagjUFYzDBD5BrpHTU26ByOQroW5goeHq+j/ILGRp?=
 =?us-ascii?q?gs1/j8xGtqjl62qKhVSG/jPJk6Eg3dNSrO+jx1Z4Cc1187XNtJFMQEI0HPZw?=
 =?us-ascii?q?5YooDlOncXYpQMBJbHBhukbFRxfFTpzMLZu8rbKOmmkrcGW1AvNdH6EL/BGU?=
 =?us-ascii?q?BxsYNxBp7ouaY1J3blCQNwXVTiSgOmqx5q/S/JwnYIyK8L3O5sFvXNtxi2fC?=
 =?us-ascii?q?uwpKa0v6Y2iCcRwhW922ZsITaqYPqIkhfNUREyoS3Vy1p0/UvrSRNuVu0Q?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AzyFlo6rzMDQzebpNUzwrZdYaV5obeYIsim?=
 =?us-ascii?q?QD101hICG9E/b0qynKpp8mPHDP5Ar5J0tOpTntAse9qArnlKKdgrNhXotKPj?=
 =?us-ascii?q?OHhILyFvAB0WKK+VSJcREWkNQtsJuIG5IObOEYZmIK6voSjjPIderIuOP3iJ?=
 =?us-ascii?q?xB1Izlvg5QcT0=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2C+CwCVHvlh/wFUSQpaHAEBASsLBgE?=
 =?us-ascii?q?BBAQBAQIBAQcBARUJgVECgR+CBYFOkm6fN4F8CwEBAQEBAQEBAQgBEgIhDAQ?=
 =?us-ascii?q?BAYhnJjQJDgECBAEBARIBAQYBAQEBAQYEAYEbhWgBDII1IoQfXgEVayYBBBs?=
 =?us-ascii?q?MgnGCDoEXrn+BMxoCZYNOARMDDy9HhQ0GgToBgWWFRIJ/hhdDgRWOCCIEk14?=
 =?us-ascii?q?iboEtOp8doFMHA4NGiwGUSjAVlk4DkTYtlh0gjG+ZMwIEAgQFAhaBYYIVcIM?=
 =?us-ascii?q?6UBcCkiCKXoEsAgYLAQEDCYw8gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2C+CwCVHvlh/wFUSQpaHAEBASsLBgEBBAQBAQIBAQcBA?=
 =?us-ascii?q?RUJgVECgR+CBYFOkm6fN4F8CwEBAQEBAQEBAQgBEgIhDAQBAYhnJjQJDgECB?=
 =?us-ascii?q?AEBARIBAQYBAQEBAQYEAYEbhWgBDII1IoQfXgEVayYBBBsMgnGCDoEXrn+BM?=
 =?us-ascii?q?xoCZYNOARMDDy9HhQ0GgToBgWWFRIJ/hhdDgRWOCCIEk14iboEtOp8doFMHA?=
 =?us-ascii?q?4NGiwGUSjAVlk4DkTYtlh0gjG+ZMwIEAgQFAhaBYYIVcIM6UBcCkiCKXoEsA?=
 =?us-ascii?q?gYLAQEDCYw8gRABAQ?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635206400";
   d="scan'208,217";a="452591541"
IronPort-SDR: 
 vbyStOG0Z2CLmzGGzDv/437bBXFhx6hMCvLG51oHq/0CyhiGSEBca8AQter7KXgzMgUNPiNAuR
 2a8qTkVm0IN5Db2+e/CovZ3kTBValPncBBL2VLX9QepQXHcK5Y9V0j+yScmB8RckVytpbS8FFk
 Y+cfPyXOjILy7yTd60XOELo5HzRWopuKY7Is1tR930bgVhO+g1m4AmXFIvNTnrSE3cWyEJcwPa
 6ntFYqucfPDLUqV6VjN0+IhXziqO8B/D39bF61o1OuWcWAdgwtP12lFaDqy529WNoxBLuMSyaq
 j2c=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto Zeus -docker/PREEMPT_RT
Thread-Topic: Yocto Zeus -docker/PREEMPT_RT
Thread-Index: AdgjLPBjniicPUzrQNC7lqkzEfKWEQ==
Date: Wed, 16 Feb 2022 12:15:01 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_d92158ceaaad420f80e766d706d1168cbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 12:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56207
Message-Id: <20220216121506.3DE26C433F5@smtp.lore.kernel.org>

--_000_d92158ceaaad420f80e766d706d1168cbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I have 2 platforms one with a standard kernel the other using PREEMPT_RT ke=
rnel... both work as expected.

All things being equal, when I add docker container support to both platfor=
ms, the standard kernel works just fine, but on the
PREEMPT_RT kernel docker does not appear to initialize/work correctly...

I have also tested using both ARM & Intel based HW, and appear tosee the sa=
me behavior on both.

Checking online it appears there is chatter about whether docker will run c=
orrectly under a PREEMPT_RT kernel.
Example:

Last entry, from July 2021, in this blog says not supported;
Docker for RTOS? - General Discussions / Feature Requests - Docker Communit=
y Forums<https://forums.docker.com/t/docker-for-rtos/283/3>

Under Yocto, will docker & PREEMPT_RT kernels function correctly, is this c=
ombination supported ?

I am currently running zeus based platforms, docker is at version 19.03.2-c=
e.

Is there a patch to correct for the compatibility issues being seen ?, or
Is there a yocto version I might move to which supports both correctly ?

Any input on this would be greatly appreciated.

Thanks,
Steve



--_000_d92158ceaaad420f80e766d706d1168cbaesystemscom_
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
<p class=3D"MsoNormal">I have 2 platforms one with a standard kernel the ot=
her using PREEMPT_RT kernel&#8230; both work as expected.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All things being equal, when I add docker container =
support to both platforms, the standard kernel works just fine, but on the =
&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">PREEMPT_RT kernel docker does not appear to initiali=
ze/work correctly&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also tested using both ARM &amp; Intel based =
HW, and appear tosee the same behavior on both.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Checking online it appears there is chatter about wh=
ether docker will run correctly under a PREEMPT_RT kernel.<o:p></o:p></p>
<p class=3D"MsoNormal">Example:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Last entry, from July 2021, in this blog says not su=
pported;<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://forums.docker.com/t/docker-for-rt=
os/283/3"><span style=3D"color:#0563C1">Docker for RTOS? - General Discussi=
ons / Feature Requests - Docker Community Forums</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under Yocto, will docker &amp; PREEMPT_RT kernels fu=
nction correctly, is this combination supported ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently running zeus based platforms, docker =
is at version 19.03.2-ce.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a patch to correct for the compatibility is=
sues being seen ?, or
<o:p></o:p></p>
<p class=3D"MsoNormal">Is there a yocto version I might move to which suppo=
rts both correctly ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any input on this would be greatly appreciated.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_d92158ceaaad420f80e766d706d1168cbaesystemscom_--

