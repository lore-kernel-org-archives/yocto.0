Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E7CEC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 17:49:08 +0000 (UTC)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.64])
 by mx.groups.io with SMTP id smtpd.web11.13492.1647971346471523463
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:49:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=fBjfkMTt;
 spf=pass (domain: optimeas.de, ip: 40.107.4.64,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnzQEw9kiQDQb47jSxL/2tY0wm3EFD9OlpbVv2Uze///yVkFgKdRYVOMuh5NPYA0VR8LMg9bYLGe3w74+MfU3/F3qMGftxeFVf+jzwXoKDpsFQMxeQ8LkWlKCTlXHAwwrd5rFqsHGkKlJZLSF/7964/iHBy4ufSw2aFOBGsVetcyFHatZtBYVWIS72d6/B7wa0TwDxFM/z19aXHpVGFrBqwzKpxxF/RrZ7VWNYb4fW85g/TKBEEW8+bh3T55c2AM+OCmLXWS1+K+5uh92EB/FKQF2rAJJPk3chXYuZsaXsOPy/h807dzbvRAhdtOG8m2OUXc0+2BO1+gXup25OzS8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQt3WDGULgWes99/UAfxTUJoi2c42C/3VS1OhFQA57Q=;
 b=hC3VQIlzOanR9CHbdiyJ4DjJhUI2jSsWFrRBXIcfb78hhhRvwZ3aOwPAPwAqXI4gE6grob5ofckmzLhfyOi64sBTVSkFkfGihybPXsynzdhy4IrPHsWJBocHk6oLxwR4951khE+mVomooq4yoY7HNG+wCdrohe/XsvgXkHtqT0Qi4fvJysd2ASwxVQXCT65l8IAgwmS/poX8NdJwrMV8EpD77jwuXqcoMwbRoEoT89U1PV5gkgz7v2k6UIB7R05UPf0+BOGlr0KFYbIQiYWz9aD5sp2/6NjNf8PRMBik8S6qDBOE1gAzMymmNiviIXVMwesURMXBdK2KQuOTmbKBvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQt3WDGULgWes99/UAfxTUJoi2c42C/3VS1OhFQA57Q=;
 b=fBjfkMTtZ/Fu/y5tyrM0LrEO01pyg3jjevE+oalEG9HzvtQHFLv8rDTsMgorR8D8axqEV9UE35ZXvBHvOHHQdQr3er+/U5LExm+jw+YjpbQ8nbifAKM1Xb9DrG5CL8uck5pVMd16X/SJCuK5KfZl4tCpWkd0ZTH/vFKowIg11YQ=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by PR3PR10MB4093.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:a3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 22 Mar
 2022 17:49:03 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa%7]) with mapi id 15.20.5081.022; Tue, 22 Mar 2022
 17:49:03 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] KERNEL_DEVICETREE cannot be appended?
Thread-Topic: [yocto] KERNEL_DEVICETREE cannot be appended?
Thread-Index: Adg+Dcaej/XHVB/ERiqo18lugU1b2wABJVMAAACLNHAAAA7YAA==
Date: Tue, 22 Mar 2022 17:49:03 +0000
Message-ID: 
 <AM0PR10MB3107C6F112A0A0F7A2CF247599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310724144326400F7BA0A04599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <YjoHbsir2x08qfzp@piout.net> <16DEC50AC85C53D2.18232@lists.yoctoproject.org>
In-Reply-To: <16DEC50AC85C53D2.18232@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 913cecf6-9107-4c6a-83d3-08da0c2c40d4
x-ms-traffictypediagnostic: PR3PR10MB4093:EE_
x-microsoft-antispam-prvs: 
 <PR3PR10MB409376B7C09029182597758699179@PR3PR10MB4093.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TLCOCdqovX+CJP1IPz4lzdnEGF19wqaRVQWInTMoXm60ruTWK+rjVG2HXR8pwRvZpUfBaIO7QSESHt5PTdB0sj2Jo0BhSyMQCLZjR3Qt4I9pAfRyAPd64SLA50yrKnTgV5c/fJhEsSMFQN5gBlSiBqUyOGUgT8/+cL1pWpEPk8mati0tVLJzfGbV51ZPP/Q7CN5IJTBlzvI/rrZmK6c24JeTZ/C0HpbvcA8vu8y2Gr9ffouM+wMo0gjfL6UznOx0PFVhHivurZNang7j8L0x8fzplanyggE3n4cbldfUv03lgiqXXiBhIZ1eQuchEmQmkyP2HIIFF716QO2BvBHho8fx0irOy1Zn6+yYXeyYFwbipRQeIEgsgn5M5m+CNRulBYXnjEP5QYmslmZTzgofU9A4hVsu3FOKHAG6ymnCzD9p5T+Io8Lb9d1W/NtbEJJILstCDtNNgkU+fQ80Fhd2Gkrmd7EFe68Nef3QxpiwFNelWCl7ocdwcMPdNx4V12Z4DBx93WnvdBxTfbnOs9YPZWKEdGuS8s/miXZt4hk2l58zSYgHcfMCLjfQ7+N+hHUwAyvVfbC/XKdVVwBH5woBuPUPNOu5nlDYDejUnnh7jpNs8cp5xrsMRVXnNodfI0RR5M+1bKqozDUER5MRGEbPZvCJSq6JmEY0fHa5zbLTTXFPGBLZl8bv6aUnqr1WxcncF7YGr1a5TUQXWvuXmp8eLQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(396003)(346002)(376002)(136003)(39830400003)(508600001)(38100700002)(38070700005)(9686003)(86362001)(71200400001)(186003)(122000001)(6916009)(6506007)(7696005)(33656002)(316002)(76116006)(4326008)(66476007)(64756008)(66446008)(8676002)(66556008)(66946007)(55016003)(2906002)(5660300002)(8936002)(52536014)(4744005)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lOU/plUThO8V6FJpeQVrUpK+UBkQyr+70WMkT/C97Eo35b0yGwQL7vcgjVMz?=
 =?us-ascii?Q?Nf2bbB//sbIojX2e/Vu4e3g21PyWB9/nzBrPRNnxPy7U0dLNG3ho3JJrpjKD?=
 =?us-ascii?Q?94p+DWNaGYdWRcE9FIUVKpJpbclgIlTTCJffNFA78adKQuTnQ2O5Nmw1lPXK?=
 =?us-ascii?Q?EWpBQOwlkg81ANPV/vJxuoEGSsXp/calNkhpX7k0j7klRQ1dyShymM1TKHus?=
 =?us-ascii?Q?ubmlQ8bca2KSnAohFbhDf0phKjgIuNQHgfJgQxvFduFnQxOKP5qXhgleuJlV?=
 =?us-ascii?Q?QOOYnGsIj+cQOj8YTgdJD2csvfRQfg9FQVFm+6+BSS0aKmmmMc0ClpVtaP7j?=
 =?us-ascii?Q?+rzhhosvV0PcRv7KG8wRcUtyJZmIYgejZV7NC+svaEbM1V6vd0FUr8B2sGEb?=
 =?us-ascii?Q?i68l5bnKp5L6z/afauNEb7pm75ncQAYZQyVKJXP/rkomNwdtdkdtLW/Zq2lB?=
 =?us-ascii?Q?1hQZONgvNomurRwjg+h+kECKosP03FTNsj6HOO9dI9bXBWvtOJmfXJaGeR5O?=
 =?us-ascii?Q?i15iSQgrcq7rK7bjVFxiPN4Y04Sho2nt89GeXF9TlNISg+0EKEJYJ1NyImyb?=
 =?us-ascii?Q?oIKvyusqPp1zAEc1nQ41mDgsGHhH9Rt4A4m8BbzHcI5F2ML/A2LdF8qteE8t?=
 =?us-ascii?Q?QmlAhwr134IO9usjEK8doocp9r9/ttFebG4sIsU9Fhl5dOW01IjBFZolUnFd?=
 =?us-ascii?Q?bSclTe8O/G8Fn8wcaHokn7zT1Jmkc89KTuHSVJn91ytustk5X6aV7710cDI3?=
 =?us-ascii?Q?F+gsiJ9M8n0rvGH2D7imr01tbJebL7JtwVg983xZTjT1j8W4uOe6bl7aD4SH?=
 =?us-ascii?Q?8hq4LfKKBfDmpOPRtUtt5LbEW+AhNAZjtPbjtatkHGisjOU9q3RBQjmZw9Uo?=
 =?us-ascii?Q?L7ba5QIqb1ob+tCyDx9orJ2OV3cgFwV5w/5jyIN5Ij2k/HgZ/w5EXMPRET5h?=
 =?us-ascii?Q?MblG69DwzEbcGGhG+jRLGzyMWvzmSTjrsluweoVdnS8Wp2D8gvAwXYtSWRZL?=
 =?us-ascii?Q?8pdpviEVbo/E1aoynmrbMM2jXZTk6A5xpmv8zvj9IR4O0VnQjWzqqEZ8Tes9?=
 =?us-ascii?Q?Rv/F94WY5fGVFhEzfFhlX+lV/nUGCTCv9PR9H+yaIOAXnzvGTBqXAnQVHRUl?=
 =?us-ascii?Q?Ut+rC/IjULUdRt3UITEs9+9JH6nuUgev4tvz/+HYZSFrQT99GaE1c/P94U+f?=
 =?us-ascii?Q?6NV3JCZOE1EBw+6i6oWPmWCGU1BvRtwgEESu/okvkC1wkXCh1kUhLfLXwmoc?=
 =?us-ascii?Q?wBdpoytwVuzotRdK58t0uHqa6zSFk7HmdbxA8ZG5hIXM8ZvjJdM+Idn+J2KD?=
 =?us-ascii?Q?WxZuawPk9DGQdm6sNtIhZ733tCfa+CvqWUeAK0K+3S+Cl808QSlTIpsuh0HJ?=
 =?us-ascii?Q?XNpPjz31uM3n1iNXyuMI4k2NHOBUTgnE/KhMZCIDyY2vNxWxQs/Ot1r+ieXf?=
 =?us-ascii?Q?vlQVAndfjikxK+tC92AhPGeOPmzzNeEYcQ3/XYHJiBLsCQ7inbiqTaWhwgMs?=
 =?us-ascii?Q?t8vDVE0cl5MmJ5xuM9x9faKCh7axkr/iTdTF9M3FoF5JFNBoRuKjwfldIQ?=
 =?us-ascii?Q?=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 913cecf6-9107-4c6a-83d3-08da0c2c40d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 17:49:03.1485
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 eV7YnETRPDKQD2QXWApyBrb5+fbl5N7u1MlofTGLECInYAzqXIxJCRd4h37dRumj35x1wxksgPaUM7dcn4Q4sW1mhS4AD9bHdk0DJpZi5Fo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR10MB4093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 17:49:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56532

Hello Alexandre,

> Did you try RPI_KERNEL_DEVICETREE:append?

No, I was wrong.
This also replaces all device trees.
Only the overlays are then additionally present.

I understand that it is bad practice.
However, I would still like to understand why the "append" behaves so stran=
gely.=20

Best regards,
Matthias


