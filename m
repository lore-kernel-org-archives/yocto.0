Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.3248.1627335275151154108
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 14:34:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YaMZeTDF;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=284173512a=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16QLXfhm025420;
	Mon, 26 Jul 2021 21:34:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=N2TstEE9PQ3gVAFhmdgGqyLkPGUOSHnQ6zBXjyjDgpk=;
 b=YaMZeTDFS8ZF0huy0+in80Jzc8GLgRa1zs2xm+VCBBQqgQjZnp+WHYPn4xRYJjFJGVdI
 BUlJ26qhLeIfLoARidHW/JGmH/XU5Jmuqc4ecd13NKl1KrKB9TDYs6leqDsPVd2mv/FO
 pKA7kueSBC+7IHaALEivCagTqagwM8mvAYvKvGyAzsxBhx1tq9uzTXsiWX/YixP4QCgP
 Aln7K71xDc6BrgSfFdojUSD6ILW1m4L+BbXX1dCdrkKWKCewbLSWo2CnvFdNv8R0xNeh
 nHfkSmbHTkB4z0fOq28dA5R1YZfvonmP1dr1U8r+ZCqDU7lU+dHUyk7KOCFjpVaWDcA1 tA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a234x02a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Jul 2021 21:34:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=liCjseVq+4a8oYUrHxSAUjYUhE1Od8c/E6STQU8D9T0RuxmywDaylyAq+3edzls1UT/lMqKvdieO9i5P6yCVCbtb2n9ijojCrKLhakwnexphLUBVHD1udL819Le9Q5Vnp4f5oJD7Ob/PIMbRUqSes0gCRCn3gITzQszuh/S2F0usJhFr4UXbNNtgUjF0rHZ2u/2oYYblZSOThacDBCnUzMV78JQYtRF56W5qXP+xFp1WpFFJHfOmF4dpL/RLagx3jX7YF2sFKOx4EaHCjVDdgmhuNz1ou9y2HJuUel7/Edhrl/GdIqb9dk+UNjHomO2TXCOpj5cDdrZyKiQtY2H9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N2TstEE9PQ3gVAFhmdgGqyLkPGUOSHnQ6zBXjyjDgpk=;
 b=mqG02jO4ES2nKSHkpCWKCzlwnRb27KJKCi4U09csSvvPzhMWRHxvrSJR983fK1E9kktXBGRD7OuXh9FxjftsPCZQWXC5dOvVkuuaQbEeqSnmBI/DuTCU0qo+49SoR0fXGGQmikf5y4OdnzjW6qO7R9GTvLDNqtZmd1EzRaImD3t02sOkBLuDCCO7FjALrataUjGO/JZOLg2bHMhteJrlKY/ZJlrkWA8SYeBTSMebPFo8Rk3jb1hlHfcAApaMNpFnTY9dvXp4bTkupxJetYE9G1Ovoe0fRff8jMDUXOpNxLJqgwbd6MGJxJv6GQHR0z5ZlT1U4aikUg36LS+U8fwrHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1484.namprd11.prod.outlook.com (2603:10b6:4:8::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.29; Mon, 26 Jul 2021 21:34:29 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4352.031; Mon, 26 Jul 2021
 21:34:29 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: July 22, 2021 -- resend
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>
Cc: "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <fc9dacf6-8770-bba5-5f65-9eaa64197b11@windriver.com>
Date: Mon, 26 Jul 2021 17:34:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: SJ0PR13CA0222.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR13CA0222.namprd13.prod.outlook.com (2603:10b6:a03:2c1::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.7 via Frontend Transport; Mon, 26 Jul 2021 21:34:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 12f7d328-4512-4b81-b949-08d9507d2608
X-MS-TrafficTypeDiagnostic: DM5PR11MB1484:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1484F194A871608223CBC3BDF8E89@DM5PR11MB1484.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TXUZfnjw7A/fp+OZuJvjB07HIfbeEsaA/R0/89I3+hx/5s4mragpw9cQ0BJdcTgIh9eli3eWNPowteFugJZIrykO0/9f0bXHpvpzUiAIiXbHqZlM/68SBgyztOeXqH9bSHh2WDHYCrKsf1Cf/tByHey/btTf/DwrKeQZlZKcK7ENYNZta82LX3zD7nDZkITJzsPvIAtwCudkZgkXI+bw/6d6TRid08UFxex5n33PexAQx4+X87OBprJhnEysg3HPD1v47+vaoox9XMULv0+xGHCMuJ8uW77jMXOuX/X6QUNDNCXNus35y1eHYOHI6Ilv4pG+0Wk6ug7N0UNx9/yYp+vnlwq8upITHUbJq/zvlow8JCZvJpHcUNYouqQgvnS8kOfy8AQisGvIIKUhCw+SS/VDOHgMt4SBtvZtQeoAGXrZAcGvoMdp+yM243rcDXweA++bRc5riYfHahhNkIPOVP7qqnhfTKBr/vhH7mVbhxq4Xh0ntnHqZGKfsjHWQIKyrcP+F3PugpR4z/REM1e7KpykozuCqTpa/tvJELsDEjoWuotmJah16o1RXfrKj/aLI7ExTUWyOwZdkpVa6UA58ZLXOXxivt9xpf4WRXsEXd7QWX4muZvVdb3Tv/7Q0IlrDNOOkN9P2lhqckGUO8im3JmCPqBkJZ8kz0hmBUNy13HMvENhK7Rbi69uR+ItNyCDdfQ/1mbaF2M28Nxi7ITU0hdWJHOeqhBd70ptnVfIgyiPdbEco8ubFIKCVykztE4ZBQsgMT9wr3KH+TobYuxo+BAq1Dndu265I0d1zf6K95MVNPVricZiBMIEO24cxdI+Uncz0X8zLdDYI0io0tYwcrOryqlGgL1+iHd9lSEoJr4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(396003)(136003)(346002)(366004)(38100700002)(38350700002)(4326008)(54906003)(110136005)(6666004)(16576012)(316002)(86362001)(31696002)(6486002)(956004)(26005)(8936002)(186003)(2906002)(2616005)(5660300002)(66556008)(66476007)(36756003)(478600001)(83380400001)(31686004)(966005)(66946007)(8676002)(52116002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YW1WWUN0UzFWQ1lJTFBwQjUzVGpaUkdqamx2alM4bkI1STdFdkd2aGR4eGVT?=
 =?utf-8?B?M1h2TkZTL2RwZ0xrRHo1cUY3bjdWcW9nWkxNcXFpU0xZWHE0TTlreGlrZG1r?=
 =?utf-8?B?dnVjc2RLYWFvVmhzcVNqVEV2bndJZ0FlTHFxZUZ2QWxBNzVYeTlGUzhUd3pS?=
 =?utf-8?B?SVIrd3NFcWFGSnE1U3lwNGswbFdIQWtNNnZ1dFlHU0l3RHRzREJ3cy9rMmRh?=
 =?utf-8?B?RkRTWWVXaHdhbnpneVNxM2Nnelo5MUxmK0NPbnFuUEVMTGlzMFJ6bTN0T2x1?=
 =?utf-8?B?ZmxyQk9wS0RqcENyVnBlRDJPMmxVSXFuU01TVFEybWF5VmtheFkrMDgzTWg3?=
 =?utf-8?B?dWE4RUozMWJlN2tUYktYK2tRa0FmR3Q3dWpSTnduRjdYOUdxdzJnQm8xdnli?=
 =?utf-8?B?cjJLWTlMc0lGNFN3a3JsV1B4Y0g1dGwzZlR2NTFFSDRKb1pOKzFXZWw3S2tj?=
 =?utf-8?B?SS9Icy9vWVhJTzB3TW1VNEJZV0tyVzlPdTNHOHNhR3NWVk1uNC8rbXFDRTdB?=
 =?utf-8?B?b1RsTjgyS1lnM3NsQUNyWXNRdFBYTkVtYzFRR2JLaytSelNod09LOXJrUzAx?=
 =?utf-8?B?U1NLaWplSGUyaTJGQjVPUFNMdjNhc1BPUklaNEhTTnZ1b3V2UG1SRlhEMTJG?=
 =?utf-8?B?ODhOQjBHeHgwcnZWdTlvSzRrR2xldzFKMVF1VHhySy9yNHNDc3EvK1JxL3Vx?=
 =?utf-8?B?bDA2NkJObXBVbjRnS3pzaWhZWDZVOCs2SkZCNGFEc2l0bElmRFZhUnFPaFZZ?=
 =?utf-8?B?dHFhZHo3Nkxrb0JUZUVEbm1qMWVteUQrTFhOcEdwOU1oaEtoSE9aOU9LME1V?=
 =?utf-8?B?SlJKYlQ5YTA4bW1Yam5wdXZaNXBYNVVqSUcvd09hY2FCNUpraENwRDd1emd1?=
 =?utf-8?B?U3BaVnZrdEtDMS9adVlOd3RuY0Rjb3pBK2tYZWhuNGZhRDBMM0RvM1FDNlNV?=
 =?utf-8?B?VlByZVNWMDBLMm1ra3pqUzdtSHlOY1daYUlpdFpqTTY3OWVsL3RhRkgvVmJQ?=
 =?utf-8?B?WDZYZHorb0NwQUxLdEppNndqR3dIWndzMlh1TXNXWkhDQ0UyQ21RM3FOMjBY?=
 =?utf-8?B?STJEcm1oWEVEeXN4QzZ5V0svK2dDSzBZa01wZEdyYTZ2RUZhNVgvbjRleCtp?=
 =?utf-8?B?T0ZZd0V0RnJIblJ6ak11SVU4L2FUU3owN3YrY2xsSWhERko2dmppYWNRWkl1?=
 =?utf-8?B?OWRZYTNieWNLNnl2YUhwRS9HRXUzbGs1bytGTStUOTNmVGlsY3hVVStJTWxp?=
 =?utf-8?B?NzRuNmdycXo4cm1KL3NBOEM3eFl1anBieERkVURLUGZ6blFEVkRmem1zbDR0?=
 =?utf-8?B?KzBKc3hsNHMvOVc1NjRIRW1LOEtNVXVFSjN3dWJRbVFoVHVmNUZWVXZHUzFT?=
 =?utf-8?B?anluY0VESkJzbmk5bEhHU0l4VXM2eUN0MlJmbG1uQ1p6MjlvdDNrVjZuMlhC?=
 =?utf-8?B?TGlaS3JPcXBUeThOM0JLR0x3N0NnSHlWNDV0SUhMdGxDbXNsd09VQ0ZtSmdV?=
 =?utf-8?B?UktRSkdNVXRmd1gzL1BiODBnWDBQbE4xd1RKUU9GUmJpd0g5QzRGUkxaS2RN?=
 =?utf-8?B?Q25hbjdOa0Jhd0k1REtQZWtrN1RvRlZCZFNQTnBPTXU1ZFRzcW1FNStsdjVT?=
 =?utf-8?B?cjN6V0drcUJORTNsNmRVK1Q5M1JYdzN6cVZKMUp4emJxU09QWUlQUkR2K1Bp?=
 =?utf-8?B?SUlBSUhxc0FXQXBhYTJUWHY5SkxZYWgzMGRwa21UdmcyYTBMOU1NNjNzVGxn?=
 =?utf-8?Q?sMGtqM3yPjSWn1ZRPmZP+z2o0huAd+82ekM5Szi?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12f7d328-4512-4b81-b949-08d9507d2608
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2021 21:34:29.0434
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B87igTjKt+eRxxOFAYTTk91M4rloVFQJV9qUw3yoQuMhQYSYO4HnxZ+Ne/NVJOPH98vn44dgJgQN4Nco0Qm9co4HqcPrE9c19g6NmN6TqjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1484
X-Proofpoint-ORIG-GUID: RGwYt5LwVA_ONIRJblbL7MZNG0NSCDO6
X-Proofpoint-GUID: RGwYt5LwVA_ONIRJblbL7MZNG0NSCDO6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-26_14,2021-07-26_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 impostorscore=0 clxscore=1031 lowpriorityscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107260127
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Resend:

The list:
    Yocto discussion list <yocto@yoctoproject.org>
didn't work and may be dead so switch to:
    yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
../Randy



YP AB Intermittent failures meeting
===================================
July 22, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Tony, Richard, Trevor, Randy, Tony


Summary:
========

ptest failures, somewhat improved AGAIN but still seeing
problems particularly with LTT-NG.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

All: Wait and see if the ptest failure rate continues to be lower
      than previous weeks.

   Richard:
   Alex:
   Sakib: hook more responsive load average in to latency test.
   Trevor: patch to set PARALLEL_MAKE : -l 50
     -> dunfell, gatesgarth, hardknott
   Tony:
   Saul: on vacation
   Randy: Look at performance data


Meeting Notes:
==============

1, runqemu (same as last week so I'll drop this comment next week)

Tony having trouble with runqemu on some Wind River machine.
Richard has a fix for a race in runqemu in master-next.
These might be related but if not Tony should debug the
issue/ collect logs.

2. job server

- ninja could be patched with make's more responsive algorithm
   next or is this good enough?

- Richard suggested that we extract make's code for measuring the load
   average to a separate binary and run it in the periodic io latency
   test. Also can we translate it to python?
   - Trevor is working on this.

- performance build servers
   - fewer failures there so no point in limiting jobs and
     it would be disruptive to performance monitoring.


3. AB status

    ptest cases are improving, we may be close to done!
    Let's wait a week to see how things go.


4. Nothing new on this item this week:
    Richard reported
    - something really flaky going on with serial ports.
    - particularly bad on qemuppc but also x86.
    - related to Saul's QMP data dump?
    - Juy 22: We didn't talk about this issue this week.

5. Sakib's improvements to the logging are merged.
    We think Michael needs to update the script that generates the
    web page. Randy/Sakib to talk with Michael.

6. (From July 8)
    Richard says that we may need to redesign the data collection system
    that Sakib's AB INT tests are based on.



Still relevant parts of
Previous Meeting Notes:
=======================


4. bitbake server timeout.

    "Timeout while waiting for a reply from the bitbake server (60s)"

    Randy mentioned that the bitbake server timeouts seen in the
    Wind River build cluster have gone away after upgrading to
    a newer version of docker.

    Old: Docker Version: Docker version 18.09.4, build d14af54266
    New: Docker Version: Docker version 20.10.7, build f0df350


    Clearly the YP ABs aren't running in docker but what
    about firmware and kernel tunings.

    Michael,

    Is the BIOS/firmware kept up to date on most nodes?
    - July 22: This was done.


    For the performance builder trend see:

https://autobuilder.yocto.io/pub/non-release/20210721-9/testresults/buildperf-centos7/perf-centos7.yoctoproject.org_master_20210721150057_1ad79313a5.html


https://autobuilder.yocto.io/pub/non-release/20210721-14/testresults/buildperf-ubuntu1604/perf-ubuntu1604_master_20210721210034_1ad79313a5.html


    Summary,
     - CentOS-7 seems to take less time (~ 1 min),
     - Ubuntu-16.04 seems to take more (~ 5 min)
    That's a bit surprising!
    Randy to look at 62659 commit number in poky.


5. io stalls

    Richard said that it would make sense to write an ftrace utility
    / script to monitor io latency and we could install it with sudo
    Ch^W mentioned ftrace on IRC.
    Sakib and Randy will work on that but not for a week or two.





../Randy
