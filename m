Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.331.1624554618613895593
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 10:10:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=X6JNH1eK;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1809d49510=randy.macleod@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A76BE38C0507
	for <yocto@yoctoproject.org>; Thu, 24 Jun 2021 17:10:17 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15OH4cRn017745;
	Thu, 24 Jun 2021 17:10:08 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2169.outbound.protection.outlook.com [104.47.73.169])
	by mx0a-0064b401.pphosted.com with ESMTP id 39cq2v0c86-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Jun 2021 17:10:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gxtg5h1MgfLhZq1k8YZddHdMxqfPYTRnnVydbqziYeYIqKDtapthMw/Xlw3G8tE455e+iBRxkr61xjre51F0eH617q03TXH1py3eps609U3bdjKXAFGgLFGQGX2E8TYU8xm0K3yYvvVnSmz0XNLp8IClb6yaCeUV+dKIxnDfYSE7HJx5cqo8slKQXPgGAzlK1zNeu4WhDHWGev4ytfdjtwyNvuRel93e9tuUlVfpsF7PxjV0h8/5p1uU+q50A6Lqm1qx6oBexssLjLEon5AiCpAuiCN95Vk2+FW6L3ysLl1wAKuWCmu6B/2FBSPZpwqYnucO/r5+MhvO1jGisO8muw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QK3Oh+ClFuQ963mMcjyKmspnvV7pPkxKUequDWYNZjk=;
 b=R8AmG02TOaRrulKMncBZfrxMgw2/aB/FUVl+BGWIOAr/OjvYna0Wu22rWHvm6NJJiEPFYqwfU76uuSnOYFegZCK5FMB/qaSIfxvhHOCsv+NxEtttL6qqpHv53Vh9qgwuFv7TLfwCcXz1Me3rXnQLfXUZ8sttynFWPvLJ+5CGk6BEU0xrQfu7IuctxyTxstUpXWWwemiTEArKLsXz8PtCWrZnhdvSxWh1RgqHGUwGLQKmfc4aRS4nrWlQlGgYmMK9hNPwz2kT47H+WrH051K+hahfvEga3c7fLSKxNiSvvtYlRmL2qO9LiCoWAEPxO0bmxH2IESKyVWp2Zv7EgGKExQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QK3Oh+ClFuQ963mMcjyKmspnvV7pPkxKUequDWYNZjk=;
 b=X6JNH1eKEnKyhlbaBA7M4CoTKYT5FehzMHy/TbwaosAH36RUOOAeCpxG30Io/gyTiWNTikw/sw+XCeqPJUTQbxgrw68Gyk8Oidwhm9Mt+juVSI293020J4oZHTp4Ebj/1rlpln7N98yuzFLDYHm2hhH0ZflXLmAnxvBKFrzKI6M=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Thu, 24 Jun
 2021 17:10:04 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4242.024; Thu, 24 Jun 2021
 17:10:03 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: June 24, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>
Message-ID: <139ae01a-26eb-fc25-a004-85ea784f8833@windriver.com>
Date: Thu, 24 Jun 2021 13:09:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::18) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0283.namprd03.prod.outlook.com (2603:10b6:a03:39e::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20 via Frontend Transport; Thu, 24 Jun 2021 17:10:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b3f5699d-7585-45cf-913b-08d93732e82e
X-MS-TrafficTypeDiagnostic: DM6PR11MB4723:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB472302740CEB0E3D162E1041F8079@DM6PR11MB4723.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ptpjV2fU2EKA2Mkpo3dhcKdNjPxz5penXRvlZEJvLe8af5URau3bz8LDNgH/oweRKq7xRkoi4T27bcyCxusCafpdc1FvBOgKqRqXqdNZaq7ki637QTmaLkdujrpKrj8bfzF/XbWHLkM7gGn3DtmkaAZyQmQ6fPMLGxs8rlYvX0S09vIH1IcBBYZG6z5lp4lv9YHPJNXtqyOHzYRHpJccGzNFgoSiUnIxfTsliYN52UdtqggAwQyuPp8dpu6UQGi/YHc7iG16/paEZqr48v+V8D2ww04hGlCey0y0SbFLppUzcnUhs9u04HsyQj5uJPVMPuzE5uvRWc+KfU8LLA8Ei1F1WI5KmHz//n5cQO9QuvMed1E/8SNTzGOXlYdGU7HX6/aaw4YAP4s0QqXUsfh6LGrzR1Ws3sJPKm/LJz/NlNoGQ1S8sB3LwKSVPN4yHWOhEFDxP7/d5ju8MIYuwC8eVF9f0WC+rupBU6qA/DE8uoSxTsn34YqshU8GHOLSVNr5Vwb+KypbJV9GkYf3LRmiP1/9YHiGZGN12dKiw0neBsNmPWtUzqoeTPh+ox7p1Y3ZZseFVXsZIzUHD2VwEDSea134JWw9RUdDTWJ7cbfVX9/zJYRFcHOvP+8xTbOytRnCX+jLZb0YFEgneZyyedyk89i9cbJstxa/+uRPhBMyAfeU4DL5Wquj2vYqrXMoO204Uh7xeULWzGGDPK9U/kJJxf7xh0iheHT/In6LTkgJ6FYuwQ/G29hNNqlhgFfdXeKvvfZEGvbLVol7ZSKlAl6YTqyA+NiqBLgYdmph8rJ9U4H3FApSf5YZ8x+R0IGJe8iXa83kPMLaumYiNYQaM4ew5TSMbpBadPKdNcqTzfjiQ6McfQ+kYOONmXGYFQlwMpIG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39850400004)(346002)(396003)(136003)(36756003)(66946007)(956004)(2616005)(66476007)(66556008)(5660300002)(8676002)(316002)(8936002)(110136005)(54906003)(2906002)(86362001)(6666004)(16576012)(31696002)(6486002)(186003)(16526019)(6636002)(83380400001)(26005)(31686004)(52116002)(38100700002)(38350700002)(966005)(4326008)(478600001)(107886003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NUJJUWw5NnAxK2gzdzczaXRtaG9PV3J3ckZ1bEdnbzlwaUJXRmFqcWc2SGU4?=
 =?utf-8?B?OGJLV3dOVTRZbE9mdDZkNmk3L0NnVTI4KzFqaXllMDhKUFdlc1dMV2tXYURm?=
 =?utf-8?B?Qm9pTTA3clJCd25INjlWRzF0VDdwKzUvYThXMW05YktoWXZ6MmhFYWpraFFS?=
 =?utf-8?B?ZmZYK3lkUVQ2QXlXU1UvUnMrQU1xdjk1a29HbGErc0l5RGFmdHZnTG84QTBW?=
 =?utf-8?B?OXlaYTR6aGN3ZWhZdTVXVktCWGZ0OHVJU0xFUWFtM253VXZJL1lpWkRldzBs?=
 =?utf-8?B?alp2V1c2MFNWTlhublB2dDduQ2dwSVYrczZQWE9UNUJJZXIraDlIQ3l6dEdt?=
 =?utf-8?B?TlJDVEdnTVlHYUxVd29hRnJDb1hPWWRmU1dDVGZjVlRMOFJTMzl3aExiV2du?=
 =?utf-8?B?OTljUkNoQ0ZzWkhFZ3VhQkNJQ0tzNjJldUQzTnppVTNJbkhVQW5kNmpmbHVm?=
 =?utf-8?B?RDVBOWJuc1ZoakFDNGQzTlVIYy92Z0k3QzFOVmw4OThuZVlaSERPRUtuVmli?=
 =?utf-8?B?eFY2eDM0L0YyN1hsSWEyNEhKUFNKZEl6aHFDdytFc24wTkVUMWFPRW5ySytK?=
 =?utf-8?B?S1Ridk8xR1N5RHZibGEyNE1Kc0EyMlVkc0JySEo0bnJDNTgyTXBmajNNc1RY?=
 =?utf-8?B?aXZtUkVaYm9aWitoM2kwTUxuUm95R1JkMHBVVHBBNWlEeENVdFNXNkpvb3ZR?=
 =?utf-8?B?L0hVakxQK1RDakU3TjR5ay94MEVNNUhZMVpoMTVSQmpYRU16U0pUMDFtTDFu?=
 =?utf-8?B?ZjI2TWUvSUVVelF5bGpXZVIzZ2NmSkRjOFl5ZXJLOE54c2x3a3Fzc09nTlpw?=
 =?utf-8?B?UmdiWGR0WG40ek5zbjdSUEViZlNqZnhkZ3J4NWxBL3FJM2h0ZlFocmM4TzZl?=
 =?utf-8?B?dEJzaG1pQjZiVmloenZEUk9kZzNGQVFjeVllZVdGYUQrb2QzMGJET2Q4eEVk?=
 =?utf-8?B?cW9WLzhuU0Z1V3RCZmFMbTdDTkFUUzZwZWxKK2pFYzg5NGZ0UWdCRVhBYU44?=
 =?utf-8?B?ZXZZL2U3YkFadS9NMjZTQW00Nk1CYWVidS9VUEJIeEE3ZkxNbWJ0MHhqVTdh?=
 =?utf-8?B?Y2FDc0RtUEZ2dTZEeWxyZzNxZ09mLzlLSTM4SW9lMFBEcW9Da01lVG9tRUJM?=
 =?utf-8?B?RithMjd0U2psanJVM1Mya2ZFOWg0TXU4TDZ5bFZwQS8zQ0RPUmtLbUtkb3hF?=
 =?utf-8?B?L294amJpMGlYUmhDMytTQlFBbzNHdlZKK3NjY0s1WE9nQW1GQWY5dzNOT0ZK?=
 =?utf-8?B?djArM2Z3blQrRDluUDd1M0FMTU11V2taLzVjSXloVXRQRG1GWi9nRW0rWkc5?=
 =?utf-8?B?ODNoUzQvSEtvblAxYm1Udzl6blRDK2lRVTNsZU9RVWZSSmR4d0gvVkttcklq?=
 =?utf-8?B?c050SjJ2TTR2d0tISUp1bXlRK1JMa0NZMjQ1a0JPTS9mNDg4OXV1RjY1L1lG?=
 =?utf-8?B?VFF0UTZadS9uN2xLdFZNTkk1VmhMWjFVSzVxYUtVVXdPRko2YzlKRllXZFpJ?=
 =?utf-8?B?NU1OYzNscG0zeEQyQXB0cUozZC91T0ZUOG1DemdVT1ErTVI3cENXQjZIMXQ3?=
 =?utf-8?B?UHc4eDN3bForbVZidGREcWRjVS9pZExzYXYxTTR6L0FWVi9GTy9wdXhyZzdy?=
 =?utf-8?B?N1dxYktrZVB3OFdkOTV2V1ZMNUxwbTR3OGY2dHBXVXZLWGkveVovZ0o1SGVz?=
 =?utf-8?B?bHdtKzdUWm5ncVhQOEJRWllsTDZFZjNCQ2pQcUxla0ZCcWNVckxuRkRBbWho?=
 =?utf-8?Q?ceNqunI/HnlZrdzGDVXG2CkHJnKwP9WWEEVBUn+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f5699d-7585-45cf-913b-08d93732e82e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 17:10:03.4393
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m7ZK+AClFW92zHfG7ZFfxBCSkVFFxiuIfP0P75sE8M9frOlf/dqqTsuBG8vz2OA0uVBcpeSIolE+YSI+tE0wt8tO9Hh9w6Vi0pOJo4uUtck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
X-Proofpoint-ORIG-GUID: cL9br80XYRfYk3jpbcY_8HAVtfNkoA0l
X-Proofpoint-GUID: cL9br80XYRfYk3jpbcY_8HAVtfNkoA0l
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-24_12:2021-06-24,2021-06-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 suspectscore=0 adultscore=0 impostorscore=0 bulkscore=0 mlxlogscore=999
 priorityscore=1501 clxscore=1031 spamscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106240095
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting - June 24, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Alex, Richard, Saul, Randy, Tony, Trevor, Sakib


Summary: Things are improving somewhat on the autobuilder,
          RCU stalls are still the top problem now.


Meeting Notes:
==============

1. The most common problem is still the qemu RCU hang.

Alex found the qemu machine protocol debugging commands:

   {"execute": "qmp_capabilities"}
 
{"execute":"dump-guest-memory","arguments":{"paging":false,"protocol":"file:/tmp/vmcore.img"}}

This generates a kernel core.

Saul is going to send a patch to do that when qemu hangs.


RP investigated a few things (ACPI table alignement, etc)
and while there are differences between crashes, there's nothing
that is apparently significant so we still don't have a good
understanding of the cause of the stalls.

Richard summarized the situation here:
    https://lists.yoctoproject.org/g/swat/message/177

2. We had an interesting AB failure:
    Core image sato failed to start since
    image copy took longer than 300 seconds:

https://autobuilder.yoctoproject.org/typhoon/#/builders/74/builds/3559/steps/13/logs/stdio 


System load was ~ 140.
Nothing in qemu log file so qemu never started.

There was a qemu mips in the logs so qemu was running but not fast enough.


There was no AB INT log produced so the trigger was not effective.
( We may have to change out trigger to use iostat or something else. )


Can't tell from logs if the image 'start cmd' in QMP should be
put in logs. - Saul to add a log after QMP port has connected.
(maybe also add a log before?).



RP did some experiments with starting qemu in a controlled
stressful env. He wasn't able to cause the RCU hang.

  - stress-ng could cause the qemu to pause itself but not crash.
    The pause may have been due to running out of disk space.
    qemu was running in snapshot mode initially after that
    also from a tmpfs like we use for our testing.
    The test generated load of ~ 3000+ and the qemu's were trying
    to boot.


Any testimage failure should run Sakib's report generator.
  - Sakib to send patch.



3. System load: make, ninja jobs

    make:
    Trevor and Randy were looking at some tools:

       https://github.com/gscano/libjobserver.git
       https://github.com/olsner/jobclient.git

    that use the jobserver feature of make but they seemed awkward
    and we weren't actually able to see them be useful.
    They passed self-tests in one case but in the limited time we
    used them, it seemed like a dead end.
    The primary purpose of the job server feature is to enable a
    single recursive make to limit the number of jobs dispatched.
    It is likely possible to have independent builds using 'make'
    co-operate but we have not yet figured out how to do that,
    This document by Paul Smith:
      http://make.mad-scientist.net/papers/jobserver-implementation/
    in point "7.", explains what needs to be set to use the jobserver
    but exactly how to achieve that use wasn't yet clear to us.

    Luckily Trevor noticed in the make source that in 2017,
    there was a patch added to make the load average calculation
    more timely:
       https://github.com/mirror/make/blob/master/src/job.c#L1947
 
https://github.com/mirror/make/commit/d8728efc80b720c630e6b12dbd34a3d44e060690

    We're confirming that this actually works on a buld server and
    for all versions of make in the cluster.

We can just re-use this variable:

    PARALLEL_MAKE = "-j 4"
    and add -l <NUM> in addition to -j <NUM>


  - Randy may write to Paul Smith about the general problem
    we are having since they worked together years ago.


4. ptest issues are improving.
   Valgrind ptest results are getting better. Thanks Tony!


5. discussed Sakib's summary script. It's coming along.
    TO DO:
       - collapse compile pipeline (cc1, as, ...) to one line.
    The update was just merged to master-next, let us know if
    you'd like to see other info in the summary or the logs.


6. Timeouts:

  - qemu-runner? timeout increase 120 -> 240
      Increased qemu-runner timeout.
  - ptest timeouts 300 -> 450?
      Not happening.


7. The iostat output is in some of the AB logs:
     https://autobuilder.yocto.io/pub/non-release/
     for example:
 
https://autobuilder.yocto.io/pub/non-release/20210623-17/testresults/meta-oe/2021-06-23--21-51/host_stats_0_top.txt
     search for "start: iostat"
     it looks like the io sub-systems are 100% utilized but
     we need more time, data and the summary script to be able to easily
     make a general statement about AB INT issues and IO load and
     to be able to identify what is typically generating the IO load.

   Plans for the week:

   Richard: RCU stall
   Alex: qemu debugging of core
   Sakib: - testimage failure dump summary.
   Trevor: make job server
   Tony: nothing this week for YP.
   Saul: QMP logs
   Randy: make job w/ Trevor, herd cats!! Here kitty,....


../Randy
