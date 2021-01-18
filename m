Received: from NAM04-SN1-obe.outbound.protection.outlook.com (NAM04-SN1-obe.outbound.protection.outlook.com [40.107.70.54])
 by mx.groups.io with SMTP id smtpd.web10.3231.1611008697676572807
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jan 2021 14:24:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RijCXHoX;
 spf=pass (domain: windriver.com, ip: 40.107.70.54, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsIyhYLPxM5UQPMyKHf2hDkPewGw7rT7DRkf0kdHOOPD1Qj9cxqGjX+9UpWioJm10M4lS93wfGTj3d6b1uGbIjYn33aM4oOQ7Ytp3qvoRejexXa1mcz3JvfTxjlXecZoUoYCHwDj0AIXfjvJGpCRPBAnQwUW2Hhdd0K6P7BQVlHdGd5As5PIlgfAOB5VndWXUd+bE6blMEuRW8qKXBjQ5Aygsf33XxA+WtS4xSpwcJimWVsH/99vuhqQ0RMfSTw6fXA9eHIPpSIbrzMJUWvXZG2fOKsppJ2i3mq0vYDmmTGT29Vaik/JmlWUIsbWsHqNvAjOBjjUlA8vs92i2LIPPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mG31xw/+153qFb2slG7gNDzSydYSw9pmmcHUu91AHZI=;
 b=HPqjpK6eu3WMo+mJsvy3DujtoSFNWv4ZjnOGHbHg2ukDNvU3D2rjVR1EKjQw4eXEGK9WCbMTxu7X0Zhdq8F2qd64VbM+47WRXuMdE6Igk+VEZxjhwPvuczoL38jOLLWgit/Sg1buVt5DbxsB2/fZD7hYEw6bRq1VqgPFT836rKJaVIaGCSaJ9dEeTNIfkpeFjA5qA92rt05g3emRNjHXctpm9vTHoXiSNV4g1l7B7qqtnA65FxcqAgFFw9J6iYW+fnERX3aU1ibi47zJE8ZrIyCQRAVsqV4guovAoiAhR8qV9CJHcTxhPuZn/gz5F2Ps496uLXzdkEqtgpVWdC2K2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mG31xw/+153qFb2slG7gNDzSydYSw9pmmcHUu91AHZI=;
 b=RijCXHoXpnyMMZQUKWTI5VtD3vhX4yPiEXS2H6RK/0E+30oRu5kmndq9pOk6V5O7rUfpK71TJbXxGzppdRfAdVtCG++5Ktyad2p7Lv5xiXK9APwzZOvjQpPpUV8w89UXwtlTrmK7+pAkxPTWsyAIpYWJ72W30bMAoENWgtyVXaQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB3039.namprd11.prod.outlook.com (2603:10b6:805:d3::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Mon, 18 Jan
 2021 22:24:55 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3%9]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 22:24:55 +0000
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
CC: Randy MacLeod <randy.macleod@windriver.com>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Subject: [meta-browser] Chromium build Dependency to native libatomic
Message-ID: <6264e8f0-c59f-5c0e-98ac-e1972d73d21e@windriver.com>
Date: Mon, 18 Jan 2021 17:24:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: SJ0PR13CA0228.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::23) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by SJ0PR13CA0228.namprd13.prod.outlook.com (2603:10b6:a03:2c1::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.6 via Frontend Transport; Mon, 18 Jan 2021 22:24:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 617fbbfe-8b6e-4b55-c326-08d8bbffe1d3
X-MS-TrafficTypeDiagnostic: SN6PR11MB3039:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB3039B008B6B31D5C33279CDC80A40@SN6PR11MB3039.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dSedsS7XfeypN0BNZ2C3S6xA8C+Ts7rzYrmN3h2JsEy/b/B6syOrZQMaBwlQHnx5bDhYyIPF83q04zc8nRBmr8RaiWr9vtRQfi8hSEb01fsAkFsbbXU46qfHsvkWyxN0IJsFzzJ62tOjFefQRj0PdNJglffEmdXsyayhFEhbtp90LOWGVDYakWjcoaKRe4C1W7Q0xUMA/q7UPidKiE/Fck6qE4ppSXQ6SozuZCodo4EGgbYHQRw5XPsBB08CSQNLJ0Ue4wh7hfGkbiyfBUk0cMahuyG7ey5PqOadMy6WFyFRmv/lq/JUm+gxxa3xuRILAFKH3tCvvUUNVjNkldh9cQNHPm/CsjhV4a2Amtg7DwtFs0sEdYVM+14YGLUu1TN/1xs5rYquhbn/nPp9pJcEvCFkxWPKh0h3OD4+Ayzc9FYYy80/hdaRW4jXGpTJo+FJlNzXxZZcxgLv6QQlHjzQQZksqQriY1ltXlDqNgk/UkiDItwLId4FP43u28TXObEsQyl85u/WzgULlviiOs2HqHSAkGb4veJ357CFRbfqneLQ9r7w+pQkylpjuracuAqx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(366004)(136003)(376002)(39850400004)(966005)(31686004)(186003)(5660300002)(8936002)(2616005)(52116002)(316002)(36756003)(66574015)(16526019)(6486002)(6666004)(4001150100001)(107886003)(16576012)(478600001)(31696002)(2906002)(66946007)(86362001)(8676002)(26005)(956004)(4326008)(66476007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?r/PdLfeiJkLAo6DDJKPe5LyhgIgDAIWLwT8VPr55Fl51dfgBS+1wYKyfef7I?=
 =?us-ascii?Q?6sAgQSZGkAuaRQHCF7eAntXxrF5pjWF5jLOOyKEp4AD1CiQfoGecVgXwLNxJ?=
 =?us-ascii?Q?tC3wW9Jf6nQoZXUFc0ijh2PmuwPa0Hd6QXJbuGKzl87W2XElmkZmUB7t3rbO?=
 =?us-ascii?Q?co1C7XBaJrG+yRLpe6/LB7ZIH7xBCTfw81Fwe8VX5OH4ebSP93uE9v+jkfaU?=
 =?us-ascii?Q?swKqqgAk+a/V7uCiOxtJdqh1LYoOcrFIjPCuhZVvLXMs+n7xfKy/2PqlXakN?=
 =?us-ascii?Q?xIHYXobr9+1i9ylUNEbAY5l2EyoiWhbbcM0CCffNZRgoDL6loTH9FG0150/4?=
 =?us-ascii?Q?JoPyycAM65CbNVFOeHJAC0nNNTpoZZrELEF3Z2s0DDY+bcsiBguJQnGnKxvi?=
 =?us-ascii?Q?eLNNXtJv+BDYTNfnv3pG5te3K2v9CmiRgvRjb6oftrxgQmpM2iGZBtN9IZE/?=
 =?us-ascii?Q?Gs+gak+yluLv/wElQJUQhjw4TDRmp0stvJ6OVhZyyoeVAWx94f76IRsXYzfz?=
 =?us-ascii?Q?q8U2E23BMbXsbu72k7GSoQO5LJ391kk7gd8HJbqOHwpgRw+Tzkd0IDmmB9SR?=
 =?us-ascii?Q?fYeAW5zkh5uOOkcyvDsX8u89VJ0xThx6QsLaG6mc8n4je4X+yb6sa/Jb4Lf3?=
 =?us-ascii?Q?Qu40JlxwWJU6SWK9wGYhQku6PFe0GfYsuL4XlgJx4HKW6pVZzNrMSwffLD0/?=
 =?us-ascii?Q?Nuc0z4ehKjMYwu6O3bJKq6v3S/98TTlEtRoSAMBbzNEZiji2gxi4A6+NYQ4W?=
 =?us-ascii?Q?xwbIBYLLHGAxwRUAYDj/+vZXBGzTE6M30ylTk2ldBolBUMwwA1cTyELlcDZh?=
 =?us-ascii?Q?rQCq1NBkvC4CMWqzWB6tD6HqwmNeJ6s/wMpUpXcVbpdNa+AQQK73o9WZKcrB?=
 =?us-ascii?Q?BgE3LXj4XO1fIfVqEsjgQim6Es9tYEnp40HeCtEpoVwGffLhK1xJK3u4CpwN?=
 =?us-ascii?Q?q3HB4eGtXJQSBfZQGRyCNaoUzxjz38j/ajQguMuhL90=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 617fbbfe-8b6e-4b55-c326-08d8bbffe1d3
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 22:24:55.4653
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNGcUps4clWYsMoqagZHYr/JpxoOwhiQki41AM7wE/xwKIeHcxFUzuTMvwH2eGujnMFWsfEK6OciTtleF04sRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3039
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,

Is there a fix/patch to chromium-x11 (meta-browser) failing to build=20
`yocto_native/brotli`.

This happens on Centos 8 where libatomic is not necessarily present on=20
the host.

as far as i know, libatomic is not listed as a host prereq for building=20
chromium or any yocto builds.

Issue is described more in details in

https://github.com/OSSystems/meta-browser/issues/431

---

Specifically to khem:

There was a discussion thread on yocto's IRC, was there a resolution=20
other than a manual installation of the library on the system host?

https://www.yoctoproject.org/irc/%23yocto.2020-10-29.log.html

```

khem=C2=A0=C2=A0=C2=A0 kernelsandals: yeah i see, so its using clang-native=
 with lld,=20
so one option would be to try add -fuse-ld=3Dgold to HOST_LDFLAGS=C2=A0=C2=
=A0=C2=A0 19:51
khem=C2=A0=C2=A0=C2=A0 another option might be to add -L/usr/lib=C2=A0=C2=
=A0=C2=A0 19:51
khem=C2=A0=C2=A0=C2=A0 but clang++ should have been able to find it if its =
installed in=20
/usr/lib=C2=A0=C2=A0=C2=A0 19:52
khem=C2=A0=C2=A0=C2=A0 can you try a simple testcase with clang++ from=20
recipe-sysroot-native with latomic something like clang++ hello.cpp=20
-latomic=C2=A0=C2=A0=C2=A0 19:54
khem=C2=A0=C2=A0=C2=A0 and see if that works

```


Yi Fan



