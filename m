Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.11175.1603106604871799766
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 04:23:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=U4DDk8sB;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1603106604; x=1760786604;
  h=from:to:subject:date:mime-version;
  bh=8xGw3L2FgbPV267gQhcpui2ZTP8c4J7MiDza5Cxk3fM=;
  b=U4DDk8sBKp2BP2/5xAGqQWNMfUypoHYSsvttZY1rnf/IhTNARh+WHK6k
   H0v0uTqpGk1d1LW5iFYSv6BWKaPm1cikarElF0fX1CQBpEMlCruloCqXJ
   euCKW+DpvE0mfambARldhSHplG2bWHpX87eDqAWLhcZkrY04W3V9os2Zk
   A=;
IronPort-PHdr: =?us-ascii?q?9a23=3ATIM4TROtR6voKzd7AD4l6mtUPXoX/o7sNwtQ0KIM?=
 =?us-ascii?q?zox0I/T6rarrMEGX3/hxlliBBdydt6sbzbWP+Pu9EUU7or+5+EgYd5JNUxJXwe?=
 =?us-ascii?q?43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRp?=
 =?us-ascii?q?OOv1BpTSj8Oq3Oyu5pHfeQpFiCe/bL9oLhi6sArdu8cWjIB/Nqs/1xzFr2dSde?=
 =?us-ascii?q?9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0QrNEAjsoNWA1/9DrugLY?=
 =?us-ascii?q?TQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVTi+6apgVRnlgz?=
 =?us-ascii?q?oFOTEk6mHaksx+grxGrhK9qRJxwI/Ub52aO/dlZKzRYdEaSHBdUspNSSBMBJ63?=
 =?us-ascii?q?YYsVD+oGOOZVt4fxqVwJrRu4HgmjGv3gyiRQinTrwKM6z/ouER/Y0wwmAtkDrm?=
 =?us-ascii?q?nfoNH7O6kPVOy5wrTDwDLYb/NKxzj99pbHchY7rfGJWrJwd9HRxlcxGAPelVif?=
 =?us-ascii?q?spbqMC2O1uUNqGib8/RvVee0i2I9tw5xpT2vy94qh4LUiY0b1krK+j9lwIYpO9?=
 =?us-ascii?q?K4Ukh7bMaqHpZeqyyXNol7T8I8T211pis3yb0LtJq0cSUF1ZgpyR7SZfOaf4WM?=
 =?us-ascii?q?4B/uVOmcLDZliH97fL+yhBW//FW9xuPzUMS/zVVErjJdn9XRqnwBzRLe58qdRv?=
 =?us-ascii?q?dj4Eus2SyD2gHT5+1cPEw4ibDXJpEuz7Iqkpcfq0fOEy3wlU7rlqGZbF8k9fKt?=
 =?us-ascii?q?6+n/Z7XmoYKTOJFshwHlN6QuhtS/AeMlMggSR2Sb+fqz1Lnk/UDhXLVLgec5kq?=
 =?us-ascii?q?/csJDBIckXurK1DxNI3oo57RawFS2q388CknYZN1JEeAmHj5T3NFHLO/D0F+uw?=
 =?us-ascii?q?g1OpkDtzxvDGOKPuAonVI3TejLvtZ7hw5kxGxAYt09xS54hYB7ABLf7rX0/+rt?=
 =?us-ascii?q?3YDhs3MwyuxObnDc1w1pgCWW2RHK+WLqXSvUWN5uIoJemMf5EatyjmK/U+/PHh?=
 =?us-ascii?q?l2E2mUQdfKmywZsYdnW4Hu98L0qFZnrsh88NEX0WsQomUOzqlFqCXCZTZna1Q6?=
 =?us-ascii?q?08+jY7BZmiDYfCXYCtnKeB0D27H51Rem9GFleMEW/yd4WDWfcDdj6dItN7njwD?=
 =?us-ascii?q?T7ihRNxp6Rb7/h79wKZgBu7V4TED84Pk38Ry//fUlxw56XpzFcvXmzWcSGpomU?=
 =?us-ascii?q?sMRiQqx+ZupkdhzU+Z1qp1iOAeEsZcsaBnSAA/YNT5yOphBt3pHkr6YtqXRVDu?=
 =?us-ascii?q?aZ3mPApwBJpl2MMDfUt7XdCliAvO0jGCCbYYjK2QGJEx6eTX2H2ndJU18GrPyK?=
 =?us-ascii?q?R01wpuecBIL2Dz3qM=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BAC5do1f/0HhJQpggQmCcoF3gT6xb?=
 =?us-ascii?q?wsBAQEBAQEBAQEIAS8EAQGGWiY4EwIQAQEGAQEBAQEGBAGGTguCNyKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+Bfq9MgTSFV4UEgTiFUkyIdT6PEgSQNYoonR0HA4JqiAKSZiuhUJMxm?=
 =?us-ascii?q?3+ELgIEAgQFAhWBa4F6cIM6TxcCDZxmgSwCBgoBAQMJjTeBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2D7BAC5do1f/0HhJQpggQmCcoF3gT6xbwsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGWiY4EwIQAQEGAQEBAQEGBAGGTguCNyKDTV4BDHQmAQQbgx+Bfq9Mg?=
 =?us-ascii?q?TSFV4UEgTiFUkyIdT6PEgSQNYoonR0HA4JqiAKSZiuhUJMxm3+ELgIEAgQFAhW?=
 =?us-ascii?q?Ba4F6cIM6TxcCDZxmgSwCBgoBAQMJjTeBEQEB?=
X-IronPort-AV: E=Sophos;i="5.77,394,1596499200"; 
   d="scan'208,217";a="318602188"
X-IronPort-AV: E=Sophos;i="5.77,394,1596499200"; 
   d="scan'208,217";a="88737200"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto methodology to port from older yocto revisions to current
Thread-Topic: #yocto methodology to port from older yocto revisions to current
Thread-Index: AdamCOr0FiLzGL/hSeGAlLlNcJGgLQ==
Date: Mon, 19 Oct 2020 11:22:41 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.163F60F774955E72.8803@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f81060d12a5a418997bcbe8afa695584baesystemscom_"

--_000_f81060d12a5a418997bcbe8afa695584baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I am currently at Yocto release "Rocko 2.4.1" and I am looking into the eff=
ort to port to the latest Yocto release...

We have been using this  rocko platform revision for the last few years in =
a project, and now want to move to the latest supported release.

Is there a preferred established methodology/guidelines when porting projec=
ts from much older established revisions of Yocto?

Is it considered better to port an established project directly to a new Yo=
cto release, or to slowly migrate the yocto revision to the desired release=
 ?

Thanks,
Steve

--_000_f81060d12a5a418997bcbe8afa695584baesystemscom_
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
<p class=3D"MsoNormal">Hello:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently at Yocto release &#8220;Rocko 2.4.1&#=
8221; and I am looking into the effort to port to the latest Yocto release&=
#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have been using this&nbsp; rocko platform revisio=
n for the last few years in a project, and now want to move to the latest s=
upported release.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a preferred established methodology/guideli=
nes when porting projects from much older established revisions of Yocto?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it considered better to port an established proje=
ct directly to a new Yocto release, or to slowly migrate the yocto revision=
 to the desired release ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_f81060d12a5a418997bcbe8afa695584baesystemscom_--
