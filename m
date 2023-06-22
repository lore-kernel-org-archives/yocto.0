Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34FD0EB64DB
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 15:30:58 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.14587.1687447850631924683
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 08:30:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=PTS+7Ldb;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5537112673=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35MBEhLo028451;
	Thu, 22 Jun 2023 08:30:39 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=s0MtOy2ykkCiGMN+CJFNbShXyy2Hssxe6fg+ZYWX0R4=; b=
	PTS+7Ldbtpx4x51FGOq+ZKyhhvDVxQlwI7rWva5DBqg7RhpksumqgeeUF/Hygw1/
	dd7YRpWBoM5l9a6MeGqCtnGGsoMa3BrSomdIcFn03HEDp+k/JQ9TucmI2vnUkQzY
	8PTdxCMrEI8BD8nSMnb/m/i5ta/utgo5svZWGb9ETsaNuSnjUJRzkrqqW/rgV5cq
	8RTn8tlh73JDtGRJy1NcYI/6FJeGY0t10RI3JysUoBKGOSuRszk6vW+sNuWrGVIx
	ZCUyckEGfS1AEnU7ersfXHrzNFQsArTBBnGLO3/YEzH4gjiyqpD4BxBedRHNY5Lx
	SgDRmGPtAN2FYbec/mwGWA==
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rcdctghcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jun 2023 08:30:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qv/XMXtjW698UJFPE8ajkmeMR4Crx2SwWiGvvgHcIfeZx7T633fR8hqUxic6tGMKQ/au86uCYB5RhhaWsuzAmibbE1ykZfjI5g6fisAh9azp4whUFLZ7XqIy2/IIbYKCJ2ZI2yPUlyISv6L8YaMte1GRm1YHApFE9cboku3s/MFpjmpo/BMGXx5v06/D1Mnkysx4yvFHhHh4EVVG/yF/6ZSZFY9jxgI23ICQsq7+dZphkrmFVU5l75b8IHBoyRHb1u/9o/uRR85vvY16n+2mgJvIvXFSIJlh1KTW9/4lqLfMaGbweegnhOqkeCsckWDmNBTc1OAhPBKOdCbSq9GlYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0MtOy2ykkCiGMN+CJFNbShXyy2Hssxe6fg+ZYWX0R4=;
 b=e7teKU87v0zAPH1D0QrXoH23aQkix4C5qQ156xJO4Wx2FzNFJhGcjLHUJCN0KCa+degAzTI51CFyJ8fd6VM02Mys87QKP5HFrx4fU+jTt0AaGgJ09eXfltzbnXf9uy5gF5qKsxHoOzqmHiwpGLMNUg5BuBJl2Qkpw33q3E6hzZMupyqYjqTVIzhb6s8JlgpYsqKOsE3U2H/7Pwjms9OSmU6QaEW+jMhW7ZHRQ5zAKtSeY1U1QwtpqObDsWaG6bRtA46DRDA3jGMCFfSD9/+qW+mB1OC+JBfSLEmxhQao3LALKYq4+ssAd584xjpuo7QjyZS8pd1obvZdlbWIbDDlMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 15:30:36 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41%4]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 15:30:36 +0000
Content-Type: multipart/alternative;
 boundary="------------DwNW4B5sA1WSsDNf059HKg29"
Message-ID: <b306ca2b-dd4e-50ad-1102-4594ecb6dd3e@windriver.com>
Date: Thu, 22 Jun 2023 11:30:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 22/06/2023
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
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: MN2PR01CA0044.prod.exchangelabs.com (2603:10b6:208:23f::13)
 To DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CH3PR11MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: fa2e79f5-7722-4a5e-0363-08db7335a047
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rLD1UFQzZBPYvlvhDE3HRKbmhFwWSmZLm+URTaKlZCs9+LdIk5nHauvBgvd48cz81TZGV2R0NlZWCgn+iD6B5wrUAg255PEMIBtY8GCaht+9IB2a6IHHr8O1z5+sFXGqSVhTOyB2uNP1OtARTdhnM1+5lkUYUBWZDv4SOQAiNUetlepgMVnSmnwD9NCTiRKYhjzlb+U1B+uIDIJ4fsdwtFHJ5cvqA/U6yQbOQOMb/nKIl6byxQT3ukIVaN2gn1d6qUsYyv1ND2ytGUrkEogRLfVKypNxfAQ4G2LZXSRE8/eyYj+1Q/1WRcvr9jcMSKJgfghyOX4WBHMX1TFTac2rM/ldj98LIIwEkBy9WBlHiX91DH905uQxUPsvWtn8EQhPYxmBu6cCJyybsCZpI0aPlywCKImTFEDalPFwqTWHexUUHkWPxyaAQyeTtMxZPt8Et9YPbLiyjUU0IAki1mk+hj5gu4QapBrp9mkx+Fkg8NMbbPnMdBSBeJKkUUNUaa7KF/6tPLNG53+RHVgNU861k+Og8PE5PQVaRZ+cHk6zo8Hd+2raFDlsOA8xlBnzGuZmPeFfS0j+f5vsIps1/PTz76lBolQSIolWySldYJS9E6Zhc9ZPjKwTwGmloORrv7w7QS0pyCaoNK7+Shlt8rMhQA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(376002)(396003)(39850400004)(366004)(451199021)(8676002)(31686004)(4326008)(33964004)(6486002)(66556008)(66946007)(66476007)(166002)(478600001)(36756003)(6666004)(316002)(54906003)(31696002)(86362001)(6916009)(6512007)(6506007)(186003)(2616005)(38100700002)(966005)(5660300002)(2906002)(41300700001)(8936002)(7416002)(44832011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YytOcVBmdE0wc3BJcnVOZUJSS1EvNjROaS9iRUtmNWNrZkJab2M5Zm5JV25Z?=
 =?utf-8?B?RlRwa3J3RVVCN0Y2QUY0U0NwSHh4WEZweExwc0RsSUFXT2htcUtrMkFBTE1m?=
 =?utf-8?B?M09CR1UrVVJLQ1FHVndQTW9xT084YXdZQW96cTVVa3VFNys5QVE0YmFPZlhm?=
 =?utf-8?B?OHNDNnZYWlBUUWpQcUtMT1lGUjBFWno4VGdnamljUmdqRVo0UENzeEdCbDlk?=
 =?utf-8?B?cXloVkY1WkRjeWVaTEVmVGlqZ2RXY3JNS2R1QWNzanJ3L1B3MkpEMTdJWlIw?=
 =?utf-8?B?VU11MWZoKzRFeUs5cEtTYVN0MjZKUUpwL1NjTXl3RlNGQm9ldGdlWWFhSU1U?=
 =?utf-8?B?TzZGdmpPRHdZT1NDNFhkNUVxYkx0Zkc0TWgzaTE4RVFUTlZxRGpjR1pERHVi?=
 =?utf-8?B?SFhmaENsY3dUb2ZJcUhVemVlei9TOUd0cldDY3RyNjA3WUVhZVBxSXRXRXJB?=
 =?utf-8?B?bkpDZDF5a0FUQWdqMTZSSnF5ZndleWVqSmE3b0tOWTBFL2pnTEpScGJpWDgv?=
 =?utf-8?B?ck5xRFZBUDJqQkFkSnpXMjhNcTluMFJma2VDQ1F4d3BwaFVSSnFRTzZLY2dX?=
 =?utf-8?B?MWxEbWFlREZ3MXZGeHdiMDF4bklhWUlnUnhpdGc3L3NPQmM2bmZ6WEJjN2NO?=
 =?utf-8?B?bXR6OFpzYUgxcjczQy9yUng4Q2dlRWp3VnM5TmRPbm10bEJIcHVtNHNzUGFQ?=
 =?utf-8?B?eVlQWUFySzU1a3gybm5wN0NFZnJGTHhib3RsT3loVGtWRk90WnA2UlJtbGts?=
 =?utf-8?B?c3lzSzJyamg3eWozcU11K1JVTkpUakVCeEVGbzdpM3BOdjJaSWZ2MWFzYVpy?=
 =?utf-8?B?dDlmRW5aN25aT2VGeUVxTlVkTnBFcEhNTzZrL2krcDJIc2liOGpGNHMyQXRD?=
 =?utf-8?B?Z0IxSVpMV3kwbThRVFdjY0ZHMjVxZmk1ZkVPQ1VrbW9pQ3lWTmJWMThRakRO?=
 =?utf-8?B?b0FUc1F2WExJZk9FMnlqYitURnp4b3RJUmZQalBaQlVINnlhSGVjRnFTeStP?=
 =?utf-8?B?TUZQYlpnMm1YSnBiTm9tOU1YV1MvRHplMlpCUjhwNWRwZkM2cXVvVk0rMVlk?=
 =?utf-8?B?N20vZE1YbWhLelFMeHFtNllvcUVIZWxpa1pwLzVxa1Zab25YWEllZmUreUh0?=
 =?utf-8?B?RlhvNDZoQmZNTjZha29jWHRuUGNpRCt1T25XOEl5UGcvQWlLQXBwQTUydUg4?=
 =?utf-8?B?YXJKL0ZDVDlLK3lrTUFHNWNNTlBEejFrVXk4dnZrdU4yOGQzSlFaaUhCK2hG?=
 =?utf-8?B?enZrd2lLRTZVUlpjVFFxOFlkWlJjajdzbGpTZCt5UVAzRFc3MjV3eFVKalla?=
 =?utf-8?B?V2lENEwvcm10WWI5aVZ5ODJpRXBtNHNBMzFoS1c5OTRFbHZ1R1dVaTVJRDBR?=
 =?utf-8?B?cVdYUDAreVFoT3dCaVlrcTZWMk54Y1JQZ2JjUHZDRnQwWkI2NmtVRWV3c0xo?=
 =?utf-8?B?UTNzb3I4blV5WlpjYW1ZVmkvZU9WS2JUY21vdTFzMm04UjdQdndVTFhyaDd6?=
 =?utf-8?B?dEt6ZEZhWjREazhjdHFPZ1BVdHcwZm81MlZyeVRaTkpFYU00dnNGcCtxa001?=
 =?utf-8?B?SUJTaU5DT3Y2SHJuMGFWTStFNUxDYldsa1ZOVGdjSmRFWkxpSTN2cEx4Zy9V?=
 =?utf-8?B?eUlOZm1saEgwUHNVNEZRN0pad3N2bVZjOUJ3d1NaYjFWY1JjK1B4cGNOQ094?=
 =?utf-8?B?M0JxUVRWeEdaN3MvSTJtTlhDTXQ3TC9wNzUrNzdIYXNVS3duTDBXZ0w1MDNF?=
 =?utf-8?B?cFMzTEVHQzRuSVZhWnk2UWVPdEZvMEZMaitIM0lKZWNRUjIrclZ1UVNESGxs?=
 =?utf-8?B?cER6MDVqMG9ZSmphM1hURWh0cGo4ZkhSWlVjaDNYajBPR3ZBcHlXeWdTUmtK?=
 =?utf-8?B?UDgxYyt4L2lJcFlsYUxCQ0ROUnpSRmxkSXEzZm16cUNXaTdMSmljNTdIdSts?=
 =?utf-8?B?WXVJTmpJV3d0TFNHM3J3c2N6SFZUb0pLNEg3VFlXWnQwbkJJR0YyYkZDN2FU?=
 =?utf-8?B?d1NsTUVTakpISHJEeWRrQW94RTBQQ250UEZ2TTRXeUtudi82c2lDQ2E5aFNy?=
 =?utf-8?B?djZiaG9RcGE4b09HSi93NWxPd0xCNzhCUG9uLys2NncvUC81M0ZpbThtcE5l?=
 =?utf-8?B?V2k3cVJEMHBhVktGdTcvdWY4UHRkVWxVbUtOWDBqZnNWUnFGcGJVYnpDWUZi?=
 =?utf-8?B?aitIdHpWN3U3STAydlNudUNCNExOclBZS1czejlySCtPVlhyT2VuOE5SL3BE?=
 =?utf-8?B?QlJKUTJHRkZtK0h6SEZPU0NUcklRPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2e79f5-7722-4a5e-0363-08db7335a047
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 15:30:36.4283
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WmcX5UKzf50UPFg7P39lVkj65b/RqZf87kBga2CQSIcTbnBa6V32XIWHG7U/zLtOCQ+J9zOeLX041UsxctSEJbS4PpCaics8bm1xXS3a+ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
X-Proofpoint-ORIG-GUID: 9twPMWoZ0fXbdRoPeH9tz4mnyTDlfh_z
X-Proofpoint-GUID: 9twPMWoZ0fXbdRoPeH9tz4mnyTDlfh_z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-22_10,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 mlxlogscore=871 bulkscore=0 lowpriorityscore=0 mlxscore=0 clxscore=1015
 spamscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2305260000
 definitions=main-2306220130
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 15:30:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60406

--------------DwNW4B5sA1WSsDNf059HKg29
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
Alexandre Belloni, Tim Orling, Michael Opdenacker, Ryan Eatmon, Luca 
Ceresoli

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *73 (Last week 73)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *66 (Last week 67)
--------------DwNW4B5sA1WSsDNf059HKg29
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
        Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Michael
        Opdenacker, Ryan Eatmon, Luca Ceresoli<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>73 (Last week
        73) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>66 (Last week 67)
  </body>
</html>

--------------DwNW4B5sA1WSsDNf059HKg29--

