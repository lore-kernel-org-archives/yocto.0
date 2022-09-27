Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F077EC54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 18:51:45 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (NAM04-DM6-obe.outbound.protection.outlook.com [40.92.45.67])
 by mx.groups.io with SMTP id smtpd.web09.14826.1664304698400070252
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 11:51:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ota8ac/W;
 spf=pass (domain: hotmail.com, ip: 40.92.45.67,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b78bUPSo49sRcEy76e9RvDD9jM1DUafEyMJJQgkB7jQ5FnJl0vHBIdpdstdU2JPg8Vy5TzeGeOZdgCkB4ua/VSfEEYCyPdokpgyNdF8GTV7ss8kP9rihzfzPLJTtFwJLdZiaHhDsfQFJkuEJkBjeJO6Eqrmafo7CdeTj90g8elrlRttbI62dJ+Qx9C5FgS4+u0GJrs/l/SrZZAeoR6oGsOIswX/2M3RfcIP/FcQfB3Kfixn0lcsaGaUo5UTIfpSYyBXWuFD81/zhRH5n8lqbvdwaYHggEhmZvXkYqv6LvQqTWSAtWV8c3i6K4ovP7va3j7DPI1AQarljppbk4+2wBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wJ5b+K5qGCjFZR0DwIDFJuHbJJQPWWTw9e3yC6By5k=;
 b=jiE10TnXzGNhDoEAabjNpH1MIHvqINf+WaEsVFR7Rd1khJhN2snNxq8QCJXlHl/afRQliKrrqezhDyPRxrieb6j2HliLK0EGDYEwA1DDPybtFVt8+fUPHNnA5tudI4fL+ybE1dH+BFVCsLvhOttSjerbvz63qAe3uZ49itQ6qpq08OKTe2vvLxZyDLfe9p8Eg0XVnoK/ZG1r2gdHEhigLktp18CiHNY6xjGhGQxepGc8zMcfco0PNxP7ljfLaB0tlAtDIy+AOCsQBnr8sVfPQPPSAYBTH4Qfg1Qw7sJejx6Z0Tbm0UMxQXMs7nBQ4ESHHW28SSzvvDA93SN7TqpV7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wJ5b+K5qGCjFZR0DwIDFJuHbJJQPWWTw9e3yC6By5k=;
 b=ota8ac/WrhxGWc5PmcaI0rZ/AapgSg/8lwWhCA6L7GNnhV5+8U1nmE4O+1rCxULkiegR7akcTtag18pMs7xIGqjYEu6yyBVlJWFqr4jb0u1K4y9qKntD24i21Mmy4qm1XY99OAwRH37GjEPRu/JIPdNn8I6QEG9v19mtXwnb5JeIgFjQl0MQB1NCZvmSug6WULLPOALkH0dWDU/7JoBpv+9VDSScjiYr7kQCqGdG7sbbTvEN0tQEe5tYfSrYjZNVz5swUKwCSfNQiYU8ztjwD51dpes85LfynzTPVb97Ky+5JGUJG//8Yz5DKaDb7YDNn7EaVa6cl6p9MFwmucGfLQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1580.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 18:51:36 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%5]) with mapi id 15.20.5654.024; Tue, 27 Sep 2022
 18:51:36 +0000
Date: Tue, 27 Sep 2022 20:51:28 +0200
From: PHIL <heideggm@hotmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] Builing Gcc fails Poky
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
References: 
 <PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
Message-ID: 
 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----WDGW4A7P6AFQQOQSHG8QG2IZ4BXNGF
Content-Transfer-Encoding: 7bit
X-TMN: [eCi+jJfHxNbTSj5k1ZakGTZOFYv3Jh3G]
X-ClientProxiedBy: FR0P281CA0083.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::18) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <8CBDAEED-36E4-49F5-9812-276C66D4757F@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1580:EE_
X-MS-Office365-Filtering-Correlation-Id: 24248cd9-4a8d-4763-b65d-08daa0b94e0d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GnCohTSEg4tM/45fJ0a5ShnmXAC+4D7xJVbJnDcUzUJqBEziFyaX0erSF1v+E1+zfWU+x8mZBJ1YuR8xVcShWYTOn6/rYaykuSZ9pwaIIaAhwSXPknusoCKA8t4SpOL3+0iBl8+obFqqAHjNBsqbsPWO/dY750/5CIJtoWqXZt4OfU3oPiTmV0gA7T1bo5CwnPKiZzT0GzuLouMDmcKrZO3DNBcIlAm4uKFDrfL3maZgCeqi8xQMGAI1AMgAn5cc+VxsiwzGu9ZLDrP2qSFio9D9ZoBDQWUkxYqfeI+hFeZBwy3Lh6UCt95PBov7rnw2/70XaLrraFP6dGU0PCdhZnDKy4pERQzwfE7sgP+UohqHboR5bQ5rJ/FvMA0oMUMj5w0YYd7D2D+Up+n7esGB7hiO04hCN0Glzq/7He/zZFWGhqlk+Mo8i5bHFISy5HvIz4X4DEsyuqAT6nK5xGT4iooNXVZJGxpm3mN0IUaFgda2nl3WoQ6wY1DB2FHGP8HKcJ5uD+N57tQQ3q4vgYN8yWs/IZ7B460F5r2kt1NkdpYI3cHYvwaZ/h7R5xIeZYAuB3m7IOoFfKb/94oiWTEekDNczXyow/DS1m69WCcuicL6u14NSIo6/gnZX4k7tgCeQ4VxJG7veSdQnXTv2KJoRHZdxSgIPl0DF8yebYImNlLMU+Y9JJes3SDjelLp17tm
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?azlSM1RPTmEwdHNkMGVkTjBtNWJSbGJMWmNkN25nOWI5bCtKVDhCU2RrQzZM?=
 =?utf-8?B?WWJtYXF2VTBYWFdEVzFlQkR1c0EzMGFvR1YrUEJXNnZJTGNyT3h3bnlRaUpM?=
 =?utf-8?B?L0k0NVFleFBwTFlHVmoyMnN6akhVSTZ0Z1pLWSswdzdjSWJpRmd2MkV3ZEVl?=
 =?utf-8?B?RTZWdlB3KzR4aW1vNzdndVBtNTIvZ2Q2ZUc2RnA0N0J6OHI2RjlBUllGWTlJ?=
 =?utf-8?B?bzFHZmJ6Ukh4YzRHS0tOVmwvdXJnKzhkOVp0RVVFQkJNVk9WVURUZFBzem9u?=
 =?utf-8?B?VEJFVzhVUXhtclFaeFBXV1JLMTVhWnBoaUg1OFJBKzdhM0ZBS09TU3dpZkZK?=
 =?utf-8?B?M1NIcDhoaDJKRGRBaTZMa0VWZXRkRVkvOFdpcWtMSXBqejhjZlNBcUt3bUd4?=
 =?utf-8?B?R1NycnRQNHpmVTgyRHZsS0F5MURwMW1tQldKQzFIQmJLUUwyM2JvZnRSeFh5?=
 =?utf-8?B?Wm5XbGlBMkxQaUdaYUlkR3ZKMVd3enJUWkNDajFpWko2YTR5c2dvSzVmK3c4?=
 =?utf-8?B?NlBVL2FOdlJqMjBMdFlYUXRyYjMzQUQwN1htTFdUaGdUSlhnOU9EVGN3Zjg1?=
 =?utf-8?B?aG0vUkhzdlFlem5Rb0dydWYybkw0WnNaSko4V1hMc0NtSmY2UUdiTmd6SitR?=
 =?utf-8?B?L3htQzRtZmVuRzJxVG9HWExnRlRaNGUyc3BaeDdOWkJPT3lFMitKZWlZUXor?=
 =?utf-8?B?MGJuSks1Szd1K0dhQzVKWUxZczh3YVhSK25MQm5mcGhSOHVyZmF4QTJYQnNq?=
 =?utf-8?B?NWtXRTZobzlKblNwYmpKNGZ1QVJrcUlDblBaZ3AvL3YyVTZjYnF6THBOTUN6?=
 =?utf-8?B?R2s5dFpYZVY0VUZMaFg4aC9NaXVtWHRFWElkRmx3UjI4NFk5Sy9wbXNjdFQy?=
 =?utf-8?B?azdHLzhsY3c0U1BCZG1pdnEyYi9RQittODA5TVJFc0cvbm1adW5MSFVmZWNp?=
 =?utf-8?B?SjRrMWo3MFhEbThtWFkxdEJpNkhUMUpSdnNYc3BuekpVMWc0QXNMTmFSN1lo?=
 =?utf-8?B?Nm5YaDB0SzViRU1weU1vZVF4L0pRY2h4RjlleXExNlhhRm0wdWx2TkRjck8r?=
 =?utf-8?B?bjAzM0JmMkR2RmRNNElXWDRFRmMzRXFHM1UwcHMxK0U5OXFFSWJ3QVk2N0h6?=
 =?utf-8?B?NFRhZkdEamI0UTQyU2JXTjdFL3RFdXJUSjJRYUh6WEYzaWN5ZzJYbEc0MDFi?=
 =?utf-8?B?RStQTXBFYmZvNSsxcm5IdnhpdzFacjVEdVprKzUyQmtuS1RncGU0OWRmY3hp?=
 =?utf-8?B?MVRWVm45bVZWQU5Jcy9obys5aHJ3cGdmTUNLTzRPYm9TMmNNK3B1NWhIYWNB?=
 =?utf-8?B?N21zbFZyUjFWVm03bXlmOFRVbEp0NVltQVJyTlhMSDZkRERDYytjODFGdk9m?=
 =?utf-8?B?dEZYdmNhaXBRc2tUaXJRd0tseU1oRHo3VXZsR3dqRlNpb2YzVHo2bmpUa3o2?=
 =?utf-8?B?cVlKMXBIWm1yRVU5Q1RucGMybHVWbkhaYnQvR3FSK1hrZFh2TU83L2FhVGJ1?=
 =?utf-8?B?emZhRVJRYTZtMWVaL2tHSUtocEZUbzNpb1FVbEpUZWVGRFVib2ROZkNCcjRW?=
 =?utf-8?B?RTNCaGRYc3VraWtteE96aVV3THhFM3VKUzJsNEJKNVp6ZE9iUzU2MVNIRlk0?=
 =?utf-8?B?VWhqT1kya1hwbWtBczROQ1cyeGttVkNnSnIvd3orM05FLzZKSVJ5ajF2aWZp?=
 =?utf-8?B?Nko2Sjl2QjJ2TG9hMTBDMWg5MmpJMFI1bS9MMHdiTjEyQUFNY3NoQkZ3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 24248cd9-4a8d-4763-b65d-08daa0b94e0d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 18:51:36.7449
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1580
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 18:51:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58187

------WDGW4A7P6AFQQOQSHG8QG2IZ4BXNGF
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

What do you mean with memory issues? Memory broken? Not enough memory? The =
errors are the same on every run of course I don't build from scratch I jus=
t retype bitbake core-image-weston=2E Gdb also failed so I took that out=2E=
=20

Am 27=2E September 2022 20:40:31 MESZ schrieb Richard Purdie <richard=2Epu=
rdie@linuxfoundation=2Eorg>:
>On Tue, 2022-09-27 at 18:11 +0200, Edgar Mobile wrote:
>> Greetings,
>> Trying to build core-image-weston from current master fails for gcc
>> 12=2E2=2E0-r0 with lots of linker errors=2E
>>=20
>> Names of missing functions are strange ala gen_cmulvnx16qi3=2E
>> In insn-output=2Eo
>>=20
>> System is an ubuntu 22=2E04=2E1 LTS Build Target is qemuarm64
>
>We build that regularly on the autobuilder so something seems odd here=2E
>Could your machine have memory issues? Do you get the same issue each
>time you build?
>
>Cheers,
>
>Richard

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------WDGW4A7P6AFQQOQSHG8QG2IZ4BXNGF
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>What do you mean with memory issues? Memory broken? Not enough m=
emory? The errors are the same on every run of course I don't build from sc=
ratch I just retype bitbake core-image-weston. Gdb also failed so I took th=
at out. <br><br><div class=3D"gmail_quote">Am 27. September 2022 20:40:31 M=
ESZ schrieb Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt;:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">On Tue, 2022-09-27 at 18:11 +0200, Edgar=
 Mobile wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0p=
t 1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;">Greetings,=
<br>Trying to build core-image-weston from current master fails for gcc<br>=
12.2.0-r0 with lots of linker errors.<br><br>Names of missing functions are=
 strange ala gen_cmulvnx16qi3.<br>In insn-output.o<br><br>System is an ubun=
tu 22.04.1 LTS Build Target is qemuarm64<br></blockquote><br>We build that =
regularly on the autobuilder so something seems odd here.<br>Could your mac=
hine have memory issues? Do you get the same issue each<br>time you build?<=
br><br>Cheers,<br><br>Richard<br></pre></blockquote></div><div style=3D"whi=
te-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht =
wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></bod=
y></html>=

------WDGW4A7P6AFQQOQSHG8QG2IZ4BXNGF--

