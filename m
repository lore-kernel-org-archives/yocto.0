Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 027FAC47088
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 12:48:42 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.77])
 by mx.groups.io with SMTP id smtpd.web11.42105.1669898911804249966
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 04:48:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Snaxlv6T;
 spf=pass (domain: arm.com, ip: 40.107.105.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e4YnXinQfMd6t4wX4LVKyerxlFRl5KZmgaadseBw6THym4AEcsZhT7uzmh00DtZNyICR2x+KuY398PSj1ai/dnbhLJ3Cs19rGFKj7zHbIqXXbcyPNEuDigu1qrs5YG3CPMG83CcJcQnURPAisb9L1Pg0uzHTJ0Xk6F1p7E4YCCDTSyR30jsf4cJJ7q3Po/k1S4LH6zdO35MfAR9N0Nj0DvIJpGquMlFGNYmSCWaxaeClX8vXAfhEqrYn9ENGFlFBQmEI1qDVUXvatl5qkycZ/ORWXdtomTKbQYLx3tXP1eaX4vJyVBVHqHUWjTYPuN/3fgQQT+1o6VA7P8ASeNSe3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j+cBL4X9tYwkjSmAes15J0yl1cQVeyn4L8fMS1Q4h6o=;
 b=QjbL3yyy9ONFDFff4ZrU4BHmCWJyBZ+7bXVFlPe17Q+xTCBKZrXTRE4IF9J+C1+sxiGtIbgtIiFXj9Jz+8ajlEeL9oQbklDNNy7EdWUWxRJQzA3Yvtzhj9nnEEy6z9kPlgMGEB5tn1JeH8XQO6EWem4tuKsQkk1k8AVw/Rqb4AXp0D0js6PoIDw5oRucVegP8AIqYKJZJvM1OaOXAodlpyAw7wdnr9NhXXJCAMvgMcILjOd8mLhpA2Txbr6TWQgawnHUMmb3Ft1+Zt/nwJK5yzj9UUzr6khav3bx/NzigRs726ckDDpRopvKZHG2NPpO4Ys/yimG/75fPgJNAWM8kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j+cBL4X9tYwkjSmAes15J0yl1cQVeyn4L8fMS1Q4h6o=;
 b=Snaxlv6TYgreojoTX3gIrfHnuRwg5wBAZrQ9bsPYgMVk0bVhhYmGHkl2dTiRfGWvIj4tO0c5bjXXECJ1CcrAqHP8IZrLG1dlvKxnPzE1ODqcarD5CvJVgRBHdBk8ZCisRX/a4wTv7T+gAlqt1JCmRhS+0xQQfJ/05epcPGjeIko=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5522.eurprd08.prod.outlook.com (2603:10a6:208:18c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 12:48:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119%9]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 12:48:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
CC: Martin Jansa <martin.jansa@gmail.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
Thread-Topic: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
Thread-Index: AQHZBT09JI+LdYMW/U6Bg3CZ3F/Jca5Y4CyAgAACewCAABiegIAAAJ0A
Date: Thu, 1 Dec 2022 12:48:27 +0000
Message-ID: <0A87AABA-C4D6-4885-8898-D1B2A52DD143@arm.com>
References: 
 <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
 <CA+chaQcbVjpF79hRgQYE=RSBCr4-4=+2XYv+TviUdZuOMbkTxw@mail.gmail.com>
 <CAGAf8LzJbxMrZQWjjqD3zhrTD4xgcHc2v_eMxaqe-G711KHEUA@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LzJbxMrZQWjjqD3zhrTD4xgcHc2v_eMxaqe-G711KHEUA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.200.110.1.12)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR08MB7411:EE_|AM0PR08MB5522:EE_
x-ms-office365-filtering-correlation-id: aba9e396-866e-48d2-9971-08dad39a57ef
nodisclaimer: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CW7DcXSG/nt3nHuyAAPdDhbf2YqJtfYTG89ir7n6UdjKlw8923FA28ePBLBbZvTordj5QxnkVh8PwmWvcbSdpV8eWaPEJe7FxVSoWLqpoM6gy67SUbpPHJAdo8Eq50yKUO93cNG8bgzEvlTlss9wGQmzGJEhQU0alh4igLw+RpSHEsSIeGIN9H0Dl4u4n8/24Mg3gHsrGLmlFi6/vnscYMH1wzy3CdntBZL1oH/y+BAPWvBhBQ4+tCfbjmTZWPpQxb4G/dNmsIGrEezxWY3RXQkgjvN0kOTtZcRMlLaYf/O6ysTCClFvIQro6FKcbYXQVFK3S9BssPOzsYJ2gACVojou1GDR0f/IVFXgrJz7zfpOasSFvKiGyUkYzVBmdvV6gI8JWwBoGHKKRlxUuSjumtnk3J/q12cp75P3GoabXdi6PdgO4lOz2VkbJQ5s5JWOX8Asb431i5rDOTW4nGpB6F+76XUppzfHtO3iC/5MuWPx+lFgSH9uRRTvedTRONlugJ3uuiTl7x31JsG5NSxL6EFNlAflM36ZgHjjYfMTeEfP8Fr2lWXUavwdPihOyEwWlBDqNPq/XXsyqxYzquSo73vnVZMAr8VWxJlcEGAjCoM+zSvc4xhsf/AYXaETEOj4Gx3GqEfZIYmyep0L6sbT0vsGznRX18de7LP8v3K4zEdQX8FxmXBj03L6brkfHWidlFwMsfy6bbePKy015fWasGo4wPJvbNYY93oX7SS7MCOOLpweLaP0RsK68iyIT6Wcxcfgw/HVL9WEzU2KWihgjg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199015)(2616005)(2906002)(86362001)(6506007)(38100700002)(8676002)(91956017)(33656002)(6486002)(66446008)(41300700001)(64756008)(66946007)(66556008)(122000001)(966005)(6512007)(36756003)(26005)(71200400001)(66476007)(53546011)(478600001)(76116006)(8936002)(5660300002)(186003)(4326008)(316002)(6916009)(54906003)(38070700005)(4744005)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?haR5fxThOVaeH1+2BRkzt0DzdbroVKx9vcdDb0ate6gbagmRCVOeC0GkhSEU?=
 =?us-ascii?Q?nonK6idmqd0lrJuWCNgRdAxP/lwkuZupxb+Z/PvMPzhI7gR165nSqEGSbT2G?=
 =?us-ascii?Q?Oy06baeYfixR+qZQjfcrUi43YbTkxrKhTFbGi6WP94dSv+BYT5+OTRWzvvmL?=
 =?us-ascii?Q?EBScJOUZlG7CdlcQMZAnso0JXSVxOEaqSKcwKd6YUBBz9Nmd7GQDeake4rQ1?=
 =?us-ascii?Q?s+V5QBI9kLtgRj/Ufqw/rYRgd6jJVTrK2Oc81gJdumDbAgdSisHzKcbaz7Gy?=
 =?us-ascii?Q?5K7jtVY2KxtOjsgsF5/F5dryyRNqEwakDT9q+I7eAUwMj/c+qvvdKbgcFN9z?=
 =?us-ascii?Q?aWQdOAymQ+DKCrLITvdd4YM8HvGuo2AIqHAIyACVasvv3OXwbGEnLUo2apGp?=
 =?us-ascii?Q?8B8o88zRuRyoNDZRR7Sc+CZ8GUhWVL0dNPfTI3HyIxt5Qp3Mrt3Vf56yBnsC?=
 =?us-ascii?Q?Lumau3LTOJlNqA39PV6eneOptDkq9aEnaz2d28ZAt3xiagR/XfPYA+u5xh1V?=
 =?us-ascii?Q?I5ULtjBkG/FwexuNdDIXdgTFyDIo3YI4DdgFg9SM1CuI6ZynuF1FuMIhNt0a?=
 =?us-ascii?Q?ameP+eeuw09/PdkLCxO676QCGyBpf8kO0bLZwxrfDgVOG8iFyQwKwm8fiL6m?=
 =?us-ascii?Q?g8Fs5Ak0+WrqmokAMXDxM5wdoQCdbqqKYCc9qLp8nIVjXyNcQTATgtBpBOMi?=
 =?us-ascii?Q?80NZ34ApXW1zm00CgoMYQWhZUXtNs2iEdpCVy5dng0RL6iJDp356/RiDHPni?=
 =?us-ascii?Q?dZE9MJ5rkxF8uEGkDQ38m4zsMWg7FMNH3qFw0F5lgNar2S9UvobNNTxDgLQb?=
 =?us-ascii?Q?D3IbSBTY4Gm1lFBfBFyJ183ai9VqFWF+aAWmofJM7qJuBf3uHI3QEqBOdQ8C?=
 =?us-ascii?Q?JVWNgaFSe7U/VQjeurxMuVGYTlhxf6DOvKo9hbBaausOTo8vQKGINnI0nlKN?=
 =?us-ascii?Q?Uf9QGFRs4sDkzAogDtEfU9aTsm9Cza/Y9yeMEgsmQgOjvlI86rmQBV7HzJgi?=
 =?us-ascii?Q?kx6TtmLGKss0WJVQqWzBUhhRmfF34HAkaiLJRfOaxHPfkjLLOjSArDhz3GyZ?=
 =?us-ascii?Q?vTjBfZZGFEx89qZ2flHz9IdscRZz0EPqfD8iZkXkelevlIqzrhrdu463okzf?=
 =?us-ascii?Q?TBtix0H7YID7pdAoCfoZDnwJ7txhzvzxxufV7/a9heXJnwk9vysgG/Ln8SaS?=
 =?us-ascii?Q?MtD/XBInU2Ks6tI/y1BFl96h78MoMnQZt+Nhy/pcpuS8QMwxS0KR6IUMX723?=
 =?us-ascii?Q?K1VSjhFCnY860RxmeEpPsfUrB6jN70RISIYsjFzdG1sOTC8HF9OBS45zrqyT?=
 =?us-ascii?Q?sHOfx5e39Y6RxLGWsthsJ5ZKFlvVFPISupaXs6Jur/82B9jzDM2K6Unr2IxN?=
 =?us-ascii?Q?5g58x/D2kSBM0OpCoHhtanSkrG7TE5wamvFGKHO68sIrIU/N8M3p/1RlAglQ?=
 =?us-ascii?Q?hZ04cMLO3FU4jVlXpq+ES7g3GMSyoN4zOdb5/bOFazpOx3ZmSVF1medgp7Ef?=
 =?us-ascii?Q?ihi9XyvgfOllfFL0FvVcok1NJUHoSrQ/Hm7dXtFs2JGT66lFegHMYwjb+buE?=
 =?us-ascii?Q?yJ3m4AMmfXwsiLd3XxgMkguSj7d6KmmGHO9ai/LT?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <816C3A2008F3A94BBD7C02EF78455FEC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aba9e396-866e-48d2-9971-08dad39a57ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 12:48:27.9778
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocFrT9rcIZfjVG+9+0turMaKBCwr6TSX8lHOPkUg4RY+7ubOUW+ZIiE8FSMFWTJidqHl7Y704TJP3kdyMMEi9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5522
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 12:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58703

On 1 Dec 2022, at 12:46, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com=
> wrote:
> But, could you, please, allow me to have my own original cannelloni
> recipe (yes, I developed it with some help from this community) on my
> own terms? I DID not copy it from anywhere. It is an ORIGINAL.

As I explained in the bug I filed in your repository, the LICENSE statement=
 is the license of the contents of the packages, not the recipe itself.

https://github.com/mguentner/cannelloni clearly says GPLv2.

Ross=

