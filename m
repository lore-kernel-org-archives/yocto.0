Return-Path: <steven.monsees@baesystems.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A62C3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 10:18:28 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.119676.1723717102985694898
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 03:18:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.us header.s=trusted001 header.b=bbRbTA6d;
 spf=pass (domain: baesystems.us, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.us)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.us; i=@baesystems.us; q=dns/txt;
  s=trusted001; t=1723717103; x=1755253103;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=9d1Xt7xamRwBwFZXhFZZ4ECvz/szsjYW6me5MbzAFFA=;
  b=bbRbTA6dTntJEFOp6cEOUI60LlbcPoo8/og5GUWm/wgKEY2E+RbJA+l4
   p203K6NyjFjHwTKUtOnvFXsWtQyaL5gKFsnLnHWvSrt/t4k/T/d0W5mXP
   oPFV1qkfPqeY748e25Hq1L1urc5pqYDi6tN1I95kuwReb71awQNa5MYYE
   oCNfEbQpba7t5uGdLPCHN8K+aSlEgvHD6DuBDD+efoSU5wgZWKFHuBCgg
   yHjzReGgI+a7mVDTKTo+R68spLIcIytnPUvx0e77XsUhee4p3M9gme7tu
   lf6GjrhMLPep2Cg6AI94T4hthTc2x8vrsqbh4F0PaBkhZcQRp1ze7OAnR
   A==;
X-IPAS-Result: =?us-ascii?q?A2CKAgD51L1m/0LBJQpaHgEBCxIMQAmBOwuCRHsCgWQdh?=
 =?us-ascii?q?DiRbgOGPoUkhWOLIYEsFIFqDwEBAQEBAQEBAQcBAS4LCwQBAYUGAhaJUCc0C?=
 =?us-ascii?q?Q4BAgQBAQEBAwIDAQEBAQEBCAEBBgEBAQEBAQYFAYEghS9GDYI+JQGDdQEBA?=
 =?us-ascii?q?QECAQEiERo3BAIBCA0EBAEBAQICERUCAgIeBwkBFQgIAgQBEggVBIJbBYIwA?=
 =?us-ascii?q?w4jFK5LN3qBMhoCZYIYBNscDYJYCQGBEC6BaoZDBBoBcnqIboIMQ4FXgmg+g?=
 =?us-ascii?q?h9CBAGBFggKARIBIxUVE4McOoIvBIFBIQICggcCAwIENQd+IQKBIgITAwtab?=
 =?us-ascii?q?kgCAUICUIFegQYTg10FAlIHBAQBBw4qPAOBKBsWgWRXDyqBAjpbGgIfgTKCO?=
 =?us-ascii?q?SVMV4JXQUKCGgICAgICAgICAgICAgICAzKBahOCcoZtCUl7HANZIRMBVRMXC?=
 =?us-ascii?q?wkFaIhVCoJ5BSGBbiaBIoJ1gTOBGgKCWIFnCWGHbWKBDYE+gV4BRoJ1SySDN?=
 =?us-ascii?q?YF/BTdIgllxTj8CDQI3PYFrHUADCxshMT01Bg4bBQQ6e6U+gVoBgWkUEC2BH?=
 =?us-ascii?q?SQJRzULAQcBTxpmky6DLZoLlBtxBwOCYoEzjBSNMoF+hisXhAWBVosrhmEDG?=
 =?us-ascii?q?YwXhiiYbyKNWYQDkRoNCRYhhQkCAgICBAUCDwiBZ0lccIECgyUJCj8Zlz7FU?=
 =?us-ascii?q?XgCATgCBwEKAQEDCYZNhEMBLIEdAQE?=
IronPort-PHdr: A9a23:PI1vIRCSZTkWs/eQoQJ5UyQUiUUY04WdBeb1wqQuh78GSKm/5ZOqZ
 BWZua41ygaRA86Bt7ptsKn/jePJYS863d65qncMcZhBBVcuqP49uEgeOvODElDxN/XwbiY3T
 4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6JvjvGo7Vks+7y/2+94fcbghGmDaxe65+I
 Am3oAneqMUbjpZpJ7osxBfOvnZHdONayH9yK16Ugxjy+Nq78oR58yRXtfIh9spAXrv/cq8lU
 7FWDykoPn4s6sHzuhbNUQWA5n0HUmULiRVIGBTK7Av7XpjqrCT3sPd21TSAMs33SbA0Ximi7
 7tuRRT1hioLKyI1/WfKgcFrkqlVvAyuqAB+w47MYYGaKvx+fr/GfdgHQWZNR9tdWzBdDo+5a
 YYEEugPMvtCr4Tlp1UAswawBRWiCu3sxD9HhGP506I13Ok6DQHJxxAsE84SvHjIrtj4MroZX
 +CvzKnPyDXOd/1a1zD66IjOaRAuv++DXalofcHM1EcvCx3KjkuOpozjIjiYyPkGv2yV4OR9U
 O6jhXMspgZqojiz2MgslJfGhoQPxlDB8iV5xp01KsOmR05getOrC4FfuD+BN4p2WcMiX39nu
 CMhyrEcpJ67ZzEHxZI6zBHQd/KJaZKH4g7/VOmPOzd4gmpodrK+ihqv8UWuxePxWMaq3VtFs
 CdJjtfBum0Q2hLT98WKVvVz80i81DuR2A7d6u5KLEIpmafaN5Mszb49m5kOvEnFAyT4lkL2j
 KqMeUUl/Oil8+TmYrL6qZ+AMI90khv+MqMsmsOhHes4LhICX2+B+eSz0rDo4E73QK1Sg/Erj
 qXVqp7XKMYBqqKkBwJY3Jwv5he+Aju+ztgUgWULIE9AdR+IjIXkP0vBLfXmAfujn1ihlSpny
 vPdMbDkB5jBM3nOnbH8drtj705c1REzzcxB6JJOF78BIfPyVVHpudDECBIyLha6zPz9CNpn0
 4MTQWePAqiEP6zMqVKI/ecvI/WUZI8SpTb9N+Ap5/7wgn89nl8QZa+p3ZsRaH+iG/RmOEaUb
 HrwjtsdDGsGpAw+Q/bwhFKZSzFceW2yXqIn5jEnFo2mCJzDSpqxj7yG2Se3BpxWZmZYBVCQC
 XrkapmIV+0CZS+QOMNtjzgJWLa7R4Ig1ByirAr6xKBmLurQ9C0Yr5Xj1N1t6u3IiRE96yJ0A
 Nqb022XSmF0mWUIRyQo069hukxw0UyM3rJmjPxDFd1T/O9JXRk/NZ7H1eB6FsvyVhrHftiSU
 FmmWMmpASktTtItxN8De1txF824jh/fxyqqH6MVl7uTCZ009aLTw2TxJ8FmxnbC1akhlEUmQ
 tBVOWymga5w6xTTB4nRk0WDkKaqd7oT0zLR9GuZymqOpk5YA0ZNV77YVyUfelfOtoa+oUfDV
 KO1T6UgORdG0dSFKKZBdpvul1oBS7DyP9/CZCWsnXytD0W1wKiRZrbna3lI3DnBEFNW1EcX/
 G2aLk4vASy9pHrECz5jHk6pZFnjtuY5uXSwUkhz0geRckcy673g2R4YgLSmQvFbiqgNumEiq
 zhxNFm41tPSTdGHolwlNO9NZtgh539D1HnFrEpsOZe8KLh4gVwTeBgxuFnhnV0jG4JLjc8Cq
 HIx0BE0OKWTzFRZbTSa0JvsfLrNJT+h0gqobvuc/1bYy9ub4eNH0+g1tVjl9CrhVncZsj8vh
 8JJ3mWR4NPPCwwJXJ/qekw++gNrvK3XZzJ7+piChi4kCrW9rjKXg4FhP+Ai0Bv1Oo4HaMtsX
 Cf+EMwfUs6pLuFi212kdQkNM+0a8qkod9ineP2L1O/OXq5gkTuqgH4B7NV71USBpCZ5Q/TDi
 pACxfzQ1wCbVjD62VGmtM2/mY1NaTwIWGSlzi2xDodcfbxpYYsOEiGzOJ7f+w==
IronPort-Data: A9a23:T8wqFK1tqt6FlsxUY/bD5WVzkn2cJEfYwER7XKvMYLTBsI5bpzMOm
 mQbWDyOPf+NNGumetwlb9/gph5U7ZHRmNdmHQVq3Hw8FHgiRegppTi6wuUcGwvIc6UvmWo+t
 512huHodZxyFDmGzvuUGuCJhWFm0q2VTabLBufBOyRgLSdpUy5JZShLwobVuaY2x4Hha++xk
 Ymq+ZGHaAb4g2cc3l88sspvljs+5JwehxtF5jTSVdgT1HfCmn8cCo4oJK3ZBxMUlaENQ4ZW7
 86apF2I1juxEyUFU7tJoZ6nGqE+eYM+CCDV4pZgtwlOtTAZzsA6+v5T2PPx8i67gR3R9zx64
 I0lWZBd1W7FM4WU8NnxXSW0HAl1YYBkooXmGkKGit7D1hzoKkXc7uhhWRRe0Y0woo6bAElI9
 foRLStdM0jb3qSwyfSxQ+R3l98/IczweogYvxmMzxmAVbB9HtaaEv6Mu4EwMDQY36iiGd7Fe
 8cHZDwpaRPGeBBCIX8dAZ8ljfy0i3zkNSBDwL6QjfBruTCMnVMqi9ABNvLKWd6Me/VLj3q8/
 DLGuHvWCBs7PYW2nG/tHnWEw7WncTnAcJMVH6G/3vprm0GIgH0UAwERTUG8o/Sylgi5Qd03F
 qAP0nN26/NtshX6FZ+jAXVUvUK5g/LVYPIIe8VS1e1H4vC8D9qxboTccgN8VQ==
IronPort-HdrOrdr: A9a23:OApLXqwmXGcPL29kuwawKrPw4b1zdoMgy1knxilNYDZ7Wendv8
 2ih/gAz3bP5Ar5P0tQ/exoWZPwJE80kKQf3WB/B8bAYOCYghrREGgP1+XfKkTbalfDH7dmpN
 pdmstFeb/N5DpB/LnHCWCDer5L/DDgysGVbIzlr0uFIzsEV0m1hz0JcTpyyyBNNXV77OICea
 Z0EfA3wAZJhBwsH6KG7mNvZZm7m+H2
X-Talos-CUID: 9a23:JnOHFG2Ex5NecyPkZqjKb7xfEZwIUCfn7UzqGnSqWX84ZuSreXKN9/Yx
X-Talos-MUID: =?us-ascii?q?9a23=3ApAjeHAwixmOgbB8EcuujX7cP5NGaqLuNCkYzoYs?=
 =?us-ascii?q?Xh+3eZSw3JBiXhhW+G6Zyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.10,148,1719878400"; 
   d="scan'208";a="242079733"
X-IronPort-AV: E=Sophos;i="6.10,148,1719878400"; 
   d="scan'208";a="8340493"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=SLUu4qp2Eocpb9QC/M5hnvuxNnh8poqCYK0qaw7ngAJ8IgsNZM2td3I5IPh9Sb0YkQqkyzBGJH6dbOsr6Y2lCm984ZSL1Uuwv1anxk4AkMWu5WCcL26kR2Qxy+CVWBIfa9VaWbfVRAw9PIC+yVd5HXzmKCdYMoCoR7Uf81rTpXjnoE3TMXcWPWt3XTJ0MFgcfPHcDGVS9tI97VMDtPTa4whQwOGKBE/pKgNXiLRSNMN8YZ0VX7PgF8vLY+Rz5hV7PIHuHpjh+4wmsa8heWkwpD+7Mt/KKQHWQrFmcRrUdeNe2nqNn8V7wnZH/ILbCPrSuxhEzV7Qi97P8z6EUGbhEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9d1Xt7xamRwBwFZXhFZZ4ECvz/szsjYW6me5MbzAFFA=;
 b=gv0lBFxwD/8xVK/ns4TW6GxPQiXPq+e3D5OyLevr/z19XYK2sXyogAHf6oNdG2gAPA1GUwmjJS5osCmXhc++7DlhxvSidBhMwe8c/yWiF/jtpysfSeXVVo8Hit8lKtxgzz/BW/8tj1OeW3g2ecZwfUjpHMHmF8GtxQDDw4AZIE9mzVHBOv5TqrslFP1Ezh1peAuTlY5mmPCG1IjyMUrZrXXAmL8+z/9broYmGebPNWWBBbyBI3mK9UeDGp7NQmlL7Yusy9zAi8Afkm49VUmzQZSq+jcI+2XMOcZ38IHjuGGNsyto8tjMIR63toKZZcNE+iLuQXQcYBVu4H900mnAmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.us>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Parallel builds under yocto
Thread-Topic: [yocto] Parallel builds under yocto
Thread-Index: AQHa7n/DZWwKUuNwV0mnfSHr2djPf7IoGCFg
Date: Thu, 15 Aug 2024 10:18:02 +0000
In-Reply-To: <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1683:EE_|PH1P110MB0953:EE_
x-ms-office365-filtering-correlation-id: 07c10551-06cf-49e7-0130-08dcbd138be2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|4022899009|366016|80162021|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UU1lZWNtZ3pNalB2RU9WVW1VMU1DMCtVRmhXZ01VZVlsNGhraWtFbGZJYVdM?=
 =?utf-8?B?ODg4eWM5OXh6QVhGQ1crS1R5cnQ4cmE0WmVMOXEvMVJONGNJUTRPcTJZdXdL?=
 =?utf-8?B?ZFZXMHhTNlBoZXdyK05PMXcxUDh5M1FBN25oaE1zb2hQLzZoUEZ0UFdVS0Fj?=
 =?utf-8?B?d3I4TzcrZ05zaUJxa0JFU1VtejVETjlaemNNUXhMaldIV3RCUlZhT2FTclk4?=
 =?utf-8?B?bGVyemVJMGVIZWdKcnNsSE9tbG92eWN5WXJwNmRuRHA3dm5lZkdLWVgrRzlo?=
 =?utf-8?B?Y1p2bG5ST1pMb3dqQ3BzRWpDMGxJcmtxUWhJaHU3TmU1ZFlUaUFRbVRzYVEx?=
 =?utf-8?B?V2xKZnlxVytpa0pBUXBhRGFmR3lvWjkzendNWlBGcDVQMTh4dzUzTTFMNDc1?=
 =?utf-8?B?cTVveEtWMjUwNGZVK2M1T05OWDBWOW9qaEwxck1SYUc3WU1pZlhxeXlhYlZD?=
 =?utf-8?B?QVF2WTA5S0pqQnFoVHhHUVFoaWt2U1IrSytod1VsUXBVZ3BKZCt1emw4RUph?=
 =?utf-8?B?cXJsSmtGVmNUYnkxSk1kYmQvYnlUTDA1T24rVnRjcFQ1d3Y1eW1SaHExMWY1?=
 =?utf-8?B?Wi9GeVZhM2RmVkptamZaRmduSzlqNGtUQUhsb2djbGhpck9vRkVzRXVyT3Ro?=
 =?utf-8?B?T2IyTEpvblA4eENsUzZLUnc0RTFOKzU4bWJScXI5SGlNNkZkNW1Pc2RTb3Mw?=
 =?utf-8?B?M3Fqc0dUMzRyc29tbHFxUFRpZElKZjluM1pFRHB4RklMZk41ekdQWDRUc2p3?=
 =?utf-8?B?SEZ4K21ESFdLR0lKbWgxSG9odlRFRWwxV2pNVG9tNTRKTXFyMjA5S2pScEwy?=
 =?utf-8?B?WWI3TFBwNWJuSjd4WjZjM0lBOWR2bDE3WDNlSUU1VlNKMXFnbFFtaVVKRSt6?=
 =?utf-8?B?TWx3bXZGcGR4cnVobHJ1YSsxd3I3ZklEU3BCUkxWMVJIM282UUl6dGd0NkFr?=
 =?utf-8?B?RW0yVVl5cmQwSFY3Z2hkS0FoN3p2VUplQzdua2hFeUtTcjBLOENTWmo3YURw?=
 =?utf-8?B?d0ZpNkQ0R2pzdktUcWlpTCszSzNZQ1BzUTNKREh1K0lSTGhyOEY3Q0NSbmxV?=
 =?utf-8?B?R2tCMndCTFZLNXFYRFE0Z21sS0hvRjBjZHdEVHFockJqWXQ1ZFRuVjlxV0JC?=
 =?utf-8?B?TlVvcWhyVkR3czBtVVAxcXNGYU14VkYzVmNhTFc0TkhaZXp5VytQQUpKc0xl?=
 =?utf-8?B?anRpZEwwb0g4Y3BjTnUvNXhtanBTTEgvVjhpY3cvNGZTWlRnZjloOG5GRjh5?=
 =?utf-8?B?dXFlSmlEbGluNVpaanlJS3U3ellHYThsb2crWGR0THpUNGtCay9jNExKU21N?=
 =?utf-8?B?M1o2b3Z5czdPTDA3bDNhbVVDZzlleXprVTVjaXpRTGJsYXdUcnpqS3JIdmxo?=
 =?utf-8?B?bGYvU0VBZFd3MFBMaHpzT3Z3OXl0U0hLdnAwU1BDYzRmYm5ZbnVORlhsL3lt?=
 =?utf-8?B?YlhCN0JMYTVCbnl1c05wRVY4RTF5SlFRV2QyYlFBMHdqSXRSTndNVzI5amth?=
 =?utf-8?B?UXJJUVA4MGdVTVBEZXc5M2QvVEI2VTdYQjhObTE3N3FTN2hBY0dyVHAwTlFU?=
 =?utf-8?B?SnlrOHJwWU1yclVTd1dkZVlpdUVMUEpoN3VRMTZlMUxQUjFONUp2K3hRY1Rs?=
 =?utf-8?B?V1ptTWVOazgzTGlwSjlHbmNqR1hBZ0svK0JpSFBRdEhkYzc2a21ScTlaZGNK?=
 =?utf-8?B?UU05bE0vYnJ3N1Zmay9YdDlLNndBNng1NlE5L1NZUjd2WjVnNm1MbjBxNmFz?=
 =?utf-8?B?RWgwUEp0OUtEVm5DTzFibktDOE5Wd2ExTW01WlVoNERRWnF0eGVSdlF3Q2dE?=
 =?utf-8?B?c1BVb2ozNlJhaE9xekxzaFA0cjc0Qm9ZSkY3MCs2WVRaeVQrRW5DaTBnc3N6?=
 =?utf-8?Q?jjh4YVvwBI6ZC?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(80162021)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkMwb0NnN1AraXVWVzdqckVtSE5UUGdOV3J0ckZvaHM5VEtLWDVWUVE5MUd1?=
 =?utf-8?B?ZlMrU25TK2FlT2k5d0VFMDVQWmZaUGFTZER1c1ZyM2xScHA0cjQ1a0Y0aHZX?=
 =?utf-8?B?cmJkMi81VFhaUGtpeC9uMVcvR21YSFQxd2RIQjV0WnBKTmdwSDg0endDREUv?=
 =?utf-8?B?NjVMdWVxL016KzJpZXdGOEJqeTlUMk93OGRTTmR2Sk55aXp6ajlubnlBcDFp?=
 =?utf-8?B?R210dUcvbnhVbk51Vlp3TjY5STk1US9EUnFoNy82UWw2NmRqVlVVdC9qSDFB?=
 =?utf-8?B?VVlTUUFVcmVQYkNkRSt3bFFmTXRUQTdLNytuSFJ4enhleVBnTG1rUE5ZZ0g5?=
 =?utf-8?B?dUIrRVVkVXFUV2V4UnpmUmJiVk5vTTl6M1lRcHVJdmdiOUNYSGVyS0lHSEQ5?=
 =?utf-8?B?OXBMeXAvbjRMVjVjUEthNHBzTkFIc2ZVQ3RMTjMyL1dtSXBYQmVkZm5Wb3JG?=
 =?utf-8?B?MDFYYURyZnVzd0hlVmx2OVVkOGVnUllSWHloaUw0VzA3NmNlRUl5RUpxMFpF?=
 =?utf-8?B?eTZQb0hHWXJGMGI0OGlTRXIyazhTQUxXRjJKakZIbHJBQlF6Yks3Y1V1bmFk?=
 =?utf-8?B?ZjBDbnRVang2dHNxOUw0cmhlOVVJcnZDOGdCbWxNRUJGKzVDeFdRWWpGOFN2?=
 =?utf-8?B?cThIem84bEZpT2lRUzdsbWx6SytIREdoNmlhdXN6OFoxeFVYZjFqSXY3M2hl?=
 =?utf-8?B?U1dwUjRYYU01dEZkanlmdnEwN1JCUDNRWTFmWkd2NTdKSmc5MlM2dHJoL1Az?=
 =?utf-8?B?MHNodjN6NCtFa2NJNE9JZEp0VGpIWGNoZzdtMU9pWkZENU51Q1dDTDZpQUpX?=
 =?utf-8?B?dFVQYk9zaERFQTRJVy90VjNOUHcwd0ROZDd6SDAxdkJ0LzZvR2dyd0lzbWlT?=
 =?utf-8?B?aGh0TkhiV0hhdElLZzlXZGwwYVNLUnBCaGo0clRNNU1UbkJSTjlsbTFXbXdo?=
 =?utf-8?B?OVhDZkVPS1p2NVRRMDIxeUIzM3ltTVNqR3UxUzdsTHJ5WWwvNHBtdHQ5SzR1?=
 =?utf-8?B?REVuclp6Z0Q4SVF2ekhJRzlVTE1lR0xheUZOaE04VFlQUVhOaU9zeXNFYlhT?=
 =?utf-8?B?MW5uNmNCTnArUXhaalhFSHdvdTd2YmZWVjkybjlUa1cwc1BSVVdjbnZ5K0NW?=
 =?utf-8?B?VWNRK1FBbjJlb05seUM4WnZLQ1VPVEYwTWE0UndnY1ZzdENxQWowUGxqV1Vy?=
 =?utf-8?B?ejFLdSs1NnU4K3NoNVNZcllTSkl4clVsMTVSK2RuZ3d2MGpzQUNoN3cwaW9T?=
 =?utf-8?B?L0hHK0RNUjlKeWdZOUpaNUNjd1U2bGp2SWpWNXE3UFNvN0p4MGppZDRLWGVC?=
 =?utf-8?B?QzkvTFFUTHV3UEJENGcwODUvNzBSKy9ydGNZdDNsSjNaaUt2dWJhZGJqbjZm?=
 =?utf-8?B?aG5QSVBsOXNzeFpZdmlwTTNtMnBqci8vaXcybkNvcVYrRG1UWkNHbDFlSDNp?=
 =?utf-8?B?L2JmY1p6RjBSTHZjTkdDVWpzOWlhb1ZwbHRKOUpsQ3VMbHRST2pVa29JVVBv?=
 =?utf-8?B?QzY0MXVNcG9iMkdaS2Y1aGZHRUVJU0RCRU5WaEJROTJyeHBXL2ZTNUY3dzhs?=
 =?utf-8?B?dzc1cm5zN2M4bmNWT04yeXZ0ZUk2clFGTU5yQ3ZETy9rM1l3cUcvQkJpYTEz?=
 =?utf-8?B?ZUtuNzJ5SElaQ0V4V21mdk1zOEJPV21ocDVHQkh2RVJNMEpQMTBHZVMxNklV?=
 =?utf-8?B?djlJSTVqUG1Na1g2UmtoSitDQTZVcWVueWdkOVRvTndYR0NxTU1tNWFZeS9j?=
 =?utf-8?B?UWRVbFNrVWU2eFVIY2pkRWFwWUc4QUVoWlpBVWpwdlRpNm01eWZERG1sOSsy?=
 =?utf-8?B?VnI3Vm5BU1BvSnhYVGJFTWhNY3Q3UUlqQ2JVelllUWliNXp4WHRVb3NYN1RD?=
 =?utf-8?B?WUJNTFlTTENyZ2E0Unh2MGNmdlRGOWZBY1Y5TVRLMStNMnpYOHJ0U01VdSsx?=
 =?utf-8?B?TzlQdTEvV1JFa2NjRGhIeFlBNEhHWERjMUg0cXB4ZlF5U2VteDhEbk9Pc3J2?=
 =?utf-8?B?R3VkN2NWTUVsTUh1aXUvWStNdWFnSGxIUDdEazNINENLTkpxRHQ3UU5wSkp6?=
 =?utf-8?Q?/MRAYB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c10551-06cf-49e7-0130-08dcbd138be2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2024 10:18:02.8410
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB0953
X-OriginatorOrg: baesystems.us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 10:18:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63707
Message-Id: <20240815101828.A8A62C3DA7F@smtp.lore.kernel.org>

DQpTbywgdG8gYmUgY2xlYXIsIGluIHRoaXMgZXhhbXBsZToNCg0KVGhlcmUgYXJlIDEyIGNvcmVz
IHRvdGFsIG9uIGEgYm9hcmQgLi4uDQpCQl9OVU1CRVJfVEhSRUFEUz0iOCIsIHRoaXMgdGVsbHMg
Yml0YmFrZSB0byBnZW5lcmF0ZSA4IHRhc2tzIA0KDQpBbmQsIHRoZXNlIHRlbGxzIGRvX21ha2Uv
ZG9faW5zdGFsbCB0byBlYWNoIGdlbmVyYXRlIDIgdGFza3M6DQoNClBBUkFMTEVMX01BS0U9Ii1q
IDIiDQpQQVJBTExFTF9NQUtFSU5TVD0iLWogMuKAnQ0KDQpBbGwgMTIgY29yZXMgYXJlIGF2YWls
YWJsZSB0byBiZSB1c2VkIHlvY3RvIGJ1aWxkLg0KDQpDb3JyZWN0ID8NCg0KVGhhbmtzIGFnYWlu
Li4uDQoNClN0ZXZlDQoNClBBUkFMTEVMX01BS0U9Ii1qIDIiDQpQQVJBTExFTF9NQUtFSU5TVD0i
LWogMuKAnQ0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFqIDxyYWou
a2hlbUBnbWFpbC5jb20+IA0KU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTQsIDIwMjQgMzoyNSBQ
TQ0KVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IE1vbnNlZXMsIFN0ZXZlbiBDIChV
UykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMudXM+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBQ
YXJhbGxlbCBidWlsZHMgdW5kZXIgeW9jdG8NCg0KRXh0ZXJuYWwgRW1haWwgQWxlcnQNCg0KVGhp
cyBlbWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRoZSBCQUUg
U3lzdGVtcyBuZXR3b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlvbiwg
ZXNwZWNpYWxseSBpZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBjbGljayBvbiBhIGxpbmssIGRlY3J5
cHQvb3BlbiBhbiBhdHRhY2htZW50LCBvciBlbmFibGUgbWFjcm9zLiAgRm9yIGZ1cnRoZXIgaW5m
b3JtYXRpb24gb24gaG93IHRvIHNwb3QgcGhpc2hpbmcsIGFjY2VzcyDigJxDeWJlcnNlY3VyaXR5
IE9uZVNwYWNlIFBhZ2XigJ0gYW5kIHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUgYnV0
dG9uIOKAnFJlcG9ydCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KDQoNCk9u
IFdlZCwgQXVnIDE0LCAyMDI0IGF0IDEyOjE14oCvUE0gTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2
aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8c3RldmVuLm1vbnNlZXM9YmFlc3lzdGVtcy51c0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4NCj4gSGVsbG86DQo+DQo+IEkgYW0gbG9v
a2luZyBmb3Igc29tZSBjbGFyaXR5IHdpdGggcmVnYXJkcyB0b28gcGFyYWxsZWwgYnVpbGRzIHVu
ZGVyIA0KPiBZb2N0b+KApg0KPg0KPiBJIHRoaW5rIEkgaGFkIGEgZmFsc2UgYXNzdW1wdGlvbiBv
biBzZXR0aW5nIFBBUkFMRUxfTUFLReKApg0KPg0KPiBUbyBpbmNyZWFzZSB0aHJlYWQgdXNhZ2U6
IFlvdSBhZGQgZm9sbG93aW5nIHRvIHlvdXIgbG9jYWwuY29uZiBpbnNpZGUgdGhlIGJ1aWxkL2Nv
bmYgZGlyZWN0b3J5LiBSZXBsYWNlIHggYW5kIHkgd2l0aCB5b3VyIHdhbnRlZCBjb25maWd1cmF0
aW9uLg0KPg0KPiBQQVJBTExFTF9NQUtFID0gIi1qIHgiDQo+DQo+DQo+DQo+IEJCX05VTUJFUl9U
SFJFQURTID0gInkiDQo+DQo+DQo+DQo+IElzIHRoZSBmb2xsb3dpbmcgdHJ1ZSA/DQo+DQo+DQo+
DQo+IFBBUkFMTEVMX01BS0UgZGVmaW5lcyBob3cgbWFueSB0aHJlYWRzIHNob3VsZCBiZSB1c2Vk
L2RlZGljYXRlZCB3aGVuIHVzaW5nIG1ha2UgLWogY29tbWFuZCBkdXJpbmcgZG9fY29tcGlsZS4N
Cj4NCj4NCg0Kc2VlbXMgY29ycmVjdC4NCg0KPg0KPiBCQl9OVU1CRVJfVEhSRUFEUyBkZWZpbmVz
IG51bWJlciBvZiB0aHJlYWRzIGRlZGljYXRlZCBmb3IgYml0YmFrZS4NCg0KSXQgbWVhbnMgaG93
IG1hbnkgam9icy90YXNrcyBjYW4gYml0YmFrZSBzcGF3biBpbiBwYXJhbGxlbCwgaXRzIGhpZ2hl
ciBvcmRlciB0aGFuIHBhcmFsbGVsIG1ha2UuDQoNCj4NCj4NCj4NCj4gSSBzZXQgdXAgbGlrZSBz
bzoNCj4NCj4NCj4NCj4gVGhlcmUgYXJlIDEyIGNvcmVzIG15IGJvYXJkDQo+DQo+DQo+DQo+IFlv
Y3RvIHN1cHBvcnRlcnMgc2F5IHRocmVhZHMgc2hvdWxkIGJlIDIgdGltZXMgdGhlIG51bWJlciBv
ZiBjb3JlcywgYnV0IGRvbuKAmXQgZ28gYWJvdmUgMjDigKYsIG9yIGp1c3QgdGhlIG51bWJlciBj
b3JlcywgYWxzbyB1bmRlciAyMOKApiBkZXBlbmRpbmcgb24gd2hhdCB5b3UgcmVhZC4NCj4NCj4N
Cj4NCj4gVGhleSBhbHNvIHNheSwgaW5jcmVhc2luZyBQQVJBTExFTF9NQUtFIHRvIGhpZ2hlciB2
YWx1ZXMsIGluY3JlYXNlcyB5b3VyIGNoYW5jZSBmb3IgYSByYWNlIGNvbmRpdGlvbi4NCj4NCj4N
Cj4NCj4gSXMgdGhlIGZvbGxvd2luZyB0cnVlID8NCj4NCj4NCj4NCj4gUEFSQUxMRUxfTUFLRSA9
ICItaiB4IiAgIyBGb3IgZG9fY29tcGlsZQ0KPg0KPg0KPg0KPiBCQl9OVU1CRVJfVEhSRUFEUyA9
ICJ5IiAgIyBGb3IgYml0YmFrZQ0KPg0KPg0KPg0KPiBQQVJBTExFTF9NQUtFSU5TVCA9ICItaiB4
IiAgIyBGb3IgZG9faW5zdGFsbA0KPg0KPg0KPg0KPiBJZiBzbywgZG9lcyB0aGlzIG1lYW4gZm9y
IDEyIGNvcmVzOg0KPg0KPg0KPg0KPiBCQl9OVU1CRVJfVEhSRUFEUz0iOCIsIHdpbGwgdGhpcyBk
ZWRpY2F0ZSA4IGNvcmVzIGp1c3QgZm9yIGJpdGJha2UgdG8gdXNlID8NCg0KTm8sIGl0IHdpbGwg
bm90IHJlc2VydmUgOCBjb3JlcywgcmF0aGVyIGl0IHRlbGxzIGJpdGJha2UgdG8gbGF1bmNoIDgg
dGFzayBleGVjdXRpb25zIGluIHBhcmFsbGVsIGlmIGJpdGJha2UgZGVlbXMgdGhlbSBub3QgZGVw
ZW5kZW50IHVwb24gZWFjaCBvdGhlciwgZS5nLiBldmVyeSByZWNpcGUgaGFzIHNldmVyYWwgdGFz
a3MgZHVyaW5nIGJ1aWxkIGRvX2NvbmZndXJlLCBkb19jb21waWxlLCBkb19pbnN0YWxsIGV0Yy4g
YW5kIHRoZXJlIGFyZSBzZXZlcmFsIHJlY2lwZXMgaW4gYnVpbGQgcXVldWUsIHRoZW4gYml0YmFr
ZSdzIHRhc2sgbWFuYWdlciBjYW4gZmluZCBvdXQgbm9uLWRlcGVuZGVudCB0YXNrcyBhbmQgZXhl
Y3V0ZSB0aGVtIGluIHBhcmFsbGVsLCBub3cgYmUgYXdhcmUgdGhhdCBpbiBzb21lIGNhc2VzIGl0
IGNvdWxkIGJlIGV4ZWN1dGluZyA4IHRhc2tzIHdoaWNoIGNvdWxkIGJlIGFsbCBkb19jb21waWxl
IHRhc2tzIGZvciBkaWZmZXJlbnQgcmVjaXBlcywgaW4gdGhpcyBjYXNlIHlvdXIgcGFyYWxsZWxp
c20gd2lsbCBiZWNvbWUgLWogOCo4IHN5c3RlbXdpZGUuDQoNCj4NCj4NCj4NCj4gQW5kIGRvZXMg
dGhpcyBkZWRpY2F0ZSB0aGUgcmVtYWluaW5nIDQgZm9yIGRvX2NvbXBpbGUgYW5kIGRvX2luc3Rh
bGwgPw0KPg0KPg0KPg0KPiBQQVJBTExFTF9NQUtFPSItaiAyIg0KPg0KPiBQQVJBTExFTF9NQUtF
SU5TVD0iLWogMuKAnQ0KPg0KPg0KPg0KPiBUaGFuayB5b3XigKYNCj4NCj4NCj4NCj4gU3RldmUN
Cj4NCj4NCj4NCj4NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNl
aXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFlvdSBhdXRvbWF0aWNhbGx5
IGZvbGxvdyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBseSB0by4NCj4gVmlldy9SZXBseSBP
bmxpbmUgKCM2MzY5OSk6IA0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0
by9tZXNzYWdlLzYzNjk5DQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3By
b2plY3Qub3JnL210LzEwNzkwMTM1Mi8xOTk3OTE0DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25l
ckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiANCj4gW3Jhai5raGVtQGdtYWlsLmNvbV0NCj4g
LT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4NCg==

