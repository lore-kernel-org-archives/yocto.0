Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B82DC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 13:10:48 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.16])
 by mx.groups.io with SMTP id smtpd.web09.19661.1646053846477774215
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 05:10:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=azV8dMGX;
 spf=pass (domain: outlook.com, ip: 40.92.67.16,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkRMgUxnQjIZeJ3iZC8WeMXdnJGV6OPUplYfzzZrdzI2e6+D/TfTrqvF46qTnw5czqFC4daQ+hlanl6fr5gCMlBpMefslLjzcdOeTU3LXIGiIpmlLltFPy95W1OsPaeoEpqVrdDtTRClWJ4FCg0lBBamEptChuSge2zN7vHauL64YO+Gt50qcC+Es+PPd8nNYh4lt9HCUHZ5WIPhqVGxD44B3RFrA2HkcmyYvJq+p20p0dPDob8dQax0bbnoTmf7SwAHrmg06b6M5CwnrVKJNUXZ5tSExR5jlKJY4P8XA/lwSWXIX5SZpSkDjjzfnEvTjqWB266VL2dAVNlW/WGGcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzI3OMxO8mh8WeOcQMpZm2scqW1MBdcwb0cVGFXKJYE=;
 b=gBcpXNYNjuZjeI+3KQpwV9hQxhYOOhUl/PbPcYwyFs+SeQh4cA9HT6AbXzeQnDIIjseXQsiBFGbQ/kbMGwrIyuJkF9HYTztIf6XQ64SvI2q/ZuPKXorUuBkA+i2ING3aRl9fQantHqFT8TpZlXwnPG/xBrmj5ZaeJuCijk1XWeA+9VN8dcdbK0ivkeTP4VMAceUdw3BhohCmL4lQe9UcRYWD4lYK6Ex6XHF9gWNPnM5kMBPXxgk5A+Kj8jhW8sMkq+j1XnBWiey8wyBCpyr2uOG+lwrtVUvnQYIDR51DDZuZXFj/BT9MyrEyWPwVxuDB7hIBtWmoPSkXflA4mjNJlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bzI3OMxO8mh8WeOcQMpZm2scqW1MBdcwb0cVGFXKJYE=;
 b=azV8dMGX+pPCEq1CUbI5pLo08khMPKAHK50SG3AZElimLuRtkA7oLSEjKFfaTmiRFbIHuV0o4+wIPb6nnfJI1DMEdseHUeKo71QtUnj+IfiTEykyluomChvO+N0Bx5LKVAoMwQnSlcBIZrJlpJpwLCIpGiuwJGwLglVwiHKk5zX7RaZMCjmza0/Hrc9dbhHcBtuDO4BVSeY6FZQ8nes/BVMRCiRVp6JpAaP6sdhAyvF0EUtkkm7wb9UsUqNCdWa8vhkqKCFcBJ/3eJEN23rogKP9CHXF5rWOMxUrQLc4NnjAlKx+7UaSvnfqgQ4iA4o7OQ4gCPJHuuzcAcq28RXutw==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by DB8PR09MB3386.eurprd09.prod.outlook.com (2603:10a6:10:3c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Mon, 28 Feb
 2022 13:10:42 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b%6]) with mapi id 15.20.5017.027; Mon, 28 Feb 2022
 13:10:42 +0000
Message-ID: 
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 28 Feb 2022 14:10:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: AW: AW: [yocto] python3-smbus no longer builds - Does anyone have
 an idea?
Content-Language: en-US
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Tim Orling <ticotimo@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Konrad Weihmann <kweihmann@outlook.com>
In-Reply-To: 
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-TMN: [3ssv4lfCWMhKtSzYz4g0K6qRqSCijTeMEurzjZGpg+cdcpGgtsT+k9yiul5Hi5ic]
X-ClientProxiedBy: AS9PR04CA0064.eurprd04.prod.outlook.com
 (2603:10a6:20b:48b::17) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <cb5fd47b-d62c-8f19-b2dc-27106b39ff7c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af180eaf-e0d8-40ac-41c8-08d9fabbb95f
X-MS-TrafficTypeDiagnostic: DB8PR09MB3386:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	e7/Brzqa6bnvb3tZVJ2OFxvynHqyhMfMXTZ1vVicXvCctqM2k/C6s4d+jdkopVlM4lmVfv7RIdzIE24vMl4MXTSsd1R2ob5e/xFeKenSy1oTMzF+PBhvKyVHTsF5AlEUeHkdIvK02DdCEE9i6KOkCX7a8NdrVoe2rxRWrOIz2fNkFtNo5qdNGlz376IvSFHYk4y1PnT2JhTLQJHDHhOxkUyNwfZih+isII1atoLO2EJa2gs8VEtVUtOEfGIbBsFhMqGoiVXtShwqf1FwmoQ0YuLw2sADGx7WO58HTKaGdpOWPjvAfNakdiYOiLf6f2Vo0Yb3hlJSs5Cv+C9F3E2dvf6szyQMnkXgq7D8SWlkQlDUcnZeKeBCkimFxjfYIkPLVMjN/t6Ogo83uiU0oGrs+rTs6UUAlOCIzQSQcNKH+HHOW3NHt9RoyYh4agy1+Mi0Eb7PWaESWBpBN9CoU3oDb2jzJNkw8GP+2gTIdsODUwBCsP1BbsO+7/UulTGu0bTb4eKcbxcb0+/Dy51BzHoxcotv/Eg3VFYvvfQ/d68RUIV4/MrRMByPO5ypicb8zzCU6nnSQpLAHdYTa2AEzkv3SOVK+qNnBAWS/AFecHlOK9FSE7mawf++fHdaKogKCffJ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ADR3X5rLPak00hc5oBXUXbnOlanB0DEkGIhxtmh08yUjvPeEss0iTRAUoflS?=
 =?us-ascii?Q?sl2XHVb9i4OQ/QRx/Sy84yuxIRazVYkCzS8RfXjOMPQrcFCrC+GeFAHXBih+?=
 =?us-ascii?Q?Xqb+ocvKaGOYLXqfXPSzyYnUtBkSO6DE2jjD5cm2MQ74kq3UO692LYNfdbQB?=
 =?us-ascii?Q?zh4xtzMPk3+FwKtXK+2afpSZtlsMlVMx1pf0yJPxBMFtDrdbF1sktyjSf16r?=
 =?us-ascii?Q?XDXHye+6ZDl8T/Hu6rFofduJ4XCZlD7QzK8oYdy/BQCzD76IH+HODvcrkK2y?=
 =?us-ascii?Q?D7TnGXwVnOJB7UnEv7N28lG4tmmIIVrGEDf2o9y1ZFzltEncCRmfmSdOyAZ8?=
 =?us-ascii?Q?qeP6CcKG/7DBqU+vL9Lo/cyrwFpW4WfqVS8TgSpdIfeS2bOK0iJfcRtajpgR?=
 =?us-ascii?Q?gCJrnpCcLyQO7cnhYkNy7g6eHxKLrVv3UDRP2Q/UowUOPw1X0s+3vpQra8jj?=
 =?us-ascii?Q?5TOxWWPml0tdDGtcKswtvI4WK/s8Wqem00Y2aIXY75RwqMCGRto2S+2zJuux?=
 =?us-ascii?Q?QET6/MY4rS4yMfKvIkaDGA+pakw1/AzgmnzOsx7+2mAQQ+q4sLDiOMFUI2F6?=
 =?us-ascii?Q?XYg8EV4BFeBFZ3PWok2wcJpoBOswOYfqaifMvi3TAvH21P9D+/NSXSi+1gO2?=
 =?us-ascii?Q?o9Fzz+f1uvTyXrqBLyN8EWuKdXwnOg/Ubql+IpP76onY0gTUWODv3ZfebIV6?=
 =?us-ascii?Q?6HDWX1AAMakM2jFpeN6XXBJy20nvRAcuDS4nwoQst0a6sl1wWYsUm2aCDMlH?=
 =?us-ascii?Q?JwiPe3y8tk3TryJdq8LnVjbSqD00pExKJ1t2x7enLzvW6mOm/ECVKrkJk73T?=
 =?us-ascii?Q?PHGAPb4duXHiEHor8PfBc/nAX7ZXAXMiVYR2z19lT6FPd6O9EYGCssaAN/aN?=
 =?us-ascii?Q?pfSqChG6PDckpq3WjfwVrX3vRw4xB8EQN2Arg2VyImfE6UZ+P5MA5xYd388I?=
 =?us-ascii?Q?D2HjrV9Ih0Tm6wTm07HD5j34aBw/hKGHCBzBwBd0HZdvdn/bq6jtPoJEP5Z/?=
 =?us-ascii?Q?+urFroFMWNZNzZ7COdNi898IAw=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 af180eaf-e0d8-40ac-41c8-08d9fabbb95f
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 13:10:42.7378
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR09MB3386
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 13:10:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56316

Hi Matthias,

you're right :(

PYPA_WHEEL =3D "${S}/py-smbus/dist/smbus-*-*.whl"

finally does it

@Tim @Richard
PYPA_WHEEL doesn't respect SETUPTOOLS_SETUP_PATH, which might be another=20
issue to fix

BR
Konrad

On 28.02.22 14:04, Matthias Klein wrote:
> Hello Konrad,
>=20
> unfortunately it still does not build:
>=20
> ERROR: smbus-*-*.whl is not a valid wheel filename.
>=20
> Best regards,
> Matthias
>=20
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Konrad Weihmann <kweihmann@outlook.com>
> Gesendet: Montag, 28. Februar 2022 13:59
> An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproject=
.org
> Betreff: Re: AW: [yocto] python3-smbus no longer builds - Does anyone hav=
e an idea?
>=20
> On 28.02.22 13:56, Matthias Klein wrote:
>> Hello Konrad,
>>
>> Thanks for the quick feedback.
>>
>> Have you been able to build the package with the change?
>> I get a similar error with it:
>=20
> Dang - that's the second issue being open in this series...
>=20
>>
>> ERROR: smbus-4.3-*.whl is not a valid wheel filename.
>=20
> Try
>=20
> PYPA_WHEEL =3D "${PIP_INSTALL_DIST_PATH}/smbus-*-*.whl"
>=20
> instead - and it should really work
>=20
>>
>> Best reagrds,
>> Matthias
>>
>> -----Urspr=C3=BCngliche Nachricht-----
>> Von: Konrad Weihmann <kweihmann@outlook.com>
>> Gesendet: Montag, 28. Februar 2022 13:51
>> An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoprojec=
t.org
>> Betreff: Re: [yocto] python3-smbus no longer builds - Does anyone have a=
n idea?
>>
>> Hi Matthias,
>>
>> this is cause by merged PEP-517 changes.
>> To make it build again just inject
>>
>> PIP_INSTALL_PACKAGE =3D "smbus"
>>
>> into the recipe or a bbappend.
>> Mainly the python3-prefix of the recipe, makes the name guessing fail, I=
 suspect patches to be incoming soon
>>
>> BR
>> Konrad
>>
>> On 28.02.22 13:45, Matthias Klein wrote:
>>> Hello,
>>>
>>> the python3-smbus package no longer builds.
>>>
>>> The install step ends with the following error message:
>>>
>>> ERROR: python3_smbus-4.3-*.whl is not a valid wheel filename.
>>>
>>> Does anyone have an idea what is the cause?
>>>
>>> Many greetings,
>>>
>>> Matthias
>>>
>>>
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#56310):
>>> https://lists.yoctoproject.org/g/yocto/message/56310
>>> Mute This Topic: https://lists.yoctoproject.org/mt/89449220/3647476
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>>> [kweihmann@outlook.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>

