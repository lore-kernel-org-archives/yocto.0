Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CA1CE79A8
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 16:59:09 +0000 (UTC)
Received: from mx08-0040c702.pphosted.com (mx08-0040c702.pphosted.com [185.183.31.154])
 by mx.groups.io with SMTP id smtpd.web10.15260.1695142744088435019
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Sep 2023 09:59:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=BsQ6wUyk;
 spf=pass (domain: karlstorz.com, ip: 185.183.31.154, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267678.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38JDVea0028314
	for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:59:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=S-DKIM-20210427; bh=8
	vUgSEXQ4S0S4tEGVET6YfBjNRR6fV6ihbQRmD0DPmM=; b=BsQ6wUykZ3dT9jvE6
	A5w0gozHJlqcjTobALSlk97UKU7uO0NKJ6RTkkDXkthS735NBZQJMxpvEC8Rt6Vf
	y5IDYBKR7FbvZmqAdNULmR0Kfz0lFihbrIvqA3r/lhWKACvcccfB27CARH5L6U9/
	f2NkA7J7uryS9V0zgl4s7mdxQaQ9SM0/+75FttUdp1YPbH72EdPKg/e1k/D1WVbT
	tIpOPTtVZ0NDxSicxVF1wK/aXSzKii5us/b5b0mKJEWVD2a1+6M3eeHXg2KB4jpS
	eo2qMRxAThH345ThpGFd+Ml/ebvASgkbUzap9VgFpMIft3vnsNKWHFWhn+WfiHMb
	zit+g==
Received: from eur05-am6-obe.outbound.protection.outlook.com (mail-am6eur05lp2112.outbound.protection.outlook.com [104.47.18.112])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3t539c1wc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:59:02 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Flzq0yRT9q4G6qL5isI0D8OYOtqPU1xQiqli6afwVKfBRcdCLMQmGUfK1qFhljbHmvcds+6oTmNMX+WfKPvNdCnfscX7nyiGjfaRQ4S4uaJ5EnEiO69PZjmk5MCIXClcYYqyJUhM++PDAJ13gVUaeK0Wf20yYWgsx89Ev2GB2fUkqK7V5E980es9AFx9XHNSLZD3koinoiZrvw3I7Mi1kLHNiCd6uxBxaNtRaG+z30AEk6TWDTEaw4fFvQzZxUqFRPuuLesEHSRngloTjBgqC7/wOsJiU0/myxaVezHbOQQ8UPNaI90be+STM9CEQXJONq4I9u7zjJdjSurlXn0irQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vUgSEXQ4S0S4tEGVET6YfBjNRR6fV6ihbQRmD0DPmM=;
 b=FKzUZJxcsGcRppZ17cvcm25vwniP7Trd9WucuZb69S4cQNuZkJj3shYwLRK65SsnRCMlBUx30R+BERv6ZEulecWN+6ggca+4JIxl7VgzE6qpjgM4ovdxtBrmYJgzQbt1s+/JYcQDsax5NcMqlK+tv4Ec3JkUEBXCO/hoOc7X2Tf1KOuTo3eQ9KS1Px3DvoOg+b/L9/KiDWmtUjptzAiC3RJ+uIAra1aVMuMNM/Iz8fFvybGALxKwxgUz5Kyve76MtvyxXhp/9GN8owKnWSKQOM9b/OJPbPuO/VvGOeRPK0HBi08c4Yz77e6oOCdouTLjkDnvLkq1JqUFobiamimkyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:4b::33) by AM8PR01MB7652.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:240::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.15; Tue, 19 Sep
 2023 16:59:00 +0000
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc]) by DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc%4]) with mapi id 15.20.6813.014; Tue, 19 Sep 2023
 16:59:00 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: overlayroot: When is the RW layer unmounted?
Thread-Topic: overlayroot: When is the RW layer unmounted?
Thread-Index: AQHZ6xpmuQInreqH5EC4nAe13oOXTw==
Date: Tue, 19 Sep 2023 16:58:59 +0000
Message-ID: 
 <DB6PR01MB3736FDFBA44B2A9DF7BF0685A4FAA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR01MB3736:EE_|AM8PR01MB7652:EE_
x-ms-office365-filtering-correlation-id: 661edea2-22bf-4f1f-7391-08dbb931b84f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Z/mW+xQRESSnPaGA8wVuCxzyzzEPm+gtEdJIDFO6lYtfgo8cgmALBqmN5GoOOJKE296fiXElxnX+qD2aeCugCo8tTb+2KkQR9AccxDAQsm06Lt3G/6Mi78vkXHz/iBcolx+D+g5I5VTUTgs74Pu35yYRoTCk0tPZ9sXQFk/o/EC547O71QSLEOuuQVWjgAHwRl6OEIid0QpAXjy1lKG1BTZsZQ2+ce8X4hYNlcwOCgnlO4sDI19NBRLDJR3DbiyKx0M3X2rzOAxkwCLRvOSvHoim0n0pW7wYHUNB2E45kI1JOnVgjhteiKV4tgfWXkrLAurG20ayFnz7D7DkOUZcYOqJkUrSB1H+dD/deXvkxlKBgEnu3n90LdRMLAKxPMn3DAhZIOHNZG0TOyugq16AUt6G2m+7fu/ytQzMcPqYkmb/v5NF7a7QiSRy+2X9DX/lN6nRWh4M1awRqhe/ciPvu7nokDXYLY2Lg+u5gvGGEGjw5+9Tamn0R3w9AZW7d+Q3QnOuHUm7qNTJdBnjmMVKpd0Os6ii1xd3+gp45oQKbyip3J0y54lm2zQ2d5oZmZ9+2Wd2w9BUW63tseD967kC5l0jDON6J/uFr2maVH7bD2IQiddsRr+G5FBCHd7HcWLm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR01MB3736.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(376002)(136003)(39860400002)(186009)(451199024)(1800799009)(6506007)(7696005)(9686003)(71200400001)(83380400001)(478600001)(26005)(4744005)(2906002)(64756008)(76116006)(66556008)(66476007)(66446008)(66946007)(5660300002)(8936002)(6916009)(8676002)(52536014)(91956017)(41300700001)(316002)(33656002)(38070700005)(122000001)(86362001)(38100700002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dog7fkx6/YO33oJ5MafUAxpOk2hQVpgtoyQhjlYYUZWaBGrfqy5qBiayqm?=
 =?iso-8859-1?Q?toDI2aKB+XMEOZBXvhvekzqwRJYamlyvcOfkH5m+iuEAe615hEcATwV5ke?=
 =?iso-8859-1?Q?DgsYuFXJ6w2N4okLagTFGfwbRM8baKVkXMEa1ys8Y8wpkRuyVVP0n8x8nc?=
 =?iso-8859-1?Q?/0zuBnDk7lR/Nug7YeFACWLqsLXMSkfHSj0f7QQ74bCKGsmdMLFhVEZDMm?=
 =?iso-8859-1?Q?53Q4nVYHFn4KvThLTXnNtBj+6rLDmajS/2BX22Cgs/Y0D9vOSlX6DCN6ag?=
 =?iso-8859-1?Q?m9rPCEnK4D9K2/3bFJHVgZPR9L+wfpo9aPtwOvMWYENtBBUOGOueIWiSig?=
 =?iso-8859-1?Q?R5A7TEGefE6mdXYwKLsR7niw6Ze6pk3jFaafQ+BL2N4OeYvBIWJYh2DiH/?=
 =?iso-8859-1?Q?xwdWQyctAmJflbbUjLice6fj2muVhPStOEl4h4txKgVuzP5AHhaINehzQS?=
 =?iso-8859-1?Q?AXrCizdg6E1dBKBZrTtLLcXhn6XQpeG/CYTVihXmWS5rwIkabHxPXRxmlF?=
 =?iso-8859-1?Q?YZ0AdX354nT1cRH+NCWAT0e+B6b81x6Bc72th8nndAKT484HQeNe3qkRPM?=
 =?iso-8859-1?Q?RdRcwvoJ5VQTS8maeGtTwNdxdKo75RB8n4H3FryyzJ6u/6fbDOweOPKwG+?=
 =?iso-8859-1?Q?tD1H1g0JcOIHheUpuVFFE1hGbGtqOvOYL/582s3qRjAkAk/bhK4qWxVw6Y?=
 =?iso-8859-1?Q?pETJsLMxuhpxQs8PoxVq0T2Lo5wNpeEnwDwrIiWYkzEDu4ytbRbAbI6kb+?=
 =?iso-8859-1?Q?DI46SuPmCfErEAGklFwdeU0GF11/aw4fGVqJZlVv3WJlFk1x0BAi7MfQec?=
 =?iso-8859-1?Q?y2MiiQ5kLDdMDaCiNmH0sBTKfhks47AQBJ9K5bNJklPMZXUnlglt1tdXdi?=
 =?iso-8859-1?Q?0Vk0kaq9wOMMsAV15DVTajiwcnLTG6eD2ULKCXtE9jluDOzSYDftAnfB3t?=
 =?iso-8859-1?Q?yFNN26YNKZBC2/AKlx05znvaZZlSoRmqobojlaCph6pdBu7ePnP67SRXQn?=
 =?iso-8859-1?Q?Pfsy1sH6xafFJT/PmRQz3DTDVmdd48TIB2s+jHJb5VbqRcMfYN5wImnGmu?=
 =?iso-8859-1?Q?FMKqXuLCB7LNhwLe2jOJYw2EHpw9aKFCNjhNAbu3Vp7JkgBuFVu5ivcRzw?=
 =?iso-8859-1?Q?siQL47i2NwKPb0+V0ydVMazmttZTdoMX3RYU0PRwvMW3otQ3g94qAivEBC?=
 =?iso-8859-1?Q?YuDXOBGBPM32o9sKcxFPNRgwU270a1KXUlmRK5QcMV4MZ47254NINe0CPy?=
 =?iso-8859-1?Q?Xauqj/ZUgF+xQ9pLIiDv3lPKCNizHm1g9A2ph4zLSWaS8MK0q+2MsrZ7kl?=
 =?iso-8859-1?Q?UGzJfmD3ikGCGYkAHkTPUrVdQGVA0n7QrqUQfUPyUGnCVnxrArWF6COLpk?=
 =?iso-8859-1?Q?P3d8Hqdj1lTIGTa+juMZTeGJqviqeW5tQVdoKM/ypTeW6rx0XzjwjxpQ9g?=
 =?iso-8859-1?Q?1relLgdB79aXtZjA9cPuiqnu2yWRHq+238D7WxWMayITEfwwmZfurA5TSp?=
 =?iso-8859-1?Q?3vssq8B/6c8yhNEInddOy7V+f1AvqEH7oYRGVWKJKY2j85DFnqEgNEzZ0M?=
 =?iso-8859-1?Q?OWY/cM/Jgt7m5JeoM+m595CFuiaQbPdsQgd5/cQIbpO8KLgqGO4i+nPGFX?=
 =?iso-8859-1?Q?no3nlirewCih9YK5OxFMfIKwD0VfJJykvsapxj2lVHwj+LHlbRjT7tRg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR01MB3736.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 661edea2-22bf-4f1f-7391-08dbb931b84f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 16:58:59.9324
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nDS36FipTzFY6vPzqDrd4m4YeBmmidGAxNPDSYZSrNiAN/+zZZ1BHVXmQP+TqsDyknuE7lPYNAXjFKN/B0lLDIFjT3RVfljHjtvw3MGONMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR01MB7652
X-Proofpoint-GUID: x9MB5Y0mCkHDXRrGV_ty3QWs5LP6-Asq
X-Proofpoint-ORIG-GUID: x9MB5Y0mCkHDXRrGV_ty3QWs5LP6-Asq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_09,2023-09-19_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:59:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61045

Hi,=0A=
=0A=
I am using the OverlayFS-feature from Poky by enabling it as follows:=0A=
=0A=
    DISTRO_FEATURES:append =3D " overlayrootfs"=0A=
=0A=
In the image this results in the following init-script:=0A=
=0A=
    /init.d/91-overlayroot=0A=
=0A=
In this init-script the RW overlay is mounted as follows:=0A=
=0A=
    mount -t overlay overlay -o lowerdir=3D${ROMOUNT},upperdir=3D${UPPER_DI=
R},workdir=3D${WORK_DIR} ${NEWROOT} |=0A=
| exit_gracefully "initramfs-overlayroot: Mounting overlay failed"=0A=
=0A=
So far, so good. I have two questions:=0A=
=0A=
* Where and when is the RW overlay unmounted, especially when the system=0A=
  is shut down? I did not find any umount command corresponding to the=0A=
  one above.=0A=
=0A=
* I would like to enable quotas in the RW overlay. I tried appending=0A=
  the corresponding mount options usrquota and grpquota to the above=0A=
  command, but they did not have any effect, the quota tools keep=0A=
  telling me that quotas are not enabled on that filesystem. This makes=0A=
  me wonder whether quotas are supported by OverlayFS at all?=0A=
=0A=
Thanks!=0A=
-Holger=0A=

