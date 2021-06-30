Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.6484.1625062792612031278
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 07:19:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=WIH3D4Xi;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1625062792; x=1782742792;
  h=from:to:subject:date:mime-version;
  bh=2iJOWAQxvM6XWtB8hK/wxsxWU8mFnFU4J1ij/dORm6o=;
  b=WIH3D4XiBrRUEAaXOy2yPLgAu+rnZaZ/obPao2qUPUsQbbpXWNOn2jgC
   DEdeTjqFdCOtDyMRZeOFdZfMN7Kzf/wFeEWoK3kElzux7CqgmJilzfFSo
   hW4CCfbLEkwJAbfKtNgFjGsDiGzu7WuDrKQdPuUxiFuQGCAnbnI5QAoIz
   s=;
IronPort-SDR: 3i9tN7XYIiC/Rg3fn5O73u2X11Yjk7AIKkJAZpIgL79WbgxzXwsdJ1XGebc0syqK8LkKbCy21y
 jVBBLfZxoGzw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AIlnbuRPmNfVuPgwDPuIl6naHDRdPi9zP1u491?=
 =?us-ascii?q?JMrhvp0f7i5+Ny6ZQqDvKQr1wGTFt+Do9t/yMPu+5j6XmIB5ZvT+FsjS7drE?=
 =?us-ascii?q?yE/tMMNggY7C9SEA0CoZNTjbig9AdgQHAQ9pyLzPkdaAtvxaEPPqXOu8zESB?=
 =?us-ascii?q?g//NQ1oLejpB4Lelcu62/229pHJbQhFhSSxbbxsIBmqsA7cqtQYjYx+J6gr1?=
 =?us-ascii?q?xDHuGFIe+NYxWNpIVKcgRPx7dqu8ZBg7ipdpesv+9ZPXqvmcas4S6dYDCk9P?=
 =?us-ascii?q?GAu+MLrrxjDQhCR6XYaT24bjwBHAwnB7BH9Q5fxri73vfdz1SWGIcH7S60/V?=
 =?us-ascii?q?DK/5KlpVRDokj8KOT4n/m/Klsx+gqFVoBO9qBNw2IPbep2ZNPhkc6/BYd8WW?=
 =?us-ascii?q?2xMVdtRWSxbBYO8apMCA+QGM+ZfqYn9vEUBogWlBQW0Gejh1yNIiWHo3aIk1?=
 =?us-ascii?q?eQqDB/L1xEkE90ArXrYqdv5P7oVXOCu0KnH0yvDYO1Q2Tvn7YjIdRYhoeqSU?=
 =?us-ascii?q?r1uasrc0lIgGBnbgVWLqY3lJC+V2foIs2iA9eZvSeWvi2s+pgx3vzOgydsih?=
 =?us-ascii?q?JPTiYIJ1lDL6z95wIAtKNO2RkN2fd+pHZlRui2EKod7XMAvTmFstSs1xbAKp?=
 =?us-ascii?q?JC1cSgFxpg6wxPSafyKfoeJ7x7+SuucJTR1iXF4db6iiBi/91WrxO7kVsSsz?=
 =?us-ascii?q?VpGsjBJn9fOu3wXyRDf9MiKRuF880qgwTqDyhzf5vtLLE07j6bWJIQtzqMwm?=
 =?us-ascii?q?5cVrE/NBDX5mF/sg6+Tbkgk/++o5Pn5bbj+vZ+cMpN0ihn5MqQzhsyzGeQ4P?=
 =?us-ascii?q?RYKX2ic4emzyKfs/VblT7VPlf07lq3UvZPGKcgFvKK5BRVa3pw45BmlETimy?=
 =?us-ascii?q?9QZnWIbLF1bfRKHlJLlNE3JIPD9Ffu/glKsnyl3x/3eI7HtHo/BI3bBnbv7Y?=
 =?us-ascii?q?7px9U5RxBAywN1e/55UD6sOIPP3Wk//rtzYCRo5PhSvw+b7Ftp9yJ0RWWSVD?=
 =?us-ascii?q?q+cN6PSt0SI6fwxLOmXf4IaoyzyJOY+5//uln85hUESfayy3ZcNdH+4GfFmL?=
 =?us-ascii?q?12DYXXwmtcBDXsKvg0mQe3qj12NTSJTZ3GpUqI45zE7E56mDZzZSoGth7yOw?=
 =?us-ascii?q?Du7HppOZmBcDVCME2nneJmYW/sWbyKSOMBhwXQ4Uu3rWogqyRaGsA7h16EhP?=
 =?us-ascii?q?+3f5ioAr5Xh2dNpoerJmlt6oS1zBNia+2WMVH1v2HIPTCMxxLp4o0F21hGEy?=
 =?us-ascii?q?6cu0NJCEtkGrdZOVBw3OIWYh9dmBs7/XErqNpe0cxfsCoG9HTwvQ9R3xtgIe?=
 =?us-ascii?q?EtwAP2ohx3YzjG2DroO0beMAcpnoernw3HtKpMlmD793647ggx+KvY=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A2hc0daO2DdZi+cBcTuejsMiBIKoaSvp037?=
 =?us-ascii?q?BL7TEIdfU7SKOlfqyV9sjzliWE7Qr5IUtPpTnYAsi9qBDnhP1ICOsqTM6ftW?=
 =?us-ascii?q?Dd0QPCEGgF1/qB/9SKIUHDH4BmuJuIPJIObOEYoGIK6vrS8U2TKf5l6t+C6a?=
 =?us-ascii?q?WpjeDVwzNWSx1wYa0I1WdE40KgYytLeDU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BfBwC4fNxg/0LhJQpagQkJgVKBIYF?=
 =?us-ascii?q?/gU2zfAsBAQEBAQEBAQEIAUEEAQGHRiY5BQ0CBAEBARIBAQYBAQEBAQYEAYE?=
 =?us-ascii?q?DhWkMgjgihB9eAQwJayYBBBuCaoF+qguBNBoCZYRnhVWBOoFlhSKCaIYIQ48?=
 =?us-ascii?q?2BIR4gh2RTItmg2KbTAcDgyCeCysSlTADkFyVaKRlAgQCBAUCFoJwgXxwgzp?=
 =?us-ascii?q?PFwKce4ErAgYKAQEDCYpugREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2BfBwC4fNxg/0LhJQpagQkJgVKBIYF/gU2zfAsBAQEBA?=
 =?us-ascii?q?QEBAQEIAUEEAQGHRiY5BQ0CBAEBARIBAQYBAQEBAQYEAYEDhWkMgjgihB9eA?=
 =?us-ascii?q?QwJayYBBBuCaoF+qguBNBoCZYRnhVWBOoFlhSKCaIYIQ482BIR4gh2RTItmg?=
 =?us-ascii?q?2KbTAcDgyCeCysSlTADkFyVaKRlAgQCBAUCFoJwgXxwgzpPFwKce4ErAgYKA?=
 =?us-ascii?q?QEDCYpugREBAQ?=
X-IronPort-AV: E=Sophos;i="5.83,312,1616457600"; 
   d="scan'208,217";a="389399016"
IronPort-SDR: mi86I4WUR9ucDAvS/4T+5AkpOYsZuN602G1YxXGI/KSy2pGy5Xta8wP8M5VlMWMrNYxJGWKk2k
 WF9NfSwRY2Ng==
X-IronPort-AV: E=Sophos;i="5.83,312,1616457600"; 
   d="scan'208,217";a="7129232"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #zeus
Thread-Topic: #yocto #zeus
Thread-Index: AddtummRYb5uO/0FRWO9SI9vi7E3CA==
Date: Wed, 30 Jun 2021 14:19:50 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.168D620012E8CFDC.18483@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9af6c357758f48e49ff7129698cc9bc9baesystemscom_"

--_000_9af6c357758f48e49ff7129698cc9bc9baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am running with zeus 3.0.4 and appear to have an issue with the mount com=
mand supporting NFS... ?

Can someone explain the following and how I can get "mount" to support NFS =
?

Trying to mount the UDM from the AIO
mount.nfs: Operation not permitted
Failed to mount the UDM from the AIO!
Trying tNFS: bad mount option value specified: minorversion=3D1

Thanks,
Steve

--_000_9af6c357758f48e49ff7129698cc9bc9baesystemscom_
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
<p class=3D"MsoNormal">I am running with zeus 3.0.4 and appear to have an i=
ssue with the mount command supporting NFS&#8230; ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone explain the following and how I can get =
&#8220;mount&#8221; to support NFS ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Trying to mount the UDM from the AIO<o:p></o:p></p>
<p class=3D"MsoNormal">mount.nfs: Operation not permitted<o:p></o:p></p>
<p class=3D"MsoNormal">Failed to mount the UDM from the AIO!<o:p></o:p></p>
<p class=3D"MsoNormal">Trying tNFS: bad mount option value specified: minor=
version=3D1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_9af6c357758f48e49ff7129698cc9bc9baesystemscom_--
