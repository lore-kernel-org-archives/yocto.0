Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22506EB64DD
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 15:34:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.18030.1691076877713022410
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Aug 2023 08:34:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=gWq89oJA;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7579c31eb1=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 373BoYp2026359;
	Thu, 3 Aug 2023 08:34:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=YctKuPfdPhFoaxSQzVOwTSE8HaEXfpOJzblFLaPHWCc=; b=
	gWq89oJAw6cY1LStjT5gV+e5oIbRfrKzy11MWw93x1/tkhXJY41iiU3ouhL+WHUr
	6FoukMXqop7O9ViJLtOZaMcW+NmWUM1UmA9+zfL5D4meM1HrEp18Va4qhgnyJ85e
	i2Mo65+kcGbtPi6C1npQGYoWmhlpJcZaTaaxt4u9IMMgU7dMLzkIUzTGIKDZ5Jei
	wNn2Z+pBvF55bOVUMNTCOKN4ynHj0ns6ckruJv9qO4qVZBMNXS1liQbBACKVfoEY
	gWX65W8UvD9htq+EaV/E8Iy1rOgDOWsJS+i7j0yrHkqYbkWy9FOGojY4PPaeYy3e
	B2ZeXvnAFJjLZLpIH/exzA==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2044.outbound.protection.outlook.com [104.47.51.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s6daqu9y6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Aug 2023 08:34:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRh1Unw2JK++6eoexqHqnwEtPY8JC4/xFWytZVYPcOtCjG/4B7wBBQPS+ZHqTmMO9bWriwYyT6RNvQL9pFSLFoLesdzJ+syy6WyZfQbHLzpH4zrJoKb4GFrQ4QK4qDGLoksRD6jvomHDdG21sQlL1DTWNrPs4Uoz4OYkYo03uipmEPkuwilDhAWEnrbr+75zNdpOcuADoPS4eFEwVULVErMtif6uwxHuksVSAElaaHK8A02n4ySDE8xffnK/aLCSu72J0vqxolOSToID3rYM60436ttTpsx9SyBskiu/IYP5k+JHDtd9m81y6xjr9pHkRcFqiqUzy+WAAjU6TKNSMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YctKuPfdPhFoaxSQzVOwTSE8HaEXfpOJzblFLaPHWCc=;
 b=nuzOPCjc0AL3buqjXNe1KIL1+Rdi8+2Oax2/c1rDYTGM8BWEziZfF8yo8YiPIN6ppHWY+KHhCUgH7j5FExUjQFI9TkmXn7ypV8w9KzVRMuHDxZ2hvqS1F2PCfkjUEm+ltHO/8bFdxSl7Af9B9WSbxk7l9zyNyMMG1o2QSOAyU4lBktqzRJVyjxeS7d5kK+6mrb/GYNqQJeQ/1bg0Gb7t2SyGgaQl4ViAQXnKaDOwsdGMVBPgLAZ/eVJ2EuXqW6QWR7ZsA9+tK9amqUP3cpmhVUuybtDmV9slJgFnnDp/FfXK32bh8NQDG59HbmTVWFW776GgQTvzflMpZls78ed3fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SJ0PR11MB5120.namprd11.prod.outlook.com (2603:10b6:a03:2d1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Thu, 3 Aug
 2023 15:34:22 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f%7]) with mapi id 15.20.6631.026; Thu, 3 Aug 2023
 15:34:21 +0000
Content-Type: multipart/alternative;
 boundary="------------facCh9hRcBdRb3HRLLCbP0np"
Message-ID: <75cf594e-845a-9a32-6ba1-e82b03304792@windriver.com>
Date: Thu, 3 Aug 2023 11:34:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 13/07/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net,
        antonio.oliveira@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0448.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::33) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|SJ0PR11MB5120:EE_
X-MS-Office365-Filtering-Correlation-Id: 927d3aff-3c04-4185-b4ec-08db94371bd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MjHNSAIQZLqGzqtvlInIegauL4nDYrzamcTV97LxSVzky5eZNn2Xxak67Ok7tkc5W31qdR59SVFA40B47cyY3QIsyA/QHNkC+oFfuqeKa5vQXzW2lNBmdRJAK7+pl8MAPqVe9pbxFvyXEbwxXnJjVSivGuf2/dRTjgXZD795oZmXLX8HLAxCK3qm/ot8PYzv1yCCplbNJiib3y33qGaACzBve8fbRHDJxFgPc/4t76GDB0bHhOgkc/nPt2apiowOrkrDh8PcwzyGfm/c0KEyWvsTcat9utxq8pYbjYJgP84BjT3VsS3hTl89eh4TY/L0i2FRlkoDRK722r7vJMLMEc8Za8zpKBd4APX26wnOBx2jVLcqxdOcG8tHJHkVKSXi7XD/ZvRqn3aZRYuDPQmLdjIRtnw9eswpLrW1gtZgyNQSaLXi7uMSTiyx+Yq9ARcvXOYJgV6crlRC0GwvAowZ88Xzp2thy9fxQUpzULA4dQeD69DJLtHjKL8YhR+bEHRsySS3f/WjJk9URPWAi+de4S5jVLo4KHLzZ0tKFM4P0z78yPQMKOAqAeRaC9LXZf37A6Vj+FK96l6S1/ACsJLMyuXeBZNS4Pbw/e2anuYMB/s81nTXx4TUENlS/ZEW8lZcxbXd6/jSMvC6PRJs+RsG0g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(39850400004)(366004)(136003)(346002)(451199021)(2616005)(6506007)(186003)(26005)(8676002)(66476007)(316002)(66556008)(2906002)(4326008)(66946007)(5660300002)(6916009)(7416002)(44832011)(8936002)(41300700001)(6486002)(6666004)(966005)(6512007)(33964004)(54906003)(478600001)(38100700002)(166002)(31696002)(36756003)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T3l5cXZyK2FTYUovY1o2WEtYbTdyeEl5bmlFaHNUVHVuS3RnbUdtTXVXSkxV?=
 =?utf-8?B?dEc0VGlyV3FuanpzK0VlakZkWENFcFczVlNlS3FpWTZvOWVRdWgwdXhlOUNW?=
 =?utf-8?B?ZE56MHlEVzQ4NzJoeUpJcGg3NytiSitBU2c3VkZLVWNZcUxXMUdJaXRob3ZX?=
 =?utf-8?B?dmUvQytVYlV1ZFd3djM3ZXFZR3JFakV3MytDeXkrU3dOcEJKZ05QWFhDQkEw?=
 =?utf-8?B?QXdBRVQvcW5CRXJsS1F5dmdBa1pRcjZxMXMxOFo5aUIybCtTcDBOVXlKaHgw?=
 =?utf-8?B?aHFlUHBQcjJsN0QwUGpNUXBCZVByaFFDdnpZaC82YkZuellsMENkVkJTTzR3?=
 =?utf-8?B?eE1ub1cwMzVuZzVaMWQ4REYxQkVhKzVEYVVUT29CT2N2NVFPRHBwVjNvNDFS?=
 =?utf-8?B?d2d6eHJGVjNSbmYxTDhuYTF2KytKRFlhVXNtUWlZK1hENVVIbGlKV2taZXlJ?=
 =?utf-8?B?ZTZGcjhuRDM1NldkTnJuUXh1NUJnZHduRTlzcFN0bjlhcUl5VldtejI5UjRa?=
 =?utf-8?B?L2RpTnVLcEw0QkhlRzM3SnFVd0V4QkV3b3NwbVZldU0raWc4cnlrM051Tndk?=
 =?utf-8?B?V29rcTBMQWM4MGdUZWZ4NGlMMzFXRVc5SFU4NzRwUW5ITXB2ejdFYUx6cGNO?=
 =?utf-8?B?Z09ZYUlvQ0w3M2p1aU5qWkVMT0cyeWRFT2pieTB0NlpzWUxPVmlBUmJGM0Vv?=
 =?utf-8?B?dnRhdDdsa01Nd3F6d1VLM2VYaWNlUndXVVFQRHR6eG9qdjJPQ2NLdElxdCsy?=
 =?utf-8?B?S3JwYTVYQkplb0Jyc09VU2N2VEx1c2lFNXRNRUxYcXoyRGR3a3VYWlR6ZURk?=
 =?utf-8?B?aHF1RnQ4OGRGSWJEazVUYzNnNnJuQUZscVp0RXhua3BGNlZtY2tBTW1sQ3BP?=
 =?utf-8?B?UDdNS0d5Q0NPQ0E0SDNHdFJlaGdKUDJOVTY0L09pWTRhdjRCbmRrdTk1ajJF?=
 =?utf-8?B?di9ibUNpb0JHSmRRcmtVazZCaW5HRjBmVGZFaU9RZ1RYSkI2TGU1a3pGZHo2?=
 =?utf-8?B?VStSYzgwZDBYR1hobWIvdTB3eVhZRlp0SnVnM3Z5a1Fuclo3Z21JWGY3WWIw?=
 =?utf-8?B?M3ZrWSthS2w5TjdHcVQ0b2dYWFdKNEcvVjdYU0VCWXpkWmg1R3NrYU12dnY4?=
 =?utf-8?B?WUNWS0JQTm9wK2t3eTZNM1E1cDlRNmRCSU5VaXJuRVNHYW55OHBlcWwrY1hn?=
 =?utf-8?B?TlBoVEZoY09LSjFyckN0VnZLdWp5L2lWSCtxMFd4dFpSbXZWRDJrcHJ1UFpZ?=
 =?utf-8?B?WDlXY1FkUjdHU2FKY0JtN3JqbmRxWmZ4S1pYUlJDTEhsbUZuN2RtbHZvY0VQ?=
 =?utf-8?B?eVVoc00yOTRVTzNOTXhUTG5NOG15RFIweGhDaWFjOXBRVVUveXA5WUdtMVZi?=
 =?utf-8?B?WG4wS2IzRm8xOWJNN3lnZW5yVHZOM0s1RHp0QkJXMFpBNUhsSmgzdWpUV0tW?=
 =?utf-8?B?NS82VThIdWwwVXZKdWVxN3NQR3BJS1JFUS9QUTN5MWI1UWJTTDZ4eVZzKzE2?=
 =?utf-8?B?a1dmYm1hOXlLREgwNFVGQ1RsM1BaMUcyOW13cUlVb2RVRDNYSUZXM0EzZkZz?=
 =?utf-8?B?ajJVK21hRUxwZEJtajZYSm0zNWdYVmZXSFN1NGl4RS95SGpwNmxySGlpdUVB?=
 =?utf-8?B?YzlyWGNuRS9xZm0vb2JKT2hwdGpiNkgwU0NFaHRJQWhFbjlocUdVZGIveWRp?=
 =?utf-8?B?ajQ2MmF1ait3M1NURXdVdGNhZDFvRVNGQjc0T1YyRGVwVzJYd0RDUDNTYzZS?=
 =?utf-8?B?ZkdZTXhkUkRSbTA2N0xBR1RPdXVUMFpQREZzeGhPUWxzS0ZFQlRrRXM5UElk?=
 =?utf-8?B?YzlrcjJBeEUyd3dFY01Nd25ySVJOSXRZVE4wY29jT2pZd0N3cTVJV21ETW56?=
 =?utf-8?B?b050SUFRZkZ0K3pCM1QyRC9iR2w2S1VUZTgvbDVwVkllTTJCRzIrRzllZHVz?=
 =?utf-8?B?OHBiVW5IS0pLMjZYSDI0YWZvemRkaTQwc2k0MUZrbkduTUxyckladUtWUW5p?=
 =?utf-8?B?cW1RREhiOEJucTFmMjZlNzlROGpUQ2tvQU5CVzQ2RHk1djEvS1NsbEVGZUE3?=
 =?utf-8?B?NlQxWnlGaC9SbStXZjQxT0YxdVBwaFF2TEZXSjl2NEdqTVdmanRmRkdrWlhI?=
 =?utf-8?B?b1llQWttY3krSTdBeTZCYW04OElUaXFhVE5JTWtjMlF5bFZVNHd3cFhxN1NI?=
 =?utf-8?B?Z2c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 927d3aff-3c04-4185-b4ec-08db94371bd3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2023 15:34:21.6399
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AOFIhslKue8z8O+5+LDaO83oEvoQ124e82qZRq+FGGZiDghT++OTHU+8ja1CZm4zgX+flGGqEb4+9bXJpDuawjp40nmLOp2h7jPmGI8Ewro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5120
X-Proofpoint-ORIG-GUID: debz8sBUd5DFyXxoVMBwK1Rfd_lR2cJT
X-Proofpoint-GUID: debz8sBUd5DFyXxoVMBwK1Rfd_lR2cJT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-03_15,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 mlxlogscore=863 malwarescore=0 clxscore=1011 bulkscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2306200000 definitions=main-2308030139
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 15:34:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60707

--------------facCh9hRcBdRb3HRLLCbP0np
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Randy Macleod, Trevor 
Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, 
Pavel ZhukovEdi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *66 (Last week 66)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 47)

*AB Bugs: *71 (Last week 64)
--------------facCh9hRcBdRb3HRLLCbP0np
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Randy Macleod, Trevor Gamblin, Alexandre Belloni, Michael
        Opdenacker, Antonio, Yoann Congal, Pavel ZhukovEdi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>66 (Last week
        66) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
      week 47)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>71 (Last week 64)
  </body>
</html>

--------------facCh9hRcBdRb3HRLLCbP0np--

