Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0315BC25B77
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 11:52:35 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.111])
 by mx.groups.io with SMTP id smtpd.web10.38075.1715946746439997079
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 04:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=mMK666lK;
 spf=pass (domain: cherry.de, ip: 40.107.247.111, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMHgGfNKQ9A0LIxaztr6VIX2Y43PEby1KJSBrrIrWlQv+V5VChPnmGkmE4c4Sl7ZB25gpPRkMsN3WTAbU9cZz0he0JoPQALmSsMydTAVj02MVheZQ54bwnZ2sLcci6EpT0n4D8dwVh/y0WtLiU8iHl9JEHOXyJL2H02DfL+KvxV5VZGxQsMMfLfpd4k59DCryktcVxwSHcqx755DCLiuAj4JnmiAI8xaEi14OHNpiZ90N4TYw6msFdtD1YhIkxzUVqd0FrPUm7EX+22mxclW8qVuJbTtSU2cxceWMRUHiAoPYv8bs9jq0lYZUhRk3hyqpJgszSoYnYrCnekfHmFHxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VF7uJiyukSnYf7eb5qngaq4ag7lJ+seoV47PDHJlHlc=;
 b=RWWWbegsltaFSEvnQ9Z5ZCqhgLgEOUWjB7idmnfP7VGa1LJ7rLHZUc2jfv+fP4UDIAnwzyVzevDwf7+6ERPBqfzzLPCtoPahTz2cn38JabOKsi+KZk5nuWZ4aws5sq/OYaFYWb7F1L1WcOO6V8dZSGQyDRmFnB9TAbaoo0SDmf927ITeE4CiTH80QX4U5dY1r4tqyL8Vm05a4mwKsE4cIifNgjZtAz6EOVSG5er/uL4M8BvyKZokGkMe8YCCMu0HDXOXY7QnEHcfAn/mILCg3NMS6jkKbkTMYtcrHjHItM1fGNDzj7Nu8+yMX4FJaEtnl3jYucfkaShxtr6O8iiW3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VF7uJiyukSnYf7eb5qngaq4ag7lJ+seoV47PDHJlHlc=;
 b=mMK666lKMldFtfnNSe86uwRTExjWDNGHIkw3fQ2oW9tvWR7Rzlvd8Jz/jGzPWU/SY/xXMV8BDC8BlYnjqSUZf5vUr4+SRG9chTqDoK+w0W20iQvBJsiqHoXb0vWq88rcjCCgqo2kIj5bL6FKaqxndXh8ZwyvWYSV1uBAtf6X3d4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com (2603:10a6:803:128::25)
 by GVXPR04MB10476.eurprd04.prod.outlook.com (2603:10a6:150:1e2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 11:52:19 +0000
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31]) by VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31%6]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 11:52:19 +0000
Message-ID: <f2199f9d-b830-4122-afb7-ae91c4ebea88@cherry.de>
Date: Fri, 17 May 2024 13:52:17 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
 Ross Burton <Ross.Burton@arm.com>
CC: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Martin Jansa <martin.jansa@gmail.com>
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de>
 <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
 <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
 <9C837256-96C6-4B2B-8E5C-BD8CBB34AAC8@arm.com>
 <CAGAf8Lz0HrN4SnerY+y_F31JCKiK1kTsfzNKyd2ss=B9CS6Yeg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAGAf8Lz0HrN4SnerY+y_F31JCKiK1kTsfzNKyd2ss=B9CS6Yeg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: WA2P291CA0039.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::25) To VE1PR04MB6589.eurprd04.prod.outlook.com
 (2603:10a6:803:128::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6589:EE_|GVXPR04MB10476:EE_
X-MS-Office365-Filtering-Correlation-Id: 39a56977-1769-45f8-9d75-08dc7667ce0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?zQDe6KKmele/rz+VjyUGB/WABlwhQLSZEGqCswQWGw40S+1xUuX3waMzdFwE?=
 =?us-ascii?Q?ZlR/EV492mZifZNpz2Bz7X9Q7nXLRw2VaoT88DQKaQpx7b5O9caakotkwbJO?=
 =?us-ascii?Q?MbXiGvlBIGRVxx/QV/9bUy2ydPP8dugxLdStbQ7NsgsUAyUYTjnIxcjP9Iyc?=
 =?us-ascii?Q?tMsUEqSdb+uYP8huj8v5bfGXfwM9qDlt2EvIUUYCwWPkJ3eA96hP6WN7XU8q?=
 =?us-ascii?Q?+xWhj4gSaxTFa5uFTI6nCqDG7YLBDoi8TyglHkuEQvAnJwVEMrQ2RdfdWj8T?=
 =?us-ascii?Q?aEWbfDOtHMGCt55YxL3qHhwOuOH4tFNdHdbFE2spMNy5bISllXXk/io648EM?=
 =?us-ascii?Q?lJZZ8Z+780A0kXxdu+hyj60LMRUi4roCoQ6S+7Gm7zWtl5trpCEXyJZ3CkPS?=
 =?us-ascii?Q?jCtaZUv4+pXoj7jxQ1uG8Obs+kPgAUKpi1tW0m3+wr37SL7Kc2xIWi/xvIG7?=
 =?us-ascii?Q?ZsWsCgxoZ48L42u6keYBeOaBXWVyH5YU1fN3ig4X79WZOQCLgIpz/H8DYX9j?=
 =?us-ascii?Q?R/qgYMApPvOy0CQpTxdB70PxMpdYgchqvOz+IYfI2uEbYzerN/qRYYzKmVKm?=
 =?us-ascii?Q?Vh0VREVxBwYUEUrH9ENGzXEBxbagj6jr8x7tsmHVKYd4rteGIotpnRqHQZm7?=
 =?us-ascii?Q?I5zZxnRkeTuwPVOPD9T4x3biiZ0ruMozY+vFGfynL1aGFtrCJk4f8R5l02kJ?=
 =?us-ascii?Q?C2kC1DrI3y+lsVsVUJ4/jFb3lI1Jf0Hl9wKcIa9rbSiAAWOx4eXRVGAsnMGL?=
 =?us-ascii?Q?jqJL+vJUBGhE249H9K9i1AkzsWkLDxSRTpE3RmAHCiCdbqA63kjErIqpOn0R?=
 =?us-ascii?Q?Eanwm73xQVOLubPrpIYMcVHALIG21482EpGN6wNzwq+T5wIyOZHRl+92Lho2?=
 =?us-ascii?Q?qDOOv4HJEm+d39BRY7x+l+cxwfxkLKnOyasvFG+i0UJ8Yr9cmalvrEAyk/VF?=
 =?us-ascii?Q?7IIUMy7oUwndt8PiguogHGAPZD11XymtgqsPcCaCgZaKhzG4FGcpf5shVqDw?=
 =?us-ascii?Q?bXoKbRaCgMLP45YyLzag3kvBnh1n50FccmgVzpoRhjKad7y2Ps9rk6XBUaAx?=
 =?us-ascii?Q?1vxWfhJo+kekWOLJbkAuEaqpD1G55aWKjH1Wvv5BSqnM2fsj3WzMVfK9v6vj?=
 =?us-ascii?Q?KFxm8i/41T751RCixGuVCNLBUWiNyeEPGHP/yDYcDpJLHZogp/gc1uTHt68p?=
 =?us-ascii?Q?wOq4JG93cARVhAPJfI8W/LGayt1O4N8c9SMLy/moZWA81gQ+0gXoRggN73cH?=
 =?us-ascii?Q?mKWnozCe14jnCwIiSO4EHu4i98cp8lJVNPaYbWJkqg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6589.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Ao2BRE1EXAq++tDYf12J3hi7KTC5d53ci+lglEgigNf1lVmHYeybzPdPcuvH?=
 =?us-ascii?Q?oaXmrxP982fUTb9COmASfzKKPtKpDV5obc4TPrANNDedFCv23DNSawswlvlr?=
 =?us-ascii?Q?YKxgigRf1IUP7DPFJpbFM1hBkS1IRjV1I8g8Y6ES5qq0FdIHVrM/yhVxFhLR?=
 =?us-ascii?Q?E9OJzhdrwEYZP85cEGLRYcQnN+wU7q83CCDEwMycn/ri5uA10/qiwT0oB15Q?=
 =?us-ascii?Q?jfY+77gloZc8jxRQNko0VP8XmSpNcU19pwwHDn/sB/WILefFIrj1FPuTsZjY?=
 =?us-ascii?Q?k5FeKogkb2mKo5eNpORHSSZsFvpxfhwRVPoYX8p1EUibxg9NXX/akazeADyB?=
 =?us-ascii?Q?BdJTecQ4TvNY9LH4vkKAX3dzZrXRuUolrFqb0tm1cKSJabwFLnIHvIoyGTeO?=
 =?us-ascii?Q?F7eLvEFwr/tXybJ6mX2sH598OEJ58j7r1zhjVI8oYLSoWzEEO0h2IBfksvwU?=
 =?us-ascii?Q?kbXKmM7EEl7wauqxcQ/pLIf5OZ3ETz1sSNfzfETEvr/x1DzaPkSRBdJ6Vi0S?=
 =?us-ascii?Q?8PegU294It7ojE6nxjc7UjE2nEpq2rZeYUDK7BLhr66EMIU/iR1TtpROD25k?=
 =?us-ascii?Q?W7B/A15rVy0Frtc3TNk3fAlg7cMuOUy/ubSkBQFlCYybEC1rJ2UZ1kEL/fNU?=
 =?us-ascii?Q?G4hmUUSg/+APv0MquvmjvWpiYxAENO0rCAHJMwjx32x7nKkQObS0AN3kD5mf?=
 =?us-ascii?Q?RUq0/BzrjBZnNKj/qiIJBtimBSN3O6cysl5fRwUYgVQD66+69lmEPDy6Fwd+?=
 =?us-ascii?Q?fMzn8qSs5AB2tu2ro8/Q7GcvpYfc7xmhycXbL2q403z9sz3mdmHz0SpI8ZFe?=
 =?us-ascii?Q?GJgkQYS0nOMdHiQHbanIHUOTP8rAIchIw67K09ixJsPLe+uxJOYyVkklQlPu?=
 =?us-ascii?Q?NYp9lQzWDds+uF3zPzHVcOMbPfDCatVfDyNdn+4puFKjXKwitozw0E7WoMsx?=
 =?us-ascii?Q?5/0FRT6MI7HK3fMlh5actG0xA/gd5k6p+LYEVgwnpZc7hHcNr8EQ2ibS4w42?=
 =?us-ascii?Q?h/3uNjCg/anoimVdsY592fJ9ftw74XhSwL/c+FdZTt5dFb3NPU+AMqYD492T?=
 =?us-ascii?Q?1JZ1bCjf8nnr1qZIEOLwKu4LQN+CvJP3M5VPxtYwFyAUkJSPnd6dtg2NnZxh?=
 =?us-ascii?Q?S/VzhlwIL6zEAkPGsHcBs2xQZ0JXZKFUbsD75l4q5tQHHI5OuZaxDniudBTW?=
 =?us-ascii?Q?7BB2+zY4hK/EpS0jzfqvrae0MKipkl7NceiJsSOXqcqlwZOUuRpekKsZhJmi?=
 =?us-ascii?Q?DTvTQ14NBTDRV7m+6miyzgOas8iVYSEhiGelwwWQPFzey/ULNC3bT95Es43C?=
 =?us-ascii?Q?dINDse9Y2NDGm3Qf1mGnoE17hR/fMiJ9LW6zjQ1LONCD1NAguS16SLwQtyey?=
 =?us-ascii?Q?92Btx5El2ixaI4wjtsl2HMGupFfizuqMPaC6iqdGniOuOZSkG07po3We/o+S?=
 =?us-ascii?Q?+nBN4r6lqwnn/yrwJAGNiPs7V6w7JFCtnsUdB4hEY3UH/w/mPcf6H4RIJg2q?=
 =?us-ascii?Q?v6gPaHpFn/4YWi589xsRL6IkvxCkryoo9oQgHnSnrvWKGaBI+4oSeoyoRDVi?=
 =?us-ascii?Q?5OPwQ20Vwj25Tj/3WrdS+ALmpSJ5I/vvUx9t0W6KlLA8fUrKm+p60a6kPyqv?=
 =?us-ascii?Q?6g=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 39a56977-1769-45f8-9d75-08dc7667ce0b
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6589.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 11:52:19.2391
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hurGOYF3B9sLdIoyjarRvEzjKr+AVXFrmuCHvx82f1h8X0Mo1/qWFdD71OovXO9mUEKjSVZj5qqlEH+ZijCHRSIdEKXELWwngJ6uZr7CryE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10476
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 11:52:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63135

Hi Zoran,

On 5/17/24 1:28 PM, Zoran Stojsavljevic wrote:
>> Remember how Fedora 40 is unsupported?  If you want to use
>> Fedora 40 then you=E2=80=99ll need to join in with the effort to support=
 GCC 14.1, which involves fixing problems like this.
>>
>> If you don=E2=80=99t want to do that, then use a supported host distribu=
tion.
>=20
> I have to give you credit for this one. I will try to apply an
> external patch for gcc 14 as per Martin's advice, and see what I can
> do furthermore.
>=20
> I have been with Fedora since 2012 (Fedora 14), and I have not once,
> not twice, but quite a few times serious issues with Fedora.
>=20
> Fedora is a test distro for RHELs. I did not understand this till
> recently. And also for kernel.org .
>=20
> Well. Learning in the meantime also ArchLinux (alternative to it is an
> Ubuntu, I also used it for a couple (maybe 4) of years in parallel
> with Fedora ).

I've been daily running Fedora but I'm always updating as soon there is=20
a new one available... which means I never get official support for=20
building the current Yocto release. I only use kas containers to build=20
which is in a way pretty useful because then most colleagues would build=20
through this container as well, abstract their local distro and=20
everybody benefits from a more reusable/reused sstate-cache. There are=20
also CROPS container IIRC but kas works for me and we use it for layer=20
setup, so two features in the same tool is a nice to have.

But by all means, if you can and want to help supporting newer releases=20
of Fedora/<your distro here>, send patches so others benefit from it :)

Good luck and looking forward to seeing patches :)

Cheers,
Quentin

