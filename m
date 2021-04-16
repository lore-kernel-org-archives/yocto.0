Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.72])
 by mx.groups.io with SMTP id smtpd.web11.3210.1618608924388545263
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Apr 2021 14:35:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=HNFDJ9wY;
 spf=pass (domain: windriver.com, ip: 40.107.237.72, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRBc0qqWJyqIGop9UNPmwsrGq1rjKZOL6/s5KOjfVZY8SI9r9yu78OhODYOPz/vg5/a4Db6NFV0/Y6eDdI9LaVmJbBBjKvPxe0I1ohIFV1gtnO1thtwVuSNwUeNNqyhyBpoAT5PNyBKSVF/tryWlp40fQQ8iOgevBi87TxUZIuCAQEBzTsyK5ktJDQZO5jpMGvbNemIEU/ih0G52RD/lKN0DsJEOePvMFyyiFPsXs7VQfSbow6Lm+rk/mCSxTNqAp6gUXNCn5ykYCQwJOzis8zd8PuitQfTQqWLdLPyVoTUh4jFgO+icfacjLw7tIdcF82fGEkqXC+d5qD3G+ptyGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpmCBOYnagnYl1AXxA2m9DBC2F7RT4nilMPuTVHhvi8=;
 b=J4r7IIFiRdKxfDSgbGBplavsmykaxNH7/7fpaU8aHl7fOFyPdJ4MDVDT3xh4H+BNdPcLWmWbvt0OAJ8Nm/wAhGV1oIA1TXI+mlUmn05+voDD0TwhWcLpOCyVfp2i3A9STnzQhxyfQ6iswi2CSkqYRY9SlIpiM0KYc+40B/Z6Qb8PxikHt+Yb8Y0bgSNYpL6QckHRHOg9atm7D3mzcOohX3Ym2QYVg7jjtHYq46AdepdtlQT0YmOm6cLZmPAeqteb+ZLmR5xs6MgjSd3fwF7gslBDeTR55NIlsdoZbqcWg+nf5wNWxO/h81wjCt76tmnHssa4yR5QdYnyn4OSD99BEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpmCBOYnagnYl1AXxA2m9DBC2F7RT4nilMPuTVHhvi8=;
 b=HNFDJ9wYR57QWE6jeI+4yR/ZZAqhfsC8yPpMjQzIxbBtYYzyqCFhmQKvTbZnkMQXxfHqz9AXemh+d+i4rHfKZ4NOsMv0pK8R6jGpWdY7aeACURT08NiNrWyv7FuORIkpNrnS+Wg36BkBS8uYdt8oqsz3cYj7pr/nHYErWWlkDPw=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Fri, 16 Apr
 2021 21:35:22 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4042.018; Fri, 16 Apr 2021
 21:35:22 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
From: "Randy MacLeod" <randy.macleod@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Sakib Sajal <sakib.sajal@windriver.com>, yocto@lists.yoctoproject.org,
 "Wold, Saul" <saul.wold@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
 <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
 <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
 <426696e1-bdae-f49d-cc6a-e375aae8586f@windriver.com>
 <ee652d79-8c00-0606-bf6c-a3fc793b4a8b@windriver.com>
Message-ID: <9199d198-4a58-ccbc-644a-934f6071bbd8@windriver.com>
Date: Fri, 16 Apr 2021 17:35:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <ee652d79-8c00-0606-bf6c-a3fc793b4a8b@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0282.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0282.namprd03.prod.outlook.com (2603:10b6:a03:39e::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19 via Frontend Transport; Fri, 16 Apr 2021 21:35:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69046b94-e3d3-4d12-94ef-08d9011f8a3a
X-MS-TrafficTypeDiagnostic: DM6PR11MB4612:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB461299A0704E96A6E12DB252F84C9@DM6PR11MB4612.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Uly3vESExU2nBEzZ2GEB352hyqWWhSIySQxiM4wEPZxBB5mA1ErGP0ICRJay7/TS8K6Gu08fYetWf7vXlejJz6Q8F6gYSgRDUUdiOqec/hR6VeiyjB5XDRZiftlpwy1U1+0WqBENmLy3BundwLVl98O6bmJjVUNUygd4Fj/avzODk0SJlHuTdTfWS4CekQNY0GOaE3S4ttdRBHtIEHcTKj3zqXOIH1PPEXF5ks5IHFr0bcqekye93fXC96NriW9BGAPch3QRd4rAo1Mjh2FBsZKgx3J5RQ7Oo3nXnoIM03RuY10k2h7y9dJVNCHJyLraovKhLWecOWUfFYCPtF50NC21xxC+4jIS2QHBsobBwRXE/+XyojJ/HWJcIMnzgf5GS4H+xNvxUnqB76SJvizriQfTzLRLEl0eC6aR2KZqYrrsweAiSgilZ8RlQP5mfzBvce+gc0O6RajNDS2hv3qPG0Qk8+5WpMX5iWpmCnPfLK2In7ChJburz7s0KywEHheUiG+AfElL6ILOtsVU7S9RpZCtKbn5Lpbg5vLas9Y1mwusN4jGFKYr5ReFhIm7XfS/dmg3Av1xeU1MMYoWSYiuUuiFdvY87KBnCx7J4i1oi+K64gJ2bVjN+1FxJAmBUbCpvQZ2rKcNB3F4p16Rw8OrhVFoAqCgtYlk0rpN+1HO4DDJxXGCW+pyh9n65SA1z1NgJXpz3NcPbQDA6fbzoZp+9bGqqb0xQxl32SwtpboOz4er0atBVZZsxqrQfUGQCR9U4CD7H64Lz+yI87PE3jLijTsoiPI3BykHCo/boCqDGCI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(39850400004)(136003)(396003)(186003)(966005)(316002)(956004)(31696002)(66556008)(38100700002)(6666004)(83380400001)(16576012)(16526019)(66946007)(38350700002)(86362001)(36756003)(8936002)(30864003)(53546011)(2906002)(5660300002)(6636002)(110136005)(26005)(52116002)(478600001)(8676002)(31686004)(6486002)(66476007)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?o5h0xbgkHy/BvnZT18dcHfXps0n/wVBpYKp68ORg52ncGwN8gNLA/LhLV/41?=
 =?us-ascii?Q?VMb4PCzbHa0u7ge2DHYSXtE9IHKNQD3X4/RaEx3ut0jwf7N43FFC67mRTbxb?=
 =?us-ascii?Q?PbX+lsMMxQ8YAmS8e6VgBTpMGZGGpVabktWivR4lCt835RoEYUZGKcnJ82Zp?=
 =?us-ascii?Q?6crMrfJP9e3zkV/eLfRbWZHVB4fIj+t1iLDJA6qoCQcIQSkzeNTap4kMcqgh?=
 =?us-ascii?Q?8wweVh9vQAdJfdt7H5usxqU9eO0nhxBVdpDs/MXIPO8oN9UtZooGUFdm3R9s?=
 =?us-ascii?Q?5V9eKJhEMk1plJNpvBCM5jU9HdU0KXbkiQk5Hbx8HlFiafBI5DIkSZDpPG8A?=
 =?us-ascii?Q?1ywSadaU1q/SumGXh0q5joFqTxujwF01OhNx3vVRA1poQUFd0a7ScyFWppov?=
 =?us-ascii?Q?uvlug3ZYvYjnA9fDRyDwpizEqD8rYND3+34mPgbSQBBfZq4uo5bVx16jk+Ma?=
 =?us-ascii?Q?8M8Vz6+uXF1hHCueLTrM2Cu2/hhK0AJaayCTegT1APIJMKpTS2qNY6t9pRHH?=
 =?us-ascii?Q?J9Y9VrMjA5MIb855QNRqZ8uZ3eg038Z7ugxLgPrFF4C03Gr2tT0t3Z5P+NlR?=
 =?us-ascii?Q?CcYVrXi008XokdVzQ0Vsd20SnR8Az2BIXTPRHf5JU6jmI45G/VDLOofc0HJm?=
 =?us-ascii?Q?yxyu8kMcqopHwTfl1N3BpmTNSHuwL0CHyh+qshD0gi487OGrH5i+e+pdtl5J?=
 =?us-ascii?Q?5xMOvlw9DIDlNqmL9BJvBECldvMfe0+BmBNuvGmu1TvAxHX3ihKNvpNpIQh+?=
 =?us-ascii?Q?aj8o4n85BSTNOpY16STHXtlmTGa1dvXO7BbdZTLLMSOgG2niI+QH2EjivFsz?=
 =?us-ascii?Q?ie+2IX4T2hmf7xoSTzKKtycdAav2RMECSBMSYib/qTSc7rgwImV2s35XiSF5?=
 =?us-ascii?Q?Rjr/TTvDY9377aLGc9n5daaDmtIHs+nwi9L+aiMbsEIaCMTOv1G8wUjMKBAN?=
 =?us-ascii?Q?7U/Mu7ARDjUScnMzb2+pOc6MRHuYN/+glR6muc5PcemFaWw+aIxu3OMeYJcE?=
 =?us-ascii?Q?lAZaK36+JR/iah0b9G5y2cdoPLfThP5sg6mxX/c5GuGm+wt08A7I/SUh978n?=
 =?us-ascii?Q?aNRrMRPMJ4DZZyMEZapxc6hchlGs+NZc4uQZR1nvd4SV5UU9T1YoGM3V3z48?=
 =?us-ascii?Q?J+ZB7+BiCjpFKZ2YWpPknw6qHS9MSrETlUPcjvVPJiTIkWBE/g5LQAfOfZyM?=
 =?us-ascii?Q?iINbi92JUye71siC979T45V3fWHl5VjdRQboXK+qCpCb4lwtzgSDSpDtKF7S?=
 =?us-ascii?Q?BKOBCgJeZyIEk3ke4mwWV6wX7FVV5ZNagwgr+/gWufcV2TAitMoAK0egtOf9?=
 =?us-ascii?Q?DTNWRPmgLeV1+x17Xirlyip3?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69046b94-e3d3-4d12-94ef-08d9011f8a3a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2021 21:35:22.6033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UxTJO8Jw+P5hAl3/UZD9BVpeaWY6lv6xlOLS8oBQiBy7f9gJtbSgiVYa9ncm/rMvSdcF03BlV++x4ciwlsM+AjFuES3WaMiJ+uGQb85v5MA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-CA

On 2021-04-15 4:48 p.m., Randy MacLeod wrote:
> On 2021-04-15 1:55 p.m., Randy MacLeod wrote:
>> On 2021-04-15 11:55 a.m., Richard Purdie wrote:
>>> On Thu, 2021-04-15 at 11:31 -0400, Sakib Sajal wrote:
>>>> On 2021-04-15 9:52 a.m., Richard Purdie wrote:
>>>>> [Please note: This e-mail is from an EXTERNAL e-mail address]
>>>>>
>>>>> On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
>>>>>> collect-data template can run arbitrary commands/scripts
>>>>>> on a regular basis and logs the output in a file.
>>>>>>
>>>>>> See oe-core for more details:
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0edb7098e9e buildstats.bbclass: =
add functionality to collect=20
>>>>>> build system stats
>>>>>>
>>>>>> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
>>>>>> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>>>>>> ---
>>>>>> =C2=A0=C2=A0=C2=A0config.json | 7 +++++++
>>>>>> =C2=A0=C2=A0=C2=A01 file changed, 7 insertions(+)
>>>>>>
>>>>>> diff --git a/config.json b/config.json
>>>>>> index 5bfa240..c43d231 100644
>>>>>> --- a/config.json
>>>>>> +++ b/config.json
>>>>>> @@ -87,6 +87,13 @@
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"SANITYTARGETS" :=20
>>>>>> "core-image-full-cmdline:do_testimage=20
>>>>>> core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0}
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}=
,
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0 "collect-data" : {
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 "extravars" : [
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0 "BB_HEARTBEAT_EVENT =3D '10'",
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0 "BB_LOG_HOST_STAT_ON_INTERVAL =3D '1'",
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0 "BB_LOG_HOST_STAT_CMDS =3D 'oe-time-dd-test.sh 10=
0'"
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ]
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>>>>> Is the template used anywhere? I can't remember if we support=20
>>>>> nesting templates in which
>>>>> case this is useful, or not?
>>
>> We were using it for testing on the YP AB and thought it would be
>> useful if at some point the monitoring was dropped from the
>> default config.
>>
>> I think we can just add it later if needed.
>
> Richard,
>
> I think that the web server for:
> =C2=A0 https://autobuilder.yocto.io/pub/non-release/
> runs every 30 seconds via cron so if you are happy with
> this crude dd trigger once things have soaked in master-next
> and we want to gather some data overnight, could you merge to master?
>
>
> I ran a simpler test with fewer io stressors from:
> $ stress -hdd N
> and have attached a graph with up to 3000! stressors that
> we looked at this morning and another with up to 35 stressors.
>
> It's a crude indicators but once we get beyond 18-20 io stressors
> on the system I tested (48 cores, 128 GB RAM, 12 TB magnetic disk)
> dd time become erratic.
>
> Running qemu from tmpfs has clearly helped.
> Let's gather some data and decide if we want to spend more time
> learning how to monitor the system to tune how we are using it.
>
> ../Randy

Thanks for fixing the fall-out due to assumptions in other tests.
Is the system back to normal and operational now?


What was the impact of running the heartbeat and the dd test every
10 seconds on the system build performance?

Should we=C2=A0 increase the interval to 30, 60, ore more seconds?


I spent some time looking at the first bit of data along with
Sakib and Saul from time to time.

General conclusions:

1. It seems like ALL triggers involve oe-selftest being active.

2. xz might be a problem but we're not sure yet.

3. We need more data and tools and time to think about it.


To Do:

1. increase top cmdline length from 512 to=C2=A0 16K

2. sometimes we see:

 =C2=A0=C2=A0=C2=A0=C2=A0 Command '['oe-time-dd-test.sh', '100']' timed ou=
t after 10.0 seconds

That should not happen so we should understand why and either increase
the time between runs or fix the tooling. This seems to happen under load
so it's hiding the interesting data that we are looking for!

3. tail the cooker console in addition to top. Present that before top.

 =C2=A0=C2=A0=C2=A0 It would be nice to have a top equivalent for bitbake.




We did collect some triggered host data last night as seen in:

https://autobuilder.yocto.io/pub/non-release/

https://autobuilder.yocto.io/pub/non-release/20210415-16/

Only one a-full build was run. There were 10 log files produced.

There were 21 times that the dd time exceeded the 5 second limit
out of a total of 21581 (or so!) invocations and those triggers we
captured by 10 log files:

testresults/beaglebone-alt/2021-04-16--00-19/host_stats_0_top.txt
testresults/qa-extras2/2021-04-15--22-43/host_stats_2_top.txt
testresults/qa-extras2/2021-04-15--22-43/host_stats_4_top.txt
testresults/qa-extras2/2021-04-15--22-43/host_stats_6_top.txt
testresults/qa-extras2/2021-04-15--22-43/host_stats_8_top.txt
testresults/qemuarm/2021-04-16--00-02/host_stats_0_top.txt
testresults/qemuarm/2021-04-16--00-02/host_stats_1_top.txt
testresults/qemumips-alt/2021-04-15--23-36/host_stats_1_top.txt
testresults/qemumips64/2021-04-16--02-46/host_stats_0_top.txt
testresults/qemux86-world/2021-04-16--00-00/host_stats_0_top.txt


We knew that our naming convention needed work in that the files
are generically named and differ only by the directory datastamp and,
where the logs contain 'top' output or not the _top suffix.=C2=A0 We'd lik=
e=20
to help
whoever is looking at the data understand what the context of
the build was. That's not clear to Sakib and I given that we are YP AB=20
newbies still.
Do you have any suggestions about what the directory structure or file=20
naming convention should be?
The other thing need to do is correlate these higher latency times
with the intermittent problems we've encountered. We can do that manually
I support via the SWAT team but ideally there would be an automated proces=
s.


More quick analysis...

The number of times that top ran per log file:

$ grep "^top - " `fd _top autobuilder.yocto.io/` | cut -d":" -f1 | uniq=20
-c | \
 =C2=A0=C2=A0=C2=A0 sed -e 's|autobuilder.yocto.io/pub/non-release/2021041=
5-16/||'
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 testresults/beaglebone-alt/2021-04-16--0=
0-19/host_stats_0_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3 testresults/qa-extras2/2021-04-15--22-43=
/host_stats_2_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 testresults/qa-extras2/2021-04-15--22-43=
/host_stats_4_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 testresults/qa-extras2/2021-04-15--22-43=
/host_stats_6_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 testresults/qa-extras2/2021-04-15--22-43=
/host_stats_8_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5 testresults/qemuarm/2021-04-16--00-02/ho=
st_stats_0_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 testresults/qemuarm/2021-04-16--00-02/ho=
st_stats_1_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 testresults/qemumips-alt/2021-04-15--23-=
36/host_stats_1_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 testresults/qemumips64/2021-04-16--02-46=
/host_stats_0_top.txt
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 testresults/qemux86-world/2021-04-16--00=
-00/host_stats_0_top.txt
some of these are duplicates in that the different steps _2,4,6,8 above

A little shell hacking can produce one file per top output with
ample access to stackoverflow!

COUNTER=3D1
for i in `fd _top`;
 =C2=A0=C2=A0 do for j in `grep "^top - " $i | cut -c 7-15`; do
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -n "/top - ${j}/,/Event Ti=
me:/p" $i >>=20
host-stats-$j--$COUNTER.log;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ((COUNTER++));
 =C2=A0=C2=A0 done;
done

This works because the first line of time is similar to:
 =C2=A0=C2=A0 top - 15:40:53 up 2 days, 22:17,=C2=A0 1 user,=C2=A0 load av=
erage: 0.36, 0.58,=20
0.85
so cutting out chars 7-15 gives a fairly uniq timestamp string for the=20
filename and
adding the counter makes it unique.

Now we have 21 log files:

$ ls host-stats-2* | wc -l
21

How big are these files, ie how many process/kernel threads were running
when top ran?

$ wc -l host-stats-2* | sort -n
 =C2=A0=C2=A0=C2=A0 757 host-stats-22:12:32--17.log
 =C2=A0=C2=A0=C2=A0 778 host-stats-22:18:21--8.log
 =C2=A0=C2=A0=C2=A0 784 host-stats-21:59:42--5.log
 =C2=A0=C2=A0=C2=A0 785 host-stats-21:59:42--12.log
 =C2=A0=C2=A0=C2=A0 792 host-stats-22:18:01--7.log
 =C2=A0=C2=A0=C2=A0 800 host-stats-22:18:21--14.log
 =C2=A0=C2=A0=C2=A0 811 host-stats-22:07:40--13.log
 =C2=A0=C2=A0=C2=A0 812 host-stats-22:07:59--6.log
 =C2=A0=C2=A0=C2=A0 821 host-stats-21:56:21--3.log
 =C2=A0=C2=A0=C2=A0 850 host-stats-21:59:33--11.log
 =C2=A0=C2=A0=C2=A0 856 host-stats-21:59:33--4.log
 =C2=A0=C2=A0=C2=A0 869 host-stats-22:29:49--16.log
 =C2=A0=C2=A0=C2=A0 884 host-stats-22:29:14--9.log
 =C2=A0=C2=A0=C2=A0 886 host-stats-22:29:36--15.log
 =C2=A0=C2=A0=C2=A0 981 host-stats-21:55:40--10.log
 =C2=A0=C2=A0=C2=A0 985 host-stats-22:47:27--2.log
 =C2=A0=C2=A0=C2=A0 987 host-stats-22:47:27--21.log
 =C2=A0=C2=A0 1124 host-stats-22:37:33--1.log
 =C2=A0=C2=A0 1193 host-stats-22:37:26--20.log
 =C2=A0=C2=A0 1304 host-stats-23:19:14--19.log
 =C2=A0=C2=A0 1321 host-stats-23:18:57--18.log
 =C2=A0 19380 total

I noticed that several but not all log files were running xz with args lik=
e:

 =C2=A0 =C2=A0 xz -a --memlimit=3D50% --threads=3D56

$ for i in `ls host-stats-2*`; do echo -n $i ": "; grep "xz " $i | wc=20
-l; done
host-stats-21:55:40--10.log : 28
host-stats-21:56:21--3.log : 4
host-stats-21:59:33--11.log : 1
host-stats-21:59:33--4.log : 1
host-stats-21:59:42--12.log : 1
host-stats-21:59:42--5.log : 1
host-stats-22:07:40--13.log : 2
host-stats-22:07:59--6.log : 2
host-stats-22:12:32--17.log : 0
host-stats-22:18:01--7.log : 6
host-stats-22:18:21--14.log : 3
host-stats-22:18:21--8.log : 3
host-stats-22:29:14--9.log : 1
host-stats-22:29:36--15.log : 0
host-stats-22:29:49--16.log : 0
host-stats-22:37:26--20.log : 56
host-stats-22:37:33--1.log : 16
host-stats-22:47:27--21.log : 0
host-stats-22:47:27--2.log : 0
host-stats-23:18:57--18.log : 0
host-stats-23:19:14--19.log : 18

In this case, I don't think it's a problem but if we had several packages
running xz like that at once with a limit of 50% of memory each,
that could be a problem. Has anyone looked at the time impact of
say reducing the number of threads to 32 and the memory limit to
15% ?


All of the top output logs seems to be running oe-selftest:

$ for i in host-stats-2*; do grep -H -c "DISPLAY.*oe-selftest " $i ; done
host-stats-21:55:40--10.log:1
host-stats-21:56:21--3.log:1
host-stats-21:59:33--11.log:1
host-stats-21:59:33--4.log:1
host-stats-21:59:42--12.log:1
host-stats-21:59:42--5.log:1
host-stats-22:07:40--13.log:1
host-stats-22:07:59--6.log:1
host-stats-22:12:32--17.log:1
host-stats-22:18:01--7.log:1
host-stats-22:18:21--14.log:1
host-stats-22:18:21--8.log:1
host-stats-22:29:14--9.log:1
host-stats-22:29:36--15.log:1
host-stats-22:29:49--16.log:1
host-stats-22:37:26--20.log:1
host-stats-22:37:33--1.log:1
host-stats-22:47:27--21.log:1
host-stats-22:47:27--2.log:1
host-stats-23:18:57--18.log:2
host-stats-23:19:14--19.log:2
$ for i in host-stats-2*; do grep -H -c "DISPLAY.*oe-selftest " $i ;=20
done=C2=A0=C2=A0 | wc -l
21

Yikes, that seems like more than just random chance.


The logs do not seem to be duplicates in that there isn't a single cluster
of identical or similar timestamps although some are close and are
likely from the same file. That said they certainly don't seem to
be spread out uniformly over time and that's what we all expect
in that the system response time is okay for much of the time and
is poor for quite a while every now and then.

$ for i in host-stats-2*; do echo -n $i ": "; head -1 $i | cut -c -15; don=
e
host-stats-21:55:40--10.log : top - 21:55:40
host-stats-21:56:21--3.log=C2=A0=C2=A0 : top - 21:56:21
host-stats-21:59:33--11.log : top - 21:59:33
host-stats-21:59:33--4.log=C2=A0=C2=A0 : top - 21:59:33
host-stats-21:59:42--12.log : top - 21:59:42
host-stats-21:59:42--5.log =C2=A0 : top - 21:59:42
host-stats-22:07:40--13.log : top - 22:07:40
host-stats-22:07:59--6.log =C2=A0 : top - 22:07:59
host-stats-22:12:32--17.log : top - 22:12:32
host-stats-22:18:01--7.log=C2=A0=C2=A0 : top - 22:18:01
host-stats-22:18:21--14.log : top - 22:18:21
host-stats-22:18:21--8.log=C2=A0=C2=A0 : top - 22:18:21
host-stats-22:29:14--9.log =C2=A0 : top - 22:29:14
host-stats-22:29:36--15.log : top - 22:29:36
host-stats-22:29:49--16.log : top - 22:29:49
host-stats-22:37:26--20.log : top - 22:37:26
host-stats-22:37:33--1.log =C2=A0 : top - 22:37:33
host-stats-22:47:27--21.log : top - 22:47:27
host-stats-22:47:27--2.log=C2=A0=C2=A0 : top - 22:47:27
host-stats-23:18:57--18.log : top - 23:18:57
host-stats-23:19:14--19.log : top - 23:19:14


All for now.

../Randy


>
>>
>> ../Randy
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Richard
>>>>
>>>> The template is not used anywhere, yet, the initial patchset=20
>>>> enables the
>>>> data collection by default.
>>>>
>>>> I have left the template in case the data collection is removed from
>>>> defaults and need to be used on a case by case basis.
>>>>
>>>> I am not entirely sure if nesting templates work. I have not seen any
>>>> examples of it, neither did i try it myself. If nesting does work, th=
e
>>>> template should be useful.
>>>
>>> I had a quick look at the code and sadly, it doesn't appear I=20
>>> implemented
>>> nesting so this wouldn't be that useful as things stand.
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>>>
>>>
>>>=20
>>>
>>
>>
>
>

--=20
# Randy MacLeod
# Wind River Linux

