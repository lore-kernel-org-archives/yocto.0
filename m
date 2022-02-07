Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4ED4C433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 15:42:19 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.436.1644248538713529831
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 07:42:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=fgoLSUQS;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1644248538; x=1801928538;
  h=from:to:subject:date:mime-version;
  bh=VMAw9eVHeQCohBwhB0An0rSNjNAq/pqC5naGJEuzmng=;
  b=fgoLSUQS5ffPJ0oSVyPC4Gbb1Nkos0n+no1zp5590+JCEAYY9sf8TTxP
   k9EjPpW0ZBw8yO8TBjSkz1dg861ZUUvt3I2lAbD7w3Ujed4Zz2E7lFFu8
   iJhehYnQVFa0KQ7zHHoht0Nuwoc2Q7E66Rc11rnQ3KoV3EQuhD2TrxJj4
   w=;
IronPort-SDR: 
 6TCDXTCaWe8RfaNOgjBvS0Dfm6gr0/UGJ5GAUuOygphSVAcFeFa+Rac4e7CJ62kLQufQoWHPOB
 f9Movw6+M1Aw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AnTqkqRSys7rew7+2f8BJ5NxuQNpsotuYAWYlg?=
 =?us-ascii?q?6HPa5pwe6iut67vIFbYra00ygOTB8OHsrkd1rCe8/i5HzBauNDZ6DFKWacPf?=
 =?us-ascii?q?idNsd8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKS?=
 =?us-ascii?q?V3wOgVvO+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sxvdutMZjId/Jao91?=
 =?us-ascii?q?xvErmVVcOhS2W9kOEifkhni6sut5pJv7zhct/c8/MNcTKv2eLg1Q6ZFBzo8K?=
 =?us-ascii?q?WA148PrtRjHTQSR43YXT3sbnBlVDQXb9R/2Rpj+vDf0uep7wymaINb5TasoV?=
 =?us-ascii?q?jS47qdkUwHnhSEaPDMk6m7Xi8hwjKVGoBK9ohF03oDZbJ2JOPd4Y6jQe84RS?=
 =?us-ascii?q?2hcUcZLTyFPAp2yYZYTD+QPPuhYrpXyqFQVoBSkGQWsBvnixiNUinPo26Axz?=
 =?us-ascii?q?uQvERvB3AwlB98CvnParNLzNKcJT++60rLIwS3eZP1LxTfy9pbIfQ4nofqRQ?=
 =?us-ascii?q?797bM7dxkcyGQ/AgFmbtIvoPyiJ1usTrWiU8exgWfiqi24grQFxuSagydk3i?=
 =?us-ascii?q?oTSnY0a0E7L9T55wYYuOd23Vkt7YcW+HJRMsCGaMpJ7T8U/SG5npCg00KcJu?=
 =?us-ascii?q?YKnfCcU0pQnwQbSZfKJfoWU4x/uVuecLSlliH97e7+yhxK//Eevx+HhWMe50?=
 =?us-ascii?q?FlEojdBn9TOtn0A2B3e5tWZR/Z5/Uqs2iuC2x3c5OxCPEs6lrLbJoY8zrIsj?=
 =?us-ascii?q?JYev0bOEjXrlEjygqKabEQp9+iw5+j6frnqvJCROoBuhgzxKKgih8yyDOIlO?=
 =?us-ascii?q?QYURWeb4/6z1Lj78E38R7VFk+M5n7HCsJDfOcQbvqm5AxJJ0oo76xawETOm0?=
 =?us-ascii?q?NMAkHkZNl1FeBSHj43yO1zKJP31Ceuzj0m2nDdt3f/KJKbuDY/TIXjYkLbhZ?=
 =?us-ascii?q?qp95FBZyAoo19xQ+5VUCrQZLPLyXE/+qsDYAwckPwCo2erqBtdw2pkDVW+LD?=
 =?us-ascii?q?KKVKqLfvF+Q6uIqOeaMZYsVuDjnK/gi4v7jlWQ5mUMDcqm3w5QXbmq0HvFhI?=
 =?us-ascii?q?0WfenrjnMkOEXwRswUlVuPllkaCUD5IZ3auQa084yo7BJi6AofEQ4ChmKaB0?=
 =?us-ascii?q?zujHp1KemBGDUiBEHfvd4qYR/cMbzmfIstgkjwfSbihUJUt1BGptADm17pnK?=
 =?us-ascii?q?fLU+jcftZLhytd6+/HTmQs19TxuAMTOm12KGitlmWgUQBcy3btjugpszVyf1?=
 =?us-ascii?q?rBihP5VHsAV4OlGGE9uJJnX0+tSD9HpRhmHb9CCVFG+WNKkDDotCNUrzIldT?=
 =?us-ascii?q?Vx6HoDoqxfFxCenGPtdrKCGGpEyuomUn0XKZow1n23a2bcsiR8jRc1UOGC9r?=
 =?us-ascii?q?qR2+hPCHJLEll7fnKGvI/dPlBXR/XuOmDLd9HpTVxR9BP2tYA=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AZcIJOq2JM7ccFjeBUfbD5flzkn2cJEfYwER7X?=
 =?us-ascii?q?KvMYLTBsI5bp2NTnTNOUDuCaPmIZGP2c4xza9nlpEsC7JXVzNFrHlM43Hw8F?=
 =?us-ascii?q?HgiRegppTi6wuUcB84ZRyH6ZBoPA/42N5+QfKjYcleG/k33auK59CElvU21b?=
 =?us-ascii?q?uOU5NDsa3gZqTBMFX9JZSJLw4bVs6Yw6TSLK1rlVeDa/6UzDGSYNwtcaQr43?=
 =?us-ascii?q?U4iRCRH55wesBtA1rA3iGsiUFX2zxH5B7pHTU29wueRf2VaIgK6b76rILCR4?=
 =?us-ascii?q?GrZ+RI2W4L0yu+9dERMSLffJhmVlndTQO6phR0qSi4ai/59b6VaMBYMzWvU9?=
 =?us-ascii?q?zxy4IwlWZiYUhskIKDK3uEaVQJVHjpWN6RL467cPXW6qoqYyEiun37En6k/U?=
 =?us-ascii?q?hprZNBFkgpwKSQUnRACExgcaRufgMqywamnUa99gc8/K9HxO4ESsW0myivWZ?=
 =?us-ascii?q?cvK67irr77ivIceh2h235EVW6iDD/f1oAFHNHzoCyCj8H9JYH7moNqVuw=3D?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ab0qqgatZIh1rFOu4a3D67I1G7skC5YMji2?=
 =?us-ascii?q?hC6mlwRA09TyXGra2TdaUgvyMc1gx7ZJh5o6HnBEDyewKkyXcV2/hZAV7GZm?=
 =?us-ascii?q?XbUQSTXeVfBOfZogEIeBeOvtK1t50QFJSWYeeYZTcVsS+Q2njaLz9U+qjjzE?=
 =?us-ascii?q?nev5a9854Cd2FXQpAlyz08JheQE0VwSgUDL4E+DoCg6s1OoCflUWgLb+ygb0?=
 =?us-ascii?q?N1FdTrlpnurtbLcBQGDxko5E2lljWz8oP3FBCew1M3Ty5P+7E/6mLI+jaJq5?=
 =?us-ascii?q?lL8svLhiM05VWjoai+q+GRi+erw/b8yvT9Hw+cxTpAor4RGIFq8gpF4t1Ho2?=
 =?us-ascii?q?xa6OUk6y1QRPibrUmhNV1d6CGdoTXIwXIg7WTvxkSfhmamqcvlRCgiA84Eno?=
 =?us-ascii?q?5BdADFgnBQyO2U/Zg7rV5xjaAneC8oXR6NmeTgRlVvjA65sHAimekcgzhWVp?=
 =?us-ascii?q?YfcqZYqcga8FlOGJkNESrm4MR/edMeev309bJTaxeXfnrZtm5gzJilWWkyBA?=
 =?us-ascii?q?6PRgwHttaO2zZbkXhlxw8TxdAZnH0H6JUhIqM0kNjsI+BtjvVDX8UWZaVyCK?=
 =?us-ascii?q?MIRta2EHXERVbWPGebMT3cZdI60rL22u7KCZkOlZ2Xka0zveoPcc76IS5lXE?=
 =?us-ascii?q?YJCj3TNfE=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2C+CwCVHvlh/0HBJQpaHAEBATwBAQQ?=
 =?us-ascii?q?EAQECAQEHAQEVCYFRAoEfggWBQgySbp83gXwLAQEBAQEBAQEBCAESAiEMBAE?=
 =?us-ascii?q?BiGcmNAkOAQIEAQEBEgEBBgEBAQEBBgQBgRuFaQyCNSKEHx4BPwEVayYBBBu?=
 =?us-ascii?q?CfYIOgReuf4EzGgJlgyABgUmFE4E6AYFlhUSCf4YXQ48dIgSTHxMBgUageaB?=
 =?us-ascii?q?TBwODRosBlEowFZZOA5E2lkogpiICBAIEBQIWgWGCFXCDOQlIFwKcfnQCNgI?=
 =?us-ascii?q?GCwEBAwmMPIEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2C+CwCVHvlh/0HBJQpaHAEBATwBAQQEAQECAQEHAQEVC?=
 =?us-ascii?q?YFRAoEfggWBQgySbp83gXwLAQEBAQEBAQEBCAESAiEMBAEBiGcmNAkOAQIEA?=
 =?us-ascii?q?QEBEgEBBgEBAQEBBgQBgRuFaQyCNSKEHx4BPwEVayYBBBuCfYIOgReuf4EzG?=
 =?us-ascii?q?gJlgyABgUmFE4E6AYFlhUSCf4YXQ48dIgSTHxMBgUageaBTBwODRosBlEowF?=
 =?us-ascii?q?ZZOA5E2lkogpiICBAIEBQIWgWGCFXCDOQlIFwKcfnQCNgIGCwEBAwmMPIEQA?=
 =?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635206400";
   d="scan'208,217";a="449635155"
IronPort-SDR: 
 4CmXq1ewbnA8y1dm3lOOlC0ylhiVwGEBbtLX9J8P21cZq76RwDqJwe6l3wxutz45MCMAIE8Q6P
 XeJ9Fb6ubE1A==
X-IronPort-AV: E=Sophos;i="5.88,350,1635206400";
   d="scan'208,217";a="53431319"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: patching files under  "dynamic-layers"
Thread-Topic: patching files under  "dynamic-layers"
Thread-Index: AdgcNuGuFwv51OZ9SCG7nAvljmkv1Q==
Date: Mon, 7 Feb 2022 15:42:16 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_c407f47a42c24897ac694a21c8128059baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 15:42:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56095
Message-Id: <20220207154219.C4ED4C433F5@smtp.lore.kernel.org>

--_000_c407f47a42c24897ac694a21c8128059baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am building with zeus 3.0.4, Intel based...

I trying to learn how to introduce a patch to files brought in by packages =
under "dynamic -layers"... my bbappend appears not to be applying my test p=
atch (even though no errors/warnings thrown)...

This is the package I am trying to manipulate:

/disk0/scratch/smonsees/yocto/workspace_3/meta-intel/dynamic-layers/clang-l=
ayer/recipes-opencl/igc
It contains:
files  intel-graphics-compiler_1.0.11.bb

This is my recipe to apply patch:

/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/meta-intel/dy=
namic-layers/clang-layer/recipes-opencl/igc
It contains:
files  intel-graphics-compiler_1.0.11.bbappend

files - contains the file I am attempting to patch (FILE_TO_PATCH.patch)
intel-graphics-compiler_1.0.11.bbappend is setup like so, where

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D "\
    file://FILE_TO_PATCH.patch \
"

I attempted to male use of BBFILES_DYNAMIC but even though I get no error, =
patch is not applied.

conf/layer.conf:
BBFILES_DYNAMIC +=3D " \
    clang-layer:$(LAYERDIR)/dynamic-layers/clang-layer/recipes-opencl/igc/*=
.bbappend \
"

Can you explain to me the proper way to patch files under these circumstanc=
es and where I went wrong ?

Thanks,
Steve


--_000_c407f47a42c24897ac694a21c8128059baesystemscom_
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
<p class=3D"MsoNormal">I am building with zeus 3.0.4, Intel based&#8230;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I trying to learn how to introduce a patch to files =
brought in by packages under &#8220;dynamic &#8211;layers&#8221;&#8230; my =
bbappend appears not to be applying my test patch (even though no errors/wa=
rnings thrown)&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>This is the package I am trying to manipulate:<o:=
p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/workspace_3/meta-intel=
/dynamic-layers/clang-layer/recipes-opencl/igc<o:p></o:p></p>
<p class=3D"MsoNormal">It contains:<o:p></o:p></p>
<p class=3D"MsoNormal">files&nbsp; intel-graphics-compiler_1.0.11.bb<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>This is my recipe to apply patch:<o:p></o:p></b><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/m=
eta-limws/meta-intel/dynamic-layers/clang-layer/recipes-opencl/igc<o:p></o:=
p></p>
<p class=3D"MsoNormal">It contains:<o:p></o:p></p>
<p class=3D"MsoNormal">files&nbsp; intel-graphics-compiler_1.0.11.bbappend<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">files - contains the file I am attempting to patch (=
FILE_TO_PATCH.patch)<o:p></o:p></p>
<p class=3D"MsoNormal">intel-graphics-compiler_1.0.11.bbappend is setup lik=
e so, where
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;file://FILE_TO_PATCH.patch \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I attempted to male use of BBFILES_DYNAMIC but even =
though I get no error, patch is not applied.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">conf/layer.conf:<o:p></o:p></p>
<p class=3D"MsoNormal">BBFILES_DYNAMIC &#43;=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; clang-layer:$(LAYERDIR)/dynamic-l=
ayers/clang-layer/recipes-opencl/igc/*.bbappend \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you explain to me the proper way to patch files =
under these circumstances and where I went wrong ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_c407f47a42c24897ac694a21c8128059baesystemscom_--

