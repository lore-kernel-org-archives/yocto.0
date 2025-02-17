Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80A00C021A0
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 11:32:19 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.54])
 by mx.groups.io with SMTP id smtpd.web11.48992.1739791931621476511
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 03:32:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=jOewyYRT;
 spf=pass (domain: cherry.de, ip: 52.101.65.54, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k91Y1c2qyYb71Dmf+qB//MQLoZW5KoadqabXUZ0ZM5MXiG9xHyjs0hD9yh97a/zbYsUmMtrXgidgIOrYq4pBpAeqxnHkaj4RUKXBA6zzjMFqL0nKG5sptB63Ua3R7Lbn+IkgMDBE17SVHMZb3uMTHcD6VdRroPVjTD3STE87yW9gUXkDT18cilCwW99hNP9o2CWQOBq01hX2q/tFjN6YhIptKD2zk7qb+gVu8r8mPNB6p8C9k9qt4SvTvA2G0EZ7kdB61pGf2yyF6w7cdtKgXQRfH8ECeLY/xdrAl28a1SNJEE4vqtCyLfGrc5yLbV33wVCiN2vmymUwVJve7u2GTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QwrCwXm+75mtzQucJ4Nvz6khFxmU4JXwCmCAq/xX1J8=;
 b=KvVkZ3kLnsBO6YVT3mCzd9HUupfCCmgrFhkgekbDLjj7bzfUS3OFFQ7RSoWH9uUyvVDdkLNrs1orj3xAtssfjV31EYhYCOytsju2QlhRn2ONWU1JXfW09x71sDwmmUO/iBY5TXWpa2NT4aA6y5w2jpAXyAerkNFTyQZMwi/7XFl3wLOCNlwORdykjbmENGlZuPvFDG2f/taCl/T0ww3KLCvm3wUERuLYFqu0KruMuvDfr1fUqQem41K8DIOXRt5uFOkSRk8UqfPilxVx9qnursV31o35w94bmL+MA3BC8yPnJfMoaRlFtjuxa4xzVbOE/70lqeogumnBgafk2CUGLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwrCwXm+75mtzQucJ4Nvz6khFxmU4JXwCmCAq/xX1J8=;
 b=jOewyYRTJNU5/i0qYH83YLPDl5JIB4XwnShEM4mCRMlovSiE4ldXp9JYu18QQblVmfy+SHhc0Sx+ispIAli1PpQnJIQ/kNP/um6sCbOTt4e6j60OhjkG1kO01mZu3PHjs3S65LL7Mjwmh2pvfcvam+X8P/co0oXA47Bhyq7FZ+o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBAPR04MB7464.eurprd04.prod.outlook.com (2603:10a6:10:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Mon, 17 Feb
 2025 11:32:08 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8445.016; Mon, 17 Feb 2025
 11:32:08 +0000
Message-ID: <d5eee0e5-d2f5-48ef-851b-6be73b554d18@cherry.de>
Date: Mon, 17 Feb 2025 12:32:07 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip] rk3328 loader for emmc flashing
To: Belisko Marek <marek.belisko@gmail.com>, yocto@lists.yoctoproject.org
References: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
 <05bd87e8-d7ac-4764-a252-b6efedeb0ae6@cherry.de>
 <181D9A3A290C6D2C.30382@lists.yoctoproject.org>
 <CAAfyv34Y8KiXFKpJSKm4mkq3UsqVgCMk8dQr3UJ1fKQEj9ZXYg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAfyv34Y8KiXFKpJSKm4mkq3UsqVgCMk8dQr3UJ1fKQEj9ZXYg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR3P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::21) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBAPR04MB7464:EE_
X-MS-Office365-Filtering-Correlation-Id: 1309669f-aeee-4289-244c-08dd4f46b65c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?4SnwG2w0JoWcXj4ubdhkfqBK1v6Zf5//jjBJBF5teJ8C+/ZJshP5qr4RkHi5?=
 =?us-ascii?Q?svatzL8Dm+6XXr4vEZaJsK/gy3IlNuofxZQWrWhqZGSxcuf1beU9kc8YdXZA?=
 =?us-ascii?Q?jaDjzAWDG7ea3bGkookkX5OzYQ5Tz0AVIk0/8FxP064HDd/FP4+XpWw70CNH?=
 =?us-ascii?Q?7yU3KFbl7VlYrWle8Wjn2YDk3gs0Rh/6TsCkPgMnzMz0jylBAcd7A7EJCByv?=
 =?us-ascii?Q?RKr6w7nJqr/o7WkP0YA9oZlVKiRTPNj/Zp7AHopfAFlkSP7G9X02NQ9PuISB?=
 =?us-ascii?Q?Ex7XuAjACQaee1ARk/tBE9smFyyvJWJGcYNqY6+43CrLVPHEDSOd1AtaqcWh?=
 =?us-ascii?Q?9f/aUTG/YwOfAptReqEmMpFfGfGfDa9xh9EZ/nlTXkMf5Eo2Xr2a6zTuejY+?=
 =?us-ascii?Q?sXqZvBwQbG7NbJtjaSvUSkZ9h1DFZ5XfjIgjsVZ8iL51MeddSYxy+30Zqleo?=
 =?us-ascii?Q?D0EpwfmLvEbsfcfTblBCmkW5ks9F9wva7xganHA3b5uPixItj1TI92GwTtjj?=
 =?us-ascii?Q?XRPqKuglB4ABNbJrybDv7IstpESpZev3wjvaZOcSQpFHLFflZBcIGJAxHc2n?=
 =?us-ascii?Q?8I8JPNc6VMByJkN6bz7XoeB+y/hFvebMTdYYnvX9a2terxY4HjEYagcbmVTD?=
 =?us-ascii?Q?Eizotl2G7iU9H4XSMFUVV+XIuGRg3MnhJGeA4uN+ZxjhHrIVbS3qzlDELkNg?=
 =?us-ascii?Q?7rcczEnMnJP/FXtt54eZsqExUJ73liqFBS3itSlyCHsn0JP8Uuq8yEvC9qor?=
 =?us-ascii?Q?sWlUjI/x527VkEItss7duD0b65gLtVTmh3bSjtnU6c9fsiNIdBob04bAy5bt?=
 =?us-ascii?Q?YOOzvUABUB0DVygsObVGfs3WjUEk98rtuKXR1LzYZpaNWV01S1OEz5NfWShN?=
 =?us-ascii?Q?nzrsg4HC5OShPP7xm9HoTDntFfrfhNj/oEI6KnXP6w1o9A0Gm3i/33soSraz?=
 =?us-ascii?Q?s4g/QwpmwtaLsPCULu5f7Tlmg0C581QZG3X5DDPs7KsqVCD/ldnDK5yVUk9r?=
 =?us-ascii?Q?v6tQYDMAsQNRl6PTDt/n9cBOV/lawPynVDl4EOt/FTBAa8NUav9KHGCllR6i?=
 =?us-ascii?Q?wRQ7X2IDtwtvbrT8XQwhnFNjQrSK1pYXY82nhmEkDDH5c+bFzeS5Hd6GBhY+?=
 =?us-ascii?Q?rwO1K6FBewvCtausrmyWrbZOV2YEuUb3d2e6On28suuTYmcuLBd7jkT8yYEe?=
 =?us-ascii?Q?Ek6Rp3FLgDKlbN/qEgC6GDgdgeb5ATw86otq8cuwFGS117I4GAnaD4jq/rbs?=
 =?us-ascii?Q?Sm/pJb+brr64qf+mdeeBdhIsNX7ksPsgt7ZetrPQr5AOxIFKVRdJ+u1tu+UD?=
 =?us-ascii?Q?Lb3Ur8Z620UaQM7ue54Ry4fP?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?oznAtGl+9pBc9UlkxvaFiYj7AoOyR9Lwcli7kzLfLc0gfSSaDdCNLnPyickN?=
 =?us-ascii?Q?2d1mko42kV2fNRNK/6OdMNuDEikBkE1Se9qGMQnGcCdChOhNhOHJ03f9MeM6?=
 =?us-ascii?Q?lRV0pOYp6xMV3AYFBw6d2TEbNWt5qdl5u+gNPACMoD9N/1SQ5c00KnRLrWqX?=
 =?us-ascii?Q?nINNoXcw0CGC5qvXA6RlE3gpszPReAyh7fiPvpACK+j2a69cTwUEG096lcWL?=
 =?us-ascii?Q?IxAEVQ2sHI7dhpwtetB77IzuWSj1mZ1rrui+1fYjckckv/wFFrjq8gxf/33f?=
 =?us-ascii?Q?bkN9X8rMVn3fBNuLj7EqSSBXxwcsvpJAQb6UER8Q9GdqPSAWkuJoc0ykGkm9?=
 =?us-ascii?Q?k6rL5Op5SwUl2rI8YvULt7hvn3MdGoa9l7Vjdrt+3yAwIbR68K0G/4LGD8Je?=
 =?us-ascii?Q?znE9Bbyjt16yJgTl9MKdxURs0ovNlGAmGV4pe3YDoY+J2qlRmsQ/ykC0N03n?=
 =?us-ascii?Q?GrHsb/ZZI2PqXLlp9WHtgSOE9oq8MDLqg/gMXN5ZL5nECxF58dlf7leeHh0x?=
 =?us-ascii?Q?JyXimdRUok8fifC+Bl3Qp1R0BFHH7Yvub8OXCcQS8mRkrTIUgcLsqUUjp8f1?=
 =?us-ascii?Q?JkjfmyIha3ZFQ39EZFt99YUv/gTc+I7pUemqklL0zfkhe9lGnKtyhmj7QrX7?=
 =?us-ascii?Q?kNTazIRLXVv+otzX3CgoeR+CoHnBQouupmpJgx3VvubEepod3EwRu3r6vTGX?=
 =?us-ascii?Q?n7CDXyDDT64/7kqCi3b1eUTbDhzale0+w6/fKPucuS4knnExZd5D65ib0JjN?=
 =?us-ascii?Q?jS5nzaTrvmiEA2rtWx/daKUqOw9EiA0NBYsepayPWUK1ZhJuhIDMIfgKyhoP?=
 =?us-ascii?Q?L1y98Gl/QKXruWj8atcZsdocR7Lbidhpmjo5rIxPRao+t8L+h4ctd1PyP0hx?=
 =?us-ascii?Q?zbHINMqMpE6KJq5XHYSs56L0/XtGrVOUGd9b26KM5SMYP9P5l2H7BtfZTr2X?=
 =?us-ascii?Q?LanbUwwQI6AdxH6OC3z3Lt3QVFnVwbHfvhqmnqqKpBrl4MV+B4r7BuY5QaL1?=
 =?us-ascii?Q?l2vdnMj5F9i0uYRbuJlbvsfyqdGcV4RGjHVuASBS95r/RZvNy9T8kvFVxSIb?=
 =?us-ascii?Q?Eq/mgvL55lvw9dxLY+FZOdUAGJxnU55EF6khZChVIGVGz2TwLEZvq4lyT0aq?=
 =?us-ascii?Q?ADPQftzqrMz0ooKN+Kp2oW3bB1xC6ppUDnst2/4gPuJIa8vemuw6ZKj9fycP?=
 =?us-ascii?Q?RmvIIgurF9faDFNTbk10+9GzYkntnm9YtrLtiUjmMByNj4u0D0lC4wEF7eMu?=
 =?us-ascii?Q?JgzrhTDMNWC7z/tDH07L5nNm5bZGl/03l8ucnM2HFKR0llmTYubegHdWpK4X?=
 =?us-ascii?Q?oG3bVSzd07QiyDrdTEH9p+w2d+oNPoar4ry2l8r+FReEvOdZ/P8wSJkDYWie?=
 =?us-ascii?Q?nPEQOUo0ZBgbM2XVvGu2BpT0qp9OH7fCEvawwhc52eq5mmwvNi74MXC3vCRE?=
 =?us-ascii?Q?3cCYwPeH8/66/Ri9MXdqI2tRfAhzA8XHs2sKPupMIwGrLiRef5c9vG2OAcQy?=
 =?us-ascii?Q?ewSZqJszF5X3Kh1uDZNyPJWgXm7Pue02NA3eAhmYGFFV5S7zJxcsqb2LXIM4?=
 =?us-ascii?Q?PjW5VHgcijzLbOL8o6uVA/41KpaO7TuboThk5I3fbJ/n/jGrKOlD+Po8nr5F?=
 =?us-ascii?Q?iA=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1309669f-aeee-4289-244c-08dd4f46b65c
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2025 11:32:08.3489
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RLkZDg2zxvq89L564NTDWtB/CoDfSZw5POn3I2j5GNK4jOzGIoBrpMfJjMiFPnbldVjNDJFCm2tc3u6tuoWN+ciVuAdG2/5U5FIuuOm6EMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7464
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 11:32:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64819

Hi Marek,

On 2/12/25 1:32 PM, Belisko Marek wrote:
> Hi,
> On Fri, Jan 24, 2025 at 11:30=E2=80=AFAM Marek Belisko via lists.yoctopro=
ject.org
> <marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> Hi Quentin,
>>
>> On Fri, Jan 24, 2025 at 11:15=E2=80=AFAM Quentin Schulz <quentin.schulz@=
cherry.de>
>> wrote:
>>
>>> Hi Marek,
>>>
>>> On 1/24/25 11:04 AM, Marek Belisko via lists.yoctoproject.org wrote:
>>>> Hello,
>>>>
>>>> I'm trying to add support for rk3328-evb. I've added a machine and
>>> built a
>>>> minimal image which I would like to flash to emmc. For flashing I'm
>>> usually
>>>> using rkdeveloptool which download some binary blok (loader) and then
>>> can
>>>> flash wic image (at least I'm doing that for radxa boards). Does anybo=
dy
>>>> have an idea where I can find such loader pls? I've tried this :
>>>> https://xdaforums.com/attachments/for-rk3328-devices-rar.5168743/ but
>>> none
>>>> of them works (it prints: Opening loader failed, exiting download
>>> boot!).
>>>> I've tried to use MiniLoaderAll.bin from the vendor but this one just
>>>> prints some garbage to the serial port and I cannot download wic after
>>> that.
>>>>
>>>
>>> I do not have any RK3328 board available, but the instructions so far
>>> are the same for RK3399, PX30 and RK3588 (the boards I do have access t=
o).
>>>
>>> https://github.com/rockchip-linux/rkbin
>>> tools/boot_merger RKBOOT/RK3328MINIALL.ini
>>>
>>> This will generate an rk3328_loader_v1.21.250.bin file at the root of
>>> rkbin directory. Use that as argument for `rkdeveloptool db` command.
>>>
>> Thanks a lot for that.
>>
> I made build from meta-rockchip with added rk3328 machine (basically copy
> of some other 3328) and was able to flash it but TPL hangs in following w=
ay:
>   U-Boot TPL 2022.01 (Jan 10 2022 - 18:46:34)
> data training error
> col error
> data training error
> DDR3, 333MHz
> BW=3D16 Col=3D12 Bk=3D8 CS0 Row=3D16 CS=3D1 Die BW=3D8 Size=3D4096MB
>=20
> It's some vendor custom board and they don't provide support but from wha=
t
> I understand it's just close of evk.
> Do you have some idea what should be checked before I dig into the u-boot=
?
> Thanks
>=20

Multiple possible issues:

- TPL is too big and doesn't fit into SRAM (hence execution just stops=20
at some point because it's lacking code)
- TPL does not return to BROM (BootROM) after it's finished and tries to=20
continue to SPL but SPL isn't loaded,
- TPL returns to BROM but the BROM isn't capable of handling that,
- idbloader.img is improperly generated (e.g. the header, the alignment,=20
the size or location of TPL/SPL is improper),

I would suggest to maybe check with upstream vanilla U-Boot instead of a=20
3 years old vendor tree. 2022.01 means it is NOT based on Rockchip's=20
horrendous U-Boot tree, so there's some chance it isn't going to require=20
a lot of deep knowledge to port support for your board upstream. Failing=20
that, I would try to add a few prints here and there in the TPL code,=20
though be careful, it may drastically increase the size of the TPL and=20
make it not fit in SRAM. Additionally, if it already doesn't fit in=20
SRAM, adding print statement may trigger different behavior that may be=20
seen as progress while it's just moving code around (e.g. compiler=20
optimization).

You could also ask for help on the U-Boot mailing list, there are a few=20
contributors quite active on Rockchip-based boards and maybe they'll be=20
able to help with that.

Cheers,
Quentin

