Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A335C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 22:50:12 +0000 (UTC)
Received: from esa5.fujitsucc.c3s2.iphmx.com (esa5.fujitsucc.c3s2.iphmx.com [68.232.159.76])
 by mx.groups.io with SMTP id smtpd.web11.1991.1675127733221297921
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 17:15:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=OF/4i8H1;
 spf=pass (domain: fujitsu.com, ip: 68.232.159.76, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1675127733; x=1706663733;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=mwuLIGJM9wQlGw5i7DBA6hWCQtyw+D3CVm1aHAq3Cvs=;
  b=OF/4i8H18rkWTEEExpfbm6favU0CuJYitnYWcoP6xrSjdt06Krztjazm
   Y2JmVZom+ZA9xTOUWFpcdPJEibG5CFG8IPDl3AXYGOejuEBKMmzjdtJ6k
   1N7AG2p9JKgEZmIOefqza52S9xtkPKzaUVXovjEfrsdFrcgsgXzbCDBKY
   2W231j2DRK1QYGuHyG795nEdHsrT2hymt7t6YH3JaE/9ncOGS92Mq8PMF
   Df3/uKgJxBLVyfl2bGMeL+NgpM+8Gb/PaktlMAy1TUkxvN2BVEbPOvTr1
   xa7/Vdti2ylzt+G8V2IT6/VwzCt3mgSzGwD6op+daZGfAGRJ9UeHnCQyA
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="75968033"
X-IronPort-AV: E=Sophos;i="5.97,259,1669042800"; 
   d="scan'208";a="75968033"
Received: from mail-sgaapc01lp2104.outbound.protection.outlook.com (HELO APC01-SG2-obe.outbound.protection.outlook.com) ([104.47.26.104])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jan 2023 10:15:30 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KO3RxjKF7mBP3ZP8gwfFESysDmFjykZi6seuxHQA+uNUrVrp1jnEEHgv2YBiex3lAJ+1lpzsGliVE70/Nw96V6tHq3rDc6cjWUk65G99MuRMjSJXh5iQ7LyLOaNkr7yIL6Aj+gBwx1ZeGjYUpTCQqQqfh73/oJ3e0Jcg7BHmN9aFRuaL50Z+A7fwTp2k05N2k1f1d/zwpgXoqYskPvHf4lsynaleI5r4cWNBvPtpl4UOYqA3e2OhmPVRmVBy35Z7QA60diL5/H1gOn7rkfnRy3rEYL/AM5CPe2xOergQppOqySjtRRKT6LR1NF6obBVvjQXAdHM0AWdH/DwVrJKs1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwuLIGJM9wQlGw5i7DBA6hWCQtyw+D3CVm1aHAq3Cvs=;
 b=UPSBnPb+5Ylr0Hjlq76yumgxWe2RrEjc/oKvranEusGtCpEfqnrH1EOthFjoNyhLuCCNLi9Ii3XSldmw3vAXP9HK4EKhCOLWoDwMWJPgyz68pJ2ya7W64If1qGy1ee9C47FNsDBUVA4WaCvvtdkIDHW1F/70jfXTRKFjueYyxbi04AHKj3+Kj59QfGB3umRtpM2QvrrF75lTAb8SbYi95UTCB86z2k7vvcmjIrOmUy3nfobQvInsKfCNsWIO6HBdw6yy1py48nsLA1oi83XgE1Um2f3L0jfkpu4RaNtaPDwVKGQjbvjtU9ZngtwcasLPYwJtOjgbSjT0efc6zBAsgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from TY1PR01MB1852.jpnprd01.prod.outlook.com (2603:1096:403:8::12)
 by TYCPR01MB7992.jpnprd01.prod.outlook.com (2603:1096:400:11d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.33; Tue, 31 Jan
 2023 01:15:28 +0000
Received: from TY1PR01MB1852.jpnprd01.prod.outlook.com
 ([fe80::908c:ab26:f718:9d6b]) by TY1PR01MB1852.jpnprd01.prod.outlook.com
 ([fe80::908c:ab26:f718:9d6b%7]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 01:15:28 +0000
From: "wangmy" <wangmy@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Ask for new plan of yocto
Thread-Topic: Ask for new plan of yocto
Thread-Index: Adk1EQfFWfe5fn0AQAWBmYtoW7FHXg==
Date: Tue, 31 Jan 2023 01:15:27 +0000
Message-ID: 
 <TY1PR01MB1852A5BFAD6020EA211310D3DCD09@TY1PR01MB1852.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2Uw?=
 =?utf-8?B?NTBfQWN0aW9uSWQ9NzVjYTNjMDAtYzc3ZC00OTg3LWIwMDEtYWU4ZDdjYTNh?=
 =?utf-8?B?ZjNmO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5?=
 =?utf-8?B?LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxlZD10cnVlO01TSVBfTGFi?=
 =?utf-8?B?ZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX01ldGhv?=
 =?utf-8?B?ZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRk?=
 =?utf-8?B?LTNiMGY0ZmVjZTA1MF9OYW1lPUZVSklUU1UtUkVTVFJJQ1RFRO+/ou++gA==?=
 =?utf-8?B?776LO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX1NldERhdGU9MjAyMy0wMS0zMVQwMDo1NToxNVo7TVNJUF9MYWJl?=
 =?utf-8?B?bF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfU2l0ZUlk?=
 =?utf-8?Q?=3Da19f121d-81e1-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY1PR01MB1852:EE_|TYCPR01MB7992:EE_
x-ms-office365-filtering-correlation-id: a3837942-5d6e-4623-6cc2-08db0328a394
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 e2kXN3nZzXqBQpo08l6OU1C37WpiFqZP0I6VEBvwz0XBxsbu2grDXYIc9iEtxrHreJ83wec0w9FaC3UxlJbuQ+Dhbj8DfhseXSwI6a393vjgLHN4PTdylxfQKn9sloH/5rMDA3CPgGaHZC2fzGB3McDLQHDov3nJU1OucNwvA+x0dfz7C1cpNB14JHj3xe1gtpiN98OnNfTS8Y9DAKJPwiyAGXn9GtLEJlMZEFT9NK3Vf7lHjq4A/x2zzGGILPDbTBvMpTvAIeUriDhsxOJfgkONr0xierdg5ok2HKlKy2myJ1SFfSDmJvmmkLa3MCiTtDHPxdFlM4fw5ekQguoFwCFEIm52giyV6s+HQIOmGpJhEkOqgzlsZwaW7gfxyiovpqJufA8HyAZxV8GjopQbgSht/XBbXNmhnIX8U9PwClfqwrdNgZl+myoSa1cqb6POBLqK2oT3CMtb91tGeWOGoKtCu/l05sf6LOI3+HZdpgyPUpHw1PI8W90akk3jLdEgBLZPP1SApzT2z1f8C/t0E24SgThQFD1HcQ0xYbT8ouG0GvQtC48kTeaOagTiqQ1k4+Umh+6Bn+pUakI8KEJAwMC4wRhBj27K95VW6H2tvK7DaQRH01ai2vWGTb2JxOCefUJucBl6Z/piGIflzvX5/ER9sYJkDghHn8eXwJZMoyuFdqOf9C1WltI6K2I7nza0bE5/USfxTYspZFzotz39SYArwSkBCfLF7x9MZFq21Yjnd4whf9e9K97qKwk4bbnVOGvGvptPBOmbeoTvHfDswg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY1PR01MB1852.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(1590799015)(451199018)(86362001)(41300700001)(55016003)(38100700002)(38070700005)(122000001)(316002)(82960400001)(85182001)(966005)(71200400001)(4326008)(76116006)(26005)(6916009)(6506007)(64756008)(66476007)(66946007)(66556008)(66446008)(9686003)(186003)(478600001)(7696005)(8676002)(33656002)(4744005)(2906002)(8936002)(52536014)(5660300002)(1580799012);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NUFma2lXUGI4ZEtuZ3N2YlgzdUxETXdlR0JnTlgyWFpEWCttOHlrTXkzZWMz?=
 =?utf-8?B?WmpVbWRwYXVQOVFrU3NITVlwVi95YmlEeWpRWHVydWxJZnFSdjNTRlJWSWw4?=
 =?utf-8?B?VzIvcUF0WDdNYWFTeWpoL1RXb3hkS0xQcmE5TVlxdUQvb2tqOHYwRVppNFFh?=
 =?utf-8?B?ajRhRjJLdnF5TUxxb0lQak1RUHUyd2VOQ21xK0xlQ0tNVDNtNktCZjZEaEh6?=
 =?utf-8?B?L1kwTnJPMVVpWTNqVXdPb0ZQQWFDb0htNnF3SnRHbXBZVm11TXlUQ2Fyc05Y?=
 =?utf-8?B?UkpXMm5WZVAvNUF2bDdtVWRwRFFPSlZyYzNHK2dRYU5RZmJGbXFuSDVPbExS?=
 =?utf-8?B?UWk5cFAyeE0yNGVpcHBpcGllMzRRK0szZnNueDc2cHRQZENKOTR3eVRCazBC?=
 =?utf-8?B?RWRZMVpWMUlEeGc5K3YzUlhVRVVtYTFIdmw0TXQwZTNmd2E1K2M3eklTTTJU?=
 =?utf-8?B?cUJObTB5NnVkK29tNlJBaGx0S3JXTnRIVExraWpHZ2g0b1M5NjZJQW0rdFVL?=
 =?utf-8?B?R1lucGRJTXlhUHZzQnI4akpkcHZPRS9CSGdzV1EyZVplTjZ6RDhQQWxXTFlO?=
 =?utf-8?B?QkFmTEovL0NSWVMxd1orb1RpZGRtVCt1dGxzWTNBQ012V1dxVnhhNWpIMEdO?=
 =?utf-8?B?VDFXcFg0SElCRWNFOXhiSFluY3IxMjhIMyt3SXRINTM4SVJ1cW5CUUwwKzho?=
 =?utf-8?B?cHhENm91cnZFakpVZzVkcXBoV0pZdmx4KysvMXdKMVRtbmFKeVdIMUNXREVK?=
 =?utf-8?B?K0RvWjIvd3d6RTNpQXpSdmpITlVuZlhLQUJTYkx5QldOYXVxVlFqVEhpR2Vj?=
 =?utf-8?B?cUtDaTFiMHAzbldYMFZYbW5nbFE2bG5CaU5uRGF4aEgvd1Q1dENRU2RtVVVj?=
 =?utf-8?B?WXpCS3FhajUyS2xjRGwySVZyTjJ3ai9rbnVpalo0ZjhjUUNOSVRUdG9hL2JK?=
 =?utf-8?B?aW1nTWZCM0FGcHd3Q0hPd2JaQ1V1Qmg5NTdRQVM2TWFMU0NqZHRraXV6c0ox?=
 =?utf-8?B?bmpGMmJPcXoxNnY5ZTRWWU5aRXQyaUxaSDUzdG0wQTFzRlQraStEVGxPSkxY?=
 =?utf-8?B?bjNFMDQ3TXlvVzZ0OFo5SWlkZVZKL3F3d1hEM1Q5ek9LSmtSSTZpdEFJN2U4?=
 =?utf-8?B?enBpSmFKQnlxaHVuSzlZbnNobEtkenB3QWpmUUhWbHA5ZTc0SStQNEU0Skhn?=
 =?utf-8?B?WHRSeFVIY1VXUUswSkgzNGlnMExTMDNFamJtNTZOQzlXclVPOXpVSm1Wc0hJ?=
 =?utf-8?B?RzNhc0NEV0hIVjRWVVdKS3RsbndTRllQN3ljVmhNcEZ2ajlwQlhyQzZXYU9j?=
 =?utf-8?B?cUtmc1RFRDJVdlJWcnFaTkZsN0I4dkV6ZVFKREl5SGdKUTlvTVhFV24rbnk3?=
 =?utf-8?B?UTVoQyt1azBBYkR2VVV5NmltQWRwQ0hZUS8wclladUxKYUNCZEt5K0dsUGhO?=
 =?utf-8?B?UlN4QXN6MU5yVmVDUU9sSmlkZ0h4Q1VJWVUyT0FMbHZBT1J4MklhQ3AzdkVY?=
 =?utf-8?B?Q3ZCUlYrZzJUQUI0cUJQYWNhbXJKRlFIL1VaU0hpYTJCRm1PZCtZbVFDdkgx?=
 =?utf-8?B?N3JJTlVQUGp1eERXTGRpLzJ6Q2lwVFl1WTIwQWpIR2VqSnEzOVV1YjkwY0dn?=
 =?utf-8?B?dzZYQXNBaUxHb0R0SzNoaStvWGkwZ1hEK29ySnFMS3VZd0xIQy9lcmYzeUNM?=
 =?utf-8?B?akZIRHd6blVJUStzWUp5UE1hTGJnaUFWbjR6d3FMbnFVaUNWbjkzSUF0Yllp?=
 =?utf-8?B?Y1JBbjUweTVQNVpLUGl6MEdkK3pPTDIycTRRQ2hOdzU3RSs3clV1UStrcGVY?=
 =?utf-8?B?TFNvUEtMTVVXU2ZMK3RGVkYvQi8xLy9ya01sQjZzeDVpV2lId0ZpUFRNRkdQ?=
 =?utf-8?B?YVgvSm0venpid2ZPeVBtZlZJbVhwcjhjRUFRTDJhRHp0RWxiYm9Kd2xEcmkz?=
 =?utf-8?B?ODZBcWt1RVpYSXRRbFp4N2JnSTFsMnFLZkRvZkI4SmwwbjJZa1RydldCQSt3?=
 =?utf-8?B?dStveTlNNmZpUGdZNVpBaW1YZnpEOGpRUHJaVXFhVHM5RmpYd2ptUGszZThC?=
 =?utf-8?B?SkpsWC81TW5wMGpLUERaTExVNEc2R3NnclFQa3ZIVjZMZDZHRmg2UWViVWdV?=
 =?utf-8?Q?XTKV1riudQyQ5cpGoxgvrqQ5o?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	DHU+uPRS81CJz84w4tgyrw47al6dFKNFrf/4JWgDjXhIcuHJvQqQqNLU0AS066YZZLVPWFnQ86AFCEw65w2giu+VYiRWNmYJOLm4dY/XCNJDhVVYNwUNvQxtyfFaGVIxsR8wLQGOWYtEFA4FBoItNBFYRip2GxgmH26w2e14Ku1bJaeCkG67E47II+6UlxE7LFZvVxIKi4fzHfb/y+ueZ1bZoIQ/kq0pwpCjuLthpehaJ3BOt50nIOtUOYByARFrENX6erlAEoPfYpc97UB4P835sTG5JVcpQgiznrW9TYbsPbBlCgWGZWIcJeBSnDakvrxk+XAi+3omhRWX9VjO81biufErfmCeLTi2fLQEHNHNfiH07i+1mY7KrpwNFmzOCCe8txfgT3usmsp11UbMBqZln6b9eCmdVZ1jSRHjUcKcUawIjdaaPh0exkelhUu1EdOTrgr+EPmxC9pynEHK4Lukwo59fZVawRyPLNHRQ0JxcaW3ZRK1W7GDX1r4fP4oRMFlopRBTwqWrx4Ohk8P0oYpTiuSYSHhGiMuBW9L/Wi3eFbRG6xx50j08SBmkvtY3enL6Nrq2NOAqi06dABdyOG0rUO1HwuD7pK+1g18WZ3QqtzKkhWQvb7jUyOERG/tAhZDiPmW04FFPOsPOdxJegwJUC0fkyANmmtN83RTOhY4FfyD99/dT8Z4Yj/rgspuxmqfQzybJQ28HL6WP/49Bi3mSUc8wOaP2hDNrs10kvbdKrXpNqA2rVJXJGQ5oniqy//aggZaqmvTvtlHA+OAC6U5KY9J2U8LznHGtBSH8H+YoU/znPdHYqdmCh4DjMPht+pRAYQSnu2y4n3bkAe3pg==
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY1PR01MB1852.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3837942-5d6e-4623-6cc2-08db0328a394
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 01:15:28.0420
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1gq85hogUzCLTujoHrqVMYFVLQ/xErv9Wqh3B/7hG0G0XCJAXY9C7q0JAyJqzEIeM5/PrsWRWVHD/Rj/ajSJQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7992
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 22:50:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59138

SSB3YW50IHRvIGtub3cgYWJvdXQgdGhlIGRldmVsb3BtZW50IHBsYW4gKHBsYW4vc2NoZWR1bGUp
IG9mIHlvY3RvLiANCkhvd2V2ZXIsIG9ubHkgdGhlIHJlbGV2YW50IGNvbnRlbnQgYmVmb3JlIHZl
cnNpb24gMy4xIGlzIHJlY29yZGVkIG9uIHRoZSB3aWtpLiANCklmIEkgd2FudCB0byBrbm93IHRo
ZSBsYXRlc3QgZGV2ZWxvcG1lbnQgcGxhbiwgY291bGQgeW91IHRlbGwgbWUgd2hlcmUgc2hvdWxk
IEkgZ2V0IGluZm9ybWF0aW9uIGZyb20/DQrCoCAtLQ0KQmVzdCBSZWdhcmRzDQotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCldhbmcgTWluZ3l1DQpE
ZXZlbG9wbWVudCBEZXB0LkkNCk5hbmppbmcgRnVqaXRzdSBOYW5kYSBTb2Z0d2FyZSBUZWNoLiBD
by4sIEx0ZC4oRk5TVCkgTm8uIDYgV2Vuemh1IFJvYWQsIE5hbmppbmcsIDIxMDAxMiwgQ2hpbmEN
ClRFTDogKzg2KzI1LTg2NjMwNTY2LTg1NjgNCkNPSU5TOiA3OTk4ODU0OA0KRkFYOiArODYrMjUt
ODMzMTc2ODUNCk1BSUw6IHdhbmdteUBmdWppdHN1LmNvbQ0KaHR0cDovL3d3dy5mdWppdHN1LmNv
bS9jbi9mbnN0Lw0KDQo=

