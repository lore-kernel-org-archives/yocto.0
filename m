Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.30717.1629986500510676673
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 07:01:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=FSuKg35b;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3872d8868d=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17QCKWjf011237;
	Thu, 26 Aug 2021 14:01:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=KYJL+PRHnn5aZZwTZsq/kNmIHFfGbsxoaEjSROxD7IY=;
 b=FSuKg35bMOEvilaKCEQzizXMO1YpKPH4LNBMfJekJVTz62dRcKIxPpLFQuqJRdUZu+3S
 otJVHLPoViPFky5AVuaTKk3kbBDIgnjuY1xt1SrEQpnczV3zVlmpYGB9u0P0dNA+cKh4
 +/rNylj+efkvj/RErem62rfTjCJL7EyU5h1oxZQu+bar6hTEiIRS7Bjjz5FqY0/KzXpM
 pIVjcV4TblIFcvhUXQwsyIia6jm/hfLFTEH+kyNL1kBD4+7TcQc12d0INAVpIbkD9zTQ
 8ZZjzV5POvp0j1KLe0+cea0fC7f5fs5L/65z8jTqtas4DVdVECQJN9R5OX6g44lNw62f fA== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2042.outbound.protection.outlook.com [104.47.73.42])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ap71mr7r5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Aug 2021 14:01:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PFLzjJ8oAupkiExstZD3psxksHoAXDzj+I/ulFGhhytnhHpOXk5eEYMIAYLk+Givolx5r/pva1sqt9oNdNTEwbSxXUKg6yYZeU6L5jAUutgbmQGSfcB/0Htftf5JBQa+HqNrS0P0k6f4ruiXsDBG5cY31ToIbqygCXj99kAk2cTyMGqlyp9JVkLmip5epXIarITkcKMY1Vmi7pwJvdWZxy8rLl+rMcLhZPk1Zup52RDzMtsMh1UMBEj64DtY8cgl6Xl0l3wAxdZ1BeqeS12pJBuEnsQKsVZIHbgE/PvJx98yKMueyYGkOVmf6QHzUFdMo/Pe2/sWgPwbkcVGiD33RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KYJL+PRHnn5aZZwTZsq/kNmIHFfGbsxoaEjSROxD7IY=;
 b=AEcvWKznPqd6DiGkXECZZ05ZO5O/9pq9DTnox4WzoxKViDxxMVf3asG/qa9WNaqkXyI0VkjYsplTXRRrqLVSxYPsPKn9BS4IXNWFb3w26dcoS0/pjLvBpgpbCyfSLROfzxFyU77pvEB58XCW7Gdi6MzRwHj+ENtV3NL4EijNRYljncVRfzFtfB82PJcCD2Ot5VRuoZnnF23RcSiFSVynbuY9eIJKBpyRVSE1jxY4udWzrO56qeoQhpjzHRYTFVPmwjFbuGmHTaMN39kRLHJaDF0qkpwNQ5XSgva9oYUgNigby9EP9dtmSeGyYAUrNcaaQJ1tWD0TF/02oJvhbu545g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2108.namprd11.prod.outlook.com (2603:10b6:4:53::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Thu, 26 Aug
 2021 14:01:33 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 14:01:33 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: [yocto] Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: Aug 26, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <92766993-24d9-ddfa-a84d-1a44cbd1f1cb@windriver.com>
Date: Thu, 26 Aug 2021 10:01:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: SJ0PR05CA0142.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::27) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.7] (198.48.226.187) by SJ0PR05CA0142.namprd05.prod.outlook.com (2603:10b6:a03:33d::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.12 via Frontend Transport; Thu, 26 Aug 2021 14:01:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56a2a916-9001-4965-ad7c-08d9689a02e4
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2108:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2108C450A5B0148E664417BDF8C79@DM5PR1101MB2108.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cT+EFLlH3f0v+n5QOCy/NHWXUPh+J8ZhfD4MU+qaoGc29v2HtEKz+YEEpQE3CtX69vjNd+cQyUeqQfOLCrIjfEF3Be24BqUMNunF2KpEa30nVRRHke6SQzrXEraXrKb6HvMp6oR9Ei/EwyA0tDeaQ31X5jHa4Q8si/iLXa+c1s2ZhCG8sZJlyzEmjtb0+u/3NTEAlmaaZe0mv4TMn4TCD8kn7qdkHdVputs/Qa0zvAQVQnzgmvipn+gZhMT0A+TnjdB0Jwu9awnv64/bziKr7WiyVSoK3+R9riGI1J+5EQaPXI41Fl66OsYKwIO6+G8xltsT0j36V9s/XlEW2YgbSa494VKtr7jBKduSPzQup/FaIGMOgmvVZg5M2vJ/T+LvACthekV3T7LXHubpXB0dFwh6HVNxn+a1XYcw6Kq+5e4Zc1OH0rNSdf77Lj+AzM5klWiZZFnD04Kv0qFqmeiAPABYly0OyO98N61eqRNyTcSNGYteWbhZMVPX/ZZn6F+e7xI7io4cAc0BvLN6myX8WcCf+2NLjeaNaWTUFt9VtQ2ZYg1LM+7JGpykugB4RQgSgWJfMpO7151tv59Vf0bBsQqypMEUn8uWbZuVJ2J6fOWc+2T4oduLkfstV22URz7fDk5J0WyF/tMhvMUJ0wTWhNJ3e8fJv8dEgRGdCHSnC/RLH1y7HvYPoV4/zmXFuFKb5+2NNMIklwVF0yRsBoddIwiSA9/FHSsqjQnXlBtNPPiZssTCQ7IgkdNgSXNo9wf15+bG2hoxuI25LnBEwtKdPt1Wz9Svv+f76VIrKAdKx19OIMwr6LbMmDLrcpZpHkef3d3RCjNUGKP2TQReuA7+LsKRxjOuVYtQWDfdl81Jz97xDtJCVwhhIegoCwdsTzwo
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(39850400004)(366004)(396003)(346002)(966005)(83380400001)(5660300002)(31686004)(6666004)(52116002)(66476007)(31696002)(66946007)(86362001)(66556008)(16576012)(4326008)(110136005)(2906002)(54906003)(186003)(8676002)(6636002)(6486002)(2616005)(956004)(8936002)(36756003)(38100700002)(38350700002)(478600001)(316002)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZC9RK0xtY3JmVGdBZGp6ZjYrcUgvL0RZaGMvQU1RdkNTazJJdkNNQlByUDVu?=
 =?utf-8?B?REhIQ2U5WDhXU0lWYk9haUk1a3loWVE2elp4Tk1xMU5Ua2ZTTUlkbmhVV2RQ?=
 =?utf-8?B?NVBIRXh2N2lkM2gxanZ0T2VMbTNWY2VtWlA5RWJlOFhCRTVlWGNrYWs3cCt5?=
 =?utf-8?B?WlJwTGcrRUp6bEF6R2R5Q2lSQUVJT2R5aHBqUmxHaXBFc0FDaTZUKzMvV3Iv?=
 =?utf-8?B?bXB2VWRiZ09STGNYWG11dERKa2d6RGUzWFk3TUUrYnJCZEdmZk5YaHg0bFVJ?=
 =?utf-8?B?STE2aUpSMjNqTEtDbnFiSkZHakc5REN0Smx1SGl0TFhiSzF2S0JYY2hpQ3FT?=
 =?utf-8?B?Wld0YUo3TzV3SDlPVUswRE0vSWUyOEcyOW5pVXZMOTBpUzNFdENiVU1IRmRW?=
 =?utf-8?B?UDEzWG1tTGJrT0lyeXVGeGEvTWlGMEp6a1lNMTYvTUFsODdaVlY2OVkvQTd4?=
 =?utf-8?B?V0lLZ1dYbE16Y3Nlbk5QR21SVzYvcUtMRFZ0TDFPNGFXTEYyZUVweS9OQjVq?=
 =?utf-8?B?U2kzRlE3UjdnQ292c3hhbTNhNVFPbVZWRmpzQXJGNUNOdmo2TUk3QVdDQ1hl?=
 =?utf-8?B?ME1kWEMrbkhQVlJ3VGdwQ3liUHFDSEVRT3U4ejF5VFdZUDFRNUsvQUl4YStW?=
 =?utf-8?B?U1BNOVhmdFVEcmdaWnV6WmliRVJyWU9tY2pZQm5rVHVoM1ZtNUoyY0w0UzNh?=
 =?utf-8?B?M1dNVmovVG9PdjhVWlg1WlBjbEV3RjFKZkVJWGlSUnQwVVBqdHZ6bXdGeVE4?=
 =?utf-8?B?bVkvNlZoTGZCaUtuZ29qRkZObnhtUGEvcENzSEFkdXNoMnZ3UTdqbE1JTXpZ?=
 =?utf-8?B?K0FuVDZ2UGVwUEgyMlVuY3RBU2dFR0pPTkpjMEdZbnJXM3dJdi8wWWtRc3dw?=
 =?utf-8?B?bnNDQTU1YVVFbDB4TlVPNDMvekJOSTRicXdaQVp0M1J0aHNYUE1LTFJ1MVoz?=
 =?utf-8?B?OTNCeVFha001K3lRNGk1blFwbXVOQ0pzQjNNSE55bi9VTWE0NktJM2xvQlk0?=
 =?utf-8?B?L2orZyszT05vdFZ2OFcxMFJuYk5PV0xwT002WmZNcmJocEVPOS9vZ052cHlr?=
 =?utf-8?B?dHM4TURaSFVBZ3RSNS9xTEFnVDhGMEZBU0gvdkhBQ3JUbTQ0cTBBWWZTaFFu?=
 =?utf-8?B?aHZOM1YrL0Y4QUh6dTZpTTEzbXB5RE41blkvSWFyQ1liWUpMS2tvS3dwVWM1?=
 =?utf-8?B?ZDFYeUxuSFJFTGg3dmdMNXQ0MERNVU5mYnFDMUNvRW5hYWp4RURXMmJkQ0tr?=
 =?utf-8?B?MGV2RVhYMnUxMlJwTzdpb2djK01zN3V5dkFmTFVrU1VDZ0hHa085dFNUZXJZ?=
 =?utf-8?B?dytYNCtuTHY2Ukkya3pibWZoOGxRY0MwOXhlZFp5ZUtLNlppQ0xxYkdWOXhY?=
 =?utf-8?B?cU1jQThFV1VTRTd1NXppM2xyLytvZWpRQjhmK1RjSXV2T0FMamtLamw4eHpq?=
 =?utf-8?B?aTJyMDM4Qm1paUR4RFVocno4c296c2lPSVJLYzlIZHU3Qloxb0hpdFRsclpF?=
 =?utf-8?B?RWxFN3Q0b3dDZTZmTW1JQnNtOEJTaklkK0pNdmpFMzJyN2xQZ2NTTGFaaVFl?=
 =?utf-8?B?ckVzNDgycnZBZmZyVWxBeVBKZ2hoL0RCbXl1cUU3Sllac0ZSc2hLblE5Tmdx?=
 =?utf-8?B?aDVycVpyYWVZSmZMdk5wNnhoMFNlM1RHZ3VneHI3ZHVJNWlSS3AxOGtZOFh4?=
 =?utf-8?B?M2tmem9PaGVSTWtrUUFEcUY5dW5UNUhjZFE2Witha09JMmlCbTNxNTJnVDVk?=
 =?utf-8?Q?cCv8c7fzXPdg++HidqALh10RZpXEvU3gtCEbLdj?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a2a916-9001-4965-ad7c-08d9689a02e4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 14:01:33.4028
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bCpj3Qb45rch//z+ad83w2tSBOQEwl1zozWlZBab1qjnYy0lKmIVazuwUKFHehYnCBDAQ4zPMbPgXJKYHPQylBS8L0ngWRTy98Nfo+wy3tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2108
X-Proofpoint-GUID: qasUkMadzWWd2WG1esbY531C_-MD2YMi
X-Proofpoint-ORIG-GUID: qasUkMadzWWd2WG1esbY531C_-MD2YMi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-26_03,2021-08-26_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 phishscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108260084
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
Aug 26, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees: Tony, Richard, Trevor, Randy, Alex, Saul, Sakib!


Summary:
========

It was a rough week for testing due to glibc-2.34 and rust
problems so we'll see if the next week let's us return to:
    ptest results continue to improve but there's still room
    for even more improvement.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell. Trevor investigating
(Aug 26!).

There's not much new this week, I've commented on a few existing
activities below and added "Aug 26" in most cases.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

     Richard: biking and wait for QA results for M3.
     Alex: SWAT plans. September email, training. libevent monotonic fix!
     Sakib: hook more responsive load average in to latency test. (v3)
     Trevor: patch to set PARALLEL_MAKE : -l 50
       -> dunfell, gatesgarth, hardknott (Aug 5 - it's a priority)
       Investigate dunfell which failed with this change.
       - data on WR AB load average.
     Saul: none
     Randy: Gather more iostat data, graph it!

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


