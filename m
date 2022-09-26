Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43D94C07E9D
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 17:20:48 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.110])
 by mx.groups.io with SMTP id smtpd.web10.738.1664212839784408419
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 10:20:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=AWV2eDCS;
 spf=pass (domain: cognex.com, ip: 40.107.92.110,
 mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EX0aJ5t2kcnMr6rxODmE+jXkGc117SNtJ0ePVXboSJNLkUYnMW9KoD/EAb/5qZVNw4P3RcJQMSrhWh8Tiu+b2wOxCcBvzHEHhvhenC7pUTSKExvnuDy/+Q4r6kIMgWvdbmeeNNZop9/w8iv2DZonS1zYgj8vBlETKLeNRvpEZlrp2i6VnNoXkZoxyWt7NvxRwXostarvR8RVKKcvjk+r1JkRVKWrKdKHHbOtfOlUwojpV/1smUJJTM4EP6pZ8NkA76mvwVxDbSi+du5Yom3zosZCadwjtVugD7KD/btSbDeUgc1EP8mSr60ZnkXpChN99r4ojYguj5O1zpeytBQyCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVxpoM2J68ENnU8Wm18cOwSg9CxugMB1gMcSYaA/M/k=;
 b=RtQINeXDgFHXpu3N9rb7vA8UFHHZlxg3ITNQNse+DZDmDYUPNQHR0N2gh3YjK1uVzsZUtC6s0Td3KWiEg3k7Oyt+8ECtGQlhQxUiV3tj1X2uXmLw+adNgpAv7CzRhZ1UsB2ZFYcxCAvfhJIipRUShtLL+TnTJZbcZUBLiNk4N6ct8gOXDIYXtu9A3x0duxQf1WJ1Gyt67BsRskKqKT6sR9iQ5RhL+2HZE/sZWUQ9iM+cajIs3YFXR7BefhrBBz0fFnrC3fe3/dbwTiBiPZAsaRDsoLe2mpbmxNF6WRorQ18u7xU9Hp2jVqqGEZ2F/5I34rQSdYHW7Vr3gp/K5hUdvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVxpoM2J68ENnU8Wm18cOwSg9CxugMB1gMcSYaA/M/k=;
 b=AWV2eDCS0fz3JFYWXWVrIOl6G09+sJzA0egV2Hq1EsG2fqes5kw7XZ1ZI4LPNyCI9L8qsu/lfdi4J0LCl3OMV2q49yf36ncg1z6Q83YADLf+nGbg2E350TZQX7NX6jDwVt16EBufRabRIVsueYU1gE/+wEfmqUohe/DsbbIRbSU=
Received: from SA1PR06MB8209.namprd06.prod.outlook.com (2603:10b6:806:1c0::13)
 by PH0PR06MB7336.namprd06.prod.outlook.com (2603:10b6:510:57::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 17:20:36 +0000
Received: from SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63]) by SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63%3]) with mapi id 15.20.5654.026; Mon, 26 Sep 2022
 17:20:36 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: nodejs do_compile eats all resources
Thread-Topic: nodejs do_compile eats all resources
Thread-Index: AdjRy7s5w/qUGdZMQaGPqGLd3kV5ug==
Date: Mon, 26 Sep 2022 17:20:36 +0000
Message-ID: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Enabled=true;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SetDate=2022-09-26T17:16:18Z;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Method=Standard;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Name=Cognex - General;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SiteId=c12007a4-882b-4381-b05a-b783431570c7;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_ActionId=8abb42a1-1234-416a-87dd-627e1935a01c;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_ContentBits=0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cognex.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR06MB8209:EE_|PH0PR06MB7336:EE_
x-ms-office365-filtering-correlation-id: cc0fbc4f-3827-418f-6769-08da9fe36d07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eYTBtfUQMcaLLI5g1yqSctCJ7wes5QCigpqcqLdRE8KIUZbKWOF1ziXIoVsmijkJ1mLDBx3cEsgzbUD1DkwiKsAdDfbBBnbix75a9SrizbYo5t82Jl3bDvaD0G5f7nfIi9dcKW0UXIKZbBbaM87vYIgzb9nKFhfDifOTl1VOIbcli5hVjkZwZHiQuaGkBmzUpSBSoQEAMW8RHB23BMojnQhmtiFB12bNpojDMpV+4PEy0PE2+fjJ6IXebINBDc7mjpJiJybYNfzaJT/Enp10QJomvSaiHfoXWplqz3ZAjwe6+ZfPOBoqcmS/Sqcw17tWgxk3uyUfpi1x6XQzjJSgvyfnuVSGdi8mjQUMccZjENsQFoE0GdzZRYahh49O44vdyVqXZShD4kArqp+ZQPecSWRbaxOq/ybR7CNXm7iB3veN29DlHfaZmKVUqOeRcHz+PC/fw29AnDLrf0UvArrFzxAwNSU1x+YZ9h1uESzfZ42uO8VBFcDzpb3Lo07FQfxbT5QEtIeKfe4O8Z2LtW0iFdp5V0P2dZAAd1Zj2nuz8cntlvu5OpBTrN3RyW44nRVoGvVb58Q0coCUZicjbUgYognEkOxvc1i/IOVWAcMqNoieeeu+yv428F57C4r8yHUbWVYOamCiHIZVyP1Jky158HaOvKBGBKZt4n8im3BWffLVcpd3MxxbNCj/45zzEc1doz9p/4oHNo1HPxM4yUS9TQOoSf8Adq7ATea0desYXRP88Ig6MGU4fBJ5Bhcv5nQeMSZhvckoc+HGJWaqqkHoeA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR06MB8209.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(5660300002)(7696005)(478600001)(2906002)(52536014)(38070700005)(316002)(55016003)(86362001)(6506007)(9686003)(38100700002)(26005)(4744005)(8936002)(6916009)(122000001)(41300700001)(33656002)(64756008)(76116006)(66446008)(66476007)(66556008)(66946007)(8676002)(186003)(71200400001)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?wTRi4J8hZ+8a+2mzqfUVuRj/DqWF7NJYVgHqxm8xNyFwmtMGnh00hFuPWH+R?=
 =?us-ascii?Q?GvAYh+zVCTXw5DxHQ23KN5q70zsCVFiXNpJSP7vM0TquE9gfagm7o3JsgAO2?=
 =?us-ascii?Q?RCMgxvfr9C9xKDuW5QeydVVuqMsUkfxdQm1LRvdQd8MzEJxqWno/+KgyceAT?=
 =?us-ascii?Q?r+wKZ5aCUoiTF+DKbzCzpyUd+r/rg1QN2asExdlF44bd7d3k1CfBtGjlfhSX?=
 =?us-ascii?Q?0KDqNuQqR0VJK3o+NGM44gNwT8jYaY1sOkEVW5MlCXqhv2fbPagVcozH0vdV?=
 =?us-ascii?Q?VYV0Ufjf56kdHAaYQlISARoNNeZaYyn8+/g3VpooJDqRjvXug9EejMyiXnjk?=
 =?us-ascii?Q?P3L3rRHhd/NwMQYT5Hj3pKtf/bZ/6jsy7yxGcXq3V96sAMH+wZ2DS8pymSV9?=
 =?us-ascii?Q?HGFyN/9v/kze+MZXoaD0f9LOPs5fsqix6tzvqIpOB34TnRse6mSeVsGhNs7s?=
 =?us-ascii?Q?piRoXT8Kp5RdK2Zy/81pT/BpvcH3qVlPata8l/RwYrC8QpkLe9p7+3Eitt09?=
 =?us-ascii?Q?r0eZgi+nzRBJJtlqQit6kDpxuy+l80h1F3j6Zrb5ztpC8PW7eEG8zIPwMGzc?=
 =?us-ascii?Q?wWlMgN31pygRUl6QCIlMDn9XffcG9wZ5w+d7jk6ez/Ya6jJ/xvaB15ygZOpA?=
 =?us-ascii?Q?T0siv2gl3fzL7v4+mKXKBYd0CKw3e3yBjID13rw1NLdLxhyy2Lfw0NwDzBGx?=
 =?us-ascii?Q?k0++Wu9MAXdLfDu88Chwfimb6Qrc/ivyKIabQNGJwv6tzxJLAxJTmHMCBai0?=
 =?us-ascii?Q?eS2JLhl0hy7RhT4GzTGxZdgQWHe7p2aGfnclAislPn7+6cuwibs6M0VJn7cg?=
 =?us-ascii?Q?uAC3snBRskKrnYnJ9UUNXWQg8hvlhpCRoufsT/c1R06z1VBjEzDOS7tpqwzv?=
 =?us-ascii?Q?sn6ZnwQg5RFmVtGEKOFLXWhbLTl6SRy+7ikfqIC1bRIxeU8xUJvnWnEP3YlB?=
 =?us-ascii?Q?3X+x/+3hr0PJhQ9Nh0L756SZwpEQwZyiKPmayMBKtS7ETszxhjVUU1SNB4io?=
 =?us-ascii?Q?uCdYy4XQ9TntC0Hm0VPqQI2rpOM+gKGPVuQQrSCqTiQnoRB7cpyAz08+NcsE?=
 =?us-ascii?Q?qB9JpFuqgD3VPRTwxOeF2RPeX+kNNLr7EhbGTWm99SE8v7ThrPgpRxkw9qLE?=
 =?us-ascii?Q?0D17zXV4nPJko1kbmS1qt8LB0AJThtEBKXmFsBHewetEyxEpnasb9gaUIPtm?=
 =?us-ascii?Q?20RmcmmNWUCFXj+dLm2BP7I5HbiwWe6AIEpvSP6XNbkZ+EAvjLd9Fz6G67i+?=
 =?us-ascii?Q?oY58YOj7ESUwU6P5THJpQhQ/ru3tZuivgGluSHsgAxaOK56QtA3UD5uANfJz?=
 =?us-ascii?Q?Dr1QhUAWIqvPn7LqK59qYmIhLTwQWjaljEWVFFF0GJBV9pAqg5wRgNby3u7K?=
 =?us-ascii?Q?z9JWphbTygYk/pL2AtKIHb6FplP1YiE9yww7YB5TtZitjIJWM4Uw2UYUYxzi?=
 =?us-ascii?Q?kwjIadTubWT+pvPeUKrOxMOk+j4Z/ugp8I6xFU2pPELY7d8BGRIcbFop5Jn1?=
 =?us-ascii?Q?75Wm3fxoE4uUh7DP6ciPpWWYiLVwgEX1zwIdwwpr6aXt2FkM58q/U0s/ooRg?=
 =?us-ascii?Q?eQkNnowlu0y1FhfmJSCyMZXTFTaiW/jeJbf7ZP5WNUVC5oV2v2LaAQEwQpo9?=
 =?us-ascii?Q?Vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR06MB8209.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cc0fbc4f-3827-418f-6769-08da9fe36d07
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 17:20:36.1628
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ZsB7ewrilFcppG4a8ATH0mocbzI+Mqs1/RABrnDYubNVKlwOaFlJnLwxDXedbcTg7lk4ziP+fIAYuU8/i63MEVuYjIFUIvn8n4egBe2nZMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7336
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 17:20:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58165

Hey,

We recently added nodejs to our images and noticed that it's do compile pro=
cess is a real memory hog. Since we planned to update the recipe anyway we =
didn't pay much attention, but today we updated the recipe to the current v=
ersion from openembedded-core (16.14.2). Still I see that it consumes nearl=
y all resources it can get, way more than any other package in our build pr=
ocess (and crashing some VMs even).

On my build machine (dual Epyc, 256GB of RAM) it manages to produce nearly =
100% CPU load AND eats ~90GB of RAM. Some other machines fail the build due=
 to OOM issues.

I only observed this on the nodejs build, is there a good approach to debug=
 this (or even a known issue)?

Best regards, Olli


