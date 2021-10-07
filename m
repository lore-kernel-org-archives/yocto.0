Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD3C433F5
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 16:22:15 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.735.1633623734317613633
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 09:22:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ksWD0EC+;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1633623734; x=1791303734;
  h=from:to:subject:date:mime-version;
  bh=sZsNN+OPV18HzA+yqJwGz13KtBQTjq4MgQOAjW3OcO4=;
  b=ksWD0EC+Gye3UCtEKGOGlJiArdbv69JHXpRYDUJJm6nuSj5ZbHLknaEU
   GglOlS+q9doQzdqfZwF6oHhK4fpn9UDoizuDyqiQPDihh7fPCnvYnE3TS
   PU7KL4YkFssoYJWLUCffVC+ARW7gVOz70RYl/gv8rdtOfmon108LXtNj5
   0=;
IronPort-SDR: 
 Z3Oepkdy8OTe430eFv9emK/t8ITNjIsnv/UqV9IJHykbf9Ntdk4qiv4RNii3deIOEMo/Wfcbx2
 A0W0namEUi3g==
IronPort-PHdr: =?us-ascii?q?A9a23=3AzdS96Rav9FJtAW+cuWdZURj/LTGt0IqcDmcuA?=
 =?us-ascii?q?noPtbtCf+yZ8oj4OwSHvLMx1gePBNSLoKMbw8Pt8InYEVQa5piAtH1QOLdtb?=
 =?us-ascii?q?DQizfssogo7HcSeAlf6JvO5JwYzHcBFSUM3tyrjaRsdF8nxfUDdrWOv5jAOB?=
 =?us-ascii?q?Br/KRB1JuPoEYLOksi7ze+/94PPbwlSmTawZbB/IBqyoAjTq8IbnZZsJqEtx?=
 =?us-ascii?q?xXTv3BGYf5WxWRmJVKSmxbz+MK994N9/ipTpvws6ddOXb31cKokQ7NYCi8mM?=
 =?us-ascii?q?30u683wqRbDVwqP6WACXWgQjxFFHhLK7BD+Xpf2ryv6qu9w0zSUMMHqUbw5X?=
 =?us-ascii?q?ymp4qF2QxHqlSgHLSY0/mHJhMJtkKJVrhGvpx1jzIHbe4yaLuZyfqHHcN8GW?=
 =?us-ascii?q?WZNQMBcXDFBDIOmaIsPCvIMMehfoYn6oVsOtgWxChe3BO/31zRGm2P20rMk0?=
 =?us-ascii?q?+s/FwHNwRItFM8KvHvasdv5MakeWv2ywanT0TXMce1W1in76ITSdxAhpveMX?=
 =?us-ascii?q?alufsXP0kkiDBjKgU+Opoz+PzKVzfgNvHae7+p7T+6gl2knqwRorzWp28wjh?=
 =?us-ascii?q?ZXHiJgPxVDY6SV23pw1JdugRUB1b9OpDJpduiObOodoX88vXWJltSY+x7AJt?=
 =?us-ascii?q?pO3YSYExZQoyRLCb/GKcYiF7x3iWeqMPzp1gHFodbGiihqv/katzPD3WMqs0?=
 =?us-ascii?q?FtSsyZJjsPAu34P2hDJ9MSLVPtw8l2g1DuPzwzf9/1ILVo7mKfUMZIszaQ8m?=
 =?us-ascii?q?ocTvEnFAyT4gl/5jLWMeUUh4uWo7uPnbaj4qZKELI90jx3+MrwpmsyiHeQ0K?=
 =?us-ascii?q?ggOUHaf+eS7zLDj4UL4T69Mjv0zianUtIzWKdgHqqKkGQNV1Jws5wykADi8z?=
 =?us-ascii?q?tsYhnkGLElZeB2ZiojpIEvCL+z/Dfe6m1iskTFryO7aPrD5H5nBMmLPnbnjc?=
 =?us-ascii?q?Lpn9UJQ1go+wcpe6p9UEr0BJej8Wk71tNzWFB85NAm0zv78CNVhyIweR3yAA?=
 =?us-ascii?q?qmDPKPXtl+I4PkvLPeSa48OozvyMOIq6OD1jX45gl8dYbem3Z4MaHyiAvtmJ?=
 =?us-ascii?q?ECZbWL2gtgdCWcKohY+TOvyhVyCVj5ce2qyX6Un6zE/CYKmFpvDRpu3jL2B2?=
 =?us-ascii?q?ye0AoFWZmdeClCWFnfodZuLVOsQaC6IJc9hiDMEBvCdTNprxBalqAjSz7t8M?=
 =?us-ascii?q?vGS6yoTqZX7zt936ubP0xYo+nY8W9Wa2H2KZ2V1hX8TAS4x17x4uVZ6yFqIz?=
 =?us-ascii?q?e5/mfMORvJJ4PYcGCI9M4XRwvc+Q+vuVxzMeJ+iABabeZTsSWUqUt8vztlIZ?=
 =?us-ascii?q?kF7ANivlTjJ1iexEqQJmrmQQpcz9/SPjDDKO89hxiOeh+EahF48T54XXVA?=
 =?us-ascii?q?=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3Ao3asp6us1DV6dwKNHdeiaSiZIOfnVGNcMUV32?=
 =?us-ascii?q?f8akzHdYApBsoF/qtZmKWuOb/zZajbwf49xYY7g8EJV7JWBzdRjTgo6qStnR?=
 =?us-ascii?q?CkXgMeUXt7xwmUcn8+xwm8vdK/shiknQoGowPscEzmM+39BDpC79SMljPnQG?=
 =?us-ascii?q?eKnYAL5EnkZqTFMGX9JZS1LxrZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTegrN8F251?=
 =?us-ascii?q?juxExYFFsOslLPgIxVSGueUOwHIgHNbQLm5nhVHvWo51aNT2Pg0MB8R0GrPx?=
 =?us-ascii?q?YosjosQ3XCzYV5B0qnkg/gQTRReVSR5O7ZL9aTvK3Gyqt2I00DDaD3nxPAG4?=
 =?us-ascii?q?EQeYdRHp7krUD4XnRAfAHVXBvyZvMqnx7mnTcFoh98/N4/6O4gDvWl6yjPUB?=
 =?us-ascii?q?upgRorMK5gmT/cwMCwY35gIRqmYPZBEL2QyBCksqiZnYj8/YK/SVs/12BETq?=
 =?us-ascii?q?wFllW8=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Aw8dC6qHQRJQ9bhAjpLqEkceALOsnbusQ8z?=
 =?us-ascii?q?AXPixKIiC9G/bwqynEpp4mPHHP4AosZA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2C2CACyHV9h/0HhJQpagQkJgVKBH4F?=
 =?us-ascii?q?/gU2xZoF7CwEBAQEBAQEBAQgBQQQBAYdJJjoEDQECBAEBARIBAQYBAQEBAQY?=
 =?us-ascii?q?EAYEjhWkMgjUihB9eARVrJgEEG4JqgX6udoEzGgJlhGmFDwkBgTCBZoUugna?=
 =?us-ascii?q?GDEOPPwSOeTmeRJ92BwODMJ5YLxSWAQOREpYlpUUCBAIEBQIWgXsLgW9wgzp?=
 =?us-ascii?q?QFwKOOxaOLoEsAgYLAQEDCZNhgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2C2CACyHV9h/0HhJQpagQkJgVKBH4F/gU2xZoF7CwEBA?=
 =?us-ascii?q?QEBAQEBAQgBQQQBAYdJJjoEDQECBAEBARIBAQYBAQEBAQYEAYEjhWkMgjUih?=
 =?us-ascii?q?B9eARVrJgEEG4JqgX6udoEzGgJlhGmFDwkBgTCBZoUugnaGDEOPPwSOeTmeR?=
 =?us-ascii?q?J92BwODMJ5YLxSWAQOREpYlpUUCBAIEBQIWgXsLgW9wgzpQFwKOOxaOLoEsA?=
 =?us-ascii?q?gYLAQEDCZNhgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.85,355,1624320000";
   d="scan'208,217";a="417574971"
IronPort-SDR: 
 dxfX6EvYf0i0V4yy2DnzaxgBFGhg3gfQFezI0x1p5p1q8wahWC3eTf9kjTPqWNmbihanTWuXR4
 sA89GDd0c+CNzU01V9JbqA7590Pjus0kU17r/IafoiS9ItTOX+RlXJSIxgR/urmRVf37TSeFmE
 rHifYw+lovqAH41tVQ3tyj348IBJFP+6hEC00X+Wy3qb36DRVSDMMpOJvCQLgMmuQouU1vK4ob
 XVh2cHtLs8uV3nnFPzUaOviZWdOuMmL4Jf5/D63y41PGnZST4O5fGAQ9t1grekkF9buOcUqFKP
 FcA=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #zeus meta-intel
Thread-Topic: #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGw==
Date: Thu, 7 Oct 2021 16:20:40 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_3fa3f98c6d1141d792d8ae31684f2b77baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 16:22:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54986
Message-Id: <20211007162215.B6FD3C433F5@smtp.lore.kernel.org>

--_000_3fa3f98c6d1141d792d8ae31684f2b77baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



I am looking at "meta-intel/dynamic-layers/clang-layer/recipes-opencl/compu=
te-runtime"
I have been "told" that this compute-runtime recipe should basically build =
opencl (Neo) with all the required dependencies...
I did not think Yocto had support for OpenCL, and was looking to build Neo =
under the SDK.


(1)    Is this true, does meta-intell under zeus now support building OpenC=
L and the OpenCL Graphics compiler under Yocto ?

(2)    Of so, what would be the proper way to pull this into my yocto build=
 ?

Thanks,
Steve

--_000_3fa3f98c6d1141d792d8ae31684f2b77baesystemscom_
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
	{mso-list-id:1970889231;
	mso-list-type:hybrid;
	mso-list-template-ids:-2049425350 1823623060 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	color:windowtext;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking at &#8220;meta-intel/dynamic-layers/cla=
ng-layer/recipes-opencl/compute-runtime&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">I have been &#8220;told&#8221; that this compute-run=
time recipe should basically build opencl (Neo) with all the required depen=
dencies&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">I did not think Yocto had support for OpenCL, and wa=
s looking to build Neo under the SDK.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#1F497D">Is this true, does me=
ta-intell under zeus now support building OpenCL and the OpenCL Graphics co=
mpiler under Yocto ?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#1F497D">Of so, what would be =
the proper way to pull this into my yocto build ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Steve<o:p></o:p></span=
></p>
</div>
</body>
</html>

--_000_3fa3f98c6d1141d792d8ae31684f2b77baesystemscom_--

