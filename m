Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9763C433F5
	for <webhook@archiver.kernel.org>; Tue, 10 May 2022 16:08:31 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.782.1652198908201538445
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 09:08:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=FYB3PND/;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=21298ae11a=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24AAYpNQ012102;
	Tue, 10 May 2022 09:07:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=0OMJ/Auro133To5Cnd1Inz/n5k+VqHAOSQ3+FQJ99hg=;
 b=FYB3PND/ijGlkFFTI/vY/DvZUJ90fpPYT3deUp5q5X1QFE0EVg5y0gvjEKgU1hbK+Oef
 JN/3yppWzXIdfaWh3U5/9dVgTrLCp1SYpwuigV2zeMwqyDzvicPsP4AfVDCxlEOgBloh
 GBVg6sJ2fszY4BGIt8fnibKUdhmB6RCaMtdBWcehS7A4sgBW+qKjLiNk2KZlGyMURRUf
 Q+5VXLeE7hc0CFA5JYneRinQSTttsfqLdcxrGD3YXGmt7eu9vAB15iTs6vS3+jMteoPw
 wKB3A/M9AH5iwFEEKwje5rUB+nXBQCebyfaVwewXsOjPwlBEG9wKc3XEPuRU8k0k8L7Y oQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fwr9k258x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 May 2022 09:07:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8+4gMr29sf/EHIK3ue9Ozbxl++EvLQigyVKd/RU5wwaO3d+sOKsgDQLAU+IQyQu05T7OtS6impkzBsZykwUtfxz0LF8C5aawFj3eES33FLk/bq28rRExz3Hc6epxUKnQbXGQQQPPIICG1e7hukafFP+XkZ8km4BfJT2dLrNrtjYQ4P1DuR8DlRYUM7Yt+MayF7InLlEFKGWHxFHhkuxLHlzcI+BpWE1uLtBHEh8f55Wqeb8yTYvNvXtJ02oHDKnqL5Uj9ZQux+yvUOmxHNVlfpSVXTp5NpQLtzvm5rjWCDg2fmVnUywrHv/+UZOT6ZH2taIiGrUJ6t9w9XP9w7SXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0OMJ/Auro133To5Cnd1Inz/n5k+VqHAOSQ3+FQJ99hg=;
 b=XxyOYoxfiXE6/gy8li5Ymdh2cSHEmD6qHHeYJ9qgEs4C1qvx9E3gmuzGPcAUa1WA/1e2tcIqb491sxpxza1u0DgWZ62cBelUNLT0bY95Sy6rs4eE3dqX9HmyvCFl4Q8tODYHqY92PKCi0ou5U3WaazvnKglMmjLUQEhDI6rEPdFJ1eIjBjz+6Eqx5Xhx+StQcomOon5MZkWDbmK/KVMVtm2cm/NXmMNuyGr4Yg1HYbzLApH0V3HEcSfhWQh6CoIjDln6fXVgT4gHbXpd69+P3ldZUIV7EwwLwuvztImtAz2JPLWZYFYmUGNjQAuRefp9xz05w2iHqFNL1vb/5LQs9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH2PR11MB4376.namprd11.prod.outlook.com (2603:10b6:610:40::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.22; Tue, 10 May 2022 16:07:51 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac%6]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 16:07:50 +0000
Content-Type: multipart/alternative;
 boundary="------------00jwfgIqr1uQMaE5ffV008qK"
Message-ID: <0b03a198-a30d-bf06-8431-28e3033c09ef@windriver.com>
Date: Tue, 10 May 2022 12:07:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 5/10/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0148.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:7e::10) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c503d13c-320b-48f6-fab0-08da329f3b77
X-MS-TrafficTypeDiagnostic: CH2PR11MB4376:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR11MB437682C2F0E1BB18C75C43D7F2C99@CH2PR11MB4376.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	R410PgDvPxJ9j3SXcx1VG1CgvuVe7dwLDjs+vkYKsHcIy05n/tuAwNKBZ+wSVuXb0r8IZn3MrldmJfr8MVAKT0H3hl4rOFXt1QLsHfpYOqMCZ8yzyfXagujbqMkAV9GBQPbPxpLw1yJ8PaGcE/35sdSeRuiaTx7NKFnPVP+U+ToM/xj8Qk3GQMLVXNBNSLuOmwxfIK2dgzH9+acbpposcJEz8SnYkLsJu4ofPBqRHjGGXX/TLNrY97SDh3FV5fz9wIhIKhKLChOpDqHBCamG0f0xCDu8v3BVDbIKeB8krwbNZhSH8kSkptUYh1SpEpkfcayyGcmF6tA1GrMeD81TEZyfQ/LYt7Nt+JNS/RdMW51clStt/ai2nzC9k+KcxL1ZKEJ02LdLkCXE3p/ksyFJjXDzjx7vlBiSZanDrx6OTOe6Mh7d9VUY7JPTJlQv+pC4T+UvNsAK5JWtL9GDUI1K69z3USqqdkicRrXFCQIvIk6F21hYcj1SJB4itvVubq8jEXyv2ivKH4NeKobv/F8fYNj6j9t1VjsUNJz1Wz7gJ8jPTjNLv3l0H9yABiZIF/lQBGmiz7ufsgiuEiZBXDbb/SsWt9/8H9l0brdWBaANUn0ANpk0ARXe+9ijizHBnhY8AIt380fGjXYkV5E+FMZgoNsZnapsEGwLJUJPLSN8mJQSVitRWHREd4PBpmuO2w/+aMR2trZfrPGGntAiggt6Lz7f4/3MeyD1BCiJhTjdQ82hOQjUxhmFPDxAdmUI7BpANq43PD0WqUq0ecml9HmuHJGt3XuwmC8R5POQYLxPg/CqQhUvnV4MK45p/F9ef/3Y+Bc5L7xpTmQ1TO692wsjgdB4XgQO/rcyjaRM/ksMdik=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(8936002)(2906002)(7416002)(31686004)(44832011)(5660300002)(8676002)(66476007)(66946007)(66556008)(4326008)(86362001)(38350700002)(6916009)(54906003)(38100700002)(6486002)(186003)(107886003)(31696002)(2616005)(966005)(33964004)(26005)(6506007)(52116002)(316002)(6666004)(508600001)(166002)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dldKUGhTMWNrVFJQcTJ1dDArODN6ZHgvdzgwY3NFZEdIR2pTK2p2c2tEY1o4?=
 =?utf-8?B?a1ZIQXNlcTRGdDlrUkVqTmkwWnpueEdLWHdKbTBnZExGQjFETTRXRnB6UVpo?=
 =?utf-8?B?Q1AweFhJWWVqcHRMNVhYY0ovVkQ4cGtNdFdldE9WOGlhYnBTb2pwK2ZnaG1E?=
 =?utf-8?B?QUdxSWsrdGhzQW5ZMnkzVkJlOUVMcEt0Yzc4U1hWNnNLVEZGTEJMVE1YOFAz?=
 =?utf-8?B?S3dTdGh3a2VURUpQMHNIa1lIVXArQ093bGViZVEwQW5iUWJYL3N5M2w0NER2?=
 =?utf-8?B?T0g3U3JyN0dNL2JxMm5RMXVmNDhoMEd6NU9TMXE0ekp2TWRVUWJGeXZiWmo3?=
 =?utf-8?B?dXhBVnprNm8rOVRNV2U2aXJ4OEVDVTgrVWFEM0xVaVFwZlFEWEU1T0daWGxp?=
 =?utf-8?B?eDVOSzIwMUlYajNXaGpDdUNSUThTT3N0VkFsUjdPOWp3MjhJek1KV2hsMkx3?=
 =?utf-8?B?YXVZQ0JxLzRsRmdPRE50eGRYRlJxM2dpdlBMR3ZUbVMvLy9TWE1Nei9vQWNv?=
 =?utf-8?B?dGdpR2RPcTVBN3RWVEx5WVh2RTdpeEVmL0JRSGZ0amRCQkJxenMrS2VxMmt5?=
 =?utf-8?B?eHNGQkJPVkNyS0RCWEk2bE5hZ05iSmJOTVhSRWQwNllUb0ZiTk9iYU16dVlJ?=
 =?utf-8?B?QjBuWWo0SkR0ZTlhWlg5RmlvT2RNdHJmYnpqOGpyZUY1QXh1SDB4MWhOaDc2?=
 =?utf-8?B?MmlPZHVQbGt6Ni96aVNMUFprVFVIMS9LRWcxd01GcVJTdVpHWjB1QUVMc3JG?=
 =?utf-8?B?SmhXVWdVVXBEemtqdGlHVnNMYkNiN29ORExwcm1CeWV6MGJmc0tQeXpxckha?=
 =?utf-8?B?UWJEeGUvQmkyRFdrOEhjUVZ4b2FkVG01UDh3R1Bud1JMc2tzSmtFaWRpak9G?=
 =?utf-8?B?djZJdTNoK0ZwNVo2bVpOT1YrWDNySUh0OTI0eHlhR0dFMWpQdVhMSGE3WGdx?=
 =?utf-8?B?U0VnTXhXeUtFS3Z0T05IUitpeXNtT05mOExvbkl6dkdGSkVoN1g4a0NsUFY3?=
 =?utf-8?B?WFJYdTRSNkxxcldUQUIwUWcwMDBSVjZCV3NGYlRPWnlQbGkzOW5mV1ByMDhW?=
 =?utf-8?B?aEdpdFQrTmlVbldDeDlNUDRScGJKbGZZRXF1VXQzZjFqblFZL0V0b2Q4Nmth?=
 =?utf-8?B?LzFpYW9TbEFCNzRnMnRPQTA0dE5kaFJmc0d5SXA4S3A5SEIxODlYR0NZanVH?=
 =?utf-8?B?OFltZWNrVHBrMjZ3TDhLT3ErNUQwYlJpVWJLNEtQWkJmeHdUZ3lBcXBFbEV3?=
 =?utf-8?B?WXEvZWR4UHNSaXNzR00yL25GUjNxY1VNdTNhWWRNem9yYkF6ZWhzR0ZVVnFG?=
 =?utf-8?B?V1ZkR2VtcjIzK0NFV3lhUDdUTVZzMXdIMk85ZFN6YitUS1NmQ3p1VnBjYllp?=
 =?utf-8?B?U1hnN0doMDhFalZ5TWticlUyS2VreUU3RFFyeWZ5QVlWL0hEbW85YWVJT1BO?=
 =?utf-8?B?b1lYM0FjNXRDSzNYV293b1lBSXRqSHpxQ1g1QTlnYkhKNGxnT29nei96ME9W?=
 =?utf-8?B?QmZMTTJFbGxzWm1NVlhValN0ajhtTXFldkVIQ0xyTVppRVlZWHV2aXV2Qklp?=
 =?utf-8?B?c01sbVpnSFVRU0VFdmNCRklrRjRDVyt0OGwwUklQTVNrZUdybmdRUENCWmE5?=
 =?utf-8?B?ZXRKTXZMeWt2bkgzTnpNa1g5eFdsdTcrOGVsVGZDeTR0aFQzaWMrblhPNm5k?=
 =?utf-8?B?SVlkSDRMM3FMVCtDQjZIN1k4MjVYbk9DbUNvRDhEbTVQaVlBc0dEaXJyR2hD?=
 =?utf-8?B?eC9RY056UGxIbUhJU1A0bGZIQ0JsRGRYTnJndWFXckkySDFoQUFvNWJwalFn?=
 =?utf-8?B?aXZkR1FFRldyQi9pQnJzVTVYNkdid0FPNUlTaFc5aXg2dkdlaTI5UEQyZm9w?=
 =?utf-8?B?WGJSd3FzZ2tQRHlXd2lQS3E4TGxyQmFySVhORTVzSTNhM2xRWkZKQmZQVUpz?=
 =?utf-8?B?ZkUrSFZleG1HRzh4ZUd1S2ZmZDdxM014NEh1dDZhdktvZGpMTk11YXFYWk1o?=
 =?utf-8?B?cXRUa3RsWHhnU3FXTGF3V2dGUlNxZyt0eFNDOXJ2MUdLcmxGTjFoZ1A1Vjly?=
 =?utf-8?B?M0JDNTdLc28vRHYwQnhCMEJmWjhaYkJMTXRwcnpTMm95d0hVTVNud1BLQ0ty?=
 =?utf-8?B?THdRK0NObEtBVUFleXR4SjdKMmFmRmZlcFdjK3hLTTkwS0RRMkhHM1BOWWxt?=
 =?utf-8?B?clpoYTJtcnNLdkFXSytDYXJJL2xzOE1xQ0dTcHBxZEowbzdrRVY3NlVIUmwz?=
 =?utf-8?B?NGJLTW5nLzZjOUFPMk4yZGVxRVR0dkVmWWFjSlk3ZGZaczJQYkRXS0d0MnY0?=
 =?utf-8?B?VTlvNU1yakNqRUEwTEpMWjlKbkwvYkNDbEpvTnVVVFBoN2ZJUksxeWdCNWxP?=
 =?utf-8?Q?jg48UNewzpx77MoY=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c503d13c-320b-48f6-fab0-08da329f3b77
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 16:07:50.7128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 2czBofZ0JY3IirfmEeC5cy4xXYDW0+G0F2IeLnKvbfBIJ0KD9SooyayLFHrmP5avZlzJ7olpDFkn6Sm9zYPJsp7ra26sA3i6vYOo9+Oama8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4376
X-Proofpoint-GUID: jLZ_pZbq0iwWOLNYhpsvtCxHn6wUDrQl
X-Proofpoint-ORIG-GUID: jLZ_pZbq0iwWOLNYhpsvtCxHn6wUDrQl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-10_04,2022-05-10_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 mlxlogscore=637
 phishscore=0 malwarescore=0 suspectscore=0 clxscore=1011 mlxscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2202240000 definitions=main-2205100071
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 May 2022 16:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57050

--------------00jwfgIqr1uQMaE5ffV008qK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Randy, Richard, Luca Ceresoli, Bruce Ashfield, Michael 
Opdenacker, Ross Burton, Steve Sakoman, Tim Orling, Joshua Watt, Pavel, 
Aryaman Gupta

*ARs:*

N/A

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 75)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *48**(Last week 48)

*AB Bugs: *48 (Last week 48)
--------------00jwfgIqr1uQMaE5ffV008qK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Randy, Richard, Luca Ceresoli, Bruce
        Ashfield, Michael Opdenacker, Ross Burton, Steve Sakoman, Tim
        Orling, Joshua Watt, Pavel, Aryaman Gupta<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>74 (Last week
        75)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>48<b> </b>(Last
      week 48)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>48
      (Last week 48)<br>
    </div>
  </body>
</html>

--------------00jwfgIqr1uQMaE5ffV008qK--

