Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.17535.1629908752116198973
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Aug 2021 09:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Qf2XLc+3;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1629908752; x=1787588752;
  h=from:to:subject:date:mime-version;
  bh=eaRY/ExPdRl3qq7RRRC+/v5Aekm0W7qMzRr7at8I3oI=;
  b=Qf2XLc+3oBajzoJJUX4wFIeCkx0h2gVkxnnsHsSQnmxMKx68aVumiT3d
   Y6HvwcKWfNmRBeLfQf3f9Wmgw1vTOfW9+RpH4uojyrjyOTrCCBXUXjPaw
   5hQw9H84OTdpqVCEQJpnId1D2+EYbdInbV+TYJlJVl1FH41gxKtjLcieF
   w=;
IronPort-SDR: PM8XOxwUw7TVvAA/WELVON9QKudXsN9J+QN6aIwHrLMzrRXOiN0dtIi72bAxeR/xtw63XLhWbd
 s3RZvUtXbOAQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ACbOn5ByBVnglovHXCzJdylBlVkEcU1XcAAcZ5?=
 =?us-ascii?q?9Idhq5Udez7ptK+ZhSZvK08xwGTFazgqNt8w9LMtK7hXWFSqb2gi1slNKJ2a?=
 =?us-ascii?q?hkelM8NlBYhCsPWQWfyLfrtcjBoVJ8aDAwt8H60K1VaF9jjbFPOvHKy8SQSG?=
 =?us-ascii?q?hLiPgZpO+j5AIHfg9qr2+yo5pHffwFFiDW8bL9sMR67sRjfus4KjIV4N60/0?=
 =?us-ascii?q?AHJonxGe+RXwWNnO1eelAvi68mz4ZBu7T1et+ou+MBcX6r6eb84TaFDAzQ9L?=
 =?us-ascii?q?281/szrugLdQgaJ+3ART38ZkhtMAwjC8RH6QpL8uTb0u+ZhxCWXO9D9QLYpU?=
 =?us-ascii?q?jqg8qhrUgflhicZOTAk7GHZhM9+jKNHrx2uvBFw2ZLYYIOPOfZiYq/RY9UXT?=
 =?us-ascii?q?ndBUMZLUCxBB5uxY4UIAeoGO+ZYtJfyqEUVrRemGAKiGf/vxSFWhnDo260xz?=
 =?us-ascii?q?vosGhzC0AMuAtwCtXrYp8jyOacJTeC60rfIwivFb/9M3Df9747Icgs/rv6SR?=
 =?us-ascii?q?rJ9atHexlMxGAPejlSQspDlMC2Q1uQWqWSU8+1gVee2hmMhtgp+rSShyN02h?=
 =?us-ascii?q?YnVmoIa1ErE9SNhzYg7K9C1VE92bNylHZdOqi2XKYh7T8MmTmxntys217MIt?=
 =?us-ascii?q?J60ciQXzJkqxR7SZvOGfoSV/B/uUOWcLDRliX54d7yygQu5/0u4yuDkS8W4z?=
 =?us-ascii?q?ExGoyRHn9XWq3wA0xLe5tKGR/Z95kutxCqD2xrc5+xLO0w5mrDXJ4Mhz7M2i?=
 =?us-ascii?q?5Edq17MHjXsl0XzlKKWc0Ik9fW25On/ebXmo4OcN5dzigHjLqQigsy/Dvo8M?=
 =?us-ascii?q?ggJR2Wb5/6z1L3l/U38W7VHivk7n63FvJzHP8gboLS2DxVO3Yk59Rm/FDen0?=
 =?us-ascii?q?M8EnXYZKVJFYwiLgJTuO1HLOPz4DPG/jEqwkDpz2vzKIqftD5vPI3TZjbvse?=
 =?us-ascii?q?bhw51RdxQcz1dxf4ohbCrAFIPL9QE/xs9nYAwciMwyo3ennFsty1oUEVWKKB?=
 =?us-ascii?q?a+ZNrjSvkGW6eI0OOSDf5UatyjmK/kl/P7ukWE2mVoGfaWzwZQXb3W4Eux8I?=
 =?us-ascii?q?0qFeXrsnssBEWASsws+S+zllEGCUTlIana2XqI8/S07CJm8AYbDQYCinKCB3?=
 =?us-ascii?q?CCjHp1MYWBGCE6DHmv0d4meXPcMci2ScYddlWlORL+qV4gJ0RC1qBS82r1sM?=
 =?us-ascii?q?u3M4CoauJn/kt9v6KebwQA1/iBzJ8CcyH2WCXBzlX8PXyUx3q10vQp60FjVg?=
 =?us-ascii?q?oZihPkNX/lU4ehEXxx+faXAwvJ3DZjZEkL8RZbDAAK9Xti4DDd3S9U32NIDe?=
 =?us-ascii?q?G53Eti5nwvf0i+xRbQSkurYV9QP7qvA0i2pdI5GwHHc2fx552Q=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A3rCbJaCiXECZ3urlHelA55DYdb4zR+YMi2?=
 =?us-ascii?q?TDpHoBMiC9E/bo8fxG+c516faaskd1ZJm/8erwQpVoLUm9yXcX2/h3AV7BZn?=
 =?us-ascii?q?iDhILAFugLhuaPrQEJgkbFl9K1vp0QEZSWfeeAdWSS4/yKgzVRNr4bsaT3jN?=
 =?us-ascii?q?HW9JmuvkuEbmlRGtJdB54SMHfsLmRGACNjLbZ8LpCb/cYvnUvWRZwtBv7Ldk?=
 =?us-ascii?q?XtJ9Kz3uEipvrdEGw77yhO0nj6sduegISKZyRwAS11bw9y?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BVAABMbiZh/0HBJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE+BQEBCwGBIoF/gU2VRpY1hUKBfAsBAQEBAQEBAQEIAUE?=
 =?us-ascii?q?EAQGHGCY2Bw4BAgQBAQESAQEGAQEBAQEGBAGBI4VpDII1IoQfXgEVayYBBBu?=
 =?us-ascii?q?CaoF+rA2BMxoCZYRohQ6BOgGBZIUogm6GC0OPGSIEhwoJCgEwGwKCVZEzjC2?=
 =?us-ascii?q?Da5t3BwODKp5ILBKVcwORAy2VaaUhAgQCBAUCFoFoBYIIcIM6TxcCnH+BLAI?=
 =?us-ascii?q?GCwEBAwmOUoESAQ?=
X-IPAS-Result: =?us-ascii?q?A2BVAABMbiZh/0HBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE+BQEBCwGBIoF/gU2VRpY1hUKBfAsBAQEBAQEBAQEIAUEEAQGHGCY2Bw4BA?=
 =?us-ascii?q?gQBAQESAQEGAQEBAQEGBAGBI4VpDII1IoQfXgEVayYBBBuCaoF+rA2BMxoCZ?=
 =?us-ascii?q?YRohQ6BOgGBZIUogm6GC0OPGSIEhwoJCgEwGwKCVZEzjC2Da5t3BwODKp5IL?=
 =?us-ascii?q?BKVcwORAy2VaaUhAgQCBAUCFoFoBYIIcIM6TxcCnH+BLAIGCwEBAwmOUoESA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.84,351,1620691200"; 
   d="scan'208,217";a="404962794"
IronPort-SDR: Qrh0cGIwn15t7oaOaznPxL1IiyW87sKAM63skdkWJSdEKBKhxFGcTs6zaHnajO6kn3YyCa+NYo
 EjstDvkk1xXQ==
X-IronPort-AV: E=Sophos;i="5.84,351,1620691200"; 
   d="scan'208,217";a="25684426"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: # yocto Fatal QA error (LIC_FILES_CHKSUM) [license-checksum]
Thread-Topic: # yocto Fatal QA error (LIC_FILES_CHKSUM) [license-checksum]
Thread-Index: AdeZzZugo8kwTfiiSuemj9wnYEXwVA==
Date: Wed, 25 Aug 2021 16:24:49 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.169E99606EC5F084.3206@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_47a69abfd512478ea03dedebb496f260baesystemscom_"

--_000_47a69abfd512478ea03dedebb496f260baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Using zeus, and I am build an image with no issues...

I then want to tweak the configuration by pulling in an a ".cfg" file to be=
 able to tweak options depending on use...

I add the following to the image ".bb" file:

FILESEXTRAPATHS_prepend :=3D "$THISDIR:"
SRC_URI +=3D "file://sbcb-defaultfs-swdebug.cfg"


sbcb-defaultfs-swdebug.cfg consists of three lines:

CONFIG_KPROBES=3Dy
CONFIG_KPROBES_ON_FTRACE=3Dy
CONFIG_DEBUG_INFO=3Dy

When I add the above I see the following build issue, how do I relove this =
?

ERROR: sbcb-defaultfs-swdebug-1.0-r0 do_populate_lic: QA Issue: sbcb-defaul=
tfs-swdebug: Recipe file fetches files and does not have license file infor=
mation (LIC_FILES_CHKSUM) [license-checksum]
ERROR: sbcb-defaultfs-swdebug-1.0-r0 do_populate_lic: Fatal QA errors found=
, failing task.
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_1/builds2/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-sw=
debug/1.0-r0/temp/log.do_populate_lic.29324
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_1/poky/../meta-bae/met=
a-limws/meta-intel/recipes-core/images/sbcb-defaultfs-swdebug.bb:do_populat=
e_lic) failed with exit code '1'

Thanks,
Steve

--_000_47a69abfd512478ea03dedebb496f260baesystemscom_
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
<p class=3D"MsoNormal">Using zeus, and I am build an image with no issues..=
. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I then want to tweak the configuration by pulling in=
 an a &quot;.cfg&quot; file to be able to tweak options depending on use&#8=
230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I add the following to the image &quot;.bb&quot; fil=
e:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>FILESEXTRAPATHS_prepend :=3D &quot;$THISDIR:&quot=
;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>SRC_URI &#43;=3D &quot;file://sbcb-defaultfs-swde=
bug.cfg&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">sbcb-defaultfs-swdebug.cfg consists of three lines:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>CONFIG_KPROBES=3Dy<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>CONFIG_KPROBES_ON_FTRACE=3Dy<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>CONFIG_DEBUG_INFO=3Dy<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I add the above I see the following build issue=
, how do I relove this ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: sbcb-defaultfs-swdebug-1.0-r0 do_populate_lic=
: QA Issue: sbcb-defaultfs-swdebug: Recipe file fetches files and does not =
have license file information (LIC_FILES_CHKSUM) [license-checksum]<o:p></o=
:p></p>
<p class=3D"MsoNormal">ERROR: sbcb-defaultfs-swdebug-1.0-r0 do_populate_lic=
: Fatal QA errors found, failing task.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_1/builds2/sbcb-default/tmp/work/sbcb_default-poky-=
linux/sbcb-defaultfs-swdebug/1.0-r0/temp/log.do_populate_lic.29324<o:p></o:=
p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_1/poky/../meta-bae/meta-limws/meta-intel/recipes-core/images/sbcb-defaultf=
s-swdebug.bb:do_populate_lic) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_47a69abfd512478ea03dedebb496f260baesystemscom_--
