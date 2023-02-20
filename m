Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D6C6C05027
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 13:12:20 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.79])
 by mx.groups.io with SMTP id smtpd.web10.12290.1676898550061979205
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 05:09:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@amd.com header.s=selector1 header.b=yEve5J5D;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.93.79, mailfrom: kris.chaplin@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ws2OZT3BlgCfgXVRXVVyFSNj8S0RpUfdXoTtMUShdJZo8BEqwR96uh0tIl/Pk9xImJ80OivGFENTKwoxoW0gDh++zmsyneHpeDzeuftzxIlJu7z1lBjFHl4m2MMg4Uie4REI2E0yzNFTiN81p2PKCu9gTuOpxMRRiRwj73tYNWpQB8SFn2V10V/wlynCiWc8hkI8PMoUa/AOnBY8f5bLf7J651P0LtjsPUwavgJzSdwQQFivQvQP9cQTPSW6lnW/fyXzV01q4PHyZfwXBFIQbJThfBVAY29oBN89M/GFHq+3u81zRToUN79TkBML7e6l0HOPTH1kN+pLEtVCbQGVhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VgStiNtNGR8Fd5DunVaeR231MPyikrcS22/re80GUT0=;
 b=IIoIClrD+954f2WwXxMEvq2ULCImIh1c+AZnENQcvYB8Ba5u26HJHIkdPbIVynk1kecLxLs6LJVpWFXAJJlD3G7+ERiZkhbKkbca1ot6rEOp95M3A7wn0FfQmU4dDOVljcy/wL/lCw5wrwCkGCisMwvhDLhmLdGfh8K0OxvqpC3jGKw57bwrZGcCaEGxqC2grBLZOYHcorHo666blzfJQT0R+INmHNXedJoM/yjS9qmicgoYoVceVRf3IezejUey073Y9DawpBYvpR6uB5wIHJBzECXYkLh6S1RtfNC8xc9E4S4NT0aJ4t4VVT8n4r93ISq4YA88SX4xhm3NG4ycgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VgStiNtNGR8Fd5DunVaeR231MPyikrcS22/re80GUT0=;
 b=yEve5J5DBkfsgpe84/g4sQiEqey2vVzv7Ac9Vr6kCo6cWJfOtcSQ223XQcNYdm5mlQsBK4c2WjoX0zoEqNjvwyTD02cyL67fPvgk9OOWhWTSianYFKEjN4Hlt8aDmX26y6LNbkR+Z6iguf0/rB4SMW2/7Kuu4im412jgmNpytDA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3398.namprd12.prod.outlook.com (2603:10b6:a03:aa::24)
 by BY5PR12MB4951.namprd12.prod.outlook.com (2603:10b6:a03:1d2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 13:09:08 +0000
Received: from BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d]) by BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d%7]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 13:09:08 +0000
Message-ID: <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com>
Date: Mon, 20 Feb 2023 13:09:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: yocto@lists.yoctoproject.org
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
 <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
From: "Chaplin, Kris" <Kris.Chaplin@amd.com>
In-Reply-To: <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
X-ClientProxiedBy: LO4P123CA0150.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::11) To BYAPR12MB3398.namprd12.prod.outlook.com
 (2603:10b6:a03:aa::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3398:EE_|BY5PR12MB4951:EE_
X-MS-Office365-Filtering-Correlation-Id: e2cb1bc3-413f-4091-083e-08db1343a62f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pxMqeJmRtK9qdhodZ7nkZ+PYkGTOxd2jZRt6MefSdmcoJhOoQKT62C3rcFBUYdo2cb5gEoGzupvqVzh5tmwWZQedkvh5f/6nzw15Eds4IHRj7UOOtqzYd4jGcBwAM36BCs3s8eL/9Q7pdGjA4xvekv8jabT6JLDZVUGkmdpy1X8CpHMb2X+rYI0vICMC0IpFNl5wbSm7lKIJqzx9Xpz6tZME8u/WipEEIPrJm79+MxH45LXd82nViXpFC58eJ1ONmJosYHjEfUV05B2qV58nIdN1PWJ/zNGWi9oUVYZCK0lKMo/7kPlH0tru7kVc4aMacQtewnUUfSU99Rp8/Jkjl333v6OR47u/99rR+c/t3JNoNBFEIO7VPbTqy1um15BRKM3W3ZfB6ItuAuF3rYuP8QOPqdaTNozxhw0F9kg6jsfWj+qMIUOWSAvjX1upLoyy3KkXt+VClsOtjFoaasolT/FNDUboHpEuyB3qn1wOYX8FYWQhK/tdKVM12yGOhuGEPvPfXSFcaiPT+w+Dx84qjwKSWMs2FPbZBAZYUniHWrJCLS7zR2XJfWoFbGzr0wXgCj/7POalznrfyFKGAuRULR4drtdRioLp5xTIBETNVs18KBaPN5mkTLWnTZz3ut5c04tMAQQdR36NsUwcu9FwzGcRz86Rx3pslaMZ54XmLYKre50Ja2kbVeuS0QzE0bTaqOy5yN2j96etPDPH8q5W0iAniHJVE9eCPbje+hw5tH4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3398.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199018)(66476007)(66556008)(66946007)(83380400001)(8936002)(41300700001)(5660300002)(316002)(8676002)(2616005)(6666004)(6916009)(4326008)(6506007)(6512007)(26005)(186003)(478600001)(6486002)(31696002)(86362001)(36756003)(2906002)(4744005)(44832011)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?F9dnUWNl9NCcjIZ0szrAxYJf79lAacuC8Q8LvYHrhOEBr84/c1snx57rTfg5?=
 =?us-ascii?Q?KRscCUZCZxZL69nIqsXce3dyQ5wilO5OEWi6d9597aWDcxIqgTqPeLwbt8j4?=
 =?us-ascii?Q?BsvhDnMBM/kgn9QkmzZDLKTWf0mYNguO6/3ZO63ptG7LwBvWtNLO97oUY2XX?=
 =?us-ascii?Q?CWKCNe8O/Yk5Ey73+KurLM1ZnNp8EjfJSho2ZLG3hfNARWczas8XuBoFgs72?=
 =?us-ascii?Q?11JCw6avfEJKoFDVrTkvscM2ocY7jWaXFL3XKK9seajJdZQettkGsEEwH7iJ?=
 =?us-ascii?Q?uUNZP3L3qFf21ME6iS+4hC9ZvHyQFapFWp0LQ/0z6prrEdZKmJZNFO7besMT?=
 =?us-ascii?Q?koFsG/vAXEXiCD3mF1H45cYHuopXpfQJRB031piHaCgCtvGx40TdBBXMW+Kw?=
 =?us-ascii?Q?9Lkqjlpj6E8s4N/heJmI2d1HVrRm3QBFogMg8Dw5N3/7zqrykcqHuhEKNopJ?=
 =?us-ascii?Q?vFgOzrcUKi6tOfOuYDhbBP+GaAMUzh/2hvQyDHaayqypzIMFnC/HK7jlqHew?=
 =?us-ascii?Q?LGVR3JIF/+5lzpS2YvbqvlMMt87ZiiiXWayxzzvbIbcBBkXzo/JQIOzYB7CR?=
 =?us-ascii?Q?WuUD/CnGUKNs85dj8iw22RZ7brP448MsOO/azaTbXVHtK1CATgBU9hn12Vbq?=
 =?us-ascii?Q?rq4BwLjazKR7CLH6jhnqP8r8iDCK15gCLNVz2Eo29bZEaCchoFTlA1RrkcRX?=
 =?us-ascii?Q?i9hQvnOKA2RTYvSQmsWv7P/GsvyibvW2PF+ZepnuIfFvBM4VEhgBeddiwdHo?=
 =?us-ascii?Q?SA6/PsLhJE3ODE6JXJHNu5cg4bHCGNuJ0cY+w6tWcrUat8ZcIwkYvRzortSd?=
 =?us-ascii?Q?lSHrKPgFxAx0HoWkXExLn3Tq0UU0KFI2iW/WwDmO/Odn87d/j1dYn2wUEjh1?=
 =?us-ascii?Q?Ec+KfMwsmYxCmkphCA+jQ8BH3Xcp9xLTue16ycwGUCatuJCchWDwd3/GQizt?=
 =?us-ascii?Q?G/wVPBVLU/vlNS5eXveGAYXDjgfDj1HoyjANMUUPI6RkUus08o2/JLKpj7fx?=
 =?us-ascii?Q?iOPLrlDTZBhd2o7ZLX+gy4sY/J1cv2Rmik2DzVEIFhGAz1lyL0Fn9bnY7EFV?=
 =?us-ascii?Q?TWLXKd6mhJ/5cy/ImTACo3QHYXS+nSujGq7y723R6L3Ri+TmklTB/oByTelR?=
 =?us-ascii?Q?/8djyn2okfdf40ubs5796pe7RPptX4vQu3GiOrva8CFs+IkvpIDKHiJAL9VR?=
 =?us-ascii?Q?ytbi4v5bgWKncW+XgOPSnvedO45diU6lhrgtDQEWFL2OmUdbGxoQeM16FGO8?=
 =?us-ascii?Q?EZFDKEjoZ0dZ4/1OP5Hwu+FNL5XuyDNQyFF31zVkbjXWYRiTdEg/DLRNcVcm?=
 =?us-ascii?Q?mWn/38un12oUesq5RLKXX2sAXtIFlV35WuDhmrvfXSaVVhOx96ktRhi5ldCA?=
 =?us-ascii?Q?aWUkAHWTyBUpaPiqlx8GY4hcXE3k1IQQeIMXXVJFhURxILkJs+BAXD98Fxs6?=
 =?us-ascii?Q?DaUZ3i3jv+yzvcjktko3oFDat09lxoJECqgiEnrTrHb5zRggMNOhXaSvvSSL?=
 =?us-ascii?Q?FHvvRQce90AhF1TDAI+bwIqkVKLRApew4GUj8KaiTc2kZyct4MlA+Hrbzdc0?=
 =?us-ascii?Q?KlTtTij0CpOnMdK4Gs21PPjpkCZswOioB7FNc/wp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cb1bc3-413f-4091-083e-08db1343a62f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3398.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 13:09:07.7862
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sg6Md33UOhamYeQXV6uEQCPbp2490yV1p0HLO7sb7xS0o/yVCc6s2Mk23ymXV5Ol
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4951
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 13:12:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59254

Thanks Alex,

> Note that the list of supported host distros is set only for the poky
> reference distro with a weak assignment, and not for oe-core or yocto
> as a whole. If you do your own tests, and they don't show issues, you
> can mark any distro as compatible, or install buildtools tarball to
> insulate your build from problematic host tools (such as native gcc
> compiler).
That's understood - thank you.=C2=A0 As there were some changes upstream, I=
=20
wanted to ensure that we have as much overlap as possible, so customers=20
looking to integrate our meta layers together with others would have a=20
tried and tested path.
> AlmaLinux in particular is a spinoff of RHEL and thus extremely
> conservative within the same major version.

Yes - my assumption is that we should be ok with 8.x, but we always test=20
against a specific version / versions and document these, to save any=20
corner cases causing unexpected failures.

Appreciate the help.

Regards
Kris


