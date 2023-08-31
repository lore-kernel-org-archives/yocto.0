Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D6BC83F01
	for <webhook@archiver.kernel.org>; Thu, 31 Aug 2023 14:46:26 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.19219.1693493181336005865
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 07:46:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=k5KOSlbQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=760760502c=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37VBnu2Y017426;
	Thu, 31 Aug 2023 14:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=+z66TMbaHhXmVdkdWsOttW4dNK75iWXfAH145d6iSEk=; b=
	k5KOSlbQHmML+8D3ZRGHLQXurwZoAWWe750mw1u6++Q34zHEV1zPDNWlODo0N/mR
	V81KNvjTgqEKO6MdmNtYXeeHugZ08kmyiBNBOXc8U7y2rc50I9hZcF02l1G7HYK9
	nS6usCh1AWnMFUr1v7lnJi//3KcAKUniW4c5j0D8OojY2iX3UxlW3s5ogLKvLp5I
	cZ+Ix2aO2RegrB1lqYmbvoNN24crabAMaCToY/cmKs5WgIVF/HtN0t5U3BaO3gsV
	XZGoAzEl/q7KHRz9+KWgNn0y3VY1MCVztoR1M5C96Zyy1wzNscwOzLsW36ZlIdBu
	TtdzOH2nWTtLdDs5lk3PAg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sq8c64xk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 14:46:09 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OavMb7eIRb7CCcmzS4yIC/HvJPHZGkKenqUMYU5DhgQ9Ap3U0vzS10YqPeTYDN8zZ07W4oTrcAeD5hjvuq5swX66H014NDAdFkcAgz4uk6koNT4XLyt1ypsKty3SMsdSkpjEwqK+naB8WfeUPvlaT7ABHLDRMVhqa7Gat/EyTnXa8kNIv3rhrMVlvb0Qi9k0Idtipje26yJ/92orX2NgXcAAOWl140fiINx/1tXzfh5q3CpVjYa7XClRiMgSwX0iYY9n0nzGbHQftnv119WGR3ENoOnTVCNbJcs9r6Z/W4Bv7i2HhDtlQ10jKC36b9TF6ASYQe/CEH+ldjGkf1Vdug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+z66TMbaHhXmVdkdWsOttW4dNK75iWXfAH145d6iSEk=;
 b=WkZgKMhstF7HyfHjG05S7Ygb34Lxnw4mrmw+0SQQiWp58mH7QsRfaFTvNK55zXep8FVXtkzOTYCDYRUR/JUS11tsxYqlKJkcqLz1x9rt6sK8EtJ/qRotW2Tm7xlSXyAMTaLBLOBfasLWVH5LvpQ9Ac53PujFiZoOIJe3dyLhclsQYGQuotKiLNRtp87JFLzb/2pLJDmTfrERhioa68YBv5HCOas+mrlqCPZ4o6BMlQ2jArKmJW1/jQErtKMiyRBY8qvaJsELHSibMtalFLI1pP3asUAS2ps5GFgm4r6qz4Fhm/jZ0CbpmHNIUbtHPDsaZPL7DutR/KVDGE2ID4Uy9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.35; Thu, 31 Aug 2023 14:46:07 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6745.021; Thu, 31 Aug 2023
 14:46:07 +0000
Content-Type: multipart/alternative;
 boundary="------------Q9ahLcdQiNbrBdxX9mg0eqK0"
Message-ID: <e82bf3b7-ed6e-233e-fa50-c541ecf03c90@windriver.com>
Date: Thu, 31 Aug 2023 10:46:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 31/08/2023
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
X-ClientProxiedBy: BL1P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::13) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: d10d07ab-3162-43a5-7c1e-08dbaa31026b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OmjgDIIk0EJ24Jj8Lo5pVamTXbZFb2w3udKqPZRx3iNiIU6Dd8D2+F2ouW9Psawb4Xc9vRx/5AxDddFf7O6xFcj5YEyyxZsOVmj74g43WZZeBDagPvCunnmqHpivPfa7sVpt4+8aAttAjce+jdXfjzGEuHH9/4v2THH63UHpYsk7eN32WUJZhIIOzrCLHYpGvL5Bh3Z5j7p6PyW/kfymG4XymOvjmRbr08ajtFJmKSZu2k+856zpAwwGpCiwkqQy1IWmyRcRs9hkJ9Yebg7xlSlbvxjnaOEwCjDXZidS2+Nojq0xV+FU1RdP8jfoalLcXWsFJzbwGQjlUrQmWAdrNCCdRYHzqDwCYFPoT+WJw/b5Mn+wbqLbL7l+feSnyqYRwWnNrTdMdY87zL8h7unuk8aj2NGvXaQxTIzwSihjiu6rABGCdtndQcOKKwlngckOvnIsGR3K/ErZATkPEfauMsktYKM7E1xOJ15A2cIRqsLiVwE+LklqBBoXtaNzychTLoUn2kPsddqo3YG1IVU61C8761VlHSrtn1rpLtsf3A9qyxBAZGoaOca79uYFBIJQJfsjIPRhcbmFSr5aLjvhGYhXM7AngFSyPlTcyHwK/PVb9YDoxu0rof2f+0Jf17UTAwyvLf4cHvx+1VLR99ifMQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(39850400004)(396003)(366004)(451199024)(186009)(1800799009)(66556008)(31686004)(166002)(6512007)(6506007)(6486002)(6666004)(86362001)(36756003)(38100700002)(31696002)(26005)(478600001)(44832011)(33964004)(2906002)(6916009)(966005)(66476007)(8676002)(66946007)(41300700001)(5660300002)(4326008)(7416002)(2616005)(316002)(8936002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SmFJeHUwa2tKaHRpUG9TYmhscGdNeTlPaDRUTmllRXJVVkIvanZ4WWNpbndi?=
 =?utf-8?B?MWpaQSt0WEovN0FaL0VEME10OHNuUWJXeEF1NE1uRWZTMXkveExYbkg2WW1u?=
 =?utf-8?B?MThRWEdBSXR5RDZnSG5kaHRBYmwza05hcldpVmkzdU5JeTdQTlJsaU1kZHFy?=
 =?utf-8?B?MC81ZDF3azRPSC95UWUyTXFoTVRFK3IrYkhLL3M2T1d0ck9OSVhVUkNRNTVW?=
 =?utf-8?B?c21heTZCaHpkZlNyemdkZ3QvaE44cVNGM0pkRnpQME1Jd2xFM255ajgzVmpm?=
 =?utf-8?B?bURJVTIvd3U0M2tDcmF3cnlMcE13NlJUZ3AyTlZBcWd0Wk44UWRBZWtybEtk?=
 =?utf-8?B?Zm51aFROSnpUSTliYk4vbjlyR2ExMGZrN29nMk5LSVg5V2UwVGwybzEvdGk1?=
 =?utf-8?B?M3ZvMGFnUDZoWXdoNmQ0YXJUcDBneXRFNlpmeVdET0JrTGFTK1NDVkpNU3NW?=
 =?utf-8?B?Z09pZHgxbHQ0S0UraFpsQ3k5ZFZqdXhkRzFIN0hQa0xvekhwcXcrTVc1c3E4?=
 =?utf-8?B?R2tDc2FreE0rb2IwcExHbHJVbnB0WGMwam5FVFNNV1lQNmN3WTRNQ053YWww?=
 =?utf-8?B?TnZaeVZZSS9mOXdZOWtQZzVGd1U1Y0VndE94RWg1U1RYVnducnkzenJKNis0?=
 =?utf-8?B?bmNaV0ptcTFDL041TWZNK1FvS2pKUEEvQjE3T2p2NFNIQjVlNTNqTXU3MXdm?=
 =?utf-8?B?NGlFYjF0Q1FWa0JiRTNUQzE3cGxackdsSFp5Z3MrL0xlZWdxNGtrRzdiRm8z?=
 =?utf-8?B?Skw2RVB3eGZSc1ZqVUxRSGRhRGUxNUVJbkhuSEVnT205dVp3L0V0cDBXa0Nm?=
 =?utf-8?B?aUxGRk5tRUdyUW1Mcjdqa1ZXRnVwVktqUHR3cVZSTTRyMEtNSDVPZGpqdlJk?=
 =?utf-8?B?U0FrQjdRTWZVeUNkZTB2Zm5KMm5PNHRsZHA0T1Z3cXZGNFdNZm9tMy84bjg0?=
 =?utf-8?B?SGJFc2VhNVd6QjE2ZHBidGlOdC9Ecmg3VWlPUlRrRnl2VkNpWXlhU3JlbzlG?=
 =?utf-8?B?MjdVWUFhL2poUk8rNzRTb21lRUVacmJvd3ZtQWlZVGpXSUZqM2pvOHZjMzlx?=
 =?utf-8?B?V0Y2OE1YVGI3T0RmMG8xNmZDNjdjbE1SUGtHUy8zOWF0RSthQmxCUGw0UGZY?=
 =?utf-8?B?ZGphQXdYQVpGQ0Nuc0ZVY0JYVkVsTnkrUmJuREp2M2VYa2JZR1pHdTNUc09o?=
 =?utf-8?B?bUIvY3FHTC9xNjZzOG9CVVhqczYzeHBkd2R5NjF6UGJCczJqWHNFQThNd1li?=
 =?utf-8?B?c24vWHJTd2xIZXRQdlMzd0pnbTVHSmRoQU16NWY4OFQ4MWpHLzcxSWtBemc2?=
 =?utf-8?B?N3NYYjRWTHJvS3ZwVGc3SVNiT2lhbytKT0E4UmgyRHlVall4QTVsdU5vTjFi?=
 =?utf-8?B?VmJlbEZobnRSUWZxYU5XbVlyanZiVGVUZHBXdWVRUERWeVpzbXlKWUN0R2N1?=
 =?utf-8?B?SWIrRXh3ckFNK2ZISzEwSVdYWkhzTUl4VGNRUzZpVWorOTBzREpFZHM0K0xm?=
 =?utf-8?B?aTRuK1FxZENqMm9UYUpWS3I4anlmUVEyODJLdjByWUhKWGxXMldxWXNadk9U?=
 =?utf-8?B?NE5vWkdZOXl3enBKN3dGSk8zQzV0WEh2SzA5ajBqWjBVbU94YTRjV24wL0pK?=
 =?utf-8?B?SjZaczJXdUJuYnZsNFJ6SGthbXh6bmFHSVEvU2VrM29MRit1bGY4MFViTm9p?=
 =?utf-8?B?a21WV09QYjVpajdIVDhZZ0RHUFRuYmtwcU1QbXlMcW82bXViV1lnaTVmcWlS?=
 =?utf-8?B?YUt6Rzdvb0FnYkxpOEI3UUxERHZWQXZHZ1ZnOE5CQ3ZndW9acHFLVXdHRTRX?=
 =?utf-8?B?eWdaYU9zcW83c2UyMEZma1VLUkpyWmJCNjFNUVNna3JTbkIwRnluV1dJeE9E?=
 =?utf-8?B?YU9lYXIwN1JLTUxCT0lkYk92Nkg3cUYvYXlmQzFWNk1tNmNzSG1wcGNqck51?=
 =?utf-8?B?Yks2ck1qdllNazdPMXB1d1lIV096WDRQYSt2c2FPNjFBZkJXaGhLTUd1QThs?=
 =?utf-8?B?Q0lhK3U2RXhldVoyTWdxWmFTVGR1ejVMTmNiRkwzSUJNN3pXcUp5YkNKNXFh?=
 =?utf-8?B?ekIyZTJjSEpZaCt5T2pCRkdsRXZNVGhDUHh0TU80NXVIZUVTK2p5SVFUVkx0?=
 =?utf-8?B?L2I5UGxRSlBoaTEyL1dBMlcrL2didlRvQlJyM1R0NHcvWGRMU1RSTkh5UkhQ?=
 =?utf-8?B?dEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d10d07ab-3162-43a5-7c1e-08dbaa31026b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 14:46:07.5272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YPDN582PBslo14RylxkludanNop3R9kVte5cJcRTdDcX9mVe9uhzBS/0UzvLOM7veKgfUS/DsumhikY8dNDttv1ANfEc2AHgARSaOSmPeTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
X-Proofpoint-ORIG-GUID: 32I7wHmGADY1U6uGFFexlSGK-adBuOux
X-Proofpoint-GUID: 32I7wHmGADY1U6uGFFexlSGK-adBuOux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_12,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 phishscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1011
 mlxlogscore=830 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2308310131
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Aug 2023 14:46:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60919

--------------Q9ahLcdQiNbrBdxX9mg0eqK0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Randy Macleod, Trevor 
Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, 
Pavel Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *66 (Last week 65)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *42**(Last week 42)

*AB Bugs: *76 (Last week 76)
--------------Q9ahLcdQiNbrBdxX9mg0eqK0
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
        Opdenacker, Antonio, Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
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
        65) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>42<b> </b>(Last
      week 42)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>76 (Last week 76)
  </body>
</html>

--------------Q9ahLcdQiNbrBdxX9mg0eqK0--

