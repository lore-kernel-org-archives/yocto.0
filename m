Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24558C4332F
	for <webhook@archiver.kernel.org>; Mon, 13 Nov 2023 14:49:10 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.55])
 by mx.groups.io with SMTP id smtpd.web11.38613.1699886947942068853
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 06:49:09 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=NrG/YCqz;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.55, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oC5Suac73JMuOssy5x9/SP3hkUzLOWFHXRTng4wl+wm1x0REXShFH2uVDr/ZYXFRmJmZKvFnSCBU/9XJtWxZP9BOpIzipg785m/9kOP+Sk7MlFzTY5b56rLbQJsnRJevyQ6G2KwR99ZN6yvZGqR125M8+WyqGL9pCvXjZ8PqUJ18RP+xlIRbyNgH9wNtmbsw2ejqFpqRV9Zw0RNArat9tvDGPHzRDkmkBfl2e7NSnr2cqEBHGrGN4kFJ1Dk9s/CakzwuusBT/m3t2qvmWAz4nR578/OnKnLviw/r8tp2V/k8AdfrJ0B41bgE/m4R+URZSrJr6J0ZRF8JU65jR1ArBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIJYp52Fy1Byi9RA3ZkUynGQQ/d/ofERWh/95qR2k9s=;
 b=GsKXl6zkVqfbLa/sRIMRhdIbLci5avNTG8yegmCnX0tzwryvkVsCK6kSFlGoAxyIsCNklZHB/tPvOuU3tqfRDBZlyrGvYrkAOhWwnUREZsnkaYOvkh5AdMXCkX9BSmYgH35azUg3+/p4KAkXx24FzUElNn6uYN9z/eSCZ/N7XIdMru5hpn4sftF+hy2igt71avJdtr/cR9fmmpdyphx+2rLPTUpX06pD7GsL1BZJSdX3MiLmk4BQi7cYTM+yPmwuyrlcddVwCEDrFAgJM/6u27R1MgekNSP8zVwUeImE6E/Y0OIvXeIc/eBGCc2lAWiTSVo1kT6tgIPO/t6IUztzJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIJYp52Fy1Byi9RA3ZkUynGQQ/d/ofERWh/95qR2k9s=;
 b=NrG/YCqzEjtBILPJpkijV3UYDTecIFevoXdt6zbxZ6G5tH9UrbZFRuArPbYnIESLxmPNoiYoY+xo1NMmU93I2pEPGEEsNlk5UFBwnalv4/dYT0MJqvj5ZzOhQdG+/Pf085leFhPSpjq+q6XHjaASmsEzAb2cGv5t9CqFaLTZCFennQxl3scnx66S/3T73HcGmtZekMKhiEtyagHtsGkO2hKxTZkD8XXe9UMrImCdD2eWSQX59ZG3i23XqT83CAECG+obEIblI23Wo34mUZtwqTJDXW7+7x6x6D3uqxtZDGpxm+24JQECU9Tor22MtROt3p3BzpNq4otfIk4IfTV7tA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8865.eurprd04.prod.outlook.com (2603:10a6:20b:42c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.15; Mon, 13 Nov
 2023 14:49:03 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8853:974d:615:508]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8853:974d:615:508%6]) with mapi id 15.20.7002.014; Mon, 13 Nov 2023
 14:49:03 +0000
Message-ID: <73995915-007e-4e1b-8375-a6462d4e1122@theobroma-systems.com>
Date: Mon, 13 Nov 2023 15:49:00 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Problem when adding own tasks
Content-Language: en-US
To: raj.khem@gmail.com, athragared@proton.me
CC: yocto@lists.yoctoproject.org
References: <y6J6.1699704274762559511.QP1U@lists.yoctoproject.org>
 <CAMKF1soEhAsuVb=+SzVbb0G_Z2qXH9UGvBoU6OYr09ABAEpYAA@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAMKF1soEhAsuVb=+SzVbb0G_Z2qXH9UGvBoU6OYr09ABAEpYAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0136.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::18) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8865:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f562245-6cd1-4ffc-db26-08dbe457ade0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FLcL2uNFD8IfYbxvmw5A1kpbUmhylhA0fo0uKIM7ADnU1gR7irunVT9jHCpGuUwh1evWbSk++sa78KXF515whFzy4Pd57tI49w0mypgm/aUP9JHAb59AFRG7SRf18IvqZ8JviWLnmqZFakY6LfmJgyOc+D3F0EK6sEWsqgFmeFPKaVV0TXxmPKl8ITDq4qBEFcGSfchUCtpjQ86j5TKKehYUJ4AYj/UdTFk5cxgsG0kJIYACe0hAch/TNUZTGeCjfeMwG/34S8W8DWKpDFVlZFjxej4Wrj23egIj/QU5f9mafH7ZC15OJwT39wT0p46UQ2GhNNxK4vJplHWuYkNankkcGHJj/IhAPrcL5nwqEyNGxAdeFcC0QjuW0gamVkkPeVsv8hR9NPow2X+yxBml0F7RE8RuEaL5URA7eRWsu0rjmzZicmaRLUv/abC1j8IASai2sZ1DGpPheusVg/7T3BFq0v5PiYfZ52f1AKITcCfGZ8x19VK5uC7I/UvYkmA11679DIcPsjHgLdggwc0DSYH9La+I2dAOf0i8egBiGpdV4BUefS2YpPlHCNZoY92jtoKnPCCoC8ftIlqlSqYgK1CEJz5y1n7oB99vYpmrq6jByesI1+Go0QT/8Vy/ysMz
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(136003)(346002)(39850400004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(2906002)(6506007)(53546011)(478600001)(31696002)(86362001)(26005)(2616005)(6512007)(316002)(66476007)(66556008)(66946007)(6486002)(966005)(38100700002)(83380400001)(5660300002)(8936002)(36756003)(8676002)(4326008)(44832011)(41300700001)(31686004)(66899024)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?a0/MaMeBuI0I1HzpEkBYUUYlWbUjzIZrWikHr6Ll8ZRHl7yCsdM7i3O2il8/?=
 =?us-ascii?Q?EKiKieORPbFZwszvjGXaeEaTChWqOn3D8EAWqI1tQfDHcgmnImP8E1AoMvyX?=
 =?us-ascii?Q?wxN3hgZ/l13y8Nw8DZSa2EfhZ1ErB19U8khSVgTsh8cGoGUy9ehc6AKSpxT1?=
 =?us-ascii?Q?sk7TmcZGKsktGoDUiUcyq7vGxk1e+APFyqKrgOvXj0oLSqF83eS8ia5Z9IuA?=
 =?us-ascii?Q?i9ErwwfNT5kPhCiEaUMdfaCBVOXuQLZ0YFvn3InucORWfNWCD3jtocqRfluf?=
 =?us-ascii?Q?voRPO+MewQs7ake5TjbJvh1UiSzMYv4AY6+Ow3y2z8lLrpGNj1QQ59AKeXmW?=
 =?us-ascii?Q?L3GT4NIhZ8ZopWIkUXyeMFodVvY/Fxhj/RGezKAKwJacdsO5a1r9hgM+IjUa?=
 =?us-ascii?Q?okA5oxJVxiVWsK6wQyzG0ECTsTFHr97fcZjq8QezyucaoCL8z+uo1MnTwn82?=
 =?us-ascii?Q?amO+mPOE2W19F8ryQQVieG2dzMuQE0sQzdwRTQaQp96PbNeveCI5qUeohe8K?=
 =?us-ascii?Q?nscC6ROuIkBmmh+NICoS0CWDEhZdI6EWCt0iS3mGzokZ+Y9anWMIW66rgCil?=
 =?us-ascii?Q?7ca7yumgNWMNN4YL/m1jDxCWKiF2ZGyhN6qeUayKlVKy3i4erfGNS0tAeb82?=
 =?us-ascii?Q?vcrag2QwflanWNVkRfEQfGIjDaiAKJh03xklwQeDrG1sEpUZomM/6WAAmG8c?=
 =?us-ascii?Q?ZaeYRQbR/uqACfR6q8MjVIVHS/rHacBr8ehUL14K7FpZ48dn67GEASHSOkS7?=
 =?us-ascii?Q?/Dlcu2YMPwqK5o3iwXu7gtXrBwJIkQSB29seGRh5//TJSXY47NqO+9FhfkAH?=
 =?us-ascii?Q?aAZfUm+FZEJPlwCSIf9ifgf5m+S3HtQ9bmKpvHLT+PwqB7dhpzmK8oUxZVOK?=
 =?us-ascii?Q?OSOCBVOMBujY8BG0ma/dRMxZCh2Sp2S4wDRo2eHrjRGjZJYWuMnYvO/nadvx?=
 =?us-ascii?Q?fKoWxPIq4KOFqrSSoWjkun8vhwy3WRai5YUbCr6O+yzT9uH9LTc6wLukviWC?=
 =?us-ascii?Q?dWF7dWKN0M6gxMr9Q5zQ97N90bDW6418HzHozJOrRt2HcXv7Z6KX2NiSbq+L?=
 =?us-ascii?Q?ruf3SjAK6MpBXtQ1+NNGOP9iXePXX5wpuNPqViRkIqVK975bz38GFV6m2Cxm?=
 =?us-ascii?Q?b3MY5qQoB/vUxtnV2Oi6cDYwxrkdYiGPXVt4IqMkh4Zga26+NTJ5xSfa5sBu?=
 =?us-ascii?Q?/j55L+amztW9qiRfsAmk3R9QKnJAPgBADWcsrk2EyJlxDSYc3K2b7yYp8xr/?=
 =?us-ascii?Q?356azP27faisOFYC0Rd/1WX8QSvDnKdTRtZBGNf/HwGxbQ2eBdRmoyHuGB1P?=
 =?us-ascii?Q?DdcVKFKkxHqPusEdr5B6JaHtyga5Jh/qlVuU0fT6sH5L8ms8ck8+ZrpLb0mj?=
 =?us-ascii?Q?t77pXrhuVO2VPWOqIp4wtRL5hFHSKqRNxQcfqGnXFC0BjAeMA7OHmtjwUztg?=
 =?us-ascii?Q?XQcKg5JNkJ+YW+WYQwbXFlHGuC3O14VwNLuSsFznJvAPeSXSs9bFG0YT4lTr?=
 =?us-ascii?Q?ezviXs0mgTH2YCSpIAP1pU/ZY6sfbNIU4g+ol0AHFGUzQLwfpiUOQ1Pc/ho2?=
 =?us-ascii?Q?WgDI+sXqbiTnIBg/N/utf7niaJhzYh8WxxEFF0teM6ApN2EaBV2sq8Wi0FTm?=
 =?us-ascii?Q?hHsRtw9Pc8gE4uUfTDsGuIA=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f562245-6cd1-4ffc-db26-08dbe457ade0
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2023 14:49:03.5351
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NRN4OdSGwPoboD6QYiBE0g4tWi6pzIX6MwHWtbHMlF1MbSuoghI+nd/dBRIuQ/iSuYXfYS/gKyRB86pUx1TF2LJh8XD7PyLK2P+znC8aIk+OEC+5QeKrnowK9drP0Hpt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8865
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 14:49:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61667

Hi,

On 11/11/23 18:05, Khem Raj via lists.yoctoproject.org wrote:
> On Sat, Nov 11, 2023 at 4:04=E2=80=AFAM athragared via lists.yoctoproject=
.org
> <athragared=3Dproton.me@lists.yoctoproject.org> wrote:
>>
>> Hello everyone, this is my first mail here, I hope this is the right "ch=
annel" for my question.
>>
>> I am currently using the 'Kirkstone' branch of yocto and I have encounte=
red a problem. I have written a .bbappend file for systemd in my own layer.=
 Here I have written my own python function as follows:
>>
>> python do_my_own_function(){
>>      # do something
>> }
>> addtask my_own_function before do_install
>>
>> This seems to work most of the time. However, I would like to execute my=
 own function AFTER the do_install. However, this does not seem to work.
>=20
> Code says _before_ but you say you wanted it _after_ do_install is
> run, so maybe change the directive to before, moreover, add anchors on
> both sides
> to ensure its run in certain order so maybe say before do_package
> after do_install.
>=20

To add to Khem's answer, a task is only run if it is required.

A task is required because some other task requires it or if the user=20
does (e.g. via bitbake -c <task> <recipe>).

When one adds a task **after** another one (taskB after taskA), the=20
latter won't be run unless explicitly. This is why Khem was suggesting=20
to add "before do_package" because do_package is a task that is very=20
commonly executed during a normal package build. It is not necessarily=20
where in the build process you want it to be, so think a bit before=20
inserting a task between two other tasks, since both extremities matter.

Cheers,
Quentin

> you can also look into postfuncs/prefuncs
>=20
> do_install[postfuncs] +=3D "do_my_own_function"
>=20
>> If I delete the build folder before building the image and then look in =
the log.task_order file I see that my own function is NOT executed. Other p=
eople on stackoverflow seem to have observed this problem as well.
>>
>>
>>
>> So I wanted to ask how to solve the problem or debug it further?
>>
>>
>> Regards
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61659): https://lists.yoctoproject.org/g/yocto/messa=
ge/61659
>> Mute This Topic: https://lists.yoctoproject.org/mt/102524578/6293953
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schul=
z@theobroma-systems.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

