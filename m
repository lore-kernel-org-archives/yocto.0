Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD901C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 12:55:15 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.31535.1635166514026415422
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 05:55:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=iYriQ0d7;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635166514; x=1792846514;
  h=from:to:subject:date:mime-version;
  bh=3SvUr20eq7c+IEn3yU0NMImBhQ8IXRfN5lsEdjBMdhM=;
  b=iYriQ0d7fJd1ZG5rmpbrSZm6i1ZuzzDJ6XD4ggvyr1AZH5C+HXUGfidD
   ZRf4HTxqRtR6WPAgsBlsOEpzg/0u/OigcshUSiuUJBQVG9+Exl/2MwzR9
   tO7yoTtRDegVmBEdMnfnAgXeJtAo4t9Slru7A9iqQr1yu2DquhAMZSJcH
   Y=;
IronPort-SDR: 
 ce/lpTaI1sRyjQ7A5XB8Yk64IXwZmMNZQsdnqXDL5Hs6+yg3guOYkEjfmLj3gKwcmiLU8tL1lO
 /kdD1RvRkRBA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AE7iG6BHyzcFGGqu0FAxg9Z1Gf6JMhN3EVzX9C?=
 =?us-ascii?q?rIZgr5DOp6u447ldBSGo6k31BmTBtiQt64MotGVmpioYXYH75eFvSJKW713f?=
 =?us-ascii?q?DhBt/8rmRc9CtWOE0zxIa2iRSU7GMNfSA0tpCnjYgBaF8nkelLdvGC54yIMF?=
 =?us-ascii?q?RXjLwp1Ifn+FpLPg8it2O2+5YHfbx9WiDezYb5+Ixq7oArMvcQKnIVuLbo8x?=
 =?us-ascii?q?AHUqXVSYeRWwm1oJVOXnxni48q74YBu/SdNtf8/7sBMSar1cbg2QrxeFzQmL?=
 =?us-ascii?q?ns65Nb3uhnZTAuA/WUTX2MLmRdVGQfF7RX6XpDssivms+d2xSeXMdHqQb0yR?=
 =?us-ascii?q?D+v6bpgRh31hycdLzM38H/ZhNFsjKxVoxyhpgBwzIHPbY6PKPZ+fLnQcc8GS?=
 =?us-ascii?q?WZfWMtaSixPApm7b4sKF+cNM+FWr477p1sVsxSxGxKsCPvywTFVmn/5w7M63?=
 =?us-ascii?q?PonEQrbwgErAtYCv3rJotnwOqsZTOe4zLLUzTrdcfNZxzH95JLNchAmp/GMR?=
 =?us-ascii?q?qx/ftTKyUQ0DAzKlEufqZflPjOOyuQCrW2b7/F6We2zjG4nrhh8rz6yzcgjl?=
 =?us-ascii?q?ofHnJgaykzY9Spn2oY1I8W1RkB1bNO4EZZdtSCXO5VrTs48QGxluCI3x7IJt?=
 =?us-ascii?q?JKmciYHyJspywPbZvGFc4WF7RPuWPuPLDp8h39oe6+yiwu9/0Wm1+byVdG03?=
 =?us-ascii?q?U5XoiZZiNXBuHIA2wbO5sWDRPZx5Eas1DeX2wzO9u1IO085mKXBJ5Mu2LI8i?=
 =?us-ascii?q?5oevELeFSHsgkr2lrWZdkA89+it7OTof6vpq4eHN49xlgH+KqMumtGjAeggM?=
 =?us-ascii?q?ggBQWyb+eOk2b3l/U35Rq9FjvgtkqTasJ3WOdgXqrOjDw9TyIkv8Q2wAC243?=
 =?us-ascii?q?9QDnXgHN05FdwyCj4jyIV3BPPf4DfKnj1Stljdk2ezGM6X8DpnRNHTOnrXsc?=
 =?us-ascii?q?axg50NYxgc/19FS6pNMBrEEOv3zW0vxtNLCDh8+Ngy52/3nCMlj2YMAR22PB?=
 =?us-ascii?q?LWVMKbVsV+O/eIgPfeDZJQOtTnmMfcq+eXujH8imV8BY6ap2IAXZGqkEfRhJ?=
 =?us-ascii?q?kWVeWDsjcsZEWcWogo+S/TniV2FUTFPe3ayWLkx5jU6CIK9EYfDXZqhgbyG3?=
 =?us-ascii?q?CinAp1WYXhGCkqLEXfqaYqLR+sMZDiVIs97nTxXHYSmHsUw0hqysyf+yqF7N?=
 =?us-ascii?q?azF/SYEsor509p47PGVkgs9v3QgHsOWz2alS2BvgnhOVjg9wKdnu0t/x1yfl?=
 =?us-ascii?q?69ijKoLO8ZU4qYDdwA8LpPR1KgyMMz/RA/HNvzBCGudA5/uVSotQ8w8xZkLZ?=
 =?us-ascii?q?EBmFti5phrK0jG7GKMYkqfND5sxpPGPl0PtLtpwni6VnJIqiEMrF5MnCA=3D?=
 =?us-ascii?q?=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3ARjo63alXNeTgarT7u5RFBvbo5gyrJERdPkR7X?=
 =?us-ascii?q?Q2eYbSJt1+Wr1GztxJJCGnXMv2LNmGjL9FwbNmw8EgEuZ+BydcxTVQ/qC81Q?=
 =?us-ascii?q?ltH+JHPbTi7wuccHM8wwvUuxyuL1u1GAjX7BJ1yHiC0SiuFaOC79CAkj/zQH?=
 =?us-ascii?q?9IQNcadUsxPbV48IMseoU878wIJqtYAbemRW2thi/uryyHsEAPNNwpPD44hw?=
 =?us-ascii?q?/nrRCWDHRjFkGhwUlQWPZintbJF/pUfJMp3yaqZdxMUTmTId9NWSdovzJnhl?=
 =?us-ascii?q?o/Y1xEtDNqgieamKhVTBLjbewKHh2FHQLSvhwMErSs3uko5HKNELxwIzWzYx?=
 =?us-ascii?q?JYvlr2htrTpIestFrbQlfoQVV9dFCdlMKBd0LXOLGOuqtCeylaAeHzpqxlrJ?=
 =?us-ascii?q?B1sZNVGprguWAmi8tRdcljhdCurluW93LWTTuh3mt9lPc7gIIQHoHZiwDrFS?=
 =?us-ascii?q?/E8Tvj+rw/ijTND9G5owJsRW6+PPIxHN1JSgN37S0UnEj8q5FgWwo9EXkXCT?=
 =?us-ascii?q?gA=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ALHsTeqBmNzFo8TflHemM55DYdb4zR+YMi2?=
 =?us-ascii?q?TDtnoBLiC9Hfbo8vxG8M5rtiMchQx7ZJhCo7C90cu7MBXhHPdOiOF/U9aftW?=
 =?us-ascii?q?HdyRKVxepZnO/fKlPbak/DHrE379YZT4FOTPHgB1lzisj3pDK1Ft4xqePszE?=
 =?us-ascii?q?kDv5ak8595JjsGV0mWhD0UNjqm?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADBQCEqHZh/0LBJQpagQkJgnGBf4F?=
 =?us-ascii?q?Ns28LAQEBAQEBAQEBCAFBBAEBh1ImSwECBAEBARIBAQYBAQEBAQYEAYEjhWk?=
 =?us-ascii?q?MgjUihB9eARVrHwcBBBuCaoF+rSmBMxoCZYRphQ8JAYMWhBdUSoJ5hg9Djz8?=
 =?us-ascii?q?Ejx6BAJMlMYxFoAEHA4MyiTaVMC8VlgYDkROFVoRTi2MfoFSFCQIEAgQFAha?=
 =?us-ascii?q?DdXCDOlAXApx/gSwCBgsBAQMJkV+BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2ADBQCEqHZh/0LBJQpagQkJgnGBf4FNs28LAQEBAQEBA?=
 =?us-ascii?q?QEBCAFBBAEBh1ImSwECBAEBARIBAQYBAQEBAQYEAYEjhWkMgjUihB9eARVrH?=
 =?us-ascii?q?wcBBBuCaoF+rSmBMxoCZYRphQ8JAYMWhBdUSoJ5hg9Djz8Ejx6BAJMlMYxFo?=
 =?us-ascii?q?AEHA4MyiTaVMC8VlgYDkROFVoRTi2MfoFSFCQIEAgQFAhaDdXCDOlAXApx/g?=
 =?us-ascii?q?SwCBgsBAQMJkV+BEAEB?=
X-IronPort-AV: E=Sophos;i="5.87,180,1631577600";
   d="scan'208,217";a="421064611"
IronPort-SDR: 
 dhyWOA8ds9gU7BH3EG9i1v2A2KKqjXKGYxwjURghO2e24fUcUF+GXDZ8vYiZd+Hw8rH6FUDfVk
 81xBXWK/qeMvAU5VhsQ1LXTRhXdRgwlQtb2Iy6h9NxkZ3xgSThYilKZEY/xtagOyc84KGwVvu6
 Y0Q/dDkTNrE67QiSU++8OFuwEQ+pYiOX69p4rw9xO162GnGDBtRSoc3n7i3TG5MrZgkD0/dbpV
 G2PJtprwRnlr+mYxOenVjk5UusdJwaCyUi+97PQ0RgiZu4yv0Twio9OACgsQz2PzWtjRQzPY/P
 JD0=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: bbappend usage
Thread-Topic: bbappend usage
Thread-Index: AdfJnVTE4CPWQNMKRTKB5QfRNOLm+g==
Date: Mon, 25 Oct 2021 12:55:07 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_e8a9b4584edd4864bbf5d2c948dca66cbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 12:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55136
Message-Id: <20211025125515.BD901C433F5@smtp.lore.kernel.org>

--_000_e8a9b4584edd4864bbf5d2c948dca66cbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

If I am building an image "image-ABC", and it is composed of a number recip=
es, and for some of these recipes I may NOT want to install their final com=
ponents within my image...

Which is the best place to modify the build with bbappend ?

Would I modify a recipe's do_install (do_install_append-recipe_xyz) ?, or w=
ould I modify the image recipe (do_install_append-image_ABC) I am leaning t=
his way to avoid cases where the component recipes might have bbappends in =
place already ?

Looking for the proper Yocto way...

Thanks,
Steve



--_000_e8a9b4584edd4864bbf5d2c948dca66cbaesystemscom_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:440301184;
	mso-list-type:hybrid;
	mso-list-template-ids:2105990726 1626909112 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">If I am building an image &#8220;image-ABC&#8221;, a=
nd it is composed of a number recipes, and for some of these recipes I may =
NOT want to install their final components within my image&#8230;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Which is the best place to modify the build with bba=
ppend ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would I modify a recipe&#8217;s do_install (do_insta=
ll_append-recipe_xyz) ?, or would I modify the image recipe (do_install_app=
end-image_ABC) I am leaning this way to avoid cases where the component rec=
ipes might have bbappends in place already
 ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking for the proper Yocto way&#8230;<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_e8a9b4584edd4864bbf5d2c948dca66cbaesystemscom_--

