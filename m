Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58972C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 10:53:55 +0000 (UTC)
Received: from esa4.fujitsucc.c3s2.iphmx.com (esa4.fujitsucc.c3s2.iphmx.com [68.232.151.214])
 by mx.groups.io with SMTP id smtpd.web11.9206.1675321057814060300
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 22:57:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=agMYzul3;
 spf=pass (domain: fujitsu.com, ip: 68.232.151.214, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1675321058; x=1706857058;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=swHB+rhBFs430zkcxtjhnkBVmmtl74MEVoyIcaGJ2RI=;
  b=agMYzul3mz6X4YM7p8w5fdABOIRnS9yHvuGm5qboaEDqSNF+1BmgJGim
   yHJx4Dmx2iCjrhA+zzBMyvKKcRsTpf7G069FPgOz9A6Ur8ejBgLwHwuzA
   yBgKemAM5FJPzSWr5r6LoL3k+v0fR9rtepSBXfiTU/GRZ7hyguZRhBF0D
   AVr7R45359gRG0Kq24EJu1jry/Ciz57yapgC9Ma2WA34zMi8KMlX9W51w
   eo3wsFpsT0AVWaVnJP4/iBA1Qg0aLBdKc3s7iiJERzMOJnyb5CTMlsAg+
   W1eii0v7pNH8RvtP+qEH6RyNlK/FaFTeZKttof9NOtKT+zWM7LLf7RnnQ
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="83806285"
X-IronPort-AV: E=Sophos;i="5.97,266,1669042800"; 
   d="scan'208";a="83806285"
Received: from mail-tyzapc01lp2049.outbound.protection.outlook.com (HELO APC01-TYZ-obe.outbound.protection.outlook.com) ([104.47.110.49])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2023 15:57:35 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeCvxnkqynTniVdd6VcKd6q9JNN02BmjLpEX+6cXmz5HNtftIkrD3gJEESsrpqjTEDXEKjIo2ygIdVdWmUmtrLnGcO5IWqLaKAmMFqA3gBeL2Q+m0BdUFN94wRakaueUZJYF6f/Ebm5G9YUz8mhybHLV3RItOCYf9d8zkGlv48j7Dj9JN7fcvji7qT7t0RY6oRy74EvMrF1jZtHbbUNSyL8Io7RJTE/rJ54hSqG9Ig1/oQRzasnFq+XVnajaaF3cFyo7qbWr7w5667g7LRMiI/XJ4Qhqfs0oRvEUS2pDT7xSbgqIluyCPg3wUe9OgBMIzCQeyjY00Us3bOoZEmlRkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swHB+rhBFs430zkcxtjhnkBVmmtl74MEVoyIcaGJ2RI=;
 b=JgB44kshYn0sv2KyDPurYRvrySkrLjZstcRE/RmHnVaWj9oMfs9oEsllKRE4Jf6SxyHTzJeuopA7mSIa3eE+404Hz5p0uU1IedQbpPjzkjtgNb8RuBwuKE8uCHwEINLOFdh57tYfkiLTAVQbswKXpiC5xfPL7AMqdj9WCzwbi6+kLa9VaH/aZ4aiZ460sdXPWDRwNR5COFsG3IcZwa3qH2LQAqYuMwkcd5CVqCI4lYnrnjAVMHY/hf/2jw+tMyZ5w+JzIA6nfo1LV8rlRcC3L4FRVVq1ZQtknPpDsUcZSzbl7agXpZt0hQXh2cXJMsxAzXU7znmorv8tAN/YzOXFuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OSBPR01MB1845.jpnprd01.prod.outlook.com (2603:1096:603:5::13)
 by TYCPR01MB8787.jpnprd01.prod.outlook.com (2603:1096:400:18b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.22; Thu, 2 Feb
 2023 06:57:32 +0000
Received: from OSBPR01MB1845.jpnprd01.prod.outlook.com
 ([fe80::9a20:1532:69d5:50fa]) by OSBPR01MB1845.jpnprd01.prod.outlook.com
 ([fe80::9a20:1532:69d5:50fa%3]) with mapi id 15.20.6064.022; Thu, 2 Feb 2023
 06:57:32 +0000
From: "wangmy" <wangmy@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Questions about some functions
Thread-Topic: Questions about some functions
Thread-Index: Adk205zfQnMa0Uy/SXeN6HSERRphPA==
Date: Thu, 2 Feb 2023 06:57:32 +0000
Message-ID: 
 <OSBPR01MB18451177EC228A31345778F4DCD69@OSBPR01MB1845.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2Uw?=
 =?utf-8?B?NTBfQWN0aW9uSWQ9MmQ2ZWZjODAtNzYyZS00N2Y1LWE1ZTAtNzY4OGM1ZGQy?=
 =?utf-8?B?YjYxO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5?=
 =?utf-8?B?LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxlZD10cnVlO01TSVBfTGFi?=
 =?utf-8?B?ZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX01ldGhv?=
 =?utf-8?B?ZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRk?=
 =?utf-8?B?LTNiMGY0ZmVjZTA1MF9OYW1lPUZVSklUU1UtUkVTVFJJQ1RFRO+/ou++gA==?=
 =?utf-8?B?776LO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX1NldERhdGU9MjAyMy0wMi0wMlQwNjo0NDowNVo7TVNJUF9MYWJl?=
 =?utf-8?B?bF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfU2l0ZUlk?=
 =?utf-8?Q?=3Da19f121d-81e1-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSBPR01MB1845:EE_|TYCPR01MB8787:EE_
x-ms-office365-filtering-correlation-id: 56cf0b4c-ee49-49d8-d479-08db04eac1f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lEVtAGLaHunre+a5/MoCZgv40XKcZUKUo4R9xME8tTPe7/IXqCeOBU99P1VDnirjVgDY30LJFnU2l6lRgDDsQauhwK+53PO7x5OeFnEWHMvl5mN4z7N+xT19gdYouIIorDXMWSxi7ZjF7vJg4sC9JMrWqwKIMZCOAkhe/fF0/m7ybGzML/Bh9KsmQBboNvwomNN+KZuLadBn3MT70gh/+Vm3S/I5Q3AyV8Rcss1SI6EzTkX8DfZmOiRhBzPnLsWp9dmSM7m56gxFfNckdSaZiJTejTEejCbeZmU01maENGiTU98I8gDsBBcBQ3984I8QKjyeOIs1TzeU1lZ6YrIBDx9UIwWUaPTQK6XadlmSmxsEpTt9DhBWY/I6iAX0gqdVghxVzlT1jz7jJWAhcMYRpfiyaWckRob9ElKJuvLHMYC5n8wslPprM0k7FzbQZ15i69DZT8EIrGaLZ26JViqnBw0kCd8vFI1SIxBgkFdMWo/YqNUJyPuGjlmzJ8tAL7U+hjLpCuWefwMeN1uudDHFfiBnPCsBq/jcXKXO4bdGbeb33GeKPv2DWoDE4lkmnSqEKKzIY/j6a+FbQu3CToWFPIJetqKLLtD0GlvG4KuuGKzfMazli7U9eQv5BmBvggIcRDpcNr4dr1oRrKu8Hc1DD/A6MSDGQ3lbzOV9vKpbTAmM3FEr0msqserRN25Q1FZtY8brPnmKXpKXE+ofagrQP1DbZfJ/4+KXi6SNVvZD3XNAZSt+a0t4c71P/I+bvP1gmXNbScmB3R/Bv102S7qBcg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSBPR01MB1845.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(1590799015)(451199018)(316002)(33656002)(1580799012)(122000001)(38100700002)(3480700007)(2906002)(4744005)(85182001)(52536014)(41300700001)(55016003)(5660300002)(8936002)(66946007)(64756008)(76116006)(66556008)(66476007)(66446008)(6916009)(8676002)(478600001)(82960400001)(86362001)(966005)(186003)(26005)(9686003)(6506007)(38070700005)(7696005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VFdzQ3lVeGtPa3lGNHk3S1dWRE5WLytHQm1tS3BUU2hFMjhKMGsxeklEUVpl?=
 =?utf-8?B?YVVTK1haeTI5RXNKZjhiTktvQ0tobGlBUlFuUEthK0tTSVVMOFJqODUrR1V5?=
 =?utf-8?B?MmppY0JLQWxKdGdLNURuNEQzR2RLUFh5dFY5T1pVdU4wUjZoNDZIRmROMlUx?=
 =?utf-8?B?N2FKbFFmN2FNRXNGeXNhMndDanBUd1Q2bzJUTjBpSityRDlyMm8vS2sxSFFN?=
 =?utf-8?B?UGxxQ05GYlEwM1ZrTGhuZCtjSHN6TjQ3T1pvZmMra3Fhd1V4RXJxRVM4Z2lI?=
 =?utf-8?B?NzlOd1lPeXpFWGZEMk5QL2hLRHpzM05MR1o1ZEthODNKYUw2c0JqaUROSUpR?=
 =?utf-8?B?ZTMyMSt0RUdLVjBkaWJoa0UzUnVXdTFTbHhxTURYaTdNMkhicnZrUFlJYWRx?=
 =?utf-8?B?NkRvZnErajZLcUlIbU5rYzFJTThUWTM3L25sVHRhcVZlamFjMGJ0Yzkzb2ND?=
 =?utf-8?B?MjdJanByWWdGK0hlT2RUQlAvNjVleUVOQ3NpVWczZUNiQmUwYjRiSFVFRnhx?=
 =?utf-8?B?bXRNazBWbXRDVDRzc1UyYUZhUi9NeDVBOVQ2VGJ4d1h2c0pacm00dmErRWRu?=
 =?utf-8?B?akh5OXNBalFDL21rWVZjM2tYckxCYUs2ZzcxQzY0TDI2SEd3MG9aSE9QY1Nr?=
 =?utf-8?B?ZlpKR2R1MjRTYmdKaXNCRzEvQUVlT2FteUt0eFRUS0phaFlkalFrOEZKdlBC?=
 =?utf-8?B?R3FKV25nQlB5bG5tUEJVZEU2ZkxDNmY5eGhPL3ZJamZ5MDdTdTIyR243Wk5U?=
 =?utf-8?B?S2xPcjYrYkFORG1wK3dldW9ydGpNbzgrZS95R3JjYUJIY2VqcDhWMHdCVnhU?=
 =?utf-8?B?d2t6QzlLYWRzNTFheGlHWDh3UnVxejdBSk5qTktyNHZZd2NzZXRkY1hhcFRW?=
 =?utf-8?B?TEE2VXhxWEZSK1FKUFFuRUZyUERiOWZYa24wSHh6cXQwUysvSWUzbjRFaXA4?=
 =?utf-8?B?S3QxMXB2MzQvUnJqTHoxTjBNQ1lIZGdjTytFSHJlRXN0VGNmU0RsTjFOWEU2?=
 =?utf-8?B?V3ArR1YraU95SjVVWm9qWUo3cS9lMWJEQU9xMWtlWm9oSjJSU0xxUEIvZkdm?=
 =?utf-8?B?Y2tZNEtMVWo1TTNVWE5nQ2ZKd1VtK3o5THAyWi93T2NUajM4Qkd5eUhLcmpm?=
 =?utf-8?B?K1pURU5BcU5lV2xGTjlWakx3VnhUcFBnbVNCV0lIbndDUGZsSFQ3dk5Hb00y?=
 =?utf-8?B?OXlwNXNJY0paaTh0dlNoMktCUGJONlNQRUFvU3c5OThreDUxalFqRFoxOCtP?=
 =?utf-8?B?b0p2UDhSQmg3ZjZDazRpZXR1d0NkbkRmbkdwMy9vb0M4S1dmMHNCbFh2MVp5?=
 =?utf-8?B?bVRWUTNCV2hXRDlpMmRtdjJIZ0RMekdyczVBM0FtdXdIMCtDTW0ybkUyS2sr?=
 =?utf-8?B?VHhHdmJpUnVqcm5FVFJIZDI3bDFQU2hBNTRHTU1Hc21JRDNOS1doZDgvcGhT?=
 =?utf-8?B?UUZ4OVEvYmNjQTNhZ0lXTXk1NEJidzlPbUtieHFtQlk1bDZ3TVhnNjFlcDdG?=
 =?utf-8?B?V2xQdGRUUnVWVzQ1YktuYVBRWHkzUDFaWWNBMXVLMldQT0xVNXhQQlRrZ283?=
 =?utf-8?B?a3VIcDlsUit6YUtib3JWbFJaT0pXTnpzY0EyNmljR2Rpa2g5Y2VyK1FWZGZs?=
 =?utf-8?B?Z1h1S2h4QlhmeEZscHRXTU1lWXVWSEVMUytaZStueDFsTkhLbjdleXFJaWZY?=
 =?utf-8?B?MXhZb044S2NoVnVxWURmVHRyVDJIdllqd1g4cVN3d0c1RGFPUkJ3TE1wUk5o?=
 =?utf-8?B?Y2Z5Tyt2RzdxclIrZ0RVWWlCTG1nbWR2dmFuc0FvWjJWdm9ITUk1SnhzMFZE?=
 =?utf-8?B?QkJUNjAwVGdzOWhFRjgrZlNRWVZNWE1RaXdzWGgzV1dIMWVEc2lJbzBlZ29R?=
 =?utf-8?B?YmJpQVBMQXp1Nlh0Y1FHVVAzMFhMUk90d1RaRVdOK3UrUHlIK1dsVm9IRmRh?=
 =?utf-8?B?OUIxLytpdE1zQTJRSms2VXhxeDhBUC9ZVnEwLzVPRVA5ZndKUlRWVGl2b2gr?=
 =?utf-8?B?N1JJZ1pydEErTTZtYUJDQzZhWEtEWEFrL0drNGdmNHZhVnVzV0xjOGV4V3Q5?=
 =?utf-8?B?cHJocWY0U0dIUzFJM3NvKy9nY3l5MCtpSys0LzlweTVBOFpBZmszaFNaa0dx?=
 =?utf-8?Q?IOKcjL8gYlJeVOfOLKnvrl15U?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	WWYNhHJtlhyByBGtNDA23WgGmBU1mGqwM7Cuk/dzk898+azGyLPafJwtHMAEuM4E/LpReZshEIDZP5YuCTO6mZS5hHTPSYKQKkSwdZpkAUAolW7mVzZpJwcpHx4aBchg9jqZqIikEx8jbfQp5gBoDP9UFIt7fuWoZtxRGecImzzFfZkpQA3FQryjvg/huSr3JCfhWTRPqKlRc5oMIdTzaMFRfoTvug39hlESwtHyW8MYqw3zV1p8bpkyhSizdoekHahejdsOueNrAyX8+RGCeq/N/baEDYN4fG2UXGS+3ydTJgSVcSQDcZQI23dvkJZ8dvtp0BSkUkwi4yB111jiZ07NpjZwqAMHVXI1ppaS273pzT+fFN04amM3zhAcVOLgZWKf9IvgWwjnmDRCE8evqdGYQ1Y/aPVrJqo65aNU/Ng9ZiiNeLiuv4uKx/1x9SHEZQnJ353M8bkAUCePrREeQeXhc2dEqGASdlBMygMryRFmeMJtG+oI9VN5IULqEuhv1WbM2QhQEhH7/XK/WyEhLyfixo0kX5xuCxkF710czArtBqrNsOgt8Pv9fBxib6UCKE5xyoIhbGldydYpzlfBEb7g+0IoZU8TwU56kk+a2hNOZne5GewyAJzIC0Ih64bv2+ZS0Pl52OVMDlePsAWxH6nhBcgmTBLY3PGqFCLKLX1Yrzv6AH+Xl3JLteZqLXSL2fqYsW9lGVdANxEd/2gMMZ09Q8dZ7nSbRH1nNEt8jw83mevNiP0D50mi/q8/mnvHid+nQmkYYL8WfvUC7mvid/2aK7f9MCokzQWc5fzdJak=
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSBPR01MB1845.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56cf0b4c-ee49-49d8-d479-08db04eac1f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 06:57:32.6134
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kx3YRhSrzB7HWDFO7LIJlDssfsmRCALf6tHP/GigYQoCVEjvEDD6FslPrAX/+vJ16kkF5P3by1TANSKTEMElZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB8787
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 10:53:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59146

DQpJIHNlZSB0aGUgZm9sbG93aW5nIHR3byBpdGVtcyBvbiB0aGUgcGFnZSBvZiAyMDIyIFlvY3Rv
IFByb2plY3QgV2Vla2x5IFN0YXR1cyBBcmNoaXZlOg0KMS4gQSB0b29sLCB1c2VkIGZvciBjb2xs
YWJvcmF0aW9uIG9uIHRoZSBjcmVhdGlvbiBvZiByZWxlYXNlIG5vdGVzLCBnaXQtcmVmaW5lcnkt
d2ViIGhhcyBiZWVuIG1hZGUgcHVibGljbHkgYXZhaWxhYmxlIGJ5IEludGVsLCB0aGFua3MhIFdl
IG1heSBub3QgYmUgYWJsZSB0byB1c2UgaXQgZm9yIDQuMSBkdWUgdG8gdGhlIHRpbWVzY2FsZXMg
YnV0IHRoZSBob3BlIGlzIHRvIHVzZSBpdCBpbiB0aGUgZnV0dXJlIGZvciBjb2xsYWJvcmF0aXZl
bHkgY3JlYXRpbmcgdGhlIHJlbGVhc2Ugbm90ZXMuDQoyLiBUaGlua2luZyBhYm91dCB0aGUgaWRl
YSBvZiB2YXJpYWJsZSDigJxmaWx0ZXLigJ0gZnVuY3Rpb25zIHRvIGhlbHAgaW1wbGVtZW50YXRp
b24gb2YgcmVjaXBlIGNsYXNzIGV4dGVuc2lvbnMgKGxpa2UgbmF0aXZlIGFuZCBuYXRpdmVzZGsp
Lg0KDQpXaGVyZSBjYW4gSSBmaW5kIHJlbGV2YW50IGNvbnRlbnQgYWJvdXQgInZhcmlhYmxlIGZp
bHRlciBmdW5jdGlvbiIgYW5kICJnaXQtcmVmaW5lcnktd2ViIj8NCg0KwqAgLS0NCkJlc3QgUmVn
YXJkcw0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQpXYW5nIE1pbmd5dQ0KRGV2ZWxvcG1lbnQgRGVwdC5JDQpOYW5qaW5nIEZ1aml0c3UgTmFuZGEg
U29mdHdhcmUgVGVjaC4gQ28uLCBMdGQuKEZOU1QpIE5vLiA2IFdlbnpodSBSb2FkLCBOYW5qaW5n
LCAyMTAwMTIsIENoaW5hDQpURUw6ICs4NisyNS04NjYzMDU2Ni04NTY4DQpDT0lOUzogNzk5ODg1
NDgNCkZBWDogKzg2KzI1LTgzMzE3Njg1DQpNQUlMOiB3YW5nbXlAZnVqaXRzdS5jb20NCmh0dHA6
Ly93d3cuZnVqaXRzdS5jb20vY24vZm5zdC8NCg0K

