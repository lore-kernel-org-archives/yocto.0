Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D055C433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Mar 2022 15:50:21 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.46])
 by mx.groups.io with SMTP id smtpd.web09.10920.1646927419819786885
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 07:50:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=gBeFtIRn;
 spf=pass (domain: sierrawireless.com, ip: 40.107.102.46,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZOSIk6j4Nu1RRNiKysJYehps5MX+ZKL4SUUKRM/AVXSRymYkVnkFSnggjaANSMAai5yuxD3yiyFXCR3rroFSuY5EdRl/8iqb5zRrAPQtYixWj2AbX2Duxytc+pU1YebO8fC2yn5X+Y/dVvtP3EWl4xlHrnOzzvetGrCNggB3wjJiLhhyrpyTi/ozNDxigkQRmLu7xL0EjhRUcThBINg3th6Yj8ca87AwrA2ptpIhSEan3dgDm22qllGiDXVvBfdTAF+foNXYNxQBNrqFHD0fgsQ32Yqa8mLsrYyS8vVc0no++e72n2xPi/JjfcpSkiil/DP6fPOy3fgu+uoVwAPYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t17bL4uT6v8IiKwrCQPhzR+NMW7V95v1M7ceAZ1u3IE=;
 b=Jvkh4J9BryWB3etL9VgBLeb7i9UgWiEYedNGk3DGZDsQgO2K+/BAUPxX1KXy6rjgihQWZ6BObN9oqubFO7QGY2TVZCYb0WSKfGD/NGM+6EyW4Fu+JARLBV21APrNqFEAzR/40Ee9u38k+sKiv+/vPAE6ES2iH27ze+9LeWARsq2XNhIWjWewHDGjtmFGkfHPSLCOhRhLDQRi+CA082UDvFq7NoA3ARdILXTGjbpmX+35OEEwbG7NoToDdb/uXLKFfQEfMzoOno8C6qg9KvHf/7YFzBKHdb+9Y3hnlaPfvUrW6DjsP+UIaY+bnQk5PKQ4m0RrJSVnG6Idyxr4sZJ2mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t17bL4uT6v8IiKwrCQPhzR+NMW7V95v1M7ceAZ1u3IE=;
 b=gBeFtIRnLnWmRcoz5fFabYM0Ra1ssO8cMmZQ8jVI4fJWoW0t0kViJqkJU/BaD1P+A+6hFMgEFUl2PsdIpRcgW8u5nThAFUIdMRaffK3eFRTOXEhlm9QBUyMEWfLMSyo/wzxNFev4/Nnhy++xe7zrFV+QA5u98JjzZOAfMcv87j8=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by SN6PR02MB4398.namprd02.prod.outlook.com (2603:10b6:805:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.21; Thu, 10 Mar
 2022 15:50:16 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::9176:77ce:4434:a98a]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::9176:77ce:4434:a98a%5]) with mapi id 15.20.5061.021; Thu, 10 Mar 2022
 15:50:15 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Darcy Watkins <darcy@xstreamworship.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>
Subject: Re: [meta-security][PATCH] isafw.bbclass: update task dependency on
 cve-update-db-native
Thread-Topic: [meta-security][PATCH] isafw.bbclass: update task dependency on
 cve-update-db-native
Thread-Index: AQHYNCVBJHb1IzBiskitxmcKHjlEY6y4wSjf
Date: Thu, 10 Mar 2022 15:50:15 +0000
Message-ID: 
 <CO6PR02MB874016B8022E96724314D4BFB20B9@CO6PR02MB8740.namprd02.prod.outlook.com>
References: <20220310021825.6371-1-dwatkins@sierrawireless.com>
In-Reply-To: <20220310021825.6371-1-dwatkins@sierrawireless.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ce4c3f0-8d80-4494-5f6c-08da02adab97
x-ms-traffictypediagnostic: SN6PR02MB4398:EE_
x-microsoft-antispam-prvs: 
 <SN6PR02MB4398CF65EF7D66BA69A6EA1BB20B9@SN6PR02MB4398.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bXjdeo0v7fLuj2QbU3F7xqCMheYNOl9bCtqD+3S6Bys3IQDZYF84Tawc4JyPKckRFPdF+S8TkNEicNw2ZCmf+deskuq6OqfMzoaY1qV38xsnJcBjHiHZJ7bxDGpH8gEH1eEM6IGwJyCi9FzncEdGbLomA/WuCj2QkiRh4kCR6MIXggAkCvewemZ6PTwSGrfjh2bUOHNzAKa4iG1aaMOJoeDXyXqco/pLFHSXJmQLPxmhvniPs2JvnifBTYcFT6J/JNt5aLQ/VU+T6oalOmzcqYzo4eFMUBjRhPScaeaL0Pi0akFvMk19rAio/zZfE838oCos1+I5HCAdhE21h3d7h3cMjiBTmGHYNu4d6PiL1AaHFp1JaE5HemI+aeb4Fd3Iqm1di6lPsAq5JF556iVqQ1wfjfa6nBEXr1eXJhNHKDElc68a7z1SmV8ZUQHBmglXiXbbmCZ4TvovbDIMEL6FByMV8bAe4k34DCMgz0zsTC2Ax84T8JfolVwCfoaz5orIHUxZ1mCYetqWGLeoZvJfgX/JZ7whlKzDtguAH+FPbnORq92pkPNFqN7ZGDgI6/xO9kKUMOIAyZLvnyCFtXPUdl4vvoN9aAAEaSTuzdG7CYqH3u+bv5tNvH5QeWC8Z+wy9pIdKpk+/HUHtXJ7k970EyJPKqX+D2qT9i2l+hRG6WrRT8uq7u8PZaGj7ACWIfuO072HAi85HPP3aqVqJ8fWYHct7DD6nit5arXA1KI+EUKgxzJ1dW+WPwidnMby1KbrHfpA/X76qDd9wuovz0RJ+B6neEiHbK59Ff5yhjPTYf0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(9326002)(9686003)(8936002)(86362001)(52536014)(7696005)(166002)(55016003)(83380400001)(316002)(6506007)(2906002)(53546011)(15650500001)(40140700001)(508600001)(76116006)(64756008)(66476007)(66446008)(66556008)(66946007)(38070700005)(33656002)(8676002)(4326008)(54906003)(6916009)(71200400001)(122000001)(38100700002)(5660300002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?y0dt8H/bOIXlGhzI4SJwropBDdPm2Zw57vsJreOXKfAT8fL3wkWTVgRN?=
 =?Windows-1252?Q?SPrK+j0OQTGWCqBMNa64ZF+X3YzHAN4g2J8/gVTEKlQPAKihm91eQTeB?=
 =?Windows-1252?Q?7dnyAyBgjWfNXPIdNf2WqZTKR3ZkjbVmMYawXe0P9CpI2viMsDPSZGqI?=
 =?Windows-1252?Q?1tJTx9K6YVSwGKQ/2ldXA8rEAHTippkT+3C47FgpQ3p3cfLb67F3bhbt?=
 =?Windows-1252?Q?ZF+kg0zf9OT+VKE68cxuIlk/QPUFmhHkItQOYE1jb4dekmOIYQwF2mCH?=
 =?Windows-1252?Q?FkkrdU6QJa3SDKw2/gzGqzpMRbejKtPeHdnk76n6Cy0+ymzRlAeME9in?=
 =?Windows-1252?Q?bymA/rYeLHY75P1EIIF96yb0XlwVAqunJI8SM+Y833Y1tui1ejb7aUUi?=
 =?Windows-1252?Q?xsAhp/WJqD2N4+hbsMj5mCMb/2AtqkBTlxdV3F6GHndC0qj2VKc/OcRX?=
 =?Windows-1252?Q?Casg42XsLAbv5khxY/ZBLWIzhhMKWcpwqkilVXtRsei64MJtNK8euPDY?=
 =?Windows-1252?Q?fgtPv5c3eaij02gwZCRv/Jg4cIsGB6I7LqIOuucEYycjY2bswSQsFmyF?=
 =?Windows-1252?Q?TQSXrfVl0rjg/fcodqswAQQOhs4TQvqhWxWXjvGsY91p4UDfSZCke7tj?=
 =?Windows-1252?Q?MvIFxQn+qc3MRmrUDL2c+s43rYkDDjFndJSXCnBTXffV2BAc6QM0KZsE?=
 =?Windows-1252?Q?KwojVsRV0xVg8wQXlOiJOize4sCvbkmG7qW0bQWm/5fTkS9A/nPVrUaP?=
 =?Windows-1252?Q?rBO13QUVuR0a+QcLu8KvXv6AQRbieakHCedzeejAGCuNH+BisV+N9MQt?=
 =?Windows-1252?Q?FcRZCUJRyhU1ONxm0uDKPxAXnVVAkczRxD+3CKe9zfWNmtOcS5xwsx9q?=
 =?Windows-1252?Q?7AqYS58h1Gf20WyjBifL/vzh/DoKxxfE+RQ6B87NluNqwqO4jqwCI7rg?=
 =?Windows-1252?Q?0UhmC2+RAB9LiFdwkXidUqEeHVNvdRWb0XAcHnAiwDRBv6Wwy5zruGSh?=
 =?Windows-1252?Q?5gQw//XfThUyrobit7WJwVhUs2dxKhVtQ2oNJaLaRc3dVuXjZpfccjLq?=
 =?Windows-1252?Q?Vv6xNYIoHR6a/02QWBgHAYh+zJkwgoq9zA899qurBXC9WLSIBdC9OAro?=
 =?Windows-1252?Q?J9kaDlRWhKj+TFns/QbaqBHjMlE/C/SBiQBGfzlC/nqtANELWuvgtTHC?=
 =?Windows-1252?Q?ky8nWE09hpAwlowCew10QhyDrdllsXSbbma4XHH8AvQXSwz3OwuhHdU/?=
 =?Windows-1252?Q?c05GibaTQqvbLJLlUfJDvsc+5v1vGvtBM/RJ24YPiqyYNxi1xgjGxKvF?=
 =?Windows-1252?Q?VG25qOta9Rpk0G5TCEbiyBMXasTC0FwNgUzXtLZYIUCLdsWx4YvBQ8Id?=
 =?Windows-1252?Q?ardJruOFUOMilDrxjl+tQGsq2fhoDKRWdUCXamm6SsfeF1lVJ0Trlp4F?=
 =?Windows-1252?Q?AuTNycvVkl2xT4HKIObhvuD72CYpySSQemQjqRTn1opky1ir71fgWVEE?=
 =?Windows-1252?Q?X4/EHvOJvA6x7LRRWfyj6dSvpbzeu6M5NpClzcFLfL1TlB7A+nA+X5Q+?=
 =?Windows-1252?Q?7SdMU/8iCkpwq/rFS9lRVIVE6GEs24Q+HvaTNirZvQ4CWbtjPvIo4Vdd?=
 =?Windows-1252?Q?hpqVlgcopTSYKpreTb6s0LxoiZo0QvmWhryNQNopqYxIwFQOx8s+iyeb?=
 =?Windows-1252?Q?KWbIF2TCp0E=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB874016B8022E96724314D4BFB20B9CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3ce4c3f0-8d80-4494-5f6c-08da02adab97
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 15:50:15.7143
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 n88tQGd2GK7xIitPhLNrvEBhZl7JVC7B5uhKoxuFcK5S2gXjy08wbgAoPQKdnp72ldLN08iumlO0OTdNi/SHfCVJ1xbNxMsnDmwE69eaXuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4398
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Mar 2022 15:50:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56415

--_000_CO6PR02MB874016B8022E96724314D4BFB20B9CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am resending this from my regular email client because I think that my or=
iginal submission using git sendmail was messed up in my GIT config so it d=
idn=92t make it to the list.  (I did send an email using git sendmail to Ar=
min).

We need this change to meta-security to be compatible with the referenced c=
hange made in poky / OE-core.  Otherwise there is an error as I reported we=
eks back.  I believe that this patch fixes it.  I have used it in both mast=
er branch and in dunfell.

We also need this to be back ported to all the same branches of meta-securi=
ty to correspond to all the branches on poky to which the 33efd9351702e08a5=
3e6512e235f947e4f9e914f commit was back ported.  This includes dunfell.

It is easy to find in a poky branch by grepping for do_populate_cve_db.

From a different perspective, there could also be a case to revert the orig=
inal changes as I notice that populating the CVE database is not necessaril=
y something that we would want to be part of someone running a fetch all op=
eration for a target image, because the fetch for the CVE database would li=
kely be run again later at the time of building the image.  This could be a=
 matter of discussion (if not already discussed).  But I can work with it e=
ither way.

Thanks!


Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

From: Darcy Watkins <dwatkins@sierrawireless.com>
Date: Wednesday, March 9, 2022 at 6:19 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: Darcy Watkins <darcy@xstreamworship.com>, Darcy Watkins <dwatkins@sierr=
awireless.com>
Subject: [meta-security][PATCH] isafw.bbclass: update task dependency on cv=
e-update-db-native
From: Darcy Watkins <darcy@xstreamworship.com>

poky commit: 33efd9351702e08a53e6512e235f947e4f9e914f
(or OE-Core commit: f5f97d33a1703d75b9fd9760f2c7767081538e00)
had renamed the do_populate_cve_db task in cve-update-db-native
to do_fetch.

Need to update the do_build task dependency accordingly.

Signed-off-by: Darcy Watkins <dwatkins@sierrawireless.com>
---
 meta-security-isafw/classes/isafw.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-isafw/classes/isafw.bbclass b/meta-security-isaf=
w/classes/isafw.bbclass
index da6bf76..4d39fc7 100644
--- a/meta-security-isafw/classes/isafw.bbclass
+++ b/meta-security-isafw/classes/isafw.bbclass
@@ -105,7 +105,7 @@ python process_reports_handler() {
     os.environ["PATH"] =3D savedenv["PATH"]
 }

-do_build[depends] +=3D "cve-update-db-native:do_populate_cve_db ca-certifi=
cates-native:do_populate_sysroot"
+do_build[depends] +=3D "cve-update-db-native:do_fetch ca-certificates-nati=
ve:do_populate_sysroot"
 do_build[depends] +=3D "python3-lxml-native:do_populate_sysroot"

 # These tasks are intended to be called directly by the user (e.g. bitbake=
 -c)
--
2.16.6

--_000_CO6PR02MB874016B8022E96724314D4BFB20B9CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I am resending this=
 from my regular email client because I think that my original submission u=
sing git sendmail was messed up in my GIT config so it didn=92t make it to =
the list.&nbsp; (I did send an email using
 git sendmail to Armin).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We need this change=
 to meta-security to be compatible with the referenced change made in poky =
/ OE-core.&nbsp; Otherwise there is an error as I reported weeks back.&nbsp=
; I believe that this patch fixes it.&nbsp; I have
 used it in both master branch and in dunfell.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We also need this t=
o be back ported to all the same branches of meta-security to correspond to=
 all the branches on poky to which the
</span><span style=3D"font-size:11.0pt">33efd9351702e08a53e6512e235f947e4f9=
e914f commit was back ported.&nbsp; This includes dunfell.</span><span styl=
e=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">It is easy to find =
in a poky branch by grepping for
</span><span style=3D"font-size:11.0pt">do_populate_cve_db.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">From a different pe=
rspective, there could also be a case to revert the original changes as I n=
otice that populating the CVE database is not necessarily something that we=
 would want to be part of someone running
 a fetch all operation for a target image, because the fetch for the CVE da=
tabase would likely be run again later at the time of building the image.&n=
bsp; This could be a matter of discussion (if not already discussed).&nbsp;=
 But I can work with it either way.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks!<o:p></o:p><=
/span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">R=
egards,</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy Watkins ::&nbsp;&nbsp;Senior Staff Engineer, Firmware</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;co=
lor:red">SIERRA WIRELESS</span></b><span lang=3D"EN-US" style=3D"font-size:=
11.0pt;color:red"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Dire=
ct&nbsp; +1 604 233 7989&nbsp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 23=
1 1109&nbsp; ::&nbsp;&nbsp;Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">1381=
1 Wireless Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">[M4]=
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><a href=3D"mailto:dwatkins@sierrawireless.com"><span=
 lang=3D"EN-US" style=3D"font-size:11.0pt">dwatkins@sierrawireless.com</spa=
n></a><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbsp;::&nbsp;</span>=
<a href=3D"http://www.sierrawireless.com/"><span lang=3D"EN-US" style=3D"fo=
nt-size:11.0pt">www.sierrawireless.com</span></a><span style=3D"font-size:1=
1.0pt">
</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Darcy Watkins &lt;d=
watkins@sierrawireless.com&gt;<br>
<b>Date: </b>Wednesday, March 9, 2022 at 6:19 PM<br>
<b>To: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc: </b>Darcy Watkins &lt;darcy@xstreamworship.com&gt;, Darcy Watkins &l=
t;dwatkins@sierrawireless.com&gt;<br>
<b>Subject: </b>[meta-security][PATCH] isafw.bbclass: update task dependenc=
y on cve-update-db-native<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt">From: Darcy Watkins &lt;darcy@xstreamworship.com&gt;<br>
<br>
poky commit: 33efd9351702e08a53e6512e235f947e4f9e914f<br>
(or OE-Core commit: f5f97d33a1703d75b9fd9760f2c7767081538e00)<br>
had renamed the do_populate_cve_db task in cve-update-db-native<br>
to do_fetch.<br>
<br>
Need to update the do_build task dependency accordingly.<br>
<br>
Signed-off-by: Darcy Watkins &lt;dwatkins@sierrawireless.com&gt;<br>
---<br>
&nbsp;meta-security-isafw/classes/isafw.bbclass | 2 +-<br>
&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta-security-isafw/classes/isafw.bbclass b/meta-security-isaf=
w/classes/isafw.bbclass<br>
index da6bf76..4d39fc7 100644<br>
--- a/meta-security-isafw/classes/isafw.bbclass<br>
+++ b/meta-security-isafw/classes/isafw.bbclass<br>
@@ -105,7 +105,7 @@ python process_reports_handler() {<br>
&nbsp;&nbsp;&nbsp;&nbsp; os.environ[&quot;PATH&quot;] =3D savedenv[&quot;PA=
TH&quot;]<br>
&nbsp;}<br>
&nbsp;<br>
-do_build[depends] +=3D &quot;cve-update-db-native:do_populate_cve_db ca-ce=
rtificates-native:do_populate_sysroot&quot;<br>
+do_build[depends] +=3D &quot;cve-update-db-native:do_fetch ca-certificates=
-native:do_populate_sysroot&quot;<br>
&nbsp;do_build[depends] +=3D &quot;python3-lxml-native:do_populate_sysroot&=
quot;<br>
&nbsp;<br>
&nbsp;# These tasks are intended to be called directly by the user (e.g. bi=
tbake -c)<br>
-- <br>
2.16.6<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CO6PR02MB874016B8022E96724314D4BFB20B9CO6PR02MB8740namp_--

