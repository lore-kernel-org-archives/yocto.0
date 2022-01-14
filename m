Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BF6C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 08:19:53 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.92.64.83])
 by mx.groups.io with SMTP id smtpd.web12.4684.1642148392612116067
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 00:19:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=aZwrf393;
 spf=pass (domain: outlook.com, ip: 40.92.64.83,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSQflZbR627IulxItgvPtgK3m9JBj0+ERo4b2273nF6/jawQDQngntmTpAjJhbg6MPuxuEOrr/W/tJ6jAc8Q+iqyReV01pxj0ai2FHm6ULF+iMeNyzivwiMbyAWHLVE9TNW0g3ctjWEvrcPz+DUHe64dz59dUQ1Lu1RwsTEyai/M1g5aBwid4EyyWALBAe+KjZ6qSJtl/TQVXb8WeA0icmOPbYGINiveCP4M2THFw/IfKGhiqqKVm3sQBfWxZyecbadHndyq9eo9bvzlWuzKFrAVVJvr07bXUPbUABnlD/SA/Yfh4KEzMUSNrq+fIwCiedwvcbQhWEzTVr8mR2ij0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BlW4q99uWpKudAB5dmJuqhctaCdZC2W78lQAYufUj4I=;
 b=aVk30Y5zftawRiOzj8bOvIwBLxBbvoj2ddRoDovflvc8M8XskD3vuuazf+EvPX5IavyvfujD54ORa7hxp3of6po6vO9pRyfrO2N/7I5C+a2P2v7QoEqLNH+hV7iMIW2DZJu4WD2kIhPnP0Cri+D/6Jt8QNtYVM4DbBkVbJ6PIBlIa/dVJ0JdsG1fu9vWts0ElpydjMRsDU5ZWXSqUit7366AEJQNhuVbzeVft50B1We4eFOB0hYbI54gUm0QH04xAWb51GA+0Vlq1BeXVbRxiEphbZT/CF6HWEn2BUV9net28Jj5wj1e/yTEtFiieA2bwznEg1CpHz4NniegZ4pI5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlW4q99uWpKudAB5dmJuqhctaCdZC2W78lQAYufUj4I=;
 b=aZwrf393DEeRwIi83rXHGjkzugjMgL0vaIJ2O3LKbOiCBBGRPVFEEvhynM79sc4PYM+IMLhOGjE1CgFm74iOy+xUqhuV9r5y8xsBWHDwhOo+7uDLKy2sTbzt6jO7atrDTrwPpRegrYVgnzZaEYUG+irW2qsDyuTT+UCpPeZ3dTl9G0WjOsBwXX4WeXk6NZ1e9l/gnykGP8jWR0NiSgGd1JcHY1Z0YAyXX91bFWGhNqHU5DIm3291Bgwre0V1Uew2vdnGKxn8t/ZOnBGfDOuR4jOLUrCWOYxuhYyBi5HnCb3TXn6d+vhq6R4lFWJToPOAwcSXy09lgK6JR9vFocajkw==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by DBBPR09MB4890.eurprd09.prod.outlook.com (2603:10a6:10:1f7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Fri, 14 Jan
 2022 08:19:50 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401%3]) with mapi id 15.20.4888.012; Fri, 14 Jan 2022
 08:19:50 +0000
Subject: Re: [yocto] Installing specific systemd service file according to
 selected distro
To: davis roman <davis.roman84@gmail.com>, yocto@lists.yoctoproject.org
Cc: song li <ghosty.lee.1984@gmail.com>
References: 
 <CACfi_Z30SFKp0Wb7XQJn-g7=-bZstcjuBoTi9RauWadLHR26CQ@mail.gmail.com>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4642E272DD067D2848570553A8549@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Fri, 14 Jan 2022 09:19:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: 
 <CACfi_Z30SFKp0Wb7XQJn-g7=-bZstcjuBoTi9RauWadLHR26CQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TMN: [VvTkMnMWA+IUWMx/7t7paw+c91Y7h6q9ZNUrl+OqqjI72H5MHShYP8SF7916cqok]
X-ClientProxiedBy: FR0P281CA0011.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::16) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <fa547869-767c-d790-57c7-5ea44f41aaec@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35e02576-29f9-4b99-3232-08d9d736a1bb
X-MS-TrafficTypeDiagnostic: DBBPR09MB4890:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mLGqB5OQbU8jj6Ooc+FWze5ZSFZkHMLgwuR0v5Zv+JzAWXmNqXUnsW65VC8IECEB0G84Mdno86b6kHKS8hoUbAHrWTc9ZiTik/drIQF8f3st33ldNxAQ6JZDlWUtx5DdyKc+cnRHs3E97acdHW74URIV4Vz7c/bKolve739a1RH3jPU8JMe8c+VL8UOYaLkZKvlrOb+j6RCiiWBFNF26PQXXwM+tBUTAiJaVudOOBL0S1edw7Ja0zVSM4XaiA9NHJj1zepaUYfOoqbxf8NspTI7+AUySYVIx8vAyZd9KfRrFwg9v1mSiHtceouHtfW8k/MQoOWUmn/kijxyaPqHVRV0JBLVmt2zyaWhMclDAt2oGXrbyQbXEL6xoyOrrU6/LSEhtcZa5NJr3ke6kcTeqiZw0KxFgM0axj0zPfsUstCKlJGh7DofW4l+MPIbE/BzAjX8OPjKiUslmxMUCr+VNAaRGh/sm6MNS1kWS8p2sdy//o4GCzDuCJ1smcmTmDFwB08nOg9mOBVstAoGqVWMNRWRdmrV83qX4cSGZdle/D3hIgaUG35e+MFzTB7NBIJu+ucCES0nTQe0SBqzp5gSlfjVUBPxBe8VZoEo+VTWcxtzX64ytFMh/Ag47dnUmO0fJsc6/7f53lEkJ957HuS/ehNMywc+UZkttuFJzNb5iid8=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?enVJU1RremNUTG80S2ttVFNmdnhEeU9kcnU0V0RVL3NLdTg0NzZxdmFBNC9X?=
 =?utf-8?B?K2JYZkxqUWhHbDdpMDRkMk14RlB1M0dGa0ZBSk0xSXJoQ0IxN25pL2IrY3Bu?=
 =?utf-8?B?MFQ2VGtFeWhMUHRDdnAzc1pFUDFlYlFDb3JnemtvZHI2SzZSUXh4ZG5jL0FB?=
 =?utf-8?B?UTl0eFJ6SnhyK0c1ZG9XOHZxbTRDUzZYclo2R2hoandHanQxenpTR2hwRFFN?=
 =?utf-8?B?clJUSGh6VEh3Wi9wMHI3YklLbGZDdERUTE94TW1KZmlnSHMycFlxZWNiNVFB?=
 =?utf-8?B?L2pGK0dobDV1RzdIT3RVWGVKL3VpZTNYUjYyNW1GUHlvcGFyczZWWTAwcjhk?=
 =?utf-8?B?bzQ1RFpnelU2L25LVWN3Z1RmaTREa2hlZEloemFBbnpNWWlaS1FaeFVmL3ll?=
 =?utf-8?B?aTIrNC9xa1d1ZnRoTTJvTHVXTDd2cHAvSTVNTHI4OGZhVXhBSXVhcEZhSDFO?=
 =?utf-8?B?VnVKaWV4UWJjSnYxV28zbnZZRGpxVzRyVFNQMEVDVWViR0tGcmU4Qzg2Zkxw?=
 =?utf-8?B?TUVad2dUUzFUZzJOaEZiV2FaS29IYkpEbG03Q0tiQ2E4WXc2Nk9QclB6L3N4?=
 =?utf-8?B?M2xwKzIwMHNDc1dxMkVKS0dWNVZQbjZJZzhaZU11QzhCby9zNWtyNjJCU3gw?=
 =?utf-8?B?N3dQeWJ2WmdxeXNpOFJoZmtZcDNDaXd0TUxqU2RGQnVnaENvdkljZmRyVU5t?=
 =?utf-8?B?czluK3NjSWJqcTNjajNLTG9Cd3pJaFBZbnRXVkhRRlFRd0dwS3JjTlJ5SEFJ?=
 =?utf-8?B?RW9mOHY3dkZPQ3dGMUpsSnlpY0szNmVuNXA1UGNkOUdMRmtNeHljRUk1M1BJ?=
 =?utf-8?B?c3MyaC9KZ1BMbS9RWUVCanprUzROVEkwcm1UTjNSamdReVhzOWZNVU9TQytH?=
 =?utf-8?B?Q0ZuUkNqblk1cFM2Uys4M3p2ZmxndDdsWUZpNk8rVDlCendNU3pZNUFvVGxN?=
 =?utf-8?B?TjNPWHRiT2txODlvSDlMTjhheXlxNXBWSDVXQkpEOE1XdjlpeHFxTUFYaFds?=
 =?utf-8?B?TVcvWE00ek9aaTdUaHlqQlVURzFybUhHaWRaVEZWaE9ram5WdTVqN1o2KzhU?=
 =?utf-8?B?MnpZRlNOVVFzMmxBSUNmQ1paOEgzOVY3OWdQeCs2UWd2VjFUODFiczBtak13?=
 =?utf-8?B?K2RYM1Vyd1p5UFdCRTd6clpVeWhwRDZMUWhWTk5FaFVkbEU3QzVFSzVZTmlo?=
 =?utf-8?B?WElPcEVpeTBSM1JZTFkvUzBTUE1ESjVqMENPRWs5NVlra1NjZmRUMzBRT3Nv?=
 =?utf-8?B?WlNuNHZZMUhYeUV4ZFdoRFQ1WU9XUlNuYy9UeGt6Q2wwQjhuc05sdjZXSlBp?=
 =?utf-8?B?NEhNUzJTZnJra1RRRmFrM3Z2TnI1QTBnZEVwOWFuVWJEOWZQYjM0YzIrdk83?=
 =?utf-8?B?Q1AvZ0drOHlKTWc9PQ==?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 35e02576-29f9-4b99-3232-08d9d736a1bb
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2022 08:19:50.2969
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR09MB4890
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 08:19:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55872

Fairly easy, each distro creates an OVERRIDE by default, so you could do

A:poky = "foo.service"
A:yourdistro = "bar.service"

SYSTEMD_PACKAGES = "${A}"

do_install:append() {
	install -d ${D}${systemd_system_unitdir}
	install -m 0644 ${WORKDIR}/${A} ${D}${systemd_system_unitdir}
}

you could also try to create distro-specific do_install appends like

do_install:append:<yourdistro> if you need to do further step besides 
installing

On 14.01.22 06:54, davis roman wrote:
> Hello,
> 
> I have a recipe that contains two service files( A and B) and I build
> for two distros where each include the foo recipe.
> 
> When I build for distro A, I need to use foo's service file A but when
> I build distro B, I need to use foo's service file B.
> 
> I could add some logic in the foo recipe to detect the DISTRO and
> install the proper service file but I have a feeling this isn't the
> yocto way.
> 
> Is there a better way of handling this use case?
> 
> Thank you,
> 
> Davis
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55850): https://lists.yoctoproject.org/g/yocto/message/55850
> Mute This Topic: https://lists.yoctoproject.org/mt/88415464/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outlook.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

