Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.72413.1629390522804319478
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 09:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=K+U9AqHh;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3865af41f9=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17JERL1w018525;
	Thu, 19 Aug 2021 16:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=HrCqMdbxWiK8tb3YxYqkwLKWstG1krkfJ3Qk+kcVxvg=;
 b=K+U9AqHh9lM4s+Ra7b+6t87NJTaY3PC+qRrRq6eweLn4Xpka869HKSDgppWldhqtJEUh
 Sb/bpZ9hMPwDbSgsyaSGewCtB6bW9VtVAKmpoqykDp+X87eatxChOMcfQfa66UZVZ2LO
 FAceJt3kSBP6VehfL7h6gpc0Ivt6fDg7XBg58/xlH5pGCD/sCgeOjpvW3MG3jmYQ/uK4
 +QsvLIuENcumAMQ0LWlE/g3IEZk+BDbwx05uwkEHqwyrc3d49rHT047vg2+9dtCOK+yQ
 J5IwAaSlUg21T+21HjYnkyBMN4as7cpc7/xoVrRJx02eeylv01yWs3sLxV3TpntwX4OQ 4A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahakcrkgj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 16:28:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JwEFiDRw8XiMnFUz8YkXgiS/ksZH8OZz0Ju++xTTlm4zppbEDLaB6L2Hp2sfzfIU+jIWlxSLDSx96HfGWnjbBHxyWp8CjnN7FHz7z85qxQexU/Hy4BnglPQevsReMthxJDJgPzZGtJ7GPm5tYjiD6g4Qmfo6rd3IHJJz2UGklh2gnpunVA/BTnbPgKOibb58o0NIHJxauNBWVLSofAcvLJlUqo8jRR7NwPW6K/lIcy+50H8IcIaWWR2krX8BN8Vq09AeH1867OMHdwlwJOUiJWrDAuSaOFtYS0TS+uxBNRo3QHwGaIpio1SIp4P8i3eNWHj1ItDizrLhypc9kjHcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrCqMdbxWiK8tb3YxYqkwLKWstG1krkfJ3Qk+kcVxvg=;
 b=F0WYSnlNZIkNAtu2dH+k8GOB+6AdHtV3fMV1a3G36k6fB+ROcJ8oY/QXVtJ40C5+GNc313wlni7eCJ74WYochVdbEsdHuY1STtmC6o5eJHQ53nfUeHX3sLncOf8uEgfnUwhdEBt/j7Dh6uuEkNBlE257ihvI4/NoGhgewj0mKkij5uzlfqjIdOnMEOsmeavFg+O9C6erK/hri0Nwudau8rcmSzLh9/sE5S0OK1NkotQ0MLdtseXj9UvWV2cnzN3ilPTzASFce7LrULiCWUC+QurDkWsL+OkuPv+1C8fl5YgmcZBjjnIiX9/Nrhm5ZZzYqqN1beNfAGulEfl3pSZlLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4739.namprd11.prod.outlook.com (2603:10b6:5:2a0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 16:28:35 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 16:28:35 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: [yocto] Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: Aug 19, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <00b29015-5ca3-9fea-1226-4ed1947af3a9@windriver.com>
Date: Thu, 19 Aug 2021 12:28:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BY5PR17CA0002.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::15) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.7] (198.48.226.187) by BY5PR17CA0002.namprd17.prod.outlook.com (2603:10b6:a03:1b8::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 16:28:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99acf3de-7547-4511-c9cf-08d9632e640e
X-MS-TrafficTypeDiagnostic: DM6PR11MB4739:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB47394D523F4251DBB2F563BEF8C09@DM6PR11MB4739.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TN4AbKIPhR+u9043Gxhmwm/yUmaXqe/oFZKTaSSvoz7GM+GXPpiVoIsWeTcbiEsHs8vVp+OyPz7yVSygwRHk7uK0jj0WoTFFicbmXlVdl6zo7bm1/FjGDvv9PFPmTihPbOyrcHVrfTqspCivBi+vUZS5EHOSV/HMOk+tcJ+vueV4betmRHHFQnEuUOLT5UPVfLLb7rMc6GJICaUNXkMwnN/Co0iQkUysG99mr39+3gRftCvS5eAo6hIIiZbbEiXYcFNadSQOs03u+Qo9rjhSa7ZonXuxYQXd8ep7KwpHxm4nm/RXqrXx5juXYsbS9KLFcof55FimSi3BVuOzoW2AIdix+ni0x493XE1Y7yyOu9aVOF2RbWQSEWpFQCIO3jqf3URIbx9+deIeyy8dst6hYYxoj1O/s66yc1c7b1i608NErj19oRvQt5oPHO8vBzjClk+auVRQkkUtKBBhlGKC3qMoelRlGn7IxFfPzI0cllsYP2GhaSfp7NCZJY//Y9rF+RHuHHwf/kXg9mcynksbHdTAv5gANZUHNyIh2iR8kiyN7LDvppNlxQoDcXsTryphUyC8wF7Izzfrhq6RWlVdyb7v2Te/Z6AnNcwrUP1bE4t0PqWxquBCdoUgKJEN3iSsURCb7F2JWKbNNvxoWYBQeX7CJlNGmidt9zgHG/cmAmy6ejuP2gUuLxYch1Mcy1qVSXW0sF6j3fdKz4QnPVidKSjlLKRmDrXHfzwMXU76l3FSh5zKRzE4MET5ypmk9k0VUXUZScSbBtCTey0Id4kJ41SH6wOI1Ul1Q/pMqbhxA3okXCFbBrmrFgM6Df1JobFqwObVkAc2pLwzm7udLXtJUbvjJQ7WL01CRRzDN6puLmQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(39850400004)(346002)(376002)(54906003)(4326008)(31686004)(966005)(83380400001)(5660300002)(110136005)(186003)(66946007)(36756003)(66556008)(66476007)(6486002)(478600001)(316002)(52116002)(26005)(8676002)(8936002)(2616005)(31696002)(956004)(86362001)(38350700002)(38100700002)(2906002)(6636002)(16576012)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RzBDdVJKSEsxV2JOVUdZTXpET2Q5UE5WVXZzaWNhTGZiQkdtZ25CbnJINk9j?=
 =?utf-8?B?Z0RmTkFYVDI3RmZRZVJGL2t3UG5VNmpoYjUwRnA3UnhhOVFwY1R3Mml4Vkdx?=
 =?utf-8?B?K3lkR0lkY2NPTmNLRlg4VTNqOHQyWG1VSE5XZ2didUhrNVdRaXk5eGoyVjd3?=
 =?utf-8?B?OWEyUnllUXp5TStPOHZjYlozU1NpYjRsVm50c2wxTGNnVWVNNUQ3VHNpeGFY?=
 =?utf-8?B?SDdtZ1h1WkN4QWl5UFV3Qk9tS1pTd3BpdkxsTGtnT3JZVHQwUThDWVAwZHI4?=
 =?utf-8?B?aURqc2gxNWhUK1pKOWFnTmZ5YVBxN3pPWnc0RUNnV2JkVExaWDJqOE02SE5C?=
 =?utf-8?B?d0hINXZja01BSk5vRWJuMXVpRzZGK1BUQXhmUTdJb3krcURJeEhFaGRUU0Z6?=
 =?utf-8?B?NU9rd0RZRU1NOXN0THJuSTNrdVpyZ09HdytoUEpyMmlNQVBFTG1LQ1lMaEhz?=
 =?utf-8?B?bFNXQzBYOW8vTkRJdXBqcXpwYUM1bjJ0NVRBaHo0V3lnY3NnajBRQzNTS0hQ?=
 =?utf-8?B?VVJSTERvV1FCNlA5VkJqbGxjWUs4SVJEV2Jycmh0aC94Nk03anVadmM2dUJ1?=
 =?utf-8?B?Y0ZlN1Vnd2ZDenVvenNua1IrZ2xZTkdpRXZHckhEVWl3WkFuQ3JJclE5bW11?=
 =?utf-8?B?Qk11SG9TUTdtRXFoT2pBYXd3MXJRekI4bGFxc0FRMld6cjhRY2J5bzF2eXVQ?=
 =?utf-8?B?U20wa1dxUmFJVXRVTEJ0R2p3L3BmS3ZYMUJSc2dBYk41aDNZU09JcVRQV21S?=
 =?utf-8?B?cThScEpJTytjSEVpOUlkVXNtSk5IUUFScE11cUtxTktjc1RQVHZaOWM5KzY2?=
 =?utf-8?B?amdsV2tFelJVbTh2NkZPK0NXUU8yWTQ5NU1QWU8zbmJPWFpYRy9uQ09aV1kz?=
 =?utf-8?B?b1RXMUlwZTlNV3RzbC9UVEFrTjF6K0RTQXJidmdaQkpKSk1KWXNkRDhwM2F2?=
 =?utf-8?B?RGtteWpHc1U0UG9RNHRRNFpHbTQ1ekVreEZtVnJKZjg4V0o3eDVGczhMaVBl?=
 =?utf-8?B?b2hxYTdjVllaczM5c3hhWGxCN2FGVzBIQlZLZldnYXBraWQzWnVKcFVpUlB5?=
 =?utf-8?B?STlDWUZWeGJ4Vmd0dUMzc0hjOFBRQ1IxeTVubVg1YzhkWEZmdHhYMFhoZmMz?=
 =?utf-8?B?eDIyaXIwMEpRUFhZZmE2OEltblU0cGd6TU5zZlFzTlFXUEl1eWRuSGE5ZnVR?=
 =?utf-8?B?SWl3Y1JMK2lvN1NUekl2eE8xUitjUjAzVGpJdklKcG43MW12Wm16YitSMDBN?=
 =?utf-8?B?a2wzY25qbk9vNEpQendlUTRyQkVLaVNFM2pjV2R6L3FVSGRscDc3NWV1U05t?=
 =?utf-8?B?WGJHYjJPRVdyMzNGcXRwT1c5a296ZWZtejRCMFlvUXBDZnlKbkJVcDAxanU4?=
 =?utf-8?B?b3hKV1grLy9wT0FMZ0VWM1ZuUmRBQWJFeGEwUktEL1BXWk91MFl4NlVtenVz?=
 =?utf-8?B?bHFla3pBMjI5Z1ZGSUJ4TUtMbm9BZTNqOS9tbjF4c1BHVXhpVkhXK3VpR01S?=
 =?utf-8?B?cmIxSDVXdnhTaXlEVmhiWCtRWmtnaklTbVpkbkJqcEJua1BTamJCczhDTWV6?=
 =?utf-8?B?SGdPWFRyOFIwTnVXVVc2QWdRakxvVUIzRVhSQThOOWd5dksySU4zVmFMc3BB?=
 =?utf-8?B?OXRQUFMwWVlRZElPamhESDBRYkRlMFhoQXNSN05OMWgyVFQyb2M3YncrTlRF?=
 =?utf-8?B?Vjk3RS9pSStKdnh3SGdEUzh1VG9KQWNoUnpWNWdVS0tvSFZQVVpmMG5hdStD?=
 =?utf-8?Q?UnuqtXkFPq/H8B4sVoroj3DDjlrHBS9TUUr9CFY?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99acf3de-7547-4511-c9cf-08d9632e640e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 16:28:34.9531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCVX07qhGFfzv7kbGCkdw0GCQMd+l1/icomzVHVjabdu0zecr63w4UGV9427DHspWTj6O7px25Rl1/GxGOGD8JYa7Bl215C0XYfbnZKzYD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4739
X-Proofpoint-GUID: bhZ46GlckfXxrAjG_Hv3qBctSsQqFuTM
X-Proofpoint-ORIG-GUID: bhZ46GlckfXxrAjG_Hv3qBctSsQqFuTM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_08,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190096
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
Aug 19, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees: Tony, Richard, Trevor, Randy, Alex, Saul


Summary:
========

ptest results continue to improve but there's still room
for even more improvement.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell. Trevor investigating.

There's not much new this week, I've commented on a few existing
activities below and added "Aug 19" in most cases.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

     Richard: lttng-tools and more!
     Alex: SWAT plans. September email, training.
     Sakib: hook more responsive load average in to latency test. (v3)
     Trevor: patch to set PARALLEL_MAKE : -l 50
       -> dunfell, gatesgarth, hardknott (Aug 5 - it's a priority)
       Investigate dunfell which failed with this change.
       - data on WR AB load average.
     Tony: go back to school. Thanks for all your work Tony!
     Saul:
     Randy: Gather more iostat data, graph it!

Meeting Notes:
==============

1. job server

- ninja could be patched with make's more responsive algorithm
     next or is this good enough?

- Richard suggested that we extract make's code for measuring the load
     average to a separate binary and run it in the periodic io latency
     test. Also can we translate it to python?
     - Trevor is working on this and had some problems so next week.
       (Aug 19 - Trevor is back from vaction so maybe next week.)

- Trevor to see if the load average change really did reduce load
   on WR build systems. (Aug 19)

2. AB status

      Trevor is learning about buildbot and working on a scheduling bug
      (CentOS worker?)

      bitbake layer setup tool should allow multiple backends:
        eg: kas, a y-a-helper.

      ptest cases are improving, we may be close to done!
      Let's wait a week to see how things go.
      (July29, Aug 5, Aug 19,  we're not done...)

      - lttng-tools ptest is failing. RP is working on it with upstream.
        The timeout (done on Aug 5) increase hasn't helped.


3. Sakib's improvements to the logging are merged.

      Sakib generated a summary of all high latency 'top' logs from
      ~July 23->July 29 by just running his summary script on the
      merged raw top logs.

     More analysis required....


Still relevant parts of
Previous Meeting Notes:
=======================


4. bitbake server timeout ( no change july 29, Aug 19)

      "Timeout while waiting for a reply from the bitbake server (60s)"

5. io stalls (no update: July 29)

      Richard said that it would make sense to write an ftrace utility
      / script to monitor io latency and we could install it with sudo
      Ch^W mentioned ftrace on IRC.
      Sakib and Randy will work on that but not for a week or two
      or longer! (Aug 19).

      Randy collected iostat data on 3 build server:
          https://postimg.cc/gallery/8cN6LYB
      We agreed that having -ty-2 be ~ 100 utilization for many hours
      in a row is not acceptable and that a threshold of ~ 10 minutes
      at 100% utilization may be a reasonable limt. I need to figure out
      if I can get data on the fraction of IO done per IO clas since
      we do use ionice to do clean-up and other activities.


../Randy


