Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA5EC433F5
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 13:34:51 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.11587.1633613689361842380
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 06:34:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Ed/PE7ej;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=591430a4fa=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 197CDH9H022213;
	Thu, 7 Oct 2021 06:34:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=ljGD5U1Q4y+IJZZ40zWa7BGC5l+0vJBNZz1hj/St96U=;
 b=Ed/PE7ejUMbuXM3VocwkdJyPe54gTyQCV4ptaXXtbZssZpmEaha83RvmrVKGsQd8UuXr
 1FfR1X5NhII8Q1NDuyKDFT5MBE0iCpt7tpHaKE6fNSd0XGuuREuvtT7m6evnNoNeVb6c
 Ssj9pdv4T8UNpS2vGMVgQzXZ90VcdoxH0Qu+65/nKiGigrwAe4WtHk5ByJpYVqHYZnZn
 eMcfOVJoZN4s7bOpfcH++PraYZ983gQkPkiSvU/jGuGChlOk94l4Z5vsPQ7XM4FceVur
 1VWV4Opx2LbsH0UumDBzwNqDEwTYfw5uU8XCjFFSB10nBu90cplQF2ic83HHDGDLvpxj 1A==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bhkbvgmwq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Oct 2021 06:34:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPJ7AljP6Z75JYRIk6lKlR5WdPQgXZL1CmIdgvaHtsNxMSVRi0XvYJmf5cFda4PC9CYiSCqUmGD2q6b0jfwfFUEdvDQE9Hy+J++DTnPIyCEpjfKuNcmg2iqhmrEPhqICSHj4Q6xjTU7vgTtyRUigVTuIBPsIZE1iUQF4kxua1xXpgRX/iYkYKlJld6Bj8ojzbunvZ+XoQn9ZArQPZq4UBSlyrm8grfj05aGRtKTjt2wFZ5B+lcLyPm8znvgt3iuvsVZMCZl3F+p3qXVYtGYpmGLVljbe3cIqee8/qXI2OsGaVPY7lt0Y2XgNaXa0Y75hoageKEs6m0tPQ/RB7SKy4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ljGD5U1Q4y+IJZZ40zWa7BGC5l+0vJBNZz1hj/St96U=;
 b=M4sEbVbNGJ/6sqmxwxpM8oHptSkZJIoHWRzRprpFwxssPdi/filTsi4z6ZwqC1AY1coLzEKBu9WiwPcUQj0rhoAu+FpM+Ei4fEaPVdhBjwXybVHnsWtxoKOButUPPJksrVKGAvHRkksWFO3q89eHmfeikQeKfOPxKkbyDtf6uovR9bd3bB2NNU3swb7Yw3rHo8yICD0bFaVE6R/JrBmQG1D4KHVhVQ1c8LmZskJtJeHXTbDBPN4VkjsxSnyEnph68cnVBAAtqKCryOhqJcu4ygTC97rU8gUDhypbwRSbC0K/qLG4iHxYZV4tzlHo6nZmGFWzMFiPZnxxHp3s5jVfiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3866.namprd11.prod.outlook.com (2603:10b6:5:199::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.22; Thu, 7 Oct
 2021 13:34:41 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62%6]) with mapi id 15.20.4566.022; Thu, 7 Oct 2021
 13:34:41 +0000
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: [yocto] Yocto Autobuilder: Latency Monitor and AB-INT - Meeting
 notes: Oct 7, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        "Surendran, Kiran" <Kiran.Surendran@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <09c3a6c2-d81d-10ef-8ded-bb537a33a5c3@windriver.com>
Date: Thu, 7 Oct 2021 09:34:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0003.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::16) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 BYAPR07CA0003.namprd07.prod.outlook.com (2603:10b6:a02:bc::16) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19 via Frontend
 Transport; Thu, 7 Oct 2021 13:34:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76ec8310-a116-427a-c54d-08d98997373d
X-MS-TrafficTypeDiagnostic: DM6PR11MB3866:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB38663BD4CED680B4650F7D1DF8B19@DM6PR11MB3866.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XpaIcsna/qkgBZ5PgiKs5HmV4vGmawwrsAsXn4lJG0ByjYfjW2dAAMRMzsBRnmt6eSVtf0jUkgs4DcCjkwTvgsItpkVVplbDQYLpgLw0OOsYVlaa+b/w0NwNoE2w75769zI9aD3uUrPLOR21AVbphkkZf/2yWLX60B1DvbMMOiirTTV9ixh4MLyUO8hOJsGp183j8dnx1D/YVb03UJY8gEnJdyhxCR+6yUDjHUoS+ILST8a68NGQbIaVsZHQjYFi1bKqoLpskG7B25nvCurUcQ1M0Moxg2HuBnyZKHVxaPz+24LJa4hCMh2fXqyPnmd93WG9+iwBRl7p4X8v1nGK+3mWvhgd7x+kzBEYhCL7y603fwsarEqUm5gat6OvyE0BFCwBpD7SFvteaenharcxZ260E0IqMJWf9/Qx2rAt+oIfsW+1cEdgh85/CxpuryP1NPlAi18jgvMoR9kUArZXwvRgXd89Uqm/wo4UBshkTpGuE3FbYhB42g0cULvoJq6g2DbzNfzi5V83MLfU/QVW2RDcuDEctSEAmSl74fEsp9PMQk5wAaPHDO5jW/yyIc9u72YDohBOCMMz7xer6WcKNOhthWvxw3RBJWzCxhDZyZHa6Zbvo24zSzY8ME4OBKxSF2pluvWL71RXDPtWbla3SIu4KPmMbpLi4Sazu638fCZSse0YH0Nr7z+bb6C6jXslE0YY9dXVmrXtEjoX7WPLUvvXV2PYMbNHS3GeioC4p8jLOHUXepp+O8NAMgPrCzo8XxQMUoz7Cd4z1zK7H7qk0Lj13RhpxKiOVNUeoVEY/gqRj2jmbEc+tY3Yy5aA454A86Pg9CdYHKfTOLmIQ2JDSSMrMiPJtlS65y9KrZRPz3+tWNbGuFDwLykc0FaFMWAY
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(26005)(4326008)(16576012)(956004)(2616005)(186003)(36756003)(83380400001)(316002)(5660300002)(8936002)(38350700002)(38100700002)(6636002)(52116002)(966005)(2906002)(31686004)(508600001)(31696002)(6486002)(8676002)(6666004)(66946007)(86362001)(110136005)(66556008)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d0xrcVZlNHg1bEpUUXQ0Uy9Nd1hwTm0rNHRMRXlJbEpxRXhzYXgvVDk5NmdR?=
 =?utf-8?B?N0NmYzd6dHBSaHYrRmJFaHEyMnpuMlJ3dXBBa0FxY2pYc0RTekRZOGhzRlRk?=
 =?utf-8?B?QnhVTFlQZU9Vbm5LMTdPb2ZVeHRBbW1Uam5VQnBIUnN3Myt4Y3ExZDBuYjNP?=
 =?utf-8?B?Y3o4c1VaQ3dSbHRjeGl3OW9meUoxbm5Eakp2Mm16czRhQ3lySnNlNksrZndV?=
 =?utf-8?B?TGRjbExMWkQ1Q0VjaWRTWTlXYmVBVTdoN0FFLzNPYzExTW5mNHZBc21pa01s?=
 =?utf-8?B?ZS9sSWpYUlh1MlFGTnNuVnovT2VuUzZFQ0x0ZUtjUkdHSDlNWkxuUmNPZEdJ?=
 =?utf-8?B?TmVQMmhQRE03QUpmeFoxbUpLOVRlMDZZYjdYZm1hNDlHTFcvLytscmpvQUhY?=
 =?utf-8?B?cmdOS0M0NXRpZmlocDU4R0xGeHpDRVVTUCtEL1N4a0w0cldNRUVYc0ZlcE5O?=
 =?utf-8?B?UWVabHluNUpNWDRGenIrSUJRZlp1Ynl6c1RHaEptajVONUtYMmhvNmtNSFcv?=
 =?utf-8?B?QVdGZXVLcmkvZ04wSmU1c05NK3VXYXVBMDF2S2pzUTUxL0dRanpYeUxkbmZp?=
 =?utf-8?B?ZnZCYkp5UHAwTzdxVjUrWWQwR3Bsck8yRkFickFoTU9LeFJMTC9NQmRDcU9u?=
 =?utf-8?B?Vk5FWTF1bm5vSHBhQ1dIcU9VbnFQUUV5cVNoMmpDcEZUTVA5MXNTYzZjb3Bi?=
 =?utf-8?B?bHZha0t2cVdOWUo5ZnYwdGdnTkgyL3FaUW4rR09STUE0N0FuZ0VDRUtMY1V0?=
 =?utf-8?B?cTlKTkNINDhyL1hhMlRrT3pyYmQrRG01bmtaWWE5OVl5M1UzaTlpK25nSm43?=
 =?utf-8?B?cjVkWmRDN09kQjlEOTU3eWxSOUVHK3Brd2RUTVJ3Ri9zSEJtWFFyTEd0RExH?=
 =?utf-8?B?L1pLQUcxbDBCbHRTZnYvQmE2cmlHWHlBcnF0cGs4MWxWQnV0WnlZeWZCV1Fa?=
 =?utf-8?B?ZEcyaHlUcHc1NkJxdVAzVDBYbnhhN2RTay8vZWpPMzFWWDBSeDlobG1uS3J0?=
 =?utf-8?B?bjNhaTdTLzlzS1JWeUc4MzdDUU1uQnUzTmNFVDdBS0NQS1JJaXhJRjZXR01h?=
 =?utf-8?B?RnpMWFFhcHpFbnl5SUhqNXZxb3lZc3BWbmp0anhhUXFhTnFCdCtTRVRjWUhi?=
 =?utf-8?B?RU1XeGRaV0Y5QlZhUC9MUSsvOGgwVk5RMkFaS0xkdXVZM2RIb21xOTZuazU1?=
 =?utf-8?B?dXVHMTNQZk1mMkJqTm9JVVMvaW1DNGIrM25uM0UxbjBZYndlU0hId3RCckwr?=
 =?utf-8?B?SGE5a210Z2lvNUhxdHFOMUt6a1BGWnBGWXY5NHhmelFtMnIxMEVZWTBPdFlU?=
 =?utf-8?B?WFJZY245a1dzdFNQRG5iVWo2aitzaGhMcy9nR0lHQk5kblJuc2FGdHBQR09V?=
 =?utf-8?B?TmUzaWJRckhuc3dNV1c5MHBaaWVWcHRtNnQ3VUhQaHdJNExQbUVtN2g5OFo2?=
 =?utf-8?B?WXIwSkh1ZXRjQUVuZDhneHBITGJWdU0yYVR0VTBydGpKbTgrZGc5dVR6MkFi?=
 =?utf-8?B?dnhzd3NoU0E1aUNqWWJkUEsvVEYxcTJxK0V5TGJUbXNNcW54VkcxOVVZU0d5?=
 =?utf-8?B?NUlxYjlXSUZIZlk4V2NvRmoybTQ3UXlvSFNZSVU4YWJKWVhad0dBWXdsZUI1?=
 =?utf-8?B?cFhPVDdIa1kvK0QzQlM5dVoxV0FsUFhwWGpDQ1dadmlTL2I3SzEwYjVhME5x?=
 =?utf-8?B?cDlYdXZJYWwyYk9IbTJpMlFxdWhOZkN4WGNhcWw1d3JTdDhtTTBTOHQ2QkFx?=
 =?utf-8?Q?42/+UZZfYl1QHfE+KdNYwuvdpK3vTjGC7eqcOe9?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 76ec8310-a116-427a-c54d-08d98997373d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2021 13:34:41.0877
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 CW4n0hkkr8g7PLb0CptmWSn90CtTtlei4uKJKQR62wPE74Znh6Xw3jhQig7YQ+eFGYnBNPctbNllC+UvbkzWRI+1tCHKD/Bs1UTP2u7FUko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3866
X-Proofpoint-GUID: KlTsMtOHX_JkaWEchkA8mRR1nVE9cTw5
X-Proofpoint-ORIG-GUID: KlTsMtOHX_JkaWEchkA8mRR1nVE9cTw5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-07_01,2021-10-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 clxscore=1015 suspectscore=0 mlxscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 lowpriorityscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110070091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 13:34:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54984


YP AB Intermittent failures meeting
===================================
https://windriver.zoom.us/j/3696693975

Attendees: Richard, Trevor, Randy, Saul


Summary:
========

Ptest results continue to improve yet again but there's still room
for even more improvement.

Alex made a graph of the number of AB INT issues per week:
  https://bootlin.com/~alexandre/SWAT_stats.png
We assume that week 15, 16 was when the RCU bug in he kernel
started being a problem and week 29 was when it go fixed but
more careful analysis is required.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell.
Trevor has a build of dunfell that with some patches appears to work.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

      Richard: QA results for M4, etc.
      Alex: ?
      Sakib: hook more responsive load average in to latency test. (v3)
      Trevor: patch to set PARALLEL_MAKE : -l 50
        -> dunfell, gatesgarth, hardknott (Aug 5, Oct 7)
        Confirm that dunfell works now, test other branches.
      Saul: SBOM
      Randy: # processes graph of full builds, patch ninja, graph it.
      Kiran: SBOM


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


4. bitbake server timeout ( no change july 29, Aug 19, Oct 7)

       "Timeout while waiting for a reply from the bitbake server (60s)"

5. io stalls (no update: July 29, Oct 7)

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





