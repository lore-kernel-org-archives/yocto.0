Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AF4EB64DD
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 08:58:05 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.49])
 by mx.groups.io with SMTP id smtpd.web10.84025.1691571481592162025
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 01:58:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=QhMrrjd4;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.49, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbli5Hh7fmBOhWtO+ccj+qylQhleKGnXgz4zHAUvecF/Sy5uah6GjZqcxrc3zvmVUe0XNFVrIiWOlPeHbWKorvED9Peb6wlqskOrn8k/GS/iuH1S4EQy55omOmom9mm6Q9Ii2ZRE4xAVFC8iu0r4bOZxCSI18NPi6eXziLWYZrdRzc/ydJExkeJtf9mVVv3Gtl+kGiySCHyGiAwe+MLzWZs1t4v638UvtBASGfEWFHcM8AqRPX0EiiJnwlj8GrFdtiWK/J284jcErY6Ggxi36kriKnJKL9+cktBr+ExED8WpapxokJ5AVkIxyLdcchidOWIZewZG0lzG45K7HuPaAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hY2s9toaV83i+BY6Zq60A1mKuZLbpQjugH7UvyarubI=;
 b=QH3mK05irXx3SgrLh8RegkwhSPR0Y/+YgwKIU/Z6N9OsarjyQSoiqvUcWePVvom4WbH0qmCcD8Wjq2wtapnz3Vy7ORsTozqewDVFopUcKEx5pKD4xanS2+bsnU3PU5LscBFVmSomC8tnHc7hWRQz2xJZtB0UdQIW0q6+Ghc7Slen3Vtbs49qmj8r9zGLpXEneH+ariJALnfb47KL466P/rpMXbydR2EGQYvaa5s2jgiby55t4IznC8bM7bVhqznSOt5Sm7PiVds81F2lrAMstUKQ+C2el6O7KqlNmRSf9jNcBV6m1nHwv+467UGwBlSPB2MY1BHIszFM2FuBTTQGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hY2s9toaV83i+BY6Zq60A1mKuZLbpQjugH7UvyarubI=;
 b=QhMrrjd4bTYPhw6DrhxKeuJgGXTSCThEYtM57ilOXzjhlvAmMcqr8EmLZelFgNDzHY5xHnZME01F2JrC3WW4cRFfUFdywHKFwMV+T66brVUf1PX8PpsDprTQM9f0w/lK9qtFD7sKW+3f79oSlr1foN0g8vJFgOq6ZEx90RN/wADJ0IgiE696wsk+5udzmHi8KCCptntRo6roUTz3vKElKPRhjz/FC/7GwckKa9oykLUD3Fi50kFjOoUrNzSONQnOsQnRZkxs8VGBo9uimvODRJFVm0dvc4rElEAkD3fb71+UhuJ+D96uv0L3lGBctBwCRvd7WX1YbwjRKYCEq5aKnw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM9PR04MB8413.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.28; Wed, 9 Aug
 2023 08:57:58 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::e14d:c030:8ad4:e916]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::e14d:c030:8ad4:e916%3]) with mapi id 15.20.6652.028; Wed, 9 Aug 2023
 08:57:58 +0000
Message-ID: <816da8e2-652a-6249-4888-bb89721d8fe6@theobroma-systems.com>
Date: Wed, 9 Aug 2023 10:57:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Rootless Podman
Content-Language: en-US
To: thomas.perrot@bootlin.com, Khem Raj <raj.khem@gmail.com>,
 Stephen John Smoogen <smooge@gmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>, twoerner@gmail.com
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
 <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
 <CAMKF1sph5RK+OJnHHtP7SLWC=nYGNiJmgJ_niDu35ct+NVKr_g@mail.gmail.com>
 <7979e9bc21010ffbaea6a60434b51aad1384e4aa.camel@bootlin.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <7979e9bc21010ffbaea6a60434b51aad1384e4aa.camel@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM9PR04MB8413:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e5b9906-3153-4ec3-d4a8-08db98b6ba30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UuIerEXrNvJLXxqv5cOaHklnUoPcBFkSn/R2LKoofaBiW0liDYP+zjoq34ig8+GBVXPnyV655DzGL7TqhA6x5lrUQ2I71g2lokeYG60C1jJHeEvCoTCW14qXbxkVpXZetRYmdppFqfz8DzEQ/sVDIdD8sStZP77otWn81ZTkrSLsXMdP2Mtpixe3+iHefkNvxOFU7ON0plnqWfjrLyRAP47V50qmKBdl/GaXeGuXLoRt3R+7iBo4X69CheT16y4Xn6bCTw23/zUghEIuBtMhNRP8cni7FkUVyG51n3PK/4ZfJtnZzk3wAH/pAL4L4r29ezQZWMO6rjRuhIYA4WYeUCToqnQQrkhhMx6q5bbDuSw7k4bduc4B4DI6EjIwR6nG0WF7/Stz9FGiDQ/tXiJXJx0wa+QqJ8cwePmY0I1SWbYJyIwvUIvAtsYEzTvtTQMS7YDRY0CYBo0ybmCjv3iZQOoHQUflVzrgss6Gd76R/sKUH39ENQqfcvNcBfpE+es2naF8j1l0PE9H7edBJXJcrukW+hp3OacGv4xd31qsxoaOtsf90tu5JsBrCGLMxelgiFpGRURhlbWsc0L2LcnnZCTsroYKLt/tdZYFr67YObo8TjViz+O2ERi6cVFStoeK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(366004)(346002)(136003)(39850400004)(1800799006)(451199021)(186006)(6506007)(6512007)(966005)(6666004)(86362001)(31696002)(6486002)(478600001)(84970400001)(83380400001)(2616005)(110136005)(54906003)(36756003)(316002)(66946007)(66556008)(66476007)(4326008)(31686004)(41300700001)(8936002)(8676002)(5660300002)(44832011)(2906002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?STNxOFdvNTFTcGgzYzErdVZqdTRyTEh5bDJkck05UU5pallkZmxXUElsWWQr?=
 =?utf-8?B?VVByeHVwV1hPdmZlNnNzMGtXeXUxN1VPdFNZbEpUbEl5dndDNVMzV3JnZTg3?=
 =?utf-8?B?ay9sYysrUSsrTVFRc1JnSVRkTG9xV2FoNTRJSTBOQTZkZVpVbWxlQUY4U0Rz?=
 =?utf-8?B?VjZwVDNUSW11dUF4aFR2YXhQKy9xbzA5TzF4YkRmVlJicFRsQTdSM29KazFM?=
 =?utf-8?B?Mk9jb0E0TWtWc3NRQkZGZ1pLdDJrQmNxbHh4WGFCWjFkTUNWZzhXS09oTUJm?=
 =?utf-8?B?aXhNeWZtRW9uTXFnTGd1WW1EVjN6dXdSS2d4ZXZ2UU1VVjFwQWxMV3h2Z1Nx?=
 =?utf-8?B?UHRCZEZsOEtXSnI2dUU2OVVQSFZsN2FDUTRXdmFqVldQcy9CcFd0WVZVVmo3?=
 =?utf-8?B?MENKdzJlRERQdllMZW83SXhDYzk3V0JNYWE5bFV3ekZRZ3dUSUdGRm95akxB?=
 =?utf-8?B?QzVhWHdzb0JiejlZejVvVlhhYnpobEtNQUJuWHBhSEoyY01XUTR3K1ROaGdT?=
 =?utf-8?B?bEg1V1dCR3d6bVVrTzAxdnpFdUJobS9XL3dPam5FelMrUm5LbWtNUFJhQ2Nk?=
 =?utf-8?B?Mm9Ld0gzN2pJOVBjYUhvaW9ObzhTVlllbVNFdHBPVFZFOHNCb01tV1BjZGha?=
 =?utf-8?B?TmpEZENWakEwQnd5OEN2YlduTzBqc3JTR3V5UHdMY3h1Q2xhRXVnSjhaVUpO?=
 =?utf-8?B?Z2V5WUx3YVY5ejREUmJONGRJWG01Z0RUbWxuSEtIWG42Zmx2T1M2Y1FvTDZF?=
 =?utf-8?B?ZlArYW8yN3YweVlSS2NmbytyRmphdkpmeDR5b0Q3UU51RktpSFdhNFIxZ3di?=
 =?utf-8?B?QnBkWk5YcUJVQ3Eyc2JPNjlObnVwc0puUWRaeXJvbk56ZElUNDAvbFpXbjNS?=
 =?utf-8?B?STgxbEIvRDhqQXdQSEd3TklsUStBeGl6dXV6OTFlY3pzSmprQWVTR2xtMGt4?=
 =?utf-8?B?ZCszZDM3RU42bTEwOUpwRkhPL3FwdjFkODNPKzcvSEEzTktZNFJTSjlJb2lV?=
 =?utf-8?B?ejJ0YTVhU3kwa3dUaUF1ektqOU4xSXY0UkVLcjV2RFYwOCtZT1E2SVQveHdO?=
 =?utf-8?B?eXVBdVNBdVh1Q3hYQVJFY2JzcnVoUFVFSUoxclFuOStzS0xMRk5yc2JlbE1q?=
 =?utf-8?B?OXN1MWhWOElGWTRLOEVjVzFjeEpwRjc2NmhmZ1BUZ3pWNHlTNmp4WHphRWp5?=
 =?utf-8?B?S1Iyc0FYSXM5M1pZUk9VSldYU3pPSnp6MGFJMG5qcElhWHdNY20rbUUwZXlY?=
 =?utf-8?B?VDhRd0pZZlNhMm9mbk9VNkVRQWMwSUNoZlJvem9YaFRRKzAwU2hjRjZzV2pm?=
 =?utf-8?B?aEtKbEw3QTYwYjg4NXN1ekg5SGtjbTdmSDZYYnBoKzVrZ1cyV2FVUlVuWjdL?=
 =?utf-8?B?elhuSDdDbjlObzYvek94QlZjdkZ2UTZIbWpOT1JoVDkzNTJJZWxaSzFaOWhS?=
 =?utf-8?B?S0pjZFBwMkNaT3B6SC9lMG1yS01CKzQxTnluRXdUR2xZc1YxQUJDeGQ1NkNQ?=
 =?utf-8?B?Zm5QSlRjUE1MWEFSUFBiamdldkY3RWRQOEF1cnZMUEl1QmxyN2dWM3VFbXR5?=
 =?utf-8?B?SEJxLzlwRmZEV3RlNlhJTnhwc0krZmVYQjN6bm9KdTIveWNuQ0JZYlZETlFz?=
 =?utf-8?B?bVBnWStkcnduN0NxOStQUkZYMGxvVjN1cFluZGNrcVErWVQrQ1hqL2d4cEVW?=
 =?utf-8?B?UGxEeVFQOWR0VWpqdERoRURVZk1GWW82MnFSSXB5RzNGQUd6S0lnODNVQWlD?=
 =?utf-8?B?ZFhvQVc0VldxNytscHl3SXdLeTZrL3J4M3lZRnRKaFg1cm5mQU80SHdkREcz?=
 =?utf-8?B?YnB3ZkRvMnlpdllGMnNveVhIdXUwR3lBNWJPc29kR1pHOWgwSU0yZkcwdWc1?=
 =?utf-8?B?OE1NVGZwcGFvbjJDOGpUSkNTL08vZyswQ2ZQeE52OG9HSkIvenkyL2xycHpo?=
 =?utf-8?B?bjc0WHpuY08yTVlLemlmdHdPMDFJMFJxM0R1R3BqbE5jRW1nSGFqQmxETkJF?=
 =?utf-8?B?ZFRxZWlHY0hSMVhUa3JFWm8rdSthQzdERGhtYmFCSEVlUVJmM0tEeDZyR01j?=
 =?utf-8?B?MmVnNmFJWVpqQjNjMnZlYUtEWHZMZ2lZUVg2M0JWd08vcTlocnY1Q1piZ3Bv?=
 =?utf-8?B?V0NsYUJLWlNiM1M4Y3JsRjJhbEs4Zm10QXh5UlhqRFdsOExKRExsWVUrcHE1?=
 =?utf-8?B?VFJPZkQybWRicGVBQ3M2Y3JSUGYwTzZnOXdoVU9yckY4VWUvVEFRT01pNUlU?=
 =?utf-8?B?QW9iZ3huUVZDVkY2ckErRDZkQ1NRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e5b9906-3153-4ec3-d4a8-08db98b6ba30
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2023 08:57:57.9840
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KrbMtVGtk36xSWYkcXfHlB+Yyo2iKj4rXHrxHFuCF+olcE2h5FFj55kzj3u8f0DAtEsWyszDbsWA7Jjjf2Wu6HmgC5Kasohk+0QuqU5p08/aZT7J9kw3EISNvIZEFSmn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8413
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 08:58:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60762

Hi,

I, too, am using rootless podman on Fedora 38 (and 36 and 37 in the past).

I use kas container for building:

podman run -it --rm --userns=keep-id -e USER_ID=$UID -e GROUP_ID=$GID -v 
~/work/yocto/sstate-cache:$HOME/work/yocto/sstate-cache -v 
~/work/yocto/downloads/:$HOME/work/yocto/downloads -w $PWD -v 
"$PWD":"$PWD" -v "$SSH_AUTH_SOCK":"$SSH_AUTH_SOCK" -e SSH_AUTH_SOCK 
--security-opt label=disable --tmpfs /tmp ghcr.io/siemens/kas/kas:3.1 shell

You may want to not disable security labels and do it properly though :)

--tmpfs /tmp was essential. I don't remember the exact issue but this 
was raised in a GitHub issue by Trevor Woerner (added in Cc). I found 
this discussion in kas Google groups talking a bit more in-depth about 
this very topic: 
https://groups.google.com/g/kas-devel/c/Dm3OcBS-yao/m/u5CV9JrVAgAJ. See 
some other discussion here: 
https://lore.kernel.org/all/5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net/T/#m381e450b92ac0a313be522600bbaa14a50b1fa78

For some of our debian (bullseye) based servers with many cores, we had 
to modify the pids_limit for podman too.

In /etc/containers/containers.conf, have:
pids_limit = 1000000

I was convinced I modified some wiki to list this somewhere but the 
search bar didn't return anything unfortunately :/

Cheers,
Quentin

