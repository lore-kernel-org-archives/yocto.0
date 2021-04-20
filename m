Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.75])
 by mx.groups.io with SMTP id smtpd.web11.3706.1618955456381827822
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 14:50:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=giozRnKV;
 spf=pass (domain: windriver.com, ip: 40.107.93.75, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQ3pTvTZt3YLXUuBXX79Hj9nYw1VTr+p3qangurxx8unqSNxCo29iWt1RL7X1QUWbtCAALx1T/8xQw3FW6gHnN+XjAZdKrXqXWK4Qox8kYpQPuLPrGHT8QeQmUQ8PvryQgmGZwPZfVLYHYy719o+VL4PXXrMiePG04H3clRZE+Q3H4KY3yieMmVfJMc7v3Yui17VKpIq5OsiTm6zSqor6uTBq5q/IbDqnXFJr+3LA87MIH9lqZ7I0TgYPKSrez9ZLyJZ25AnVGOb/JYwtlEmPgwprKBAJQlgE/tneJIigFSSKDyeLb93IdrBMDy9qpj1zzUoB4qd1WTuUaYLdCAWmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RSdiPhL6SQYaIY3d+P861x7GmjLtd5ybgoSO5J8S68=;
 b=fyGffMV8jJxe5pFYB1zC2pN4xh/roSGhtgXFVqWimWrEqQWuOZ77EGXbGsMv2rKqof2vfwngHqFeF/BG+DSam0hPHsMdADr3Euwy1ab8gKgwAYZ/WCawxmoUZ0/oR74dDzk17ZEHj7v+B1JcEeXTHc29BckvwT1V0Lowoa0PXYR7CLCARGnVmDzpHWz+KeZRPrpjw0OHdW89t7LWJySSCTxdmUpdj8LWO5Y9sCVAbmuDlsvb5o1e43IxpXtU3FymmmG0/8zp0eKzF9namHQw8ZEEZzvHlJl+PXNg36nZIGbvXCqwaCqpEwOVQ7tRhQE4xjbpqA2eCTOi8HRwvx77Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RSdiPhL6SQYaIY3d+P861x7GmjLtd5ybgoSO5J8S68=;
 b=giozRnKVcWmDyE+/5x8oeH7uQkSsaXd5pHZ3HS+L7y+rC+vM3lnZl33JI3qNNa0kSuO4DiTjD5DhRqJ46OJR3ahkeFPg9IOVPNuTftfbgdYQdqnkMfWdZ31MriYkIgnjBsjIGHV18urD1FW7tqKKsj2CnOaIvVs32FiO2qzGR0g=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from MN2PR11MB3998.namprd11.prod.outlook.com (2603:10b6:208:137::21)
 by MN2PR11MB3967.namprd11.prod.outlook.com (2603:10b6:208:13d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 21:50:53 +0000
Received: from MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::84ae:90a0:3422:acfe]) by MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::84ae:90a0:3422:acfe%4]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 21:50:53 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template -- Build: 20210420-1
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Sakib Sajal <sakib.sajal@windriver.com>, yocto@lists.yoctoproject.org,
 "Wold, Saul" <saul.wold@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
 <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
 <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
 <426696e1-bdae-f49d-cc6a-e375aae8586f@windriver.com>
 <ee652d79-8c00-0606-bf6c-a3fc793b4a8b@windriver.com>
Message-ID: <ae8693af-6b2d-0a0e-155b-2e4468a340b5@windriver.com>
Date: Tue, 20 Apr 2021 17:50:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <ee652d79-8c00-0606-bf6c-a3fc793b4a8b@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::33) To MN2PR11MB3998.namprd11.prod.outlook.com
 (2603:10b6:208:137::21)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0358.namprd03.prod.outlook.com (2603:10b6:a03:39c::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19 via Frontend Transport; Tue, 20 Apr 2021 21:50:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 339f72f1-e70e-4e7d-e7e2-08d904465e3e
X-MS-TrafficTypeDiagnostic: MN2PR11MB3967:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB39678D872FC68B754032E770F8489@MN2PR11MB3967.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+hfgKYTvlKqrgYyT9vPUdZDdftfraGJOe4Gbtn5BRjXeDuoERUocllC5Y49JyiLxH2zz9qdbD38PQSvH8arXzLF65SszA+sL9rYa0QDPnWMcRbg41mptK4XP9j6MF8gog79gS03hgUFu6X00uqaAxi59cMeYVNCV3lYLqgi38YNIRrTSzzBlA5ZnFDlzBQrPbZqyRACUp7pOKW9eXZa7mofLvBGUhBAImCwbDPm35+k5dATQ03ZV1tenlYwlKSc5TnoGnFVEcTWIUyLSiKWx7Drf3GxkknMTVzcVm3KXskouKY6GyYDS/Rtt1J2W5RoY/hRmjl/ibumZxBa7LAVjb+nBdmQS9VxPP6LR8yDuFawDt4HWTwlFRu/g3RvU9icVKuZ/MWtKNeHr/gZp/IvJsv+IIrFdkn4CVw51/dv+8GufeFoHFkTZ9CFTgDV1jNmjbN8u2ASS09cdYGzq+5/qFCyzrKdIqw1bpy5EsjAtvkkq0+E+BX5CSXWnDyW6k1lgAEFyms4ZBoB6TyueOuF61sV4fiUY9LZkZZ7CisqujiOpHA94vNY3iDol2PBAu3DcgngMG5Bs9n/fjOBctVhrBCNXvIYMsAp0u5Nro8TZpLe3UkOD56oStIsDCC2vhe4fahOJRavv7XwsG+yL+WOm/WR7b4j49xTD2TLmky/nyXCDJgqt6H9zJCPCOUVpwSHBq5NG6g9NWKwPSm8Qz4zLtEMrdq9eKtbFUMTYPLlJv+AM0p6Xc5GwA3spWNz9Dn0MguGDsRYzB/MrVNyGSzIVmA4gZLNkhkJGaTFZ2bjhM+8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3998.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39850400004)(136003)(366004)(376002)(396003)(83380400001)(31696002)(8676002)(5660300002)(66576008)(52116002)(33964004)(16526019)(110136005)(26005)(16576012)(36756003)(53546011)(316002)(186003)(38350700002)(6666004)(956004)(966005)(2616005)(478600001)(66946007)(38100700002)(6486002)(66556008)(66476007)(8936002)(235185007)(86362001)(2906002)(6636002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?S3E4WXQ2VmJSODFhNm14MXREWTZhL2RyVTNjTlR4azd5bjBpajJIUTQ5Qmhq?=
 =?utf-8?B?L0srTGVrWGRnc1Urb2pndDZhbDlTcmUzZFlLOEczczlXOXBkN1lVblRjMVhJ?=
 =?utf-8?B?MDFGRG9NR0U3Rk52dzByeVpkV1QrZURQdkllc1VhbWo4VXFtdHdMVE9KTXBG?=
 =?utf-8?B?dFJYUG9peFRZYkRjVU41RjNQUHBxZkxndVpiVHdvZGlCU0V3dXVNRzN2V01R?=
 =?utf-8?B?eTBCV0kyb3p3NkR4M2UwRU1nMDZGZThIU281TXhoS3FUNkxRTDZzM1A3OEYy?=
 =?utf-8?B?RkYxYTBGTy85dDEwMWhab2RUcHRnSG9BRzVvNGswR2hGUTJtK1ZvVS9acFJR?=
 =?utf-8?B?Ti9FMHd2QlprL0hJVDNETWloUGVGMVRzQVp1SmQwaEcvZkkvQ2ZvZkNXb25n?=
 =?utf-8?B?cFhxblk3K3QvWWd6SXJ5and4K0QvSkxxbmlRVzNQdFNJbHMzeUMyTS84YU8w?=
 =?utf-8?B?WnJkZE5ndGhRemU5eTJneEcxc2kvKzFmcWZsaDFLNzd6WW5wVm5oTC94dExz?=
 =?utf-8?B?SEg1c3pISGFJVnZGQnVXMXdEOGxuVGoxT2pTbVpIajZXMEVhQ2lTNnRUY0NI?=
 =?utf-8?B?ZkZ0T25YOU1xRFFkaVNsSkg1bTBjVFZaM0xDQVNKeE5hajlwdzk0NkFJNDlj?=
 =?utf-8?B?cy9pVDJrbzFkSnVVSzArQmgwTk5CeUVLQVlXc2J0SE9xVXpZaFVPRnJTV0hU?=
 =?utf-8?B?dkFkTDhtR1pnMDBTR2pFNnZDMlREbS9UUFFPM3BWMzN1RUsvYk9qVkViYUV0?=
 =?utf-8?B?NXA3c2JOUE51YjdOMmJEOG9vMGVmTDM3WTJCWCtmc2dDYlRvakVaQ3o2R0lK?=
 =?utf-8?B?WjZKcEd1eHNIUGhJZVdJY295bG9mS093YXYrRlBQNktOU1lPZjBla3FWY09a?=
 =?utf-8?B?bzZwcmRDRTJEWkxlUzJyUkhYYjJscC9IVjFtLzZENHVOcWEzaWErSmM5VDZh?=
 =?utf-8?B?UjNDQjdwbkNlc2poUnVTdm5iMEhuTVlUTkl5SWNSd2VBeHhVWXZ2eXd5VWUz?=
 =?utf-8?B?eVB5YlJhVFY0S3JuM3RESmNqYmF5Z1I4YzMvZFpLVVBkR3pUT0xqT0VkNDlP?=
 =?utf-8?B?a05CM3JHT0RMV2xKS1ZBYXpFRm1icFY2M2UzZ25NSHNQbXcvUG1ydUlrRmFx?=
 =?utf-8?B?VFFEOUUvWCtCVkZFRWhoM1YvWmIyYnp1bU1DTTlHRFZ6SldJRVpQc05rc1o4?=
 =?utf-8?B?MFVBWVBwMUlibmdFTG1DcDB2Um9raFJnL1JHbmdqQzR0UVRKQ0cwYVpRMFNx?=
 =?utf-8?B?blpqK1RZc29palhsbmd1NnRpcXRyTlVtZmNhK3pGQUQ4V2hwS3hvWTRsZjFW?=
 =?utf-8?B?alBUWVY5blBaT2V0RHkyazhhZk4zbmo5Z1ozSlBHbFl5TVRKTzdGT2FFSDBM?=
 =?utf-8?B?UFNlRytnb1FLV2tJazFIeEhtSGNmTGE1SnR2eHlQMXZZQjBOT2dyQllIbXBH?=
 =?utf-8?B?dEk4RXdiM2pDajRuY3NWU05GZzJOTWs0UEg2dmJ1YlVESEVrQUxaV3lVQldm?=
 =?utf-8?B?S044c2Y5VVEyUk9SbmV0bWxWZkJjeUpiZTc4WnBKNGFMcVh5T1p0TEJMMDYx?=
 =?utf-8?B?cEhrNWxXWCtCWDh2LzRKZi95bVpNWldDRHhIdnMrSWdQNnNMUk9zSmRKV1cv?=
 =?utf-8?B?RHJGUUxqYWc2NlVQVS9HZE1IaTh1dG9WWmNVRTlPVVUyRU5pY1VUc2VlalIw?=
 =?utf-8?B?cy9XSHBZeVJrNVQzd3FFdWhNVDQzUktIZGYyNGVjSGtxQlF5R2RvNkRhM0JR?=
 =?utf-8?Q?riIw5y9On2I4IFEWD101biMMOeMCMxVxaCiKQEI?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 339f72f1-e70e-4e7d-e7e2-08d904465e3e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3998.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 21:50:53.0375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZIfiYV1Q0Za/nq5Xy7os5k9TqZTWCTMAl4sJyFMijVflCKum0X7DJ03e/dXNp1KI8Aga1BpDMEFxpHm9/Kze/rdhq3dNny1SnojWgMRoTU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3967
X-Groupsio-MsgNum: 53202
Content-Type: multipart/mixed;
 boundary="------------79A16331D4AA57A814A36630"
Content-Language: en-CA

--------------79A16331D4AA57A814A36630
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Summary:

Build: 20210420-1 had 23 triggers and isn't really worth
analyzing. Stay tuned for what is hopefully better data
with a higher timeout threshold.

There is a nice looking pair of graph attached though! :)

../Randy

On 2021-04-15 4:48 p.m., Randy MacLeod wrote:
> On 2021-04-15 1:55 p.m., Randy MacLeod wrote:


 > Should we  increase the interval to 30, 60, ore more seconds?

I've bumped the interval to 60 seconds.


I spent some time looking at the first bit of data along with
Sakib and Saul from time to time.
> General conclusions:
> 
> 1. It seems like ALL triggers involve oe-selftest being active.

Still true.
> 
> 2. xz might be a problem but we're not sure yet. 

Added to graph attached.

> 
> 3. We need more data and tools and time to think about it.



> To Do:
> 
> 1. increase top cmdline length from 512 to  16K

Still to do, maybe. It's not clear that it's useful yet.

> 
> 2. sometimes we see:
> 
>      Command '['oe-time-dd-test.sh', '100']' timed out after 10.0 seconds
> 
> That should not happen so we should understand why and either increase
> the time between runs or fix the tooling. This seems to happen under load
> so it's hiding the interesting data that we are looking for!

With a 60 second interval, this does NOT happen.

> 
> 3. tail the cooker console in addition to top. Present that before top.
> 
>     It would be nice to have a top equivalent for bitbake.

Still to do.
This can be done via the cooker log.
We can parse the file and do:
1. list recent tasks regardless of whether they have completed:
       tail -20?
2. list tasks that have started but not completed.



This email is about:
    https://autobuilder.yocto.io/pub/non-release/20210420-1/
It was a 'quick' build. There was only 1 log file produced.
It used the master so the timeout was still 5 seconds.

There were 23 (!!) times that the dd time exceeded the
15 (ACTUALLY 5) second limit out of a total of 1504 invocations
and those triggers were captured by 1 log file:
    testresults/qemux86-world/2021-04-20--03-43/host_stats_0_top.txt


Splitting each top output into a separate file as before,
now we have 23 log files:

How big are these files, ie how many process/kernel threads were running
when top ran?

$ wc -l host-stats-0* | sort -n
     699 host-stats-03:42:40--23.log
     704 host-stats-02:20:41--5.log
     720 host-stats-03:33:41--21.log
     733 host-stats-02:19:40--4.log
     743 host-stats-03:32:41--20.log
     752 host-stats-02:25:45--6.log
     753 host-stats-02:02:46--3.log
     760 host-stats-03:36:07--22.log
     784 host-stats-02:01:48--2.log
     784 host-stats-03:30:43--18.log
     802 host-stats-02:45:55--10.log
     807 host-stats-03:31:42--19.log
     816 host-stats-03:29:49--17.log
     829 host-stats-03:19:50--15.log
     845 host-stats-02:41:40--8.log
     851 host-stats-02:00:57--1.log
     899 host-stats-02:32:47--7.log
     906 host-stats-03:18:41--14.log
     925 host-stats-03:28:24--16.log
     947 host-stats-02:42:41--9.log
    1084 host-stats-03:16:50--13.log
    1204 host-stats-02:54:43--11.log
    1314 host-stats-03:03:41--12.log
   19661 total



I noticed that several but not all log files were running xz:

$ for i in `ls host-stats-*`; do echo -n $i ": "; grep "xz " $i | wc -l; 
done
host-stats-02:00:57--1.log : 0
host-stats-02:01:48--2.log : 0
host-stats-02:02:46--3.log : 0
host-stats-02:19:40--4.log : 2
host-stats-02:20:41--5.log : 0
host-stats-02:25:45--6.log : 2
host-stats-02:32:47--7.log : 0
host-stats-02:41:40--8.log : 1
host-stats-02:42:41--9.log : 2
host-stats-02:45:55--10.log : 1
host-stats-02:54:43--11.log : 0
host-stats-03:03:41--12.log : 0
host-stats-03:16:50--13.log : 47
host-stats-03:18:41--14.log : 0
host-stats-03:19:50--15.log : 9
host-stats-03:28:24--16.log : 15
host-stats-03:29:49--17.log : 0
host-stats-03:30:43--18.log : 0
host-stats-03:31:42--19.log : 7
host-stats-03:32:41--20.log : 7
host-stats-03:33:41--21.log : 11
host-stats-03:36:07--22.log : 15
host-stats-03:42:40--23.log : 9


I've plotted the number of xz processes along with the load average
and the dd time  in the attached graph.


All of the top output logs seems to be running oe-selftest:

for i in host-stats-0*; do grep -H -c "DISPLAY.*oe-selftest " $i ; done
host-stats-02:00:57--1.log:1
host-stats-02:01:48--2.log:1
host-stats-02:02:46--3.log:1
host-stats-02:19:40--4.log:1
host-stats-02:20:41--5.log:1
host-stats-02:25:45--6.log:1
host-stats-02:32:47--7.log:1
host-stats-02:41:40--8.log:2
host-stats-02:42:41--9.log:2
host-stats-02:45:55--10.log:2
host-stats-02:54:43--11.log:2
host-stats-03:03:41--12.log:2
host-stats-03:16:50--13.log:2
host-stats-03:18:41--14.log:2
host-stats-03:19:50--15.log:2
host-stats-03:28:24--16.log:2
host-stats-03:29:49--17.log:2
host-stats-03:30:43--18.log:2
host-stats-03:31:42--19.log:2
host-stats-03:32:41--20.log:2
host-stats-03:33:41--21.log:2
host-stats-03:36:07--22.log:2
host-stats-03:42:40--23.log:2



The logs DO seem to be clustered in that there are several 1 minute 
adjacent intervals where the dd time exceeded the threshold.

Data here but you can see this in the attached graph.

$ for i in host-stats-*; do echo -n $i ": "; head -1 $i | cut -c -15; done
host-stats-02:00:57--1.log : top - 02:00:57
host-stats-02:01:48--2.log : top - 02:01:48
host-stats-02:02:46--3.log : top - 02:02:46
host-stats-02:19:40--4.log : top - 02:19:40
host-stats-02:20:41--5.log : top - 02:20:41
host-stats-02:25:45--6.log : top - 02:25:45
host-stats-02:32:47--7.log : top - 02:32:47
host-stats-02:41:40--8.log : top - 02:41:40
host-stats-02:42:41--9.log : top - 02:42:41
host-stats-02:45:55--10.log : top - 02:45:55
host-stats-02:54:43--11.log : top - 02:54:43
host-stats-03:03:41--12.log : top - 03:03:41
host-stats-03:16:50--13.log : top - 03:16:50
host-stats-03:18:41--14.log : top - 03:18:41
host-stats-03:19:50--15.log : top - 03:19:50
host-stats-03:28:24--16.log : top - 03:28:24
host-stats-03:29:49--17.log : top - 03:29:49
host-stats-03:30:43--18.log : top - 03:30:43
host-stats-03:31:42--19.log : top - 03:31:42
host-stats-03:32:41--20.log : top - 03:32:41
host-stats-03:33:41--21.log : top - 03:33:41
host-stats-03:36:07--22.log : top - 03:36:07
host-stats-03:42:40--23.log : top - 03:42:40



*** Add time distribution of dd.
Oddly enough, the output of dd does not seem to be consistent:

102400 bytes (102 kB) copied, 0.0163975 s, 6.2 MB/s
102400 bytes (102 kB) copied, 0.0054732 s, 18.7 MB/s
102400 bytes (102 kB, 100 KiB) copied, 0.0984687 s, 1.0 MB/s
102400 bytes (102 kB, 100 KiB) copied, 0.304233 s, 337 kB/s

I'm not sure what's going on there, yet. Sakib?


I think the cooker output will be quite useful.
I'm not going to put any more time into this data set
since the time threshold is still 5 seconds.

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
>>>> The template is not used anywhere, yet, the initial patchset 
>>>> enables the
>>>> data collection by default.
>>>>
>>>> I have left the template in case the data collection is removed from
>>>> defaults and need to be used on a case by case basis.
>>>>
>>>> I am not entirely sure if nesting templates work. I have not seen any
>>>> examples of it, neither did i try it myself. If nesting does work, the
>>>> template should be useful.
>>>
>>> I had a quick look at the code and sadly, it doesn't appear I 
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
>>> 
>>>
>>
>>
>
>

-- 
# Randy MacLeod
# Wind River Linux


--------------79A16331D4AA57A814A36630
Content-Type: image/png;
 name="time-dd-latency-distribution-20210420-1.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="time-dd-latency-distribution-20210420-1.png"

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAAaXRFWHRUaXRsZQAvaG9tZS9ybWFjbGVvZC93cnMvbHRzMjEveW9jdG8vYWIt
aW50L2xvZ3MvMjAyMS8wNC8yMC8xL3RpbWUtZGQtbGF0ZW5jeS1kaXN0cmlidXRpb24tMjAyMTA0
MjAtMS5hZ3KxmCyGAAAAD3RFWHRBdXRob3IAcm1hY2xlb2REvodEAAAAFXRFWHRTb2Z0d2FyZQBH
cmFjZS01LjEuMjWOelr/AAAADHRFWHREZXNjcmlwdGlvbgATCSEjAAAfPElEQVR4Xu3dWYKDIAyA
4ekN1PsfdsqmqOAKhtT/e5ipCJpqUqvd/v4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAACAF+mzE1bXd8umfZ0Z068XNhc6HO0HPKX/fD7piahx2bSjGz4fk8ru7wbboR92
V7C7IKC0Lk7L2URoG84fMQabyf2wbF9wHVIrndtdEFDcLC1nE9cfpvvcQ3yyeaMwkv2BB2QLo8vn
655cYQzJ5nxh3AgBuCdbGPl83ZUpjExzfkX5OUA15iR5CM/wZxN+urcXpPyZwGDPw80Jh/nne5nT
9Xmy2xZXAZ2/mmT6myXZ//bko/+ehQxjh+9KO7+cvjdN33bTfwwhLMg0fPxFsm9U4SQfKKmzuekv
RM0mbEPvstLkopvqhqEfTPH05p/tZMok3HaGj236JmzIddvU+etP38Kw6WyWOnYw06bFlJ69RGXX
PYYwW5BZrKmxwYzvXT+gpCG+JjSbcNxtk3y2gz1Y/PmDhW/zeT1dturcbXNVquv9tSl/KBhvmiNH
920IHUxh2KF2rF9rmGNmzBYULh+7QPavaAHn9D6fbWrNJrxwe5aqPpcHm7GuQ/yo7Y8evhj8X9s2
S20/IE7/sOh1YYSpKZ5oisJAYTa3/3xqzSa8ZGHE/8zphBOG2GdMYy/3t3MnJlNzrjDco3+2MMaD
g3tBkMJAHbO8nxfB/Ha2MNZJGVI+Lgx7lhI35wojjiRRGOMr8O4GhYE6EulYpzDsabh9qkZhoH2J
dDxdGD7BR+nCsLlsFrJXGOZkZKswwsIpDNTjT6Ndas0mvN3C8KfVf/aqrRXOA+LCsP07m9V7hWGm
soUx1mGYcmMoDJQVnprYf7MJb7cwzGm1mXCXen3fqJf/O7VsF0Zv/7knXeOF3KhfeBeu+5cIGCjB
vjLhXkxeTDjmdWr3ql+Uqv7lPDdlun+ml8H/wpFhcK8Kur7uSrC97GVfsPOverul+BdFTI/xJZCh
7wfztxtDGFfqXlB0veN/QEEmfYfvM3uf8dGEZc6Zuz+X++7KrHmxL/yzhwlbGdMIP+jTfR/izcvW
dqb7755tmZe3/UVeWyZutK3HcE3XTtgF+KWNC/IjbD/X5oKbrR8owCZfcmJs2bPu060bZ+tIimfk
bqemAQAAAAAAAAAAAAAAAAAAgKeYrwS03w240oXG8YbjvrzQjnQN443wBc1Tg/sVjakhjJ3NBRpk
P6tqv6VwYqa68H07fbhh2U9j2A9qmC/QNC32oxb2De2+4zjH9B4/7WTeqv79E//iwPg5P6A9/oOv
s49ImAn3OdT4huE+BWi+kdPMGcxBwPQwhdC5juMc88+k/tjDfkRqWlHnPgIONMkXxipHk4XheplP
7dlSMJ/Sm7r4v2HOtxJs6o893CdgoxWtVwq0whaGPQjYh3b7peUmt/3j//cExFbObEh4sA+Z7Q4Q
/rsOxjlddEz49oirx6Ew0C7zCe/wncpmsvcnC3bKPXOap7M9g5gXhjtzWBZGH6X+tweFAU3s93rM
CsPdMH/GQ8fsypQpg1lh+HPtRWGY/yH13W9vTJ0cCgPtsk+l3K9brApjqpeIveQ6Kwx/DWpeGFE3
12MsDP+rMRQGWjZ9u9mxwnAvPvgfznBPofwc1zHMsV98Y74BJ/RwJ+Tmd5IoDLRvszCmR/ogvGQ3
XXtyWW9uhMwPc0Lq+x5clYIi/qqUrYfwi2GhMOzLG+bke/xx1W4wL5Sbs28zxyS2bfA/p+QWGOaY
23EP962HfkHjXKBFvfvqQJui9mfvhq4z35T5/dObK0nuzDwcNfwTpN5XiBvjnzCZa1umJcwxTM+4
R/yekK5339IJAAAAAAAAAAAAAAAA4HHuXT1ARcuk0+BW0EoH3xv9xsH3Rt8aLOVW0EoH3xv9xsH3
Rt8aLOVW0EoH3xv9xsH3Rt8aLOVW0EoH3xv9xsH3Rt8aLOVW0EoH3xv9xsH3Rt8aLOVW0EoH3xv9
xsH3Rt8aLEUuaLk1C676jWuWXPV1ckHLrVlw1W9cs+Sqr5MLWm7Ngqt+45olV32dXNByaxZc9RvX
LLnq6+SClluz4KrfuGbJVV8nF7TcmgVX/cY1S676OpVBQ5X2csx/O97qlxKj31JsL2j8mtZybPnT
ieMvJUa/pdhc0Pg9reXY8qcTwy8lTr+lqPjt8tCjuQRbfEl9+E766VvrKQw8oLkEc4Xhvtb7435x
0bSFBgoDj2guwY4WxmgaCtzSdF4dLYxpBFBecwlGYaAFzSWYK4Xw04njLyVOv7JIYeABzSXY7lWp
vwaDxs9pLsdcYYw/nTj+UuLstxSbixq/prUUW/10YvilxNlvKbYWNX6OyhTjNAP1KM4unVFDE5Up
RmGgNpUpRmGgNpUpRmGgNpUpRmGgNpUppvi6AZqnOLs+OusZiqjMMAoDtanMMAoDtanMMAoDtanM
MAoDtanMMAoDtanMMAoDtanMMMVXmtE8xdnFEQO1qcywj9K4oYfKBKMwUJvKBKMwUJvKBKMwUJvK
BKMwUJvKBKMwUJvKBKMwUJvKBFP8Egyapzi7OGKgNpUJZoJWGTjUUJlfFAZqU5lfFAZqU5lfFAZq
U5lfFAZqU5lfFAZqU5lfFAZqU5lfFAZqU5lfFAZqU5lfil+0R/MUZ5cNWmXk0EJlelEYqE1lelEY
qE1lelEYqE1lelEYqE1lelEYqE1lelEYqE1lelEYqE1lermgVYYOJVRmF4WB2lRmF4WB2lRmF4WB
2lRml+K3eaF5irOLIwZqU5ldFAZqU5ldFAZqU5ldPmiVsUMHlclFYaA2lclFYaA2lclFYaA2lclF
YaA2lclFYaA2lclFYaA2lclFYaA2lclFYaA2lckVglYZPFRQmVsUBmpTmVsUBmpTmVsUBmpTmVvh
oyQqg0fj1H9QSWlVQwWVuUVhoDaVuUVhoDaVuUVhoDaVuTUGrTJ6aKAytSgM1KYytSgM1KYytSgM
1KYytSgM1KYytSgM1KYytSgM1KYytSgM1KYytSgM1KYytaagVYYPBVRmFoWB2lRmFoWB2lRmFoWB
2lRmFoWB2lRmFoWB2lRmFoWB2lRmFoWB2lRmFoWB2lRmVvQFJyrjR8t+4Otz5jeBclQmFoWB2lQm
FoWB2lQmFoWB2lQmFoWB2lQmFoWB2lQmFoWB2lQmFoWB2lQmVhy0yjuA5qnMqzFoxS9Som0qk4rC
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
3T9tTKzo6BZ4+gAAAABJRU5ErkJggg==

--------------79A16331D4AA57A814A36630
Content-Type: image/png;
 name="load-average-dd-time-2021-04-20--1.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="load-average-dd-time-2021-04-20--1.png"

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAAZHRFWHRUaXRsZQAvaG9tZS9ybWFjbGVvZC93cnMvbHRzMjEveW9jdG8vYWIt
aW50L2xvZ3MvMjAyMS8wNC8yMC8xL2xvYWQtYXZlcmFnZS1kZC10aW1lLTIwMjEtMDQtMjAtLTEu
YWdyayzyXwAAAA90RVh0QXV0aG9yAHJtYWNsZW9kRL6HRAAAABV0RVh0U29mdHdhcmUAR3JhY2Ut
NS4xLjI1jnpa/wAAIABJREFUeF7tndm6pKwOhlfto/9Qvf+L3RVmQxKCgkNX3qfbJRBCRD5nrb8/
wzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAM
wzAMwzAMwzAMwzAMwzAMwzCGsOKMKSzVDMuyVjZVxp5yERZsG9NF/rIWTawr3wNEKA46N8FVM+5j
/Tj4db0HzHHeDJbN/1kVka11SKE6SbkIy1Yt+ubH6Lplp9u2rlvwuHy+wvg4G99zH5BK7EMfSujT
L1twHpwGcrmDXALjduqxIbFcsg7DwP6Gpoht2Q+7kIdzMrtF2FAD3tfiB2zIcr4+bro4TQRlfK1C
01uYiaEsPm7QXTAoQ/RqD2oAAVJLYNxN5+aqz/oYcVgvYQwdQFJGuQiogTiwC6NgsTplhNww3qNs
lyrKWLJFN+XQ98disd8v6E/jCA8URtjM/lXjtoN4FEPAC2PNckpGcQb+RuvwNwx/vxvZkfZ0WTu5
0J9RxH7n4zRu5XnCiMfzf3jc9lCORAQrjHKER6PUPTDE4zAPmeGAqdZFLYxSqN48Oq4rG4+gEgac
G8bVCEfJcdXC/LY/x3CmsGZXIPyNBWFTucER90K5Kpzshn+RwsKAI6TV14U/wcgf/n9bDkUOSlK7
RXDt7hpYi2XLwggGcCxV7EagGRd3OOEIRiGkQhihtPQdMnJOqPZdgnA5IJ+d7PvKuA4kjMUNt604
1wznp64AzkqzLWza/TCLg3v1xrAinQvIhzpr7Qp0AlWTbaQcq3thLF93y7atcK77HdO+Fvjxf1ZX
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
9rjBHQ7BYpzfFkLUMBOXBhZtdYvhf2QD7s/D0rppcO/2IAvYffPdEhuGYRiGYRiGYRiGYRiG8T6K
V9HCw6V2sc/4edKraP5HbCEjv7JmGL9KfBXNPxMHGXDLKDz8Yxg/ir9xCnuK+FxD+XCQYfw07tki
f0TlH3uwp20MI7yfA8/mxMfSgjD8E0GGMZFiID6N9Ivt333GXhjJ5BZubv7u9m9u/qL2r2nlEPnq
LLxGbMJI3Nz+zc1f1P41rRyh+IzRVw/xlTWXvjnom5u/u/2bm7+o/WtaOUB4Fc3Nxzdv4lWpm4O+
ufm727+5+Yvav6aVfuKraP7VfrifUbyydnPQNzd/d/s3N39R+9e00k16FW2DlyVdVvHK2s1B39z8
3e3f3PxF7V/TymBeGfQ4bPEv4JpWBvPKoMdhi38B17QymFcGPQ5b/Au4ppXBvDLocdjiX8A1rQzm
lUGPwxb/Aq5pZTCvDHoctvgXcE0rg3ll0MareOUYe2XQxqt45Rh7ZdDGq3jlGHtl0MareOUYe2XQ
xqt45Rh7ZdDGq3jlGHtl0MareOUYe2XQxqt45Rh7ZdDGq3jlGHtl0MareOUYe2XQxqt45Rh7ZdDG
q3jlGHtl0AbHfx6cfS+vHGOvDNrgMGGM4pVBGxxOEyaMAbwyaIPDhDGKVwZtcJgwRiEHvf9o9T8E
XtB/BRPGKOSg5dL38q8ulwljGHLQcul7+VeXy4QxDDloufS9/KvLZcIYhhy0XPpe/tXlMmEMQw5a
Ln0v/+pymTCGIQctl76Xf3W5TBjDkIOWS9/Lv7pcJoxhyEHLpRj4fRrp18MXqVBL+GEolEuRf1+t
om+5XoQJYxRy0HJpxeZ+R5xj3TrdUbifTVs4T7v2/U84kzDV348JYxRy0HJpxfoRt+Thh2LP4Hc6
C+ep+BVOSLHRMNXfjwljFHLQcmnFfGEED0pP8dfNK3TVX4gJYxRy0HJpRSmMJZxuLOHn/r5/83B2
5yK+xJn5cxPISPn1X7ALR0fZk6uzggewceUhpzCv6Fyu92DCGIX8UF3M58pRQSGMbfueUizuV5MX
yP1uvNOZAfxiLMy79AoFbv57gPStlGrA7OdbDWpGv+E3mEthwC9ufkJr0ILzsoaTDffDzQTs8ryd
hwlDHl2PRg46lH44M1SQhbHBwISxCtvub67flEdhbH7eK8aJ6DuuvaHfhbjEn/v7NfqO8xhIJQyX
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

--------------79A16331D4AA57A814A36630--
