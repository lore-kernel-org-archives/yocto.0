Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.858.1631202745511559873
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 08:52:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=c0WLHxC2;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=48863f701f=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 189CwGdh029891;
	Thu, 9 Sep 2021 08:52:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=5r4LbPrOosFnUDTCGi4kYEOxf2C93dagQdAFtEijk/8=;
 b=c0WLHxC2fOfio2hV3jI/nE6AmsyuZ4wRsRWirsb7paukziT04tbPDpONn4k71mNY1hPx
 1B8T6iE+CCIhxsejVaovg2Q898ZHCiXW10Rz0nBslxLy6XrRblfQJ9xAXu1/BsqX0qrt
 FPV9cpx4ZQIKwuRHno1JZwA+WcqTagA6tTHiNd3qUiulc/rLPafTwIJYFHjTC0lMQ+RH
 nHmbedoaeZOP3D449JeysHF4FbSkwioyAvBHn16MuDIitTcEYQTD5aeUBeMTnBOH0Ejd
 43dDHgWO/jjUWq0Ovh+TTi33uQPUE4w89+FS//Y2n785Fl1X8dofXJFtCr8pg/lo9X8L 0w== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ay7ga0jvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Sep 2021 08:52:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejoxyqOYv7V/lMxx0S5KShrK0aeTU8uuELZ4gtTObkZa+/QjkLkGpjXI9YHd39tDUjsVy5RVcjUf2f584fT2osqI4n97Ebt1MIoa4y3We2wgo0dImPBTw1GO7rhFpX/mSQa8nqTykv8fodCMgMcShPo12e/zEzgc/Ik5HSJ1aKMCf4TksmoyyirR4K+C/MFZgK76eEasrdUAso/Kkfssh/2X2e68awDclAsoc+ihJEeLjd8iwQ9f3IjnlFDDjGCwZHXAnz3XoAWNpS+jT66NOlkTUoTrTH3mj2p5MjH94fjcwcGsiMBWsaiFJbRfjKNdyUiYxIbOTN3RGakzUG6TcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=5r4LbPrOosFnUDTCGi4kYEOxf2C93dagQdAFtEijk/8=;
 b=W5R9xmX28ro3uQ1bfWXHYzogGai6q8A5Zreb3XWVogGgm+qjS/CoJxjVDqFAvIfeIrno8V9wkQSzc18cqYmvt0VGbTzgszgOyVFqn6OLpo9V8Yv+GV46SBEnwF2Z+Y5fnrHZcXusgJw00KEhQLmc+pUG0uqbNshLGetnSgW8U8MshWqFDGQomsc8XFnOBtAhec/e57H7Ng1nkhkqQvCgX2HxVEERoNGTKGZ2R0qv/sektRdBHB+epqQ7wqdcR74SYenaL2MMVgd8k/nR+33/RDkhfOuHvwUa8FfaH6fmRnBezFwUMurm6wsRFa6TPtI3CjJqf7Bdh6y6qQaBBdVi5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2713.namprd11.prod.outlook.com (2603:10b6:5:c4::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 9 Sep
 2021 15:52:17 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4457.024; Thu, 9 Sep 2021
 15:52:17 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: [yocto] Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: Sept 9, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        "Surendran, Kiran" <Kiran.Surendran@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <e625c321-122e-61a8-df98-a1793848a795@windriver.com>
Date: Thu, 9 Sep 2021 11:52:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
X-ClientProxiedBy: SJ0PR05CA0057.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::32) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.7] (198.48.226.187) by SJ0PR05CA0057.namprd05.prod.outlook.com (2603:10b6:a03:33f::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.9 via Frontend Transport; Thu, 9 Sep 2021 15:52:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d0ecad2-b0f0-48ac-e829-08d973a9ccda
X-MS-TrafficTypeDiagnostic: DM6PR11MB2713:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB27136A0326FC98D1EA91ADAFF8D59@DM6PR11MB2713.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JXJHt0XWu3BY04qiSZwfliDrvDqZBCFKPH7TL9hHNCVQP5uMWJgCZwK4q75loPUhZIN9g2atLeCt2ZO5i7LQRNcWcSmNKobj/8YjBgI0nRPfzoXLqInOGaIYVN5eDL1C4XLEei/OT4jdGWSjvV7yyDw56usjKAKW4tJNDcWBqXuzVTxWnz5J22DMhGQjfedcR5O6ikM49w8Jzy/hveKV9L7L1xlBGiW6cW6HQ3I8Xmy6/OSnjHlqF1BmzR1A84cfDDxxJPbUayEwsgyVU1quUxhHqyoh9pi3cKVXy3uATGRQvBAmZh/CrMmjfa25oogfGn14R1RPmwbUjjaTbJ0L/N4yJI/VSH/sgSvp9WE83Hq39LQsPbcZX+zU8bhpaIW2rHbr3N5wc/whIB1TO6rVUuQxDvMOgw2OrpKmnWC4hOFhn4LnW8NIlagYAkVAsiEQ12PhN6E74aqkgmen4e8DdHsZOpfcyJwPfQOHNMutzwB6lqHvt1CnFRsE1H1jTBa0X9KbmEhn8PEBQ5ICxdgBrqmEqcyRO6OfRShqEn8B3g7lscC+A1ApD6qNmI29ai6MppbV2NfVeUjSY/ThxfR4wfqKeeD75pFRZSjsB3zbukrtw245GPf5q3WYVLnIcC42IjYsH1hjYMandbDbBamClzwGq/++GW2BaCq0O0rQfYaumj1B3QgUWBHaRU4Q9Wb/9i+oI+9P4yiDHIOhx0EAyt7KZ95k58ctaWjGRfVxUkkeKmzbGYLJ2kxNK8HCQ+MRgV2q1R+GNj6v+KonBYbwOo/mj1GJ4H/YKAY4uu/Bff/No/OOVN74JjyK4Ceobwil+V2KN5N5QfXrlF6J0jZJZeQrJQQSWjXNORtrz1u2HCNuB4B3kB5c/sCEWZRRUual
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(39850400004)(396003)(366004)(38100700002)(38350700002)(4326008)(31696002)(8676002)(36756003)(316002)(86362001)(31686004)(8936002)(66476007)(66556008)(966005)(66946007)(26005)(6666004)(5660300002)(956004)(6486002)(110136005)(2616005)(6636002)(52116002)(2906002)(16576012)(478600001)(186003)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eFhzekdVb3Njc0VsSGcrcUczYVBvT3hnLzJsc0oyTmU1TTlLTmR5SnVXZWZI?=
 =?utf-8?B?ZnorSjBoWGc2ajQ0RGZvSjluOXU3emtRSWlnUFk5azRZM2NRN0N3K3R2M1Rr?=
 =?utf-8?B?TWJ1M25vL1J3TVJ0NzhINlozOVN4MzdWWTBhc2N2QmhMSjVscHgyanFFbHJR?=
 =?utf-8?B?VlJCR2tqTUcwQW5JbXVzMERsemZJa2Z2VFFNTDhzemtLNDAxRFp0aU5rQlVa?=
 =?utf-8?B?dnhUdFM4Z1JWTmpKM0RBSTB5SmZ6c1dna1FuTGZFU0lWTDI2SlFNZmhmUG5h?=
 =?utf-8?B?Q04rVXNiVVBUemkweTlJOE9hS20wYmE3MVhpSklKM2p1eUh1WlNMa2htNDdL?=
 =?utf-8?B?NzNUSVNHVFlSRHd6WUNTRWRLZFNoVHg2NkZpZmdPTkZnVjUzbXU5UWtPTmZk?=
 =?utf-8?B?dytMN1U3OEh2NlZycXAyZUdFS2RYRktnd1JkdkZrcE41Z3pJS21oZTNkY2FJ?=
 =?utf-8?B?UVBaU1NtTlU0bHdTbkZoRCtFcjd5M1hKbFFHMEoxTlgvM1gvUVdvRDVCMjlN?=
 =?utf-8?B?dDFoSzZoUjdSME1tc1Y5NERkbnpEcGkwTVdsSW1QWjB3OEFJVk5VSktCSmJ0?=
 =?utf-8?B?ak00dVRWaER0bGZMeFhxZXNFT2d0bWJ0b2M5eVNkcExLMmc5ZlZPd3I0S3dK?=
 =?utf-8?B?eEIzajg2UDFBa1VBMDZTRTJQUVUveUhHeVFqWitMZDEvd3pnS3RQOWs3c3RP?=
 =?utf-8?B?VVp5cVplazBTZGRUbVFIS0dydG1qQXlmajNlcjA3QmpsVVd5UEhSQllrYWdz?=
 =?utf-8?B?cjdaK3NZREVyUEJkK3M5ejhOVDREM0lTYjc1QjJBQWxrdHpZeHpSTXdlL2I2?=
 =?utf-8?B?SndQVUowVGR2REFtK2VELzZRNHhTTW82OHhIcmdHeDdINzlqTXEwVUp4S0FU?=
 =?utf-8?B?QndYb0JwQitjS3RvT0J1dUhPa1dLazJLVDczamRPQzdNcWhXYTlLUXhCTm5v?=
 =?utf-8?B?VnQ5cFdlOUdSODBodWk3Vjd5c2FnV0srVGIrdlQvNmRCUUwyeUhyRkdVcnJ3?=
 =?utf-8?B?ZUFsa2RYQjFnbnVSdERrT3JIWjZjY0ZqNVM1djVxZ2NMaTNEOFpxVmMvem9h?=
 =?utf-8?B?WXdxd25hbjcvZ2lUZFdRQ3N4TnlCTnZhRktEa3g2ZW5MWW12MHcrL2JjcW5o?=
 =?utf-8?B?VEk4WWc1MWhHcGtiV1FwZWZwT3lFTldxYUg5cWhGT2l6UGdvZUtZQ2E2dmdm?=
 =?utf-8?B?UnROcFhjL0lsM1NwYWdUWnJRQnFRQVNXK256N3p0RUhjdElQVFQ1RUhjL2pU?=
 =?utf-8?B?eklEUTZLc1pJellsZys3S3U5ZVU1VUtPZ0pXVjFMRit0dlJPZThkZ2d5NGJu?=
 =?utf-8?B?SEthdGJLcHhTMzFWaHdkMXo4dGlQSmI4RmlxdEhRaVk3TEZXTGNrM1FIUU5z?=
 =?utf-8?B?Umk1OVJTWFhhR29xVTcvVXIxOTdidXFTU1h3Q0s2NjQ3N0JjaXVSUDV4a1Fl?=
 =?utf-8?B?UU9FcVpLUWs4OGxhYXBwa2xnc283WUdxMTMyTUxDL0RMWjFFSE4xc1VIQTJq?=
 =?utf-8?B?VzRQL3BpaWVxZjhYMjRia09HUUY1cmF5SHNZbmY0WTkwK0lueDZ6U0p3eWcw?=
 =?utf-8?B?NEduczl2L2FLa3k3RnZ4OWp4clNGeXY4dlAvQkJxTW04eiswcHE5YjQwbFQ4?=
 =?utf-8?B?TEFhTjJ5VUdDUCtzMEVURFEydzZVTXN6b2RjaVVvVURqdU1wemdjS0YzZ05a?=
 =?utf-8?B?K0QyVDZoUTI0cVMwTEFHSlFaaGJRY3grT2dodEpHTWJoeHRrQWhNZzdVVmNJ?=
 =?utf-8?Q?/VOjsucaNEpepLEj2ruDRB8lNAFeoqDVkRjjNOk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d0ecad2-b0f0-48ac-e829-08d973a9ccda
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2021 15:52:17.4850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ANm2g9lk9HCQR8a+sKJGh/EHgEGdmsvof12JtQzlSLE5+FO0IoB6dnxPMfpe7op1wXd0mJq77arVMfU4N5YvLR5tCry06l6WlRdtMTSHnak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2713
X-Proofpoint-GUID: NQfjXy_-dihg29SL7gl42s_yrSVbRvdj
X-Proofpoint-ORIG-GUID: NQfjXy_-dihg29SL7gl42s_yrSVbRvdj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-09_05,2021-09-09_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1011 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109090098
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
Sept 9, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees: Kiran, Richard, Trevor, Randy!


Summary:
========

Ptest results continue to improve but there's still room
for even more improvement.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell. Trevor investigating
(Aug 26!, Sept 9).  Trevor is going to get back to this!


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

     Richard: QA results for M3, etc.
     Alex: SWAT plans. September email, training. libevent monotonic fix!
     Sakib: hook more responsive load average in to latency test. (v3)
     Trevor: patch to set PARALLEL_MAKE : -l 50
       -> dunfell, gatesgarth, hardknott (Aug 5 - it's a priority)
       Investigate dunfell which failed with this change.
       - data on WR AB load average.
     Saul: SBOM
     Randy: Vacation
     Kiran: probably work on one of the ptest failures.


Nothing much new below here. Keeping the list since it's still to-do.

../Randy

Meeting Notes:
==============

1. job server

- ninja could be patched with make's more responsive algorithm
     next or is this good enough?

   Aug 26:
   Randy made some graphs that show that the -l NUM results
   in the number of compile jobs oscillates *wildly* between 0 and 200
   on a 192 core builder compiling chromium. What I did was:
   $ bitbake -c cleansstate chromium-x11
   $ bitbake -c configure chromium-x11
   $ bitbake -c compile chromium-x11
   and while that compile was running:
   $ while [ ! -f /tmp/compiling-chromium-is-done ]; do \
        cat /proc/loadavg >> procs-load.log   ; sleep 0.5 ;
     done
   Results so far:
      https://postimg.cc/gallery/3hjfYfG/f8f46c97
   Next step is either:
   a. collect data as above for an image build and see if the sub-optimal
      ninja behaviour makes a difference
   and/or
   b. patch ninja with make's more responsive load avg
      algorithm:
         https://git.savannah.gnu.org/cgit/make.git/commit/?id=d8728efc8


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


