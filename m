Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F4BE77170
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 09:33:22 +0000 (UTC)
Received: from CY4PR05CU001.outbound.protection.outlook.com (CY4PR05CU001.outbound.protection.outlook.com [40.93.198.2])
 by mx.groups.io with SMTP id smtpd.web11.6550.1733391196099894794
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 01:33:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verifone.com header.s=selector2 header.b=nfWWgqVP;
 spf=pass (domain: verifone.com, ip: 40.93.198.2, mailfrom: jesus.jimenezsanchez@verifone.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZrx8gUOwniemHpagrcCTuRHRqhX6BvJ4eo5eO2D4FrJVusHjU6CdhLRvybxzzXgZ3fgEnZkkM844XQx4ZOeefeGtHyBYbLWTaxk3zPv19ak7PbXuEfVotYzB8HV47HiXz4hQHibF0J+gh4yBT5YxjgdqyOHGUFIbW8VOaxm9vDivvvnSZH+G4fn9IquIrNuoeJtdtwjH30GQAKAj39esZyIKml3r9yDR/ia78WdmFFHZAlPoUerjCALK9Wge3WVusxPXpWtLktWx0nGzaa22h/CfFKqFamJfMF1DCsneXAfTFVFTeupZ7BHxh38XJfOmIC8aH3u+uSQgrLpVKVcvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9FjAxX4ve+L/4r68Bg026XOPbLhti4kYD+F7NaTLV8=;
 b=IL0bCrfyYB9BDdyG5Eg27MPaqCUk+IgUBtWgf1NiT6/TbwBSDwwEx5PHAuywUNtTKg19FqTnvHK2nTeuczyBHVUTCSaV5lMwfePIyVUXLhhb8iUvwgDiP7A1N5vzOhObD5BRr8WBGFJoBFJ2BcSFvZ60oWXsluU9BTC64f0blNWf7TyMkRRENT96R8ofrTGQY60niR2xhRnpXOWVO7VhfqC4qwW9lE6FGDJC5ruC5np+bCHuo1V+K5JndsGcfQsC3fZgDKCX8TMyJ8QO64XBBmmZZVsQFSe7L4meHqIWRxS/VeRRPPEAhMGHUN+fUo4pyTORamnV1pU0J3tfZcSYUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verifone.com; dmarc=pass action=none header.from=verifone.com;
 dkim=pass header.d=verifone.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verifone.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9FjAxX4ve+L/4r68Bg026XOPbLhti4kYD+F7NaTLV8=;
 b=nfWWgqVPPYt6/zDP0v34Z0pa8QVuWsUFhgxGzDGaeXkXbn+lxqyaxx+hmyVYe9UgO+Jk8cFvG7nN9cvyN4E0Sl1IkzPsCC0Cqg6d5B8BzUb1YJuNbfAfaqnFFH+e/OyjUhqbOEPDVemljv/r/7tmrh8VKm0vRhJcOYgp3j5T80Y=
Received: from BN7PR03MB4305.namprd03.prod.outlook.com (2603:10b6:408:38::14)
 by DS7PR03MB8093.namprd03.prod.outlook.com (2603:10b6:8:252::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Thu, 5 Dec
 2024 09:33:12 +0000
Received: from BN7PR03MB4305.namprd03.prod.outlook.com
 ([fe80::b510:2c8:ed26:2524]) by BN7PR03MB4305.namprd03.prod.outlook.com
 ([fe80::b510:2c8:ed26:2524%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 09:33:11 +0000
From: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
To: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Installing empty directory
Thread-Topic: [yocto] Installing empty directory
Thread-Index: AQHbRmtteAmhWXNoSUm1Ivgmn2vUqbLWTNiAgAEXQ3w=
Date: Thu, 5 Dec 2024 09:33:11 +0000
Message-ID: 
 <BN7PR03MB4305C62DFFC631CEA38BA04CF9302@BN7PR03MB4305.namprd03.prod.outlook.com>
References: <pjL4.1733330505962809259.ABTE@lists.yoctoproject.org>
 <AM9P122MB0266D1F34895376563012228D6372@AM9P122MB0266.EURP122.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM9P122MB0266D1F34895376563012228D6372@AM9P122MB0266.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=verifone.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR03MB4305:EE_|DS7PR03MB8093:EE_
x-ms-office365-filtering-correlation-id: c1413ee4-0adb-4c94-9bdc-08dd150fd607
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|7053199007|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Z7XoX3ZIMFxXzwcczO9eyT3ZBtGB1e12QXuT5pDgtd3cYX1vJgLBPvS92i?=
 =?iso-8859-1?Q?ucLalz1VyoetnOmVg0Tnl/vAGYPIe8af1gm6VVBQo5m2A7g5uI/Zr0b/QP?=
 =?iso-8859-1?Q?exYxsjTQQHjV7bvHYjLU4abdyReFhHbltkmU6C2BLOfq34FZ+eUZzlrEkQ?=
 =?iso-8859-1?Q?5A3d6ovK3wk5tn+Wd/ABwBlraY68jQRG9F5VwhnuVOoDSuAQYx+HiGk1Ds?=
 =?iso-8859-1?Q?nH0TbYFJLHWf7XLCgC9xrAs9ppkTYx+BsOjRETQmfBQDo8ebzvlyHFz9/+?=
 =?iso-8859-1?Q?i+EWGHN0d4i6k1BjVkHX6TBzHbKUvBpNkg/PTNwomL58ZZcQiX759RScEO?=
 =?iso-8859-1?Q?U7S+HLRzai/7ruAc0fWzmf5tCxxn3MzMu+2xEV0aDfsp+E0qMUdlo+8v32?=
 =?iso-8859-1?Q?lJvJluDHWN52XqBuDVRd9MKep2OFAsNfuMZ2iCMqs9eY1AGWfnb57qn6vo?=
 =?iso-8859-1?Q?O8HETrzuYJmnKcAuV00kgUoXXcrgkFibiFI0se91kgnwEkfU61SszYuGtL?=
 =?iso-8859-1?Q?BHw4qlSfb6QFBojq2L/uGoLKrqe6tDr7lvuHYCJOIdkXDODDiMAqMAsjtq?=
 =?iso-8859-1?Q?F+IuqxbmL+ByJsVMg5pw6RG309UgNggEs9CPvkSJIw4WtXcF5nceGzKSrc?=
 =?iso-8859-1?Q?WeAHOlH39wyKjgoFp2sOXLHFDGDDVx9Dz8Dwvc7VSy448WMOrWspCBHfdm?=
 =?iso-8859-1?Q?t5EqTM4+VpA6EVLyEHqJcjjJFfRWixfF5IxArkMBCF6vtST4q4QsUHXuTv?=
 =?iso-8859-1?Q?z+kFy2s8TpbEMgjsWv6STOaXeajxbJzvlQ9g3Onq2/RVJpUEvz+Bw/1QR+?=
 =?iso-8859-1?Q?bofxxUjXqB57EWQ05z3UL3kMMwyoDH88zSv2SWM/uIkA/3V8bfuTopzMa8?=
 =?iso-8859-1?Q?gZAe0z5GXgq3XkiBbtuAydGfLt289PvwM8rTTZ8UOql2ZLEYkUWZo30Am5?=
 =?iso-8859-1?Q?0FMbdRc513rKgifDtH+BSGgwwLxtvF0ahkvVxojbwBW/UJ0bTB3Xq2uVnb?=
 =?iso-8859-1?Q?eqSGJyeGVWN69rkncwx7YN5fNxYs+NJWI6RDSAvHfyFAxXmT0G8u9yGbEJ?=
 =?iso-8859-1?Q?j3Bvyn50CpBzhhC7ejbGlkTuAu+vtfzkzR5U2zhNHN0EvJK7dWwm2V3oFT?=
 =?iso-8859-1?Q?/WNvaNbI0u+7bY+KouUruQCYlL7TJi3/7kRuDYw4wcaTfQVwqdTu2hBEp7?=
 =?iso-8859-1?Q?+df1uC0xm4/AVqj+ePCNCjp96T1nPerP5VUvaf+VeBhIExu339kTG0ZAlb?=
 =?iso-8859-1?Q?fBw0WyadC5AtgNtL8LHI6NtesAj1Kjy2hwsSntUevU/h+1ofw7PZmB79zS?=
 =?iso-8859-1?Q?wyWlLZXf7I9NOsXudY0/Bohkvi4HcqYMtjHRd7okKAF7SUmDMPitXrP1GX?=
 =?iso-8859-1?Q?+P0P2zdXMJVGcyYT2+cWFW2QlSIeLxGsFEzi+tfcEuxBuw159fKMioMbOn?=
 =?iso-8859-1?Q?G++AXtUifx8lwT//qVg1hBALRcyrkIo88sImFQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR03MB4305.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GEU6y9Cru3bfLjSnBc2hDa+a+WOOiG5v2fhEjU/r4shzRpUPB0oTS1B/se?=
 =?iso-8859-1?Q?q82zGK2ane/MqFX4LZQqRjE7w8y+56b5OH4Qi1kzV3aDdkDvdYrH5uz2l+?=
 =?iso-8859-1?Q?jDpcwU8e35Cv7Co57qZFJwaY9Y87P1ol1uuI0g3TvuqFYAmxBO2EwE2iWv?=
 =?iso-8859-1?Q?iBLW8WSHVaL/MA5Wk8BV9MJb3IbNhdTM1X6EeOz6qI9Tm63tSQK4/IlU3P?=
 =?iso-8859-1?Q?tvNbaHAeLRx870u5KRm3D763O3Qxkud78z2cDKL/kesMXiEdPDO0iFxDYp?=
 =?iso-8859-1?Q?7riRUr6kxxqk7+66i7CjGokamkX8qdXby7O2bt6mKuH8vqdT00uGNhtI90?=
 =?iso-8859-1?Q?fxVgs8uFEEn3hCMWM4k5GOCSiB59sz/e/VPQ6YPYJSCzfN/Iom6x6tMCt7?=
 =?iso-8859-1?Q?E4/TTavobXs9PM3o4ZidxjpyF87djPeXfJXg7WqPYglkrNxrGzMJdMNDJR?=
 =?iso-8859-1?Q?2ZGII06ctTJEhTFQu26i/kMHDJ7MSUOP1petswzhbupoa4C7loIZZGlH7p?=
 =?iso-8859-1?Q?H6He5J6BG6d+WAoyAAbYGVEFqmkekHD1z6t4MtOW87vVVcldVIYlxvLBld?=
 =?iso-8859-1?Q?s0ePQqv4JC7a1L9Szm9ToA9/AMA4X8/HPH7BcsVdVxBZPHdkEtUutXAmN2?=
 =?iso-8859-1?Q?L+sQjU95s32ZjEiEG/bkCZJvWz5uPuxEvQI+vTmFuCDiXLbq8DPZ+Q7xiC?=
 =?iso-8859-1?Q?FpPwxaV1VAWq0Bcsk6hevVFvxIFd/Ozc6n6SZ7NiRhs/eH/lh7g17D5jbh?=
 =?iso-8859-1?Q?bggxZRvBPZ8YX0Cc87i+CzFkmSqb7Ax6RVEgt2w/G3t+L22wMTfv9TWhjH?=
 =?iso-8859-1?Q?Xc5S54dYGUAbUjT/Bo8Pd4NmZ2ZC+VgatfoN+gv+SGY1QYbELajOjoogJJ?=
 =?iso-8859-1?Q?B19v+sZ9wuTXxkpPBeOJ7rUzTEVRTzhM9li9MyMB7RhY6sbULehNBkoj2h?=
 =?iso-8859-1?Q?g+/WuMqYccDxTv/Du6pmq58j8IQAMe99AsUukJCls1mPm1L0Vp/O6tmqiK?=
 =?iso-8859-1?Q?oU2QzassX8UJ9+0X2DrJAEG4kjGoPwzEkbnI2nz567Szz7r4GP8Bxr19b5?=
 =?iso-8859-1?Q?BCUZ+z6NxC4KdTAbTASxnWE+PCRJ49C4m7D/Mg4qXTPNR93MdVzQqDXwbU?=
 =?iso-8859-1?Q?9ermGc/bvh6A6PNuhYU9SW2PY+1H4nC8/ek1YfvHSwfsuPknAPMrMw6nai?=
 =?iso-8859-1?Q?Wp6dO09CZbkn0PAHxMnpydCFF7UQeML/DcjtodB3gCjt0PVagdfNU010mJ?=
 =?iso-8859-1?Q?Df/tKPnX5PqZij6d9c3E3VC71Ca7q6sATLDSoJsbSPLq5nzvFNp+MsWsvg?=
 =?iso-8859-1?Q?0qEJ3E0XnHbh+TZcfKji4apE46B9u7Ni7FVwu8cD87CysmEcD6ug0AWgQK?=
 =?iso-8859-1?Q?d2rcE5Yeaj6BdPQp7AKfA67l9KMEt7bnk7Hw0bvSzDcYTnexLt4/IbAIwp?=
 =?iso-8859-1?Q?m94iXSAa5JQQz2HYUekhEHVn+6IVoOnFVCQzCCjHyapvYZIqXikcl+RHde?=
 =?iso-8859-1?Q?C0GJEkyTv95PHeQMEIC7uWSOBPnbY6BnSqaUp16YHJGILtd7yDmrC7fPFG?=
 =?iso-8859-1?Q?Y4Ci6/98M4S1Aw9VCvxzX/UIYBSFfK9Wou9cw1ES+y/7CGrtt5vniWE+Oa?=
 =?iso-8859-1?Q?Yh08NE19BZUNs=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BN7PR03MB4305C62DFFC631CEA38BA04CF9302BN7PR03MB4305namp_"
MIME-Version: 1.0
X-OriginatorOrg: verifone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR03MB4305.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1413ee4-0adb-4c94-9bdc-08dd150fd607
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 09:33:11.5739
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 611a22d6-8c40-4958-84e3-ce47d8205d98
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pTA3w6CVhLAaTpF0+04CntSIlhFSP+rabVAlnxXd261PZ22oiXNfo2eYorMAPGP+q0hbBtRe0kuz89lAtVK/xQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR03MB8093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 09:33:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64402

--_000_BN7PR03MB4305C62DFFC631CEA38BA04CF9302BN7PR03MB4305namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

It turns out I was modifying a different copy of the recipe I was building.=
 FILES:${PN} +=3D "/bt_firmware" is working now.

Thank you anyways.


Best regards,
Jes=FAs Jim=E9nez S=E1nchez
________________________________
From: Bejar-Colonia, Carlos <carlos.bejar-colonia@philips.com>
Sent: Wednesday 4 December 2024 16:53
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Jesus Jime=
nez Sanchez <Jesus.JimenezSanchez@verifone.com>
Subject: RE: [yocto] Installing empty directory

You don't often get email from carlos.bejar-colonia@philips.com. Learn why =
this is important<https://aka.ms/LearnAboutSenderIdentification>

CAUTION: This email originated from outside of our organization. Do not cli=
ck links or open attachments unless you recognize the sender and know the c=
ontent is safe.


Which yocto version are you using?

You may want to try:

FILES:${PN} +=3D "/bt_firmware"





-Carlos



From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Jesus Jimenez Sanchez via lists.yoctoproject.org
Sent: Wednesday, December 4, 2024 11:42 AM
To: yocto@lists.yoctoproject.org
Subject: [yocto] Installing empty directory



Caution: This e-mail originated from outside of Philips, be careful for phi=
shing.



Hello,



I am trying to add an empty directory using a recipe. I have this in the do=
_install:



do_install() {
    install -d ${D}/bt_firmware

}



FILES_${PN} +=3D "/bt_firmware"



But I get the following error:



Files/directories were installed but not shipped in any package:
  /bt_firmware
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.



What am I missing here? What should I add to get it shipped?

________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_BN7PR03MB4305C62DFFC631CEA38BA04CF9302BN7PR03MB4305namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
It turns out I was modifying a different copy of the recipe I was building.=
 FILES:${PN} +=3D &quot;/bt_firmware&quot; is working now.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thank you anyways.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jes=FAs Jim=E9nez S=E1nchez</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Bejar-Colonia, Carlos=
 &lt;carlos.bejar-colonia@philips.com&gt;<br>
<b>Sent:</b> Wednesday 4 December 2024 16:53<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; Jesus Jimenez Sanchez &lt;Jesus.JimenezSanchez@verifone.com&gt;<br>
<b>Subject:</b> RE: [yocto] Installing empty directory</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Aptos}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif}
span.x_EmailStyle18
	{font-family:"Aptos",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:b=
reak-word">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert!important; border:revert!important; b=
ottom:revert!important; color:revert!important; direction:revert!important;=
 display:revert!important; font-size:revert!important; height:revert!import=
ant; letter-spacing:revert!important; line-height:revert!important; margin:=
revert!important; opacity:revert!important; order:revert!important; outline=
:revert!important; overflow:revert!important; padding:revert!important; pos=
ition:revert!important; tab-size:revert!important; table-layout:revert!impo=
rtant; text-align:revert!important; text-indent:revert!important; text-orie=
ntation:revert!important; text-overflow:revert!important; text-transform:re=
vert!important; top:revert!important; vertical-align:revert!important; visi=
bility:revert!important; white-space:revert!important; width:revert!importa=
nt; word-break:revert!important; word-spacing:revert!important; writing-mod=
e:revert!important; zoom:revert!important; border:0!important; display:tabl=
e!important; width:100%!important; table-layout:fixed!important; border-col=
lapse:seperate!important; float:none!important; border-spacing:0px 0px!impo=
rtant">
<tbody style=3D"background:revert!important; border:revert!important; botto=
m:revert!important; color:revert!important; direction:revert!important; dis=
play:revert!important; font-size:revert!important; height:revert!important;=
 letter-spacing:revert!important; line-height:revert!important; margin:reve=
rt!important; opacity:revert!important; order:revert!important; outline:rev=
ert!important; overflow:revert!important; padding:revert!important; positio=
n:revert!important; tab-size:revert!important; table-layout:revert!importan=
t; text-align:revert!important; text-indent:revert!important; text-orientat=
ion:revert!important; text-overflow:revert!important; text-transform:revert=
!important; top:revert!important; vertical-align:revert!important; visibili=
ty:revert!important; white-space:revert!important; width:revert!important; =
word-break:revert!important; word-spacing:revert!important; writing-mode:re=
vert!important; zoom:revert!important; display:block!important">
<tr style=3D"background:revert!important; border:revert!important; bottom:r=
evert!important; color:revert!important; direction:revert!important; displa=
y:revert!important; font-size:revert!important; height:revert!important; le=
tter-spacing:revert!important; line-height:revert!important; margin:revert!=
important; opacity:revert!important; order:revert!important; outline:revert=
!important; overflow:revert!important; padding:revert!important; position:r=
evert!important; tab-size:revert!important; table-layout:revert!important; =
text-align:revert!important; text-indent:revert!important; text-orientation=
:revert!important; text-overflow:revert!important; text-transform:revert!im=
portant; top:revert!important; vertical-align:revert!important; visibility:=
revert!important; white-space:revert!important; width:revert!important; wor=
d-break:revert!important; word-spacing:revert!important; writing-mode:rever=
t!important; zoom:revert!important">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background:revert!important; border:revert!important;=
 bottom:revert!important; color:revert!important; direction:revert!importan=
t; display:revert!important; font-size:revert!important; height:revert!impo=
rtant; letter-spacing:revert!important; line-height:revert!important; margi=
n:revert!important; opacity:revert!important; order:revert!important; outli=
ne:revert!important; overflow:revert!important; padding:revert!important; p=
osition:revert!important; tab-size:revert!important; table-layout:revert!im=
portant; text-align:revert!important; text-indent:revert!important; text-or=
ientation:revert!important; text-overflow:revert!important; text-transform:=
revert!important; top:revert!important; vertical-align:revert!important; vi=
sibility:revert!important; white-space:revert!important; width:revert!impor=
tant; word-break:revert!important; word-spacing:revert!important; writing-m=
ode:revert!important; zoom:revert!important; padding:7px 2px 7px 2px!import=
ant; background-color:#A6A6A6!important; width:0px!important">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background:revert!important; bord=
er:revert!important; bottom:revert!important; color:revert!important; direc=
tion:revert!important; display:revert!important; font-size:revert!important=
; height:revert!important; letter-spacing:revert!important; line-height:rev=
ert!important; margin:revert!important; opacity:revert!important; order:rev=
ert!important; outline:revert!important; overflow:revert!important; padding=
:revert!important; position:revert!important; tab-size:revert!important; ta=
ble-layout:revert!important; text-align:revert!important; text-indent:rever=
t!important; text-orientation:revert!important; text-overflow:revert!import=
ant; text-transform:revert!important; top:revert!important; vertical-align:=
revert!important; visibility:revert!important; white-space:revert!important=
; width:revert!important; word-break:revert!important; word-spacing:revert!=
important; writing-mode:revert!important; zoom:revert!important; width:100%=
!important; background-color:#EAEAEA!important; padding:7px 5px 7px 15px!im=
portant; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Tahoma,Arial,sans=
-serif!important; font-size:12px!important; font-weight:normal!important; c=
olor:#212121!important; text-align:left!important; word-wrap:break-word!imp=
ortant">
<div style=3D"background:revert!important; border:revert!important; bottom:=
revert!important; color:revert!important; direction:revert!important; displ=
ay:revert!important; font-size:revert!important; height:revert!important; l=
etter-spacing:revert!important; line-height:revert!important; margin:revert=
!important; opacity:revert!important; order:revert!important; outline:rever=
t!important; overflow:revert!important; padding:revert!important; position:=
revert!important; tab-size:revert!important; table-layout:revert!important;=
 text-align:revert!important; text-indent:revert!important; text-orientatio=
n:revert!important; text-overflow:revert!important; text-transform:revert!i=
mportant; top:revert!important; vertical-align:revert!important; visibility=
:revert!important; white-space:revert!important; width:revert!important; wo=
rd-break:revert!important; word-spacing:revert!important; writing-mode:reve=
rt!important; zoom:revert!important">
You don't often get email from carlos.bejar-colonia@philips.com. <a href=3D=
"https://aka.ms/LearnAboutSenderIdentification" style=3D"background:revert!=
important; color:revert!important; direction:revert!important; display:reve=
rt!important; font-size:revert!important; opacity:revert!important; visibil=
ity:revert!important">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background:revert!i=
mportant; border:revert!important; bottom:revert!important; color:revert!im=
portant; direction:revert!important; display:revert!important; font-size:re=
vert!important; height:revert!important; letter-spacing:revert!important; l=
ine-height:revert!important; margin:revert!important; opacity:revert!import=
ant; order:revert!important; outline:revert!important; overflow:revert!impo=
rtant; padding:revert!important; position:revert!important; tab-size:revert=
!important; table-layout:revert!important; text-align:revert!important; tex=
t-indent:revert!important; text-orientation:revert!important; text-overflow=
:revert!important; text-transform:revert!important; top:revert!important; v=
ertical-align:revert!important; visibility:revert!important; white-space:re=
vert!important; width:revert!important; word-break:revert!important; word-s=
pacing:revert!important; writing-mode:revert!important; zoom:revert!importa=
nt; width:75px!important; background-color:#EAEAEA!important; padding:7px 5=
px 7px 5px!important; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Taho=
ma,Arial,sans-serif!important; font-size:12px!important; font-weight:normal=
!important; color:#212121!important; text-align:left!important; word-wrap:b=
reak-word!important">
</td>
</tr>
</tbody>
</table>
<div>
<p class=3D"x_MsoNormal" style=3D"margin-left:35.4pt"><span style=3D""></sp=
an></p>
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr style=3D"">
<td style=3D"background:#BBA555; padding:5.25pt 5.5pt 5.25pt 1.5pt"><span s=
tyle=3D""></span></td>
<span style=3D""></span>
<td width=3D"98%" style=3D"width:98.44%; background:#FFE599; padding:5.25pt=
 3.75pt 5.25pt 11.25pt">
<p style=3D""><span style=3D""><b><span style=3D"font-family:&quot;Arial&qu=
ot;,sans-serif; color:#212121">CAUTION:</span></b></span><span style=3D""><=
span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:#212121"> Thi=
s email originated from outside of our organization. Do not click
 links or open attachments unless you recognize the sender and know the con=
tent is safe.
</span><span style=3D"color:black"></span></span></p>
</td>
<span style=3D""></span>
</tr>
</tbody>
</table>
<br>
<div>
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">Which yocto versi=
on are you using?</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">You may want to t=
ry:</span></p>
<p class=3D"x_MsoNormal">FILES<span style=3D"background:yellow">:</span>${P=
N} +=3D &quot;/bt_firmware&quot;</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">-Carlos</span></p=
>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&q=
uot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0=
pt; font-family:&quot;Calibri&quot;,sans-serif"> yocto@lists.yoctoproject.o=
rg &lt;yocto@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Jesus Jimenez Sanchez via lists.yoctoproject.org<br>
<b>Sent:</b> Wednesday, December 4, 2024 11:42 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] Installing empty directory</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div style=3D"border:solid #9C6500 1.0pt; padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"x_MsoNormal" style=3D"line-height:12.0pt; background:#FFEB9C"><=
b><span style=3D"font-size:10.0pt; font-family:&quot;Calibri&quot;,sans-ser=
if; color:#9C6500">Caution:
</span></b><span style=3D"font-size:10.0pt; font-family:&quot;Calibri&quot;=
,sans-serif; color:black">This e-mail originated from outside of Philips, b=
e careful for phishing.
</span></p>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<div>
<p class=3D"x_MsoNormal">Hello,</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">I am trying to add an empty directory using a reci=
pe. I have this in the do_install:</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<div>
<p class=3D"x_MsoNormal">do_install() {<br>
&nbsp; &nbsp; install -d ${D}/bt_firmware</p>
</div>
<div>
<p class=3D"x_MsoNormal">}</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">FILES_${PN} +=3D &quot;/bt_firmware&quot;</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">But I get the following error:</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">Files/directories were installed but not shipped i=
n any package:<br>
&nbsp; /bt_firmware<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">What am I missing here? What should I add to get i=
t shipped?</p>
</div>
</div>
</div>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font></div>
</div>
</div>
</body>
</html>

--_000_BN7PR03MB4305C62DFFC631CEA38BA04CF9302BN7PR03MB4305namp_--

