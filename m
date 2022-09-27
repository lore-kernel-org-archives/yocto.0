Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFDDC54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 22:41:14 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.92.40.95])
 by mx.groups.io with SMTP id smtpd.web09.1282.1664318468284957200
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 15:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=pGtkh6iE;
 spf=pass (domain: hotmail.com, ip: 40.92.40.95,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IL2jcrfItN7JO8m2E2Rfh0fQTTxFUbBq3B5r66O84zqIRmg1ye0fnz/ytJgwjtBnowhoqAz3teVly4uIz0WJPa/TdlfNMKmyg3bvZe5uBIIgTt+gH4KZkiipjtfc6nEp3PsNzJDxehAeznLpQxSaI3yTYu1SqccwADA4NfWuNs9HbAtsJg6ZrAmFeNVXeVrmSvMd3qM6iogRsgBNEbnHCvsIV/3lxMhWYDbO7x+Wysq6jk5ww0U/3zIwXZwnYbkZnFSra5xIwJpaEy5YoWRUxS7E6vB3n/UJGt0BdOjISzX85CDG9NwSrqCZzRrdAbxFWs1UMdCJo1PX2XXoZ8Ru0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VsmL4dZtN7CA8UllvdHTZCnbQ6CtIl2Ct2arEqwNGas=;
 b=MbrherV9Lw9NnQdzQv8N2fOv9AmQI72ZQK8Kgh1ANOu0XHCAMNKrmn2/8WxotKwgGWnDwlZkNhA4NGyJJp6YKiknbW8VXzjLCtauc6KjvPWQuLOTuQdd51efX2FOrS3mwO6EPGDvZLouXHol3jNj4jeC/Jm6E+Y4vlxW+GQUt2aex1i0H09/SuLBpN79aGdM4TcpbPM6onBwwLJNyCw8becrVEoe4wVL9FJ7ML/Q/UEsJqA/j84S4lJRR6GMlunE1X7n640KUyENLqX4NeFIy4CFSXqrbWKi9/ZO3MXVSfM9FUqcrOJsecoqXo1RZ8lLOdPXOtBdAAC1WtQWT7oW1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsmL4dZtN7CA8UllvdHTZCnbQ6CtIl2Ct2arEqwNGas=;
 b=pGtkh6iEV4BvGAyopTpjkE1Ph32R/xrkCwwUnG9F6p1jI9fTLz3dxnsWwOMzDKeX0V271L+/nIrqTAfhXNPQm3v6kJeCtijDzcr1qs9lr4CXAr0boss+YPftp3C4ImORikKB1cUd46e6QS5fr2UMebCmTyg/VbAqwqlGY2Ts2Fq/IUmfi/sPRg0O90f9LLfahj5aIRxw3IY2wCffCFEjxcYVOBcQjwHZuGOyOi2box7ZebGpqwT2onpWJz5V0eVp/yQimtbieuexcpS5cWVHo1+HDpwMahX5FEVz5q4kew04Doh0YgF6Lq3UvCncI3zY4cR7nB1xSe0KrqTn2Qif+g==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1590.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:49::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 22:41:06 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%5]) with mapi id 15.20.5654.024; Tue, 27 Sep 2022
 22:41:06 +0000
Date: Wed, 28 Sep 2022 00:40:59 +0200
From: PHIL <heideggm@hotmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] Builing Gcc fails Poky
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <0124314022d5ab2c61ecdbe42819b6d5b9f2a950.camel@linuxfoundation.org>
References: 
 <PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <0124314022d5ab2c61ecdbe42819b6d5b9f2a950.camel@linuxfoundation.org>
Message-ID: 
 <PH0PR84MB183582080EA5499AA5B93CF1C7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----3YAOHB2YOWW0KEBDBRMHNSUTGNXL2E
Content-Transfer-Encoding: 7bit
X-TMN: [y5r3yVdSONlLCioxh8TfkhdD/lz0LVM7]
X-ClientProxiedBy: FR0P281CA0012.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::17) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <46261BFC-7926-42C4-8B55-BB1404560FBC@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1590:EE_
X-MS-Office365-Filtering-Correlation-Id: 29a0757d-48a6-41c6-8ee0-08daa0d95d3e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5FQKgUvy947Hjb2T2KeM0UTNE414GThkULW32gCTD0ADlBIHXvto8zPMDGJBPp3nMnOBX/ZWlxkfr0AHQoNnqL3w3v26D1aetH14ka/j3O3TnZzNQVNkCNK/t1mI8HJ2HE8cuUZiOUCmPH1JZfPrB2TbyruZMcCDulFIaqzoFPM9IZmE9fNX5zSrG56y7AROKXoJQH1mGkxavjdjIvXiJkM9dYQuvSFbLf5rRMBmOr83/WOhH6z7xFNnucho9YIJtN/PVlQGp7+epZ5LeOZEwm0SO8Nw1N+XmeQvkk0qRL0cmMwF37mzXKst0IQsNql15CrEXqQPu5K1lBHOBIn5wm9cPU1q9PLw4Ixvc1vQTVHCLFMTCLUpzmWsnaaPXIeqrVYxSgzfaBcFdKOV6cH9xOIlNTn1QCo5yZ9Db7y66NUBPJ2ZdNkNYhrm+5HQZVH8o26BpzRIqnv2N73Qj9PRws30+5rInMAWamri+Zvd+Hlf3+v41D8zIbNPYgXx3uwzZPGRHLfIgORbyzmHfcFeJWQuMox66JaKE5kpo4E8uQiUqB7pK1LWfo3OCvmWNJhhhMskX2k2cs8nY3IfagGTzMtdRZOufBzhY2SucXUdojZvTO5/rhNaV38afnEBd2gYMHtXXGNgAquobuLYbH2WBPf3sAZAk71rbbh+CdpUdoiWuW6OFleA4f3yGysDH2hK
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2I2cUNBTnRzVElWUFdYN0x4TWZsMnlBL0Y5MGRHYVQ4WE9Ya2lwTnVEcWtk?=
 =?utf-8?B?SGJ4Nmo2ZzN6ZXEreTZUMGJ4N01OTmpHQW1uM2hVK3hoS3VBVmUxZXVlNlRC?=
 =?utf-8?B?cXV1OE9IOEIxZkJSZFVWaFZFN1lacnIwcktJQ2tvSXJ6ODkvekdhM2E5bHNp?=
 =?utf-8?B?K0JpZ0FhSHFNcWVQZ3Q0Nm10K01vWVRzMkZnVEgySm83T0Z1RlM1OEh6MFEz?=
 =?utf-8?B?S3Z0bFhYamFXZVV4ZE51Yjkza1VucWg3S3Evdkd2NkIxUEtkU3VDOG44N0k4?=
 =?utf-8?B?eVVNMThqbGt2S0Q1cUp5OUJmU21zc2hRSkgwNFRPUmRLTjFSOVprdDR6YnNI?=
 =?utf-8?B?Yk93MnNYdFpEUkZLYjFPWlNOQlI4YStVU1ZRSmRyeFhUN2p5amExdCsvNkNi?=
 =?utf-8?B?U0NQdVZ2dTVFNnV2d3hDTmVNdlh6Q2Q3UjhKQmhub2RCVy9CSnlDNGVNVmxV?=
 =?utf-8?B?Z1E1cXRiNEdXVmhQMWlGdElwakpVeUdCN0FLS0Z4anF1TUZMcEI3ejc4M2dV?=
 =?utf-8?B?dDlGaFp5ZnRsSitlc3loZU1QNytOd1NPakRmOGJ0WkthTU1HOUI1bTk1aE9Y?=
 =?utf-8?B?ZDJQaC9DWk9pK2ZmZGZaOVFCTXVWZDd3OHV4a2VGcUIrd2I1emJkZmFlOVgx?=
 =?utf-8?B?Y2tRR1pmSkt5QlFzOFB2OTlzYS9oSS9sUUs2R1laN09qSkVjUlVra1ljS2ho?=
 =?utf-8?B?cStVVVFMaEh1eWlBVFVNZ3NrR0NmTzhhcUFXS1VMTTV4dGVBVE1aTHZIS0xx?=
 =?utf-8?B?OG52WnQ4MzBqY1ltY0w1V285QzRpdGtWRVQwcjdBSWJKMmk1TDJHUzZ4RGJk?=
 =?utf-8?B?R1ArY2lpZnJpOEVFNjBSQzlZdlV0VktlMGZlK3RLb3dLVnJzZk10Wk5FRUtk?=
 =?utf-8?B?NHlaOGE4TzFyTjVMNnM0a3AyVEs1SnlORTA3dW9ZK2xPNExiTVV4eEVYbjRy?=
 =?utf-8?B?dGtpNnUxOHJ6U3JuamcwVnJZd2dESFhVNXAxVHpFbHZWcEh1U1FlNmNhZEJu?=
 =?utf-8?B?Q09BamhDeFFZNndYVVpxR0ViVzdGN3ZVcU41Wm1GcFlPUEphdkZLcU9YcW1P?=
 =?utf-8?B?a1puZlZhaTJQWmdxd295UHBweDA4ZFd2UFdPM3hROURzSDRiK1o5NU92dTVB?=
 =?utf-8?B?VUEvdUlUZlZ1azVja0pOcVRiMzhRdWpTajNELzNkOHpZbWEzcDhQZURJMHNJ?=
 =?utf-8?B?bWRuM1FpN3lUdDJ5MnpYTlNyR3J0cSsyRDgwdW9yQTF0NmpuZUlrelVwd1o4?=
 =?utf-8?B?TDdkU0VtckU2anlPK2krUkg5c01hVldQOU1xS1FpZ213WmxCQlc0Y1lPWGJE?=
 =?utf-8?B?Q0Qvb2grQlhuYWs4NVVtMm4xRmVReUI4MVlPakFOOFhYcUhybGhQclhieHp2?=
 =?utf-8?B?WVVhSDh3c255WGhHdTFDTFZPeURkY0YweGFpTC9aRktxUGxzZUMyUDdEZmVr?=
 =?utf-8?B?cEIwL20vYlNMSDRrNnA3Vm1DR0ZsS1F2VUVxRnNXOGFqSVBuaHE1YU1TY3pB?=
 =?utf-8?B?dnQzWWZyU1FNbzJ6dndNS2d4ZVJoTEtHTGp2Wm9jNHJlOG11VDQ0dmcweUth?=
 =?utf-8?B?WDlmVjFDSDJJd0NLL1hxUCt4NDhybGlyVythYmNyRDNJbFlCajlSeTJocDIv?=
 =?utf-8?B?RysrUnBaR1FvMG9sNFZhRlhCdlZVTFlVNDYwbVltN25iS0FWckdlMEtJNGtU?=
 =?utf-8?B?b3JDbDJrc3FXdFdxY3dBZFYzdXJtVDRIUHEzVko4TGpucm44ZHdPeit3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 29a0757d-48a6-41c6-8ee0-08daa0d95d3e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 22:41:06.1105
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1590
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 22:41:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58191

------3YAOHB2YOWW0KEBDBRMHNSUTGNXL2E
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yeah building gcc alone worked=2E
Now I'm concerned about the health of my machine=2E
Thank you!

Am 27=2E September 2022 21:02:40 MESZ schrieb Richard Purdie <richard=2Epu=
rdie@linuxfoundation=2Eorg>:
>On Tue, 2022-09-27 at 20:51 +0200, PHIL wrote:
>> Am 27=2E September 2022 20:40:31 MESZ schrieb Richard Purdie
>> <richard=2Epurdie@linuxfoundation=2Eorg>:
>> > On Tue, 2022-09-27 at 18:11 +0200, Edgar Mobile wrote:
>> > > Greetings,
>> > > Trying to build core-image-weston from current master fails for
>> > > gcc
>> > > 12=2E2=2E0-r0 with lots of linker errors=2E
>> > >=20
>> > > Names of missing functions are strange ala gen_cmulvnx16qi3=2E
>> > > In insn-output=2Eo
>> > >=20
>> > > System is an ubuntu 22=2E04=2E1 LTS Build Target is qemuarm64
>> > >=20
>> >=20
>> > We build that regularly on the autobuilder so something seems odd
>> > here=2E
>> > Could your machine have memory issues? Do you get the same issue
>> > each
>> > time you build?
>>
>> What do you mean with memory issues? Memory broken? Not enough
>> memory? The errors are the same on every run of course I don't build
>> from scratch I just retype bitbake core-image-weston=2E Gdb also failed
>> so I took that out=2E=20
>
>I mean that the build system places more stress on the system than many
>other workloads and we've sometimes see gcc failures like this as a
>sign of failing system memory=2E Running memtest86 might show that up=2E
>
>If recipe X is failing and you "bitbake X -c clean" and then "bitbake
>X" and it doesn't fail the same way, that would be a sure sign of
>memory failure or another hardware issue=2E
>
>You can see here:
>
>https://autobuilder=2Eyoctoproject=2Eorg/typhoon/#/workers
>
>we have Ubuntu 22=2E04 workers in the autobuilder and we build qemuarm64
>here:
>
>https://autobuilder=2Eyoctoproject=2Eorg/typhoon/#/builders/42
>https://autobuilder=2Eyoctoproject=2Eorg/typhoon/#/builders/131
>https://autobuilder=2Eyoctoproject=2Eorg/typhoon/#/builders/127
>
>so this combination is well tested which is why I suspect something
>else is wrong=2E
>
>Cheers,
>
>Richard

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------3YAOHB2YOWW0KEBDBRMHNSUTGNXL2E
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Yeah building gcc alone worked.<br>Now I'm concerned about the h=
ealth of my machine.<br>Thank you!<br><br><div class=3D"gmail_quote">Am 27.=
 September 2022 21:02:40 MESZ schrieb Richard Purdie &lt;richard.purdie@lin=
uxfoundation.org&gt;:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt=
 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1e=
x;">
<pre dir=3D"auto" class=3D"k9mail">On Tue, 2022-09-27 at 20:51 +0200, PHIL =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.=
8ex; border-left: 1px solid #729fcf; padding-left: 1ex;">Am 27. September 2=
022 20:40:31 MESZ schrieb Richard Purdie<br>&lt;richard.purdie@linuxfoundat=
ion.org&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt =
1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;">On Tue, 2022=
-09-27 at 18:11 +0200, Edgar Mobile wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #8ae234; pa=
dding-left: 1ex;">Greetings,<br>Trying to build core-image-weston from curr=
ent master fails for<br>gcc<br>12.2.0-r0 with lots of linker errors.<br><br=
>Names of missing functions are strange ala gen_cmulvnx16qi3.<br>In insn-ou=
tput.o<br><br>System is an ubuntu 22.04.1 LTS Build Target is qemuarm64<br>=
<br></blockquote><br>We build that regularly on the autobuilder so somethin=
g seems odd<br>here.<br>Could your machine have memory issues? Do you get t=
he same issue<br>each<br>time you build?<br></blockquote><br> What do you m=
ean with memory issues? Memory broken? Not enough<br> memory? The errors ar=
e the same on every run of course I don't build<br> from scratch I just ret=
ype bitbake core-image-weston. Gdb also failed<br> so I took that out. <br>=
</blockquote><br>I mean that the build system places more stress on the sys=
tem than many<br>other workloads and we've sometimes see gcc failures like =
this as a<br>sign of failing system memory. Running memtest86 might show th=
at up.<br><br>If recipe X is failing and you &quot;bitbake X -c clean&quot;=
 and then &quot;bitbake<br>X&quot; and it doesn't fail the same way, that w=
ould be a sure sign of<br>memory failure or another hardware issue.<br><br>=
You can see here:<br><br><a href=3D"https://autobuilder.yoctoproject.org/ty=
phoon/#/workers">https://autobuilder.yoctoproject.org/typhoon/#/workers</a>=
<br><br>we have Ubuntu 22.04 workers in the autobuilder and we build qemuar=
m64<br>here:<br><br><a href=3D"https://autobuilder.yoctoproject.org/typhoon=
/#/builders/42">https://autobuilder.yoctoproject.org/typhoon/#/builders/42<=
/a><br><a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/1=
31">https://autobuilder.yoctoproject.org/typhoon/#/builders/131</a><br><a h=
ref=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/127">https:/=
/autobuilder.yoctoproject.org/typhoon/#/builders/127</a><br><br>so this com=
bination is well tested which is why I suspect something<br>else is wrong.<=
br><br>Cheers,<br><br>Richard<br></pre></blockquote></div><div style=3D"whi=
te-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht =
wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></bod=
y></html>=

------3YAOHB2YOWW0KEBDBRMHNSUTGNXL2E--

