Return-Path: <Heinz.Wrobel@nxp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFDFC433EF
	for <webhook@archiver.kernel.org>; Tue, 10 May 2022 10:58:53 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.82])
 by mx.groups.io with SMTP id smtpd.web11.8304.1652180329744387206
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 03:58:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=eRrJJu7c;
 spf=pass (domain: nxp.com, ip: 40.107.1.82, mailfrom: heinz.wrobel@nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxNaPon7D++eT3eE/UU1h8joMtG+H0P+poctNybooz/vpgwrkV6ZeBT1W+GnMT5bbnU1/6F9ro0tGE6FsJWNIjldCuv63W0GJm72u/ulFG6EglqqrXOmbX9/QMH1SZ4z0cdBXMw17DoHfvuzDwON0XXfQAqNLEgt6thRzk7vQ0TP7cKv7h7JMGCcGPk0i2oiKjbtxbxX0W6ZC+aNDj/3v4Lky3RlCzYqcXijXySrN+4JTebF6qV4zaYBnDILG1LQaf20yHxWkXnTP2bv9aTYWVXacw9+2gPKxWRPvnEk+ohHQtaxheER32cewgHtBzfNpo7iWd1F8Ssm0A6N0uRI/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XEZx/NGra5vMCGlXXS0eiQA/07q34wtb+Zn8shRuXZE=;
 b=ms2MQGUdjghvUGE+n1iauC+of2KEThlsjwo7h/c7+NkD/jxQhKI2ZoVm6RmwfPzJN41jroStBXfjY83rSHdDmmaUgtLMknnPrG3IPfr09kEPg5zh/g9lNZN0sG6BzHQeg646qCBkr482+AiwlUZR0Gv5UKo2lOI9rBbJs0iJhr2eIJ8om6/q9vCZrDCEr24mCMMjkQwgw5PrayTcr5AWWVD4E/TonoBkLhCLBRccBhvIxOlJGTB+J7eWhinoLLNqfixXmsFN1R5FEOaOboF3PfDO05JxKrM3RaApLLAxc8TgIlynJB2kNN8JVNkQ+yxCtN27Lwxpb2vZCN1UiFXF2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XEZx/NGra5vMCGlXXS0eiQA/07q34wtb+Zn8shRuXZE=;
 b=eRrJJu7cTY7kfSTuqR/VEYJ1qznJRMQP5uj0SFNiskXbdlV4IW+XrghntC4yhn3/Z3EkmbcegHFTL+eCzfsFyCYBqxdPNDKeFL/81oKeQLLIMXgnzSHwaHUghqb6OXBL7zaurUigfav7jb+P5kzfJgUOBCoKUhIEHu9goXP2dbw=
Received: from AM0PR04MB4388.eurprd04.prod.outlook.com (2603:10a6:208:72::18)
 by VE1PR04MB7407.eurprd04.prod.outlook.com (2603:10a6:800:1ab::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Tue, 10 May
 2022 10:58:45 +0000
Received: from AM0PR04MB4388.eurprd04.prod.outlook.com
 ([fe80::f0ef:5e88:46bb:8796]) by AM0PR04MB4388.eurprd04.prod.outlook.com
 ([fe80::f0ef:5e88:46bb:8796%7]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 10:58:45 +0000
From: Heinz Wrobel <heinz.wrobel@nxp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Dependency clarification for image classes with bitbake?
Thread-Topic: Dependency clarification for image classes with bitbake?
Thread-Index: AdhkVA/jCETJ1n6ZRdStDiWYbtvwVA==
Date: Tue, 10 May 2022 10:58:45 +0000
Message-ID: 
 <AM0PR04MB438876390F7731CE9DC1BC4C8CC99@AM0PR04MB4388.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fed4754-b444-407e-fc13-08da32740deb
x-ms-traffictypediagnostic: VE1PR04MB7407:EE_
x-microsoft-antispam-prvs: 
 <VE1PR04MB7407B345FD4DBFB93C7415858CC99@VE1PR04MB7407.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 nfMJT+b3EkZqlNclsvAPhTJXM/MwU1I3JAMqd+qPwPOVG0mAh4Ao863DuLJfFg9awxkiMcyuX8gfYhdSCRw+01zNdjQaoHB3U4JyswbJ03jPRPoDKp3sKfJ5UM9s61cOy/IEc0Ed4cqSXC35z5TQKBM7wuCGqmkTrz+nv4f5Z/BRVjkMSGh533dlcNC8HMsFjEl2omMvY4d9E9f8zSIkoIB6DviAsTP2Je1BMbNVx2OLbVfXGx6VTPwroGSNHU8GXLaSZtgZsbrUYgr+xxNgqnLr/aU+ueDCUj9OXZ7YF8dQrSC05qimwvz7ZYJWysT05kBer29WjhKdBTMJIgsodJvLx13Vtze7r68mZSYbUpLFFxuQvp6kgeJqELPjpAXzn69TVUWGYN6SfTVtTp/Ob1U7DH3yDDbHOHXG+ahNiWfIHFGMWa4S2apHRtcar/ZL+ujh0bsxeRBCcpuIGNc4NLTz3XjikaZAzCI9i3hJvUm73KEEGZeVVUB7AL2xwovnZCMN0gkJSIjohAGkT1qn3FV1CQc5y4dhC7fNU9Bwf1H45MEORCtetMPQq9O7ZviHMi3ol6Ndv5TjrH01mQ961XrdMq6kB+rLxoMDOENeHOxwE4R6j4JJQ9Nh6NrpjNBgQOfHKntQZ30s3buVryuZPmbZ7msymEq1HN06iRqzx1L7c47/jCrstSqfLqgzYaz2Oq10ww8IN1KNqJAkvYtatQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4388.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38070700005)(7696005)(6506007)(5660300002)(26005)(6916009)(9686003)(38100700002)(9326002)(8936002)(2906002)(186003)(44832011)(83380400001)(508600001)(33656002)(55016003)(52536014)(71200400001)(76116006)(86362001)(316002)(64756008)(66446008)(66476007)(66556008)(66946007)(122000001)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?dvdZO6DW24M2cZgv7cmehaQ6nWgAN0m7Emnua88p3hmphp01wD+IGjYGAxMo?=
 =?us-ascii?Q?opK5fuvNaL0zYbfqiBqw2vuF0q8TyZXw2jvnogW0/b/FrdC+l7ddo8ehMti2?=
 =?us-ascii?Q?Sq4Lmmn8Gjwwlk4asg7Y/Hrn4SByO13AnNPZo/jnl5eUX+ay/0pE9IjLIVwY?=
 =?us-ascii?Q?WR4iKI3mG8viC1YkkUlQlE5+HdwAeGG1+JVEXyGPL/73i0scA/8jwOFZIOEc?=
 =?us-ascii?Q?pvxL5X6AUMFT5/ocoZjPm2hXtld5x/dPqFuLlGYQDzmS/8qqr444IgqTVbQq?=
 =?us-ascii?Q?9yChu751MBGpflGvuAJ4coD7P6gVoOl3LK65IfxuOyEd6J4lVA9AhARozOgT?=
 =?us-ascii?Q?Wtm7+/2LKVhtuoDmJ/vpONCDukUl1ELptUNunaVmTPPBQ2gWXsp/oeplME9O?=
 =?us-ascii?Q?Gl6fHVkTQQP+NICmTXKBVfHceLOLotT0jvmB5si6AvqQTEdyR6qivKgDTfl7?=
 =?us-ascii?Q?S/iDs62yxMFVO8F0ew36/bC7h5GOEcBKab6oKOkmV7I/vR9zjw9Ll+OPULmZ?=
 =?us-ascii?Q?Olagc6CSlzGtpzA5N9oBXYi+5SDdn6pFWjlwDP/mdN1fEFkpptHl6c+cMTEz?=
 =?us-ascii?Q?BPVelzwU88PH1/22MVXBFxfBG0LDZKnC1dpgjjDlMm/UgfIFUE3l2HTNVGPl?=
 =?us-ascii?Q?HISLo7BIC7na3iYns0T+FXMIVt8YHY5JTGUK8w6b0AuR+aXnhIqIZrl4Cn4H?=
 =?us-ascii?Q?Cskvdx/wn76Icigdf/qEhEAB5rQMbD1HIIKZNNvAeOAB3Lxb2+S+N/2LPh/j?=
 =?us-ascii?Q?NihNqmQVwSjK57WV64j9x3Zy4qoN7Q1yFRbEG85jMLpx5pgvbd7Fh4To5mQR?=
 =?us-ascii?Q?qKJNsamzTao26/HNJ3nxILe/yJSEn1XmszkX/8JObDh3Bpv9fdMvy4l8uUL7?=
 =?us-ascii?Q?cnAOQvDRWvvEX7VM7lb2veccei+B2vNDC4wHdy56t4RDvsdNLpyPwfULaysU?=
 =?us-ascii?Q?vNOwGKoFT0oTaN9qoa0DV9pMKphXEhuw41lDamRE+uKkapYhI+Y3W5lIm7H/?=
 =?us-ascii?Q?7R03/yQgPygcptUMIyb3bfcQvXLwSQgLhhkAXnYu/bekiMozCswFH5aqRXNb?=
 =?us-ascii?Q?4+cM+la9McHx9SiBnU0uqJ/8jZ85ZuiMumCuYo9Z74aNXnsEV3uOEpEKyquS?=
 =?us-ascii?Q?AYSfvZgseaueG1IklGTVjr9ifFH6gpy4cCqCVwmu7P3+NTfKC4VB+Q2FSdF1?=
 =?us-ascii?Q?9H+6NjCyUMrg00pBHlbjursKNpCbj252/9ZJZTUu5WuTI79i2hDl5vxYM0qF?=
 =?us-ascii?Q?Twqnd+U4FytBfrAbI7nTut87nHNGM3h1x+mpGoT5xMmnA+W+NWD+o4xK0oz3?=
 =?us-ascii?Q?HnGI0ddJhz/VlBSFM3m+nIIzxa/+fQ4hrgB7idnNtfKW/0xxBFRCV0I3kYTB?=
 =?us-ascii?Q?pZCSxP7HnvLGt/aW/2EIJwnI8g61MJtc3s4wKmjY9zQ0wBnhMWNEmX7SDT9n?=
 =?us-ascii?Q?LhHELw6UyKrUS05hkq7sk0rFr4MwuZBIpBlL/WVPdiZPGQbUTKDymgKtXw5T?=
 =?us-ascii?Q?3cu+MEa77UYvFug23dNzOtEZF025a0614MvLO27KxAtmbq1PmXc0ESg+fo1e?=
 =?us-ascii?Q?sLE49cTedEeSU7+8QCtCMZQ+bplZ14WBr1Kg/4WFz6UGyLw3aG1fXClWUE68?=
 =?us-ascii?Q?OfZclxkRuYRZeflvVRVxe2Ubw3Cdk0a5vU8xnwGL8IUmw+V7tsfk3zQ+sYdC?=
 =?us-ascii?Q?35z13rheW6DfOobSkvbW5vClksqDE9xXl7Um+c2pXkI2cbJom66g8/6Lg2Gi?=
 =?us-ascii?Q?zaxCLUC1jg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR04MB438876390F7731CE9DC1BC4C8CC99AM0PR04MB4388eurp_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4388.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0fed4754-b444-407e-fc13-08da32740deb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2022 10:58:45.7354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 n4YHiQn4my3JJH1BYorUzYkE9aXdNtDaKqFYQmTgTIuU0/JNYIZbT3OBYIXXusFax90LviLbzzW4dnWU8QaiLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7407
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 May 2022 10:58:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57047

--_000_AM0PR04MB438876390F7731CE9DC1BC4C8CC99AM0PR04MB4388eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have some issues in sorting out dependency management for a custom image_=
types_*sdcard.bbclass and need some help/advice because the docs didn't sol=
ve my problems.

As opposed to "normal" images where do_rootfs depends on the packages and d=
o_image on do_rootfs and the image types on do_image, here we have extra do=
_image_sdcard[depends] for stuff outside the rootfs.
My do_image_sdcard[depends] currently references do_populate_sysroot and do=
_deploy of some other recipes and I have a empirical/paranoia recrdeptask o=
n do_packagedata to mimic image.bbclass.

It appears now that bitbake only runs my do_image_sdcard task if the task h=
asn't been run yet, no matter the state of the dependencies. It doesn't see=
m to matter for do_image_sdcard if some do_image_sdcard[depends] dependency=
 for that task is actually missing or newer.
If I, e.g., cleansstate such a dependency and then bitbake my image again, =
the dependency is rebuilt, but the image isn't rebuilt because it already h=
ad been built before. A dependency build trigger downstream in the chain is=
 not an execution trigger upstream.

So now I have an image that is outdated, because a necessary dependency is =
more recent.
This seems to be explained by the statement in the bitbake manual "Currentl=
y, invalid timestamps are only considered on a per recipe file basis.", i.e=
., if recipe A depends on B, A is not rebuilt if A already exists, even if =
B is more recent than A.

For this simple case, I can fix it by cleansstate'ing the image and rebuild=
ing it (or would it be enough to just clean the image?!).

But what concerns me now are more complex recipe dependencies. If I have A-=
>B-><many>->Z and rebuild Z without knowing that A needs Z then a later "bi=
tbake A" would do nothing. A and the interim dependencies are then outdated=
 because bitbake wouldn't execute on, e.g., C or B or A.
So unless I know the dependency chain manually I would always have to clean=
all because I can never be sure that my image is outdated somewhere just be=
cause I rebuilt some recipe somewhere? That wouldn't be efficient at all an=
d kill most of the sstate usefulness.
Alternatively I would always have to "-f -c image_sdcard", which also doesn=
't exactly seem like a good approach because then the datestamps for the un=
derlying images wouldn't match anymore and the rootfs can't be found?

It appears to me that I am missing something because this all just seems ri=
sky and so fundamental?

The obvious question is of course: Is there a reasonable way to ensure my i=
mage gets recreated by executing my do_image_sdcard if any dependency has a=
 more recent timestamp than the current image?

Thanks,

Heinz

--_000_AM0PR04MB438876390F7731CE9DC1BC4C8CC99AM0PR04MB4388eurp_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have some issues in sorting out dependency managem=
ent for a custom image_types_*sdcard.bbclass and need some help/advice beca=
use the docs didn&#8217;t solve my problems.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As opposed to &#8220;normal&#8221; images where do_r=
ootfs depends on the packages and do_image on do_rootfs and the image types=
 on do_image, here we have extra do_image_sdcard[depends] for stuff outside=
 the rootfs.<o:p></o:p></p>
<p class=3D"MsoNormal">My do_image_sdcard[depends] currently references do_=
populate_sysroot and do_deploy of some other recipes and I have a empirical=
/paranoia recrdeptask on do_packagedata to mimic image.bbclass.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears now that bitbake only runs my do_image_sd=
card task if the task hasn&#8217;t been run yet, no matter the state of the=
 dependencies. It doesn&#8217;t seem to matter for do_image_sdcard if some =
do_image_sdcard[depends] dependency for that task
 is actually missing or newer.<o:p></o:p></p>
<p class=3D"MsoNormal">If I, e.g., cleansstate such a dependency and then b=
itbake my image again, the dependency is rebuilt, but the image isn&#8217;t=
 rebuilt because it already had been built before. A dependency build trigg=
er downstream in the chain is not an execution
 trigger upstream.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So now I have an image that is outdated, because a n=
ecessary dependency is more recent.<o:p></o:p></p>
<p class=3D"MsoNormal">This seems to be explained by the statement in the b=
itbake manual &#8220;Currently, invalid timestamps are only considered on a=
 per recipe file basis.&#8221;, i.e., if recipe A depends on B, A is not re=
built if A already exists, even if B is more recent
 than A.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For this simple case, I can fix it by cleansstate&#8=
217;ing the image and rebuilding it (or would it be enough to just clean th=
e image?!).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But what concerns me now are more complex recipe dep=
endencies. If I have A-&gt;B-&gt;&lt;many&gt;-&gt;Z and rebuild Z without k=
nowing that A needs Z then a later &#8220;bitbake A&#8221; would do nothing=
. A and the interim dependencies are then outdated because bitbake
 wouldn&#8217;t execute on, e.g., C or B or A.<o:p></o:p></p>
<p class=3D"MsoNormal">So unless I know the dependency chain manually I wou=
ld always have to cleanall because I can never be sure that my image is out=
dated somewhere just because I rebuilt some recipe somewhere? That wouldn&#=
8217;t be efficient at all and kill most
 of the sstate usefulness.<o:p></o:p></p>
<p class=3D"MsoNormal">Alternatively I would always have to &#8220;-f -c im=
age_sdcard&#8221;, which also doesn&#8217;t exactly seem like a good approa=
ch because then the datestamps for the underlying images wouldn&#8217;t mat=
ch anymore and the rootfs can&#8217;t be found?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears to me that I am missing something because=
 this all just seems risky and so fundamental?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The obvious question is of course: Is there a reason=
able way to ensure my image gets recreated by executing my do_image_sdcard =
if any dependency has a more recent timestamp than the current image?<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR04MB438876390F7731CE9DC1BC4C8CC99AM0PR04MB4388eurp_--

