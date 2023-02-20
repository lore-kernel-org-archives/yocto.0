Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2925C636CC
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 11:57:59 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.73])
 by mx.groups.io with SMTP id smtpd.web11.9064.1676884453231610945
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 01:14:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@amd.com header.s=selector1 header.b=TtqE/c1y;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.237.73, mailfrom: kris.chaplin@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEW9P91DzBZJCyhps8dL7NJT1BKPKg5lz4N7OVD9wnBZwnJi3glteAFoS+xpxl2ueZ4pC+pWYzGYr4s502G86NdhMdQHNQMi3STHV+NF7nEGI+i55Yo8a+u5Bi7GYxKpe1CxO6Fh06eYAEYoTjlwVuVVX7AkydbLEmRIgZ0ePhlE6REL8G3+xvtUSEVNfoGE25JDdZqhnlZiIUiXep809FYaO6ucmWBdlh63GjDrZjAX+GjednrpetsY7i3x/stdF1LR3YOH7YyQFaCKLzub3ogMXBPg2qMx38+Sc+g5PI3hoi0TtZYkJgf6sVYuRNchrpHjdXnI9ZZ2fRbzSZcsCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0R4uva6QX67oToQ+Ppvmrik2PQ3YuYW/axpgGJO5uOI=;
 b=l7Qkxy0892llO+/kTz3zV8zQ8ejKfeyIatIqptsHZwDmR3XsTTJZOpkML4W6Si5DZjnYYayPQJ9cv65wP3Uo1l8nf3/iKRPLv6HMOy+FBcQZGVzRtBpcuINYRwKZkjKCJaAyFLpL/JPD517b3al+IAL4Mc5qL2EAkOZrPhh0jF/foIiqWW7qvyj1PjPJSwXYqwgdkBWHitGvZH8zqYdrjbv6ZtYndOk1PnR8/+Z7nygoP7A8i0DL72EZil8tY1F/Q+srBFacDHQsdaR6kNpbqoKOBjsr1r7PnqOWGEfwQHWVXox6xg6BEKzfkskeRn/t7QGoPlc0Hw5wm6jyaMXO9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0R4uva6QX67oToQ+Ppvmrik2PQ3YuYW/axpgGJO5uOI=;
 b=TtqE/c1yqMJEXGZ8FdAyyXNs0YydOf7n8HmWmwbBMOiNUIMguJ8DKMHoL2J0dBAg98kqSm4sFdD50MtrW1ZMBDO93jTDbuq1SBw5s7EFU4DiAX/gdHZAgxDCdR1xkBiCCXVXkwgbOcFABa4aJjSp3fwBs7rwf4y+eTJ6HAY4iPo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3398.namprd12.prod.outlook.com (2603:10b6:a03:aa::24)
 by MW4PR12MB5643.namprd12.prod.outlook.com (2603:10b6:303:188::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 09:14:09 +0000
Received: from BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d]) by BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d%7]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 09:14:09 +0000
Message-ID: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
Date: Mon, 20 Feb 2023 09:12:26 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: yocto@lists.yoctoproject.org
From: "Chaplin, Kris" <Kris.Chaplin@amd.com>
Subject: AlmaLinux 8.5 support in Langdale
X-ClientProxiedBy: LO0P123CA0001.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::10) To BYAPR12MB3398.namprd12.prod.outlook.com
 (2603:10b6:a03:aa::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3398:EE_|MW4PR12MB5643:EE_
X-MS-Office365-Filtering-Correlation-Id: d21c6a66-1bc8-405f-9ed4-08db1322d2f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PZelwY8MUhKckaVK6ygAZ3FhOMY4M3kBeNuGG6sGY61WO/x2MMKmrmnbKoDdcoWVGNTpb6rQp/KEoYzchf7ozcJ5Hjnqt+vbKqXUMGZXo1lpHk95tuVFVyG9LJT/FVK41ophO0Y5l6nzWDjScfXZY5oUeAfBwixz0Gg+kVAkWWST8Yv0W7xD6enzi/0k1uSIrwS5NYBaZIpYvdo/HLjqKWFbzjmcOLgiCnU1cyvhxoXkZ7bNAKxtxx6XQMmi9TL2IkGPek9uuKpUdOvYeY2i9cUqbwOZ/hgv1D/X2Rba7CQd1vC9mVi+lgt8thMuPLK6fVuwqOoN8g2mbyxHwuR0RySQ+cjgevfQh3V/kKtgfzwDR8SmjCKzrRnWpI4nV6D4BUcyeXuqnpRmElS6q7v6XBup0gt0ItTRJQBqeqYREfKlSEgX2RuzU7FJep3yIQVq3/JTV5FtNA+Y8vaetbQwAg8u7exx2ns+88yJX0fFIRhKkFWjy92XSG1gWTfV7Q6tvjV7tF+ow+7epenzYjOQavVDPD7uspbklwF+AF3GEFt97csNV3N6v1qfMXEsvWXsi6D0Xxf9jCkfwXCHvmW4i+RsSg/kCn5YVJ2Z5ufTRAkhnyCbZcGk/1RCCHwqzncrRy5cid26LWOTgHc8bvJE4lpyRDZa8yl+BkGGZ9ICy5DS2rRKvw/qfafXMTML4hFFkhejWdwLF8ArK4VsT7Me1LdEhxhcu1kmjFJuLWT4sII=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3398.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199018)(478600001)(6486002)(83380400001)(86362001)(31696002)(38100700002)(6666004)(36756003)(26005)(6506007)(6512007)(186003)(2616005)(316002)(4744005)(44832011)(5660300002)(66556008)(66476007)(8936002)(66946007)(31686004)(41300700001)(6916009)(2906002)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?8oY2iV+TTafyMlz4uYpmziKiwNwuK2sVTfewRz/qpzFn0fkii3GU+dBAnrvu?=
 =?us-ascii?Q?vOeOUCPzTQXIMA5xGIOk6ktVmH3KrP6RtemmJh9YHcibF8yp+RycXAwH/HGs?=
 =?us-ascii?Q?hsE0Xx7zatBIJhWkzozBVRNwCQQBtReYMX0AgDr64HFd55PzSKgXK23vgE8t?=
 =?us-ascii?Q?crIdrH3aCC3O/pdzRHvvDgvQkbqVzsugWymXcaWHaY4YgGBdpodB/ttzBXv8?=
 =?us-ascii?Q?Vy4B1Nxt5PEKGAgoGL8nbaycx+qhJ62ZCFg3o1Txil1CzDtPuo6rOKi1yDHy?=
 =?us-ascii?Q?EQb8U24CQJdvKAS/NKqUhet55XT0F/oMVeXo70p/N16Mp/dLfMXWCOsY/Qaa?=
 =?us-ascii?Q?Fl27adNvMiCK7U33bHTH7fxLrtbLzrTXqX+X0aaCd4YsXCoWel3hx3SNIWmj?=
 =?us-ascii?Q?mY0TudRG/D2JAElUFdicdStppXutJmMkzm1gbqC2AcILE5ilB8Q0YEOcyrX8?=
 =?us-ascii?Q?0hTgWdsHkCwdRgJX/oFfuWkcU60X9Yr5TmE5XgFWOWVlmXKZtisiBtbO0fbb?=
 =?us-ascii?Q?ghaZS9h76WcASbi8rC3YEszDtgsjRLtpPHryzwRjj2wUF1Ur3S2KprIb8f9J?=
 =?us-ascii?Q?Q09ZbkkdRt8vw5EGK0bim/YEZK3Hqa9EDlum/zA30WSrIYwAotEXtFjAnmbr?=
 =?us-ascii?Q?L7hFEFo2aPL/Kl6sK+46qy7Zu8ZPhmuhb/HUX86Grq15GyvJi5HKbbblHDpA?=
 =?us-ascii?Q?35/DysN4nz2SzEau7pdC6dElIKhPBKYv2o1L0uzuS3N/t2RvQX2E3W7Ib3bw?=
 =?us-ascii?Q?+PRfeW6atnzE/acXANSVt5QOcscQPNyJJ8rPQ39i871Qz9gzyELeGzSTxOyb?=
 =?us-ascii?Q?d/qTsuVAjkV6rclk8J7gI0x+S1Wa0JYUQS48vAiOT+zMcdp1Tj++xBN85ROp?=
 =?us-ascii?Q?qmc/CZ6gDOuXZKyFi7WtzNPy3kL5ByqSY4sybV7VSsKTMLwmyw1bXTmOiYZh?=
 =?us-ascii?Q?skwyk8Xrh82h+fxKNTunZ/mLT6OxrgNGkQYPHmn4e2aVnn00xM+6NQxTNp0V?=
 =?us-ascii?Q?1Sz0Ppc9AfyKsw64wtd3F969eZ8F1A0HGV62v6byrB2iKG/uWpZU2IEkwhJW?=
 =?us-ascii?Q?YG2nq0Qu/5y7t+ggFd/Z49WH5E0hDl0frv6RSfnBhKeYiIIabAfzxr0+rSAC?=
 =?us-ascii?Q?ASVv38QsFZ5UjKzkLj3Gy3LfaLN6DGuxM2RIzrtbSdHxyW8IGskrw8RxRjfx?=
 =?us-ascii?Q?wOFQSVXOTAFE9BqYoN3yL1MtSB5jMqo6enPngaglw94JovfVWVWQUHsHo2Wd?=
 =?us-ascii?Q?OuaVqqZHhq6rMdhf0hzNj32ILujPn3/vkTcCrfp6R1Y2JesxkXKlbRL3jk7L?=
 =?us-ascii?Q?j1gQ+yL1NyyGVv9cAVmzbURnRVEP3aeowkS0oOyLRnLgHcXL26BfvYR8C6sn?=
 =?us-ascii?Q?kxG4hJs1W2pN/UfRDJaxpnDR00g5PLtTGSkMTpR+KkV2xugyAPm4SHmlFAi8?=
 =?us-ascii?Q?d8O3EZ/kwjlExpvGfKXNtUxyfqPbZtxxC2OUIBRBrQC4ErN3e5Cm/F38Redh?=
 =?us-ascii?Q?rlwBSonVaeF6Uwn1QCvSABYb5fIQy//rovbjflaZPErSUzOGXzaL04ZWXixV?=
 =?us-ascii?Q?lI3+pWXqNoQ3OJNV4GDgWLjwc5F6G6y28KEavTPK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21c6a66-1bc8-405f-9ed4-08db1322d2f1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3398.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 09:14:09.5204
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JT36ixxLNpNtFlFAj50pLc5XcKJSqXWXdPvqEfc7woyx+7fq8jwy00tPCuCmwnOX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5643
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 11:57:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59250

Hello,

I'm working with our team to test supported development OS for our=20
AMD/Xilinx PetaLinux distribution built on top of Langdale. The official=20
supported Linux distributions are Ubuntu, Fedora, AlmaLinux, Debian and=20
OpenSUSE, so we regtest our flow on each of these prior to advertising=20
support.

However, the supported version of AlmaLinux for Langdale is 8.5, and=20
this is not available for download any more=20
(https://mirrors.almalinux.org/isos.html).=C2=A0 The earliest version is 8.=
6,=20
with 8.7 being most current.=C2=A0 The 8.5 isos are stripped from the=20
mirrors, so url-games dont work here either.

What is the recommended verison of AlmaLinux to test against Langdale?=C2=
=A0=20
Is there a plan to update the Yocto release notes to reflect this?

Many thanks
Kris





