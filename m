Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D316C0032E
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 08:52:46 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.89])
 by mx.groups.io with SMTP id smtpd.web11.14848.1698483156058745248
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 01:52:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Eg6jiaeO;
 spf=pass (domain: optimeas.de, ip: 40.107.15.89, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YozkRxD4RnKzwwVHSwVUw4CNXKHcORhdbTaFseQ17zPWTrJkp7xjBe07DhZAlYkHM+1eqiZg33xlDGySnPobVZ+6g4+rQAqR1fzBLkyejQiFBtX5uebKoMROiGaiLFepJeBsKg6+/2TgNDg03dcOAw0CLQ7QnzCjhNSxvokdt5zDOJdTNGVV4vhsN5sgZ1rc1AUWhYsusblVqlrSbF00zNbHXENP3xlvNdFlo6lMgwu4gzr4fCU2U+tXZWNuJGC3G1yGlt9mtUzzzrVCMFdmWIZselCEPLW6UYhph4mnKHvKvAEG1ZnW/ugdx0q10QU0XytWYCKIvTsALqCG/EWExA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppIbs0KqVuqr1lIg4xkbjsSqMNp4rz1khY0zOdB7Mpc=;
 b=Fnq3uBdpXMWd/kVwN4jGbxak0xVtSZt+r3Cl7KOnlcMKP9GKzUPp5ESCNL/GaMZDF4zdoB17vhNu1dnDdLLlIHBr6jlbLaF/B7ePpwGi0fCBGPdpJexXiixEbgTzP6L70IYxy8TuXY4H3MgnMXbnV/YMM/Ih1Kt/3ZlR6dKpEt8xxAbbMe1lO3ur9vwX4sl65P6c7nwSJyBdvM6A4sm4gUhQn9iTZAx/GJeEcEUGEXRM/vJwi55m8wX6+7LE6d2cfyKt1DhPUkECDWneDZGvB9r6scQXM0/SLxLb1Zhk/MRYuAFNg/sbAZqZ6KKTzl7p1xfPM8WSMaSICI+vsf/omw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ppIbs0KqVuqr1lIg4xkbjsSqMNp4rz1khY0zOdB7Mpc=;
 b=Eg6jiaeO9qp/fZ3Ckz6KjWO/6ykfCkaEngBovfIaTzj0hS10P3HpH4h8F3V5/4e7mnsRtS7YgJwkHJ1gR3r6sSM37bQEFCyobPjLItOkJ6kF11Y++YyLxHmV21JT25daTbX+yWRdpa6kS8fe8pwBmAQdx08+S0FbujbzdPb928c=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by PR3PR10MB3884.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Sat, 28 Oct
 2023 08:52:32 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3529:9e64:d52:d2ec]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3529:9e64:d52:d2ec%5]) with mapi id 15.20.6933.024; Sat, 28 Oct 2023
 08:52:32 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	David Pierret <david.pierret@smile.fr>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, Alexander Kanavin <alex.kanavin@gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add se
 auto-update-helper with list of layer to test
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add se
 auto-update-helper with list of layer to test
Thread-Index: AQHaCXwWSOu5IWUA+kODkQN+YFQ8nw==
Date: Sat, 28 Oct 2023 08:52:32 +0000
Message-ID: 
 <AM0PR10MB3107789F3D72ADF070A939F899A3A@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <20231026130340.2070302-1-david.pierret@smile.fr>
 <9a9ccb04bcccbbb2718f1c09504d2c500f78f367.camel@linuxfoundation.org>
In-Reply-To: 
 <9a9ccb04bcccbbb2718f1c09504d2c500f78f367.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR10MB3107:EE_|PR3PR10MB3884:EE_
x-ms-office365-filtering-correlation-id: 3ec35bec-1bfb-4e96-95ac-08dbd7933912
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 keE+4myHqEaSq7zsymvxv1LBwQ9dGoIRlmu5bwmxHYou3HsnyI06Ap25QtJU9t1BBJ/9OrN+gOxseUhLiRbxlpUH31/YBU/T6UlelS5dqLBno5vsuIPk8YNgBySgleyEriAy9xzticvvCKl498aspJRMOGYVWG6THh5D7XmANavQZJIrASHyJFcjEmIy403+ZbadfG/pTgoPqkiMxBlX+MTxZvC17KTWgDYWTT0m+jnKVN1ghDMpSd2sh0549DVC0YI8S7L+cSS5YlHP4EM86kTRHvrmG5ldcscVX7v5PtzJU73B67HGiWRnPVIm9ahiVxzUHbb6BTURq+ZMM9hrMddl1MfcXhNAEEIyjwtf1272Q6BHCumQU1YmRJ5Z4DriKfdAWdqZBcexBT/8esPbMlmEK16V8wlJMLclXMwWb8Os9cw7CfrcXIoK0FdZ1DcOTUQ0CweyD/VEjNg7VKRcuEwHxIgcFfM1idFTJMePsUjX55tXaRF3D37qtAZrHHf+MnXGa1TnWKT6zlp2uPb7q30IE5EqxQ+2roUhqUxY6NPLY4w/VTtYBMwR43dZ4FVb3ejD/O6/PvS26TJZrdIzNxxS+mBWSZFVoUEQg3Vzx6s=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39830400003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(38070700009)(9686003)(71200400001)(6506007)(7696005)(55016003)(15650500001)(41300700001)(33656002)(4001150100001)(44832011)(8936002)(52536014)(5660300002)(2906002)(66556008)(966005)(478600001)(110136005)(66476007)(76116006)(66446008)(316002)(86362001)(66946007)(64756008)(122000001)(8676002)(38100700002)(166002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?4HIvWWv2mUDGkYeFXwlajIDsDmU0EgSOwven145lb1LtuvrQCdtcUCGg?=
 =?Windows-1252?Q?nLVgWdvCH44U4A0vB3ygqYSt2s0WHp6rXlZZjI5nMSK4+ZZz9jRmtmFD?=
 =?Windows-1252?Q?EFBl05+dXpPut5Um26FuapxD1tRyFGdAXqHs+JnGwer1KrIJF9ouhq7Q?=
 =?Windows-1252?Q?yWKH9fYubQS006zibXqUERE41qJWuK/R2laWQH9xHLm7Z/e1tJfBvtDN?=
 =?Windows-1252?Q?3olinGMXCJwg4o9PzqqLqZaTerQ/5TQE6LNDCxMEpGDxrihSc6ixCZCy?=
 =?Windows-1252?Q?580Esf29VT1fOIs5aSV/yuCgsAV3ryZu9YniXgquQNA8M1WGBjhQoLYT?=
 =?Windows-1252?Q?fnJUMSAs6KHEt9oUK5CimYM4H9HOk6kyyMQCtUzv5ztSAObO3g5CgMT/?=
 =?Windows-1252?Q?2+oKIrXotYyvSqrPUeTz9vj2YVFrmOsp+ZG3xlMar5s7LLxYouiESsHl?=
 =?Windows-1252?Q?pxVF0Kw3E9zRvKS3qI69EsYu55tW7rbfqjcJhABWnPgJVLmfMvE9j9ss?=
 =?Windows-1252?Q?+/aRoPmqjwVCBe/Y0IQwbaPuS1QH/jrpFBX2B9DCJwGN3nYVzVaTwQIK?=
 =?Windows-1252?Q?pn9MLdyHrJxP8K7zbDQgnqPHpWiROz/8SVkB1cGQN2v88ce/CJzkWqbb?=
 =?Windows-1252?Q?FC38TeMu2HEql0hFbMBA0480hhqkyqOmZEDE0OQpppFn6+/Ws5WQAIZS?=
 =?Windows-1252?Q?YoH+ArRQIBgX9xs+uYLYtZwj04lNgjJOuwKVChR9UmhKB0xUMzneEQ7D?=
 =?Windows-1252?Q?GAj57R7u1CKAn+dcPoynyKuceF8ijzJP1vGh8Rlb3Jd7OC9b3JNevc93?=
 =?Windows-1252?Q?atGs9m6QocKFY6BEnk4uyJJyy/2lLIphnptoBvZ77DwvbkrTFYlvPSXS?=
 =?Windows-1252?Q?L/6Z1dIJ7tS34sJRouWYMkOCQ6FwGjJQAB2uC5/w78bp+gnGEAUyJ4Sx?=
 =?Windows-1252?Q?TR2YFPo/5LP8vsoiDfFeDOrdFD/A/GPUGAs1//kvb0yrBv/dD3PK5fhY?=
 =?Windows-1252?Q?0xZPbwXD5HGlKObwIX1xtXN9oYW3dZVO5IdnG1UV8ND+rJLflKve7YOB?=
 =?Windows-1252?Q?u88wZxaBvqFOpEJhdUZbvqUcBYANKtuBlR0pxYHOj0cZeYLrEfHvmYkT?=
 =?Windows-1252?Q?cnK8271sR59YsRHIsCgC7W1ZiJ5LfBx3QTrsxA/02WIp5EOL+wAs7gdg?=
 =?Windows-1252?Q?tEwcX9E1+9WUupseq8U7ubBPxp8zwMmYsdWwn3/oIIdWUgmMSc+OFl6H?=
 =?Windows-1252?Q?SLaIV/m8RpgCIW5/oaHu2o/teb4msyBaHIS172EStkQXarreyQiCl/hn?=
 =?Windows-1252?Q?lrWlY1yfwkXG2G6dPen+soADq/6s9a7Hkh4odVXDkTc7DxS3PQ8q5U44?=
 =?Windows-1252?Q?bCcLYVsm4KBwtGTtu5IW2TJVF3kKdz/TTxwu2bTF0lmcYnN+NQflGiYN?=
 =?Windows-1252?Q?qz4BeA0RZvXFAuTDPd6ttGbtmX/K6d8wZuyqGsn1WqgOqXinAyVHr4oR?=
 =?Windows-1252?Q?YAQ7xfk4cqkvbj/0qOjlE+caqIcTxGQnFu5j258uanGDSgFqpBuiLr3X?=
 =?Windows-1252?Q?h9sWr/GcY/0viTbfr4gqFnkgDaJUTkw2BMQmOsBZqgCVa26TG/C1Ey6/?=
 =?Windows-1252?Q?glp7qHOejw7yGRi1tlH/zrdJlf1Z/MgLwxdAv5EoX3U5CsOW7fEbVXhb?=
 =?Windows-1252?Q?AgRbz6tyCgZ86Q6ksrTMypXfsejCFdT2Hl59d8JTnRtYbRdr0p51/BxE?=
 =?Windows-1252?Q?p2IeGOxVgT7NW7XeLf6Tm7PSQfjBPubDzvY/b1QrxDZFWtP6ca6s3xUB?=
 =?Windows-1252?Q?i3iX3w=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB3107789F3D72ADF070A939F899A3AAM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ec35bec-1bfb-4e96-95ac-08dbd7933912
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2023 08:52:32.0646
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d8LKQxx7R33R0/wuoqFgnpBAOPL5TdsaypeMC4wOn6Mf08/fVPoxBwauxzg9R1s7BI7d4Lk66UTGcjwiSN1eW7bepoRyxAEsy0PIULGaYyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR10MB3884
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 08:52:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61509

--_000_AM0PR10MB3107789F3D72ADF070A939F899A3AAM0PR10MB3107EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

J

Viele Gr=FC=DFe,
Matthias

=97-
Von unterwegs gesendet
________________________________
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> im Auftrag=
 von Richard Purdie via lists.yoctoproject.org <richard.purdie=3Dlinuxfound=
ation.org@lists.yoctoproject.org>
Gesendet: Saturday, October 28, 2023 10:27:34 AM
An: David Pierret <david.pierret@smile.fr>; yocto@lists.yoctoproject.org <y=
octo@lists.yoctoproject.org>; Alexander Kanavin <alex.kanavin@gmail.com>
Betreff: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add Openembe=
dded auto-update-helper with list of layer to test

Hi David,

On Thu, 2023-10-26 at 15:03 +0200, David Pierret wrote:
> - Modify the setup-auh to use repositories cloned by the auto-builder.
>   Manage the case where meta-openembedded is not used.
>
> - Modify the run-auh to manage the optional additional layer.
>   Only 1 layer can be provided.
>
> - Add auh-meta-openembedded job with 1 step per layer.
>
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> ---
>  config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
>  scripts/run-auh   |  39 ++++++++++++------
>  scripts/setup-auh |  34 ++++++++++------
>  3 files changed, 146 insertions(+), 29 deletions(-)

This took a while to review. Firstly, this really should be written as
a set of commits with incremental changes.

For example, changing the script to use poky from the autobuilder
checkout instead of the local clone is one logical change. We could
take and review/merge that independently of the other changes.

Another logical independent change is using auto-upgrade-helper from
the checkout of the autobuilder. That did highlight an issue that the
autobuilder does not provide a checkout of that repository.

With that and this work in mind I added auh-meta-oe here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D47c0119b6e87f9=
20566d2176793ef8d982cf31e2

and then added the auto-upgrade-helper repo here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D854a60ce8bf8ce=
0feec370bc6782cc12aa1e29a5

which then means this patch is closer to working.

I had to make some tweaks on top of the patch to make it work:

https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?h=3Dmaster-ne=
xt&id=3D673745f473024020ed9efece26462e8c884dc819

where I found that:

* poky in the AB context is $1/.. since it is the top level
  container of the layers
* meta-openembedded is located at ${HELPERBUILDDIR}/../meta-openembedded
* we still need to source the build env script. The AB could be
  configured to do that for us but currently isn't.
* we need to trim the machine_list down as mentioned
* the naming we're using is auh-meta-oe, not auh-meta-openembedded
* I've temporarily configured to use the test-list so we don't
  send lots of mail to all users
* layer dependencies were missing in ADDLAYER. I hate having to do
  that but it is is what it is right now.

With that, we get this "successful" build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/159/builds/5

which shows the exit code handling isn't great but probably deliberate
to avoid autobuilder errors.

This gets us to the point where the code in the upgrade helper itself
needs the layer support changing.

Since I've now had to look into that code, it seems the layer options
are entirely missing from the commandline options parser. I'd strongly
suggest dropping layer_machines variable and just use the machines
value in all cases.

"layer-mode" seems pointless as you can determine if we're in "layer
mode" if a layer is specified on the commandline (which needs adding).

I'm hoping you could use the layer overrides to be able to identify
which recipes to upgrade.

Cheers,

Richard




--_000_AM0PR10MB3107789F3D72ADF070A939F899A3AAM0PR10MB3107EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>
<div dir=3D"ltr">J<span id=3D"ms-outlook-ios-cursor"></span></div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Viele Gr=FC=DFe,</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Matthias</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
=97-</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Von unterwegs gesendet</div>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> yocto@lists.yoctoproje=
ct.org &lt;yocto@lists.yoctoproject.org&gt; im Auftrag von Richard Purdie v=
ia lists.yoctoproject.org &lt;richard.purdie=3Dlinuxfoundation.org@lists.yo=
ctoproject.org&gt;<br>
<b>Gesendet:</b> Saturday, October 28, 2023 10:27:34 AM<br>
<b>An:</b> David Pierret &lt;david.pierret@smile.fr&gt;; yocto@lists.yoctop=
roject.org &lt;yocto@lists.yoctoproject.org&gt;; Alexander Kanavin &lt;alex=
.kanavin@gmail.com&gt;<br>
<b>Betreff:</b> Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add O=
penembedded auto-update-helper with list of layer to test</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi David,<br>
<br>
On Thu, 2023-10-26 at 15:03 +0200, David Pierret wrote:<br>
&gt; - Modify the setup-auh to use repositories cloned by the auto-builder.=
<br>
&gt;&nbsp;&nbsp; Manage the case where meta-openembedded is not used.<br>
&gt; <br>
&gt; - Modify the run-auh to manage the optional additional layer.<br>
&gt;&nbsp;&nbsp; Only 1 layer can be provided.<br>
&gt; <br>
&gt; - Add auh-meta-openembedded job with 1 step per layer.<br>
&gt; <br>
&gt; Signed-off-by: David Pierret &lt;david.pierret@smile.fr&gt;<br>
&gt; ---<br>
&gt;&nbsp; config.json&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 102 ++++++++++=
++++++++++++++++++++++++++++++++++--<br>
&gt;&nbsp; scripts/run-auh&nbsp;&nbsp; |&nbsp; 39 ++++++++++++------<br>
&gt;&nbsp; scripts/setup-auh |&nbsp; 34 ++++++++++------<br>
&gt;&nbsp; 3 files changed, 146 insertions(+), 29 deletions(-)<br>
<br>
This took a while to review. Firstly, this really should be written as<br>
a set of commits with incremental changes.<br>
<br>
For example, changing the script to use poky from the autobuilder<br>
checkout instead of the local clone is one logical change. We could<br>
take and review/merge that independently of the other changes.<br>
<br>
Another logical independent change is using auto-upgrade-helper from<br>
the checkout of the autobuilder. That did highlight an issue that the<br>
autobuilder does not provide a checkout of that repository.<br>
<br>
With that and this work in mind I added auh-meta-oe here:<br>
<br>
<a href=3D"https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D47c=
0119b6e87f920566d2176793ef8d982cf31e2">https://git.yoctoproject.org/yocto-a=
utobuilder2/commit/?id=3D47c0119b6e87f920566d2176793ef8d982cf31e2</a><br>
<br>
and then added the auto-upgrade-helper repo here:<br>
<br>
<a href=3D"https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D854=
a60ce8bf8ce0feec370bc6782cc12aa1e29a5">https://git.yoctoproject.org/yocto-a=
utobuilder2/commit/?id=3D854a60ce8bf8ce0feec370bc6782cc12aa1e29a5</a><br>
<br>
which then means this patch is closer to working.<br>
<br>
I had to make some tweaks on top of the patch to make it work:<br>
<br>
<a href=3D"https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?h=
=3Dmaster-next&amp;id=3D673745f473024020ed9efece26462e8c884dc819">https://g=
it.yoctoproject.org/yocto-autobuilder-helper/commit/?h=3Dmaster-next&amp;id=
=3D673745f473024020ed9efece26462e8c884dc819</a><br>
<br>
where I found that:<br>
<br>
* poky in the AB context is $1/.. since it is the top level&nbsp;<br>
&nbsp; container&nbsp;of the layers<br>
* meta-openembedded is located at ${HELPERBUILDDIR}/../meta-openembedded<br=
>
* we still need to source the build env script. The AB could be&nbsp;<br>
&nbsp; configured to do that for us but currently isn't.<br>
* we need to trim the machine_list down as mentioned<br>
* the naming we're using is auh-meta-oe, not auh-meta-openembedded<br>
* I've temporarily configured to use the test-list so we don't&nbsp;<br>
&nbsp; send&nbsp;lots of mail to all users<br>
* layer dependencies were missing in ADDLAYER. I hate having to do&nbsp; <b=
r>
&nbsp; that&nbsp;but it is is what it is right now.<br>
<br>
With that, we get this &quot;successful&quot; build:<br>
<br>
<a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/159/buil=
ds/5">https://autobuilder.yoctoproject.org/typhoon/#/builders/159/builds/5<=
/a><br>
<br>
which shows the exit code handling isn't great but probably deliberate<br>
to avoid autobuilder errors.<br>
<br>
This gets us to the point where the code in the upgrade helper itself<br>
needs the layer support changing.<br>
<br>
Since I've now had to look into that code, it seems the layer options<br>
are entirely missing from the commandline options parser. I'd strongly<br>
suggest dropping layer_machines variable and just use the machines<br>
value in all cases.<br>
<br>
&quot;layer-mode&quot; seems pointless as you can determine if we're in &qu=
ot;layer<br>
mode&quot; if a layer is specified on the commandline (which needs adding).=
<br>
<br>
I'm hoping you could use the layer overrides to be able to identify<br>
which recipes to upgrade.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM0PR10MB3107789F3D72ADF070A939F899A3AAM0PR10MB3107EURP_--

