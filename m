Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F33EC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 09:29:54 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.12])
 by mx.groups.io with SMTP id smtpd.web09.10178.1638955791649155455
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 01:29:53 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=UcRDQ1Ol;
 spf=pass (domain: outlook.com, ip: 40.92.67.12,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=juheQP5+8GLgdUJHWSjHFmq4UWz3ndX0r3qr3SyOivb72fACJincgZx4BB3VtKEMWtcipnKDtU/IJg2vUInoY1JKuQJWyazINqbTkXgIO6ncUIuS58ee2fXzATfcIlcMxCs5nFGq8cMt8ajCuoFJzrrPaBewXYj4R+WaBtyjmptI1yDCxx2dom+1jo5D4jpCBh9XsLW2ECky5egWiaYDLMEieUthQWBVtA5LCKCceGp4nW8/7bvZvhcoNtI+2SiSbFEy/wxyxiWKKCppyFjM1H83IQl2byUhnV6e/E19CzQ9kDsIWHt2fod8oWokTyJ/AghGDYrKkev0Oz8qgy+F7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NzV3aNTpakwFfGD8FhuP8RqeCwP7UDB64T6qryGdogw=;
 b=oVFaWKH+p3gmiTySbUlUsjiLfcqpbq2Mim7kEIt6I5vQL/yDPpb1Ad/zqFKpHOQcnw/FgdO59nfgzTchiPA1sYG0Qo1g5xxNzBruz4AOeTfAxQIvn/yA19DwACoKNsRo/Bgs/g5MmiaAJmQgMEHlFYSX1A4u0mYHKXBMEaAJJjGve8geFb2UohXELnFzk2i6WVTNhQtqWUitXnQO6skC0mfRB8iPN+3EBaDPLTKo6U0RGMPnpUv4C8uy7qJOt+HA4trfq4QkTle3ZptAqXWiPZEafgM5PinVQ8Fa8res7UGLT9/UZDT6/344G5NLnl6TzpZwrofbbB/96wh2XiC2bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NzV3aNTpakwFfGD8FhuP8RqeCwP7UDB64T6qryGdogw=;
 b=UcRDQ1OlkoQ6gOQjOa2G+59ogFAZ6Cou1izw/3JzOY3SiBn98gfinqbsT7tU/WauovXtvAtChvL8Ag9cnoarBcXFzyPA/X+pwKMvB3+Nt8L9JJ3J42WSmcleVjCb48O2ibryF39AZDZQ+6Y6dfc6xH0usI8Nd/I9Afz2rD6GS5dXlzztYaoYj9XlpoYgv0Di91VZvrGDnXRsLaH2OWOuYiivyv/vYdVc9sp/g3BmyPwr0cGEeeY7tDxx20kqzVZaeftDsFYqJ+mf5j+GXWU7F3yhw6QsWfyKtsqBoDLd8asIX9BVd7SdVdAX+dX38m7W1vLz3em64inohINphb2Ypw==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB3635.eurprd09.prod.outlook.com (2603:10a6:208:18d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 8 Dec
 2021 09:29:49 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::782f:9964:348b:b2fa]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::782f:9964:348b:b2fa%9]) with mapi id 15.20.4778.013; Wed, 8 Dec 2021
 09:29:49 +0000
Subject: Re: [yocto] Behaviour of .bbappend when default script is not present
To: =?UTF-8?Q?Beek=2c_L=c3=a9on_van_de?= <l.v.d.beek@student.tue.nl>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <AM0PR09MB41483E0204895E44F51AE10BAC6F9@AM0PR09MB4148.eurprd09.prod.outlook.com>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4642DA102E325C002B178EB1A86F9@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Wed, 8 Dec 2021 10:29:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: 
 <AM0PR09MB41483E0204895E44F51AE10BAC6F9@AM0PR09MB4148.eurprd09.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-TMN: [HXO5vWRI83JEqW0WMRaNlyVecipszc4TPzgoNu1/XyrzqTRtpwSuzcSwPUqcRive]
X-ClientProxiedBy: AM4PR0501CA0058.eurprd05.prod.outlook.com
 (2603:10a6:200:68::26) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <db87c06e-2c72-babd-a00b-e5799c8d9c8d@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b7bb4a7-22fd-467f-c475-08d9ba2d47eb
X-MS-TrafficTypeDiagnostic: AM0PR09MB3635:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GJkjuGxP+FIMDprhknxsB2klqXnXUYzwxEaToJB10z/zYilRP+ZL9Mw6Mzwohy9wAQjapHi3vRL6pL4e7lMHBSiqpBnCysaiJrSbZReiZha2jStRid3RCFZ/ND/I1BvA1eg/1zQc4hW3mGcl7NkcUpXFV2ShAwgZzEJIvDGfbPMXGmRG4zPsK4t8Cet6JmnL+iIO7u71kQHqjfqDyp/1Sh/eRIhO+RrzPEHdA9GC0vhzFd+iCIiMH7JBSL0heLyPCABJXY/DvL+ZNLQ2TMPL0KoWvw4NbDLw+fcW+xFZktrATGxNcboD8ObK8vlx2244Id+9ugtRa3UztEO1SRDgFwrglk1khBE6mLp6Clq2/9VUjDVGmxZYZFndFnm1+wFwbEzci7wz/d2lVOJr3FHsZWHogm0XAalHr/w//E/Us1kRdViqB91E2xNO3VtjkHM1jl3fuXitOwb6B082g/UpIMxDuL7klj7ESEM7hdzSExJkl7k5MgpcASNdIZcXCq6MIcfRGYAXFNaQjuBo4Jowy2ASnsijXwCaKbKv1QJCEuU2YhS9pqWu6+UnJ8d/YDDZzqQVc+9kYh0mFy8+TZjaY+W+e8jEpXBcJNAEBriOEy1Eo/ibgO1/RCAIbw9DxKoAGkHmXN2M0o+62FpYyvoGA6WB6dU0ldK3T06GDZ6E7BU=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0o8+UopF26G7oaMpr4AhzEjOUmoVY+PPwO3fxQQ+bUIYoZ4qNszvIyyt4L3u?=
 =?us-ascii?Q?ODA2QFgrd2A7YM/QpByn+Vr2pDprowTATezB3nuYkQVnVFAoP4xjuTRd5rjq?=
 =?us-ascii?Q?acPCWcgcD6LGZJdkS5gzRLtDIaldZAlowxZCvCD9UGqDzXehcyuc/RTYesEN?=
 =?us-ascii?Q?aXOVI9/gXlGA7wVjjAozp8ZW7Neqy+UVebl1bj1q2TM+Ul2BlLXrQD3mZXn7?=
 =?us-ascii?Q?YSQD3jrcow+4rSMlYZQRUDVgtKuE8FU0jDy8rB0UhEJ4qoP4C56lO4HzOr9g?=
 =?us-ascii?Q?DenQTj0TejvWuykOzd9CGuEA5TJeezO3BVLzQwWKEh7vIqElzhzBAojagkzf?=
 =?us-ascii?Q?DwPnN2IQhwR2rmARV8sKPw83Klc6SIFaWnPWQvcgtnP6md8opFWUKbCDNrpN?=
 =?us-ascii?Q?StBMHB7xyOqIlZuJAXRxlVi8JhcSekaQFsuRHufEVPp9VKJPKP1600CMySoL?=
 =?us-ascii?Q?RnIjpgulxGxeisIFo9Dc634hREA4NKoaN7deTARixRVibN/vLzFLp/mEp/4p?=
 =?us-ascii?Q?JkJDei3qQlKCaDawCf1VbF3gx2g9IIps2haL+ROpcKtr468BmJRPUCk9Q+zU?=
 =?us-ascii?Q?6yR4eVNwbFunB7wybJ/b0dPjtauXDrK3wslsQyrB2FNomxYXF+AsPzA3vC98?=
 =?us-ascii?Q?3Zi0OXTj3lAHnx7GpCzeesNDO8uBbBLj/WZjqXXjLLCAVvJ3A7XUBXVo9qCb?=
 =?us-ascii?Q?o9TVwFG8W3SoPxFLkBW0ZsM8qzXkoRYpUtvs75CaVYXcug0saBPTZyykPK90?=
 =?us-ascii?Q?kU7rC/ZA3BoijMisQjMLPYW+e6/Qdj9UZcPzmEwl9vAK6RJIbrrERH9vbtaQ?=
 =?us-ascii?Q?+IevgHrW9FRAoCi6QfEgjZ+jJlKVPDaONqwb7oCN/sJUnvRjn+cMI5Gt6RbD?=
 =?us-ascii?Q?al5nADmgM2oD7PNs8cp/YoTXzegLD7DOWJa4+eqNz43U10edKAIBH9UYcqea?=
 =?us-ascii?Q?fZo+icQBl22obK0Vn2Hsc2DI9qLozk7pSYRJiiW7FtXudgGa6JaolsdzPesL?=
 =?us-ascii?Q?I24+ritOWe7E/7/hq/800zfOeQ=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2b7bb4a7-22fd-467f-c475-08d9ba2d47eb
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 09:29:49.5219
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3635
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 09:29:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55514

You can either use BBMASK in your local.conf to remove the bbappend from=20
the parsing tree or set BB_DANGLINGAPPENDS_WARNONLY in your specific build.

both can be added to your specific kas yaml without any issues

[1]=20
https://docs.yoctoproject.org/ref-manual/variables.html#term-BB_DANGLINGAPP=
ENDS_WARNONLY

On 08.12.21 10:26, Beek, L=E9on van de wrote:
> Dear all,
>=20
> My situation is as follows:
>=20
>   * Using Kas container to build and enable easy CI, I have 2 .yaml
>     files creating my 2 builds for 2 different machines: RaspberryPi and
>     Qemu.
>   * Qemu yaml file does not contain meta-raspberrypi repo
>   * Custom distro that extends poky has a script rpi-cmdline.bbappend
>     that appends script with the same name from meta-raspberrypi
>   * Rpi-cmdline.bbappend is used to simply add 2 kernel commands to
>     cmdline.txt
>   * Rpi-cmdline.bbappend contains line on top with: COMPATIBLE_MACHINE =
=3D
>     "^rpi$"
>=20
> When running the Qemu build, Bitbake will say that the default .bb file=20
> is not present for the rpi-cmdline.bbappend script, which of course is=20
> true, but I don=92t want to include the meta-raspberrypi repo in my=20
> sources for this build as well.
>=20
> It seems like the =93COMPATIBLE_MACHINE =3D "^rpi$"=94 is only regarded a=
fter=20
> parsing the script, which still requires the default script to be present=
.
>=20
> I=92ve searched the internet but have not found a way of achieving my goa=
l=20
> so far, so my question is:
>=20
> Is there any way of having this .bbappend file present without the=20
> default .bb file there? Or maybe there is a better solution to add=20
> kernel command parameters to cmdline without using this rpi only script?
>=20
> Thanks in advance.
>=20
> Kind regards,
>=20
> L=E9on van de Beek
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55513): https://lists.yoctoproject.org/g/yocto/messag=
e/55513
> Mute This Topic: https://lists.yoctoproject.org/mt/87584950/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outl=
ook.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

