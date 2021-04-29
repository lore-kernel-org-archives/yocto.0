Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7754.1619706705048307924
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 07:31:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=XbNeMyRa;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2071.outbound.protection.outlook.com [40.107.237.71])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D1E4338C026C
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 14:31:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxYJcAzH17+bqe97J8vOSyiWs+JksZs9YxZt8Mm/3C7GjbnjMYRqKkidZcplnafiuyhxjW208W9hxOsIn2QYq+KXe7sHb5lYNQRVXZ0v7fsTBNoFn4ogajErxUxwMjYw3m68PxuRh1eo1/Tomwi84ohDwVgikMtaOLDoTID7MYlEGiXHF29cLlra5tEQBfS4gBfyAmzdfDsdJGzTkfGVQKs2AuMmCXgPl7QrCfanNxmYhq9I63KD4CsWcd+jRrKd1JqAIfONi7hvzNF0v7Ar9l/Gmwmpmf6cdThclBTuUTz/vwYusyU7lryZe6A7p0WqI/DjrcZvDU/Zbs3vMA5ijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ahgb8J4XwUyGgLj9v96Bxac4SmMhP14o+ljXtLpZfv0=;
 b=cp6+ruMv0Xt8S47AFswIKqhjB3GQBUAvqzR+A3zfFUUezRCXFRbJbvTnLgKnJX9JhebzbVN3Vupup3FxWAyH+szZmVScU/GLyUdkwTDKVamdyq/J7CdEuMOWMzGgC7H15asKLay+lPe5O9mFlhpcsAdi2RmGFyak6z2Ct64IQ5g0UQM0gAj02xviTMg8adsbtL0t3afnjgXlWfllB7eg0x1HQjzZkO0iKETJhU+JJzPzG9iZexRlqvi8ID9/uau/a/6HvaLrvk3xwp5wIhlR5f2c0lSWVX7DawVveY2qgh1MroZQ+ISp/C2RZDhHkm5wlS7STu3gBaG43tmnj+28Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ahgb8J4XwUyGgLj9v96Bxac4SmMhP14o+ljXtLpZfv0=;
 b=XbNeMyRaO76c6660527kgXXK8UtFzwm6Wv7syBXLxJyQNFqk2Fzw2gTPaXDnSwGVk0NmJLafIgsyShVSm7zftkVS0onoUQWsKNzHG7qVRJuEFcwInBowo2uqBkPzgAzBEKxeGOL+k+ptic+lXL6uh6GSkYV/ZbA3407lDDVrfec=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4076.namprd11.prod.outlook.com (2603:10b6:5:197::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Thu, 29 Apr
 2021 14:31:41 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Thu, 29 Apr 2021
 14:31:41 +0000
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
 richard.purdie@linuxfoundation.org, "Wold, Saul" <saul.wold@windriver.com>,
 Trevor Gamblin <trevor.gamblin@windriver.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT -- Minutes from: Apr 29, 2021
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <99323ea0-50f3-904f-d164-cdacfaadf9ea@windriver.com>
Date: Thu, 29 Apr 2021 10:31:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR05CA0035.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::48) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR05CA0035.namprd05.prod.outlook.com (2603:10b6:a03:c0::48) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.8 via Frontend Transport; Thu, 29 Apr 2021 14:31:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d4e52f3-bdb2-4ad9-4419-08d90b1b812d
X-MS-TrafficTypeDiagnostic: DM6PR11MB4076:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4076D443510146DB15DC1159F85F9@DM6PR11MB4076.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zBNUrZnUGy4FxuUkioNJjLXgmWHfr3hvj4IWACwuVXTfiT4dVK7Cg+SgVk6weL7pZq7eO5a2llVvsq9QITTJ3Dvhy2BTXgkuKuZgT04DJAxov/QHTZT39vd9pDob6MGKawvhRVW4ZQ1hHDw0r1ZK8lXWIqZA0L4T88c3UZAKhs9ID6c1EykTk6NQk6lbdNc4zTmYHSz9Y2dVVPPIYQ8AeBsKhr+DNUwbUWIjNL9Krptba7IPFST5xFVyPWxereHfH3nwtqTAk3SV9c9SZiQz+4aUkH5nJsqPpvUyKvW5HhiLfl4fbArR6ps1qGTT+yl+gr+C8tfC1wsq4PSfM1qGW879S4FkpPirtBVYPZm8BN0ngoMLz9hQtmckc7uCIZ7acnS6l+hOGnvruXHUzNmzvj8g2e3AFZC9doIoxxD9KpvETx72rNI1Jf0aV8w/ks+k4h3GFSPoC+ox2jTBFgUfbkljDE7A1pifIhk7G9yZKCl6c24b40oM+E54RolC5f9s+PAlfFnLVGXr8yHXFnn8wxFhnlA27Ne9h3TlKxjlK5OcM/k8D8TZrtz4LVdXxmGv/hUK7NtulnBRN4+39aP3eh96R79ZYHo/gVoKp/9ewdrLOJ47RTGDVQPgjxusk16SfpGAujtmwDJPkoUJM5n4hi5v878PZbZ9Q3LE1RomSMyeADZP6Q1ZU4rJqu6EDBSpjUa+gNxnrzF7zg/D3qb2/ydZsSki6fU7uBNcByCmzFA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(396003)(39850400004)(346002)(36756003)(31686004)(186003)(83380400001)(2906002)(6486002)(52116002)(38100700002)(16576012)(16526019)(38350700002)(110136005)(6666004)(5660300002)(316002)(2616005)(86362001)(66476007)(956004)(478600001)(66556008)(8676002)(26005)(8936002)(31696002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Q2kyV01RR0xuTm1GYnVzMGQ4K3JjZ0tQT2RlNkY3UUZObERiY0ZwZ1NBZkVZ?=
 =?utf-8?B?WHNVcmQ3VDFSRXVML05LNnp0MkdpVXM2N2ZNcndlNjdaMVlnZ2Noa3VJNVp0?=
 =?utf-8?B?T1ZhZitTdkRQZllrTVRwdUxYejlaa010K3hpZStNYk9najV2T2l4OTgwQmgy?=
 =?utf-8?B?bFlCcW56eUIxbG5rUjdpMXd0VWdmTXpWQ0RkQWhaSktwMXNIbzVRQnIwM0xM?=
 =?utf-8?B?dU44VGVjMCtENXg4eGZraVZrNWFYVDViN1Y2UFJ5WmdWMm55N0ZHMWJyMnA4?=
 =?utf-8?B?eGk2WElHZFdJVVNaNkgwR3R2NUtYSU9ZSElSRWl4dysrcU9kQUF0aXlYdTkw?=
 =?utf-8?B?bktnV3Q4VUlyL3ZkbEN6M3d1M20zdGFRZE1ONFJuOC9waGRBVzBLdkdiMGdI?=
 =?utf-8?B?bGx6cGFKZUYxcjJlRkhjSlBwZmRQMEowVnU5VUt2dHhaYUFSOHpyMTIvYTZV?=
 =?utf-8?B?SjNRSGtDZ08vUDdvUWhOZTVwdU1LaVJ4MldKWG5WSE1lYUgxc0RienM5MVdw?=
 =?utf-8?B?eURHMXpoT1BiVGdjc1U2Z0F1MlFVRGVOWnBjRVhZZzdsWXFJVllmem10eDdU?=
 =?utf-8?B?bnNNQzFmdWxrbzVkV1pXQUlBbnNsdTVlbXJpNUZaUG5kdTlMeEE2UFo3WjRy?=
 =?utf-8?B?dkxvajVrczJyZ3I3TlRKLzEwQUlmQkdQZGp3YWJzamkybzRBckJaRnFncVM2?=
 =?utf-8?B?LzZ6YWFPOTc4MmZUMjEvYUhGbm4yYUxlS3BCZG10eENmRUgybXRjNHdpTm9j?=
 =?utf-8?B?UFNXMnhYV3J5WE9tY0xtci9jZXZDTGxrS3NDRHZySjJLQUNrYzR1Qi9hN2Qx?=
 =?utf-8?B?cDBFZ2tZSFArNEMwcjRERlRoSktQa2l2VjgybWZQUWNybFZ1TU5QYnBpNWpv?=
 =?utf-8?B?TVp0TUg0TGNzeHJ0MkxCSlEzdEFLREl6Z1FiRklYMUJzTmdhVDNrcG5EYTdS?=
 =?utf-8?B?RXVDQkpwUTZ5akRCa01DM0R0bFVCbkpqVjRrQ0g0ME91YUdXUGw1NnFGZEZM?=
 =?utf-8?B?Wm1FTTZTSUNQTXFNaThFMzk1bHcxN1g2R0I4bldkVUVqUktxTWVoTFdzOThp?=
 =?utf-8?B?aDBwUWVIZzZtcmdmVnZDOHNZa2h1MGlmMXhaaTAwMThNc1hsNWlWczBUb2ZU?=
 =?utf-8?B?d3BDamwwVnYyNHdOczh5L3pZaVRWcmVUNXRIdWJldXpSOTRhWnU4RnBsY2RQ?=
 =?utf-8?B?d1VzcTRrMzBaQ09RT2ROV1FaZWpRYi9CYzJCZWF2TTlGd3VsRUppdmp1V3RG?=
 =?utf-8?B?T3lwSEs2clRjSFB4RWpHMkZlMjd4T0UzSE1vK3JsaHdpZEdYRjcxUXNVTHov?=
 =?utf-8?B?Q0lYbThCUlEwQ3gwTXVMZ1QyMUNFM3Fxb3FZZ3J0ak1YZWhaN2pVWEtSTG9j?=
 =?utf-8?B?T014Tjd1VTF4dVh1WjAvdGVKalhGQjJVcm0xNjFvY0FsWHFSRkdkU1FzYVlF?=
 =?utf-8?B?SENaTjJyYW1kbEZSb3BEdk04YTZhd1A5UllXSGhub2orS1pVSXhGVDhFRnho?=
 =?utf-8?B?enRjVGpsME5UdEpaWDcrMzJCUzgxRjE3THZQVHBlaEZ5Z094Um9yQlRsVU5T?=
 =?utf-8?B?T3dOSVdNYmdYMFZIOFVBSjUzZ2RIT2NDMDVPTUNIbVc0SjFEVi8ya1NoaUM2?=
 =?utf-8?B?b3pNZG1vRzM2YkRpV3pLL2ZhdzQzOUo4ZFV5OTBUa3BTa3BOMDRoeTdPMG51?=
 =?utf-8?B?TjlpUitoMUIzM0k1UVZjRlliTkJ6MjRTNDNvcDV5WCtJVDhIWm1IWG5vdld0?=
 =?utf-8?Q?mfQKRIkWAn5R6EZeyiHbGe4Hm0Gc+rDYxY++Mvm?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4e52f3-bdb2-4ad9-4419-08d90b1b812d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2021 14:31:41.0344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqSkkw2E9T3QLWKeJKG4OR0P4WdperyAOD1hMgattwRy3F71UhMk5RyIcfZdd0RIvqZLL3RbVdOxcfm9YCXdSxkTl3BAvrP3Yw7WrSQLU+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4076
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Attendees: Richard, Randy

To Do:
======

Data Collection: (Sakib)
------------------------

1. run iostat if it exists:
    iostat -y -z -x 5 1
        -y     Omit first report with statistics since system boot, if
               displaying multiple records at given interval.
        -x     Display extended statistics.
        -z     Tell iostat to omit output for any devices for which there
               was no activity during the sample period.
    5 1: monitor for 5 seconds, run 1 time.

2. use filenames that show what host, the data came from.
    Currently we have:
    - testresults/pkgman-deb-non-deb/2021-04-28--02-31/host_stats_0_top.txt
    - testresults/beaglebone/2021-04-28--01-08/host_stats_2.txt

3. We add the tail of the cooker log but we need to know which
    cooker log this softlink comes from so add that as a header
    and to be paranoid as a trailer in case the softlink changes while
    the collection is underway.

4. Collect the logs produced on error.

5. If the tail of the cooker logs isn't sufficient,
    match the start/complete logs and report all tasks that
    are not complete:


General topics
--------------

We talked about the job server for make-based recipes. Trevor is going
to look at that and if it goes well, perhaps also look at doing 
something similar for ninja (or samarai) builds.


Just as we can do co-operative load/compile management for make/ninja 
builds, we may have to co-ordinate I/O intensive activities.
RP mentioned that there's some task-based process limiting that
is done in the fetcher code. We suspect that the bottleneck is
around writes to sstate-cache and other write operations but we
need either proof from logging or to make a change and wait days
or weeks to see if the error rate has improved. The first option
is preferred.


Why is qemu start-up still slow?
Saul added code to use the Qemu Machine Protocol (QMP) so that
we can monitor/query Qemu. He had a bug where the process seemed
to have started because it's pid (file?) was available but the socket
for communicating with qemu was not yet bound. Adding a loop and some
short sleeps fixes the bug but it's odd that even with things running
from tmpfs, the start-up is slow.
  - is there a logging flag or code for monitoring the start-up that we
    can use?
  - if not, can/should we patch qemu
  - do we need to also copy the kernel that qemu is loading into tmpfs?

  - Alex was (is?) going to instrument the initial copy into tmpfs
    to record how log that takes from beginning to end and perhaps with
    additional detail from the middle-end (compiler joke!).

It would be good if Saul can use QMP to help us understand what
is making qemuppc slow or hang on startup.


-- 
# Randy MacLeod
# Wind River Linux
