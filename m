Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 228DCC433FE
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 16:31:42 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.9727.1668097901631458199
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 08:31:41 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=VLWXfuwP;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=831374d7ba=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AACWJao020035;
	Thu, 10 Nov 2022 08:31:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : to : cc : from : subject : mime-version;
 s=PPS06212021; bh=RM0My+z/t8HsZD8B60z3swZkbikoQzfrhIa/UdPKmXc=;
 b=VLWXfuwPq6Fl8Stwebnc1RFJ/pkink7ynBCm6S+PRNoLkf6/ol2T8ZiCFMHV8OoAZVue
 pAFsZ5n+O4VvXfyfam0yN+j4E3QLiEqshSGG7ozoNCIs7ktc6d8NmfdMkD1VGPkaPgOg
 ++pQd4JLqwU+Dypkjwpn7j/Fh3aiYkWcuX7HS/hwx1/H1lXsXIoe2QXxvWpvWEn0iRN0
 0mQm7k2+v/DcDMiE16izecwU7eLbF3YFL9U+JiSSUe7GjI0UYWgUUBxP0VirLtSf2VZ0
 Q6XB5yFoF1IBrOVbL7JraFbKwdT/J93WtWOBVC8IWFnIaS3bn+aOak79FvYrBEficEkQ kg== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3knk43cruk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Nov 2022 08:31:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2EZl9hgE9YrCkeVEow1CcpNUEakJ64aOaqe2x8AlAyJNLiEcuZH7Giz/hBVZmromDdMqzDar1aSghSPm3EtH4kvh9N/ujzeOqc0HRK/hNhxbvcD1OnCHFlMthA2w/ToLYa3aOFRhto2wNUtEXXZGPOPBoLmFT2vBJCgpIAeYnZGZMloEnEVLk4txkXGY/0I8SaF8NQvtJmqp1DOMlaf7dgWX7Nfkap3tDs+AAKIC57fXFlqBfYn75KVSeKY1QTXDVcWJg34X58S9aAaN1ilRH7UxDCmDlHwC6P3Qs9hlAcPFpOH8v5RSUHUCJJ/py564X+7TWkuKtBSOeXi36ZQHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RM0My+z/t8HsZD8B60z3swZkbikoQzfrhIa/UdPKmXc=;
 b=ZY1OqBpW2rwObatf1Yg4/MhpkUT/OXan2Tf0XIELHTMaG3tHUqLaTI9wwh+sh5HI9RDJyQBTWC434zFpqLIJWxW0HgGCyxUYRj5zZLY1tV/TE7ZXdjFJfs6nEYYP/3IQhlH8+Cqkqxz1iOYB0T7qsd2dK4r+IeiIaaG3+ejlRGRj8KMYClzb5HAYVDJRBHEdUh/p4Oe23YKdYkbdRF8StJoNLjd25P1pPZALYlvgjFNGOUtOIlxypjW+swPyw4qlzoD3uLn4OTqV7oanpjf216rcVBLgJxF+Rwnbu0hZVYPd2Ii3QWRiah6LgSeOLPW5JHGL0u7JPXa5+ELeUzQh2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BN9PR11MB5531.namprd11.prod.outlook.com (2603:10b6:408:104::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.29; Thu, 10 Nov
 2022 16:31:21 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d%7]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 16:31:21 +0000
Content-Type: multipart/alternative;
 boundary="------------Iz73X3cp0AcvtN85s7ssF5hm"
Message-ID: <d5a1c1d2-2c29-9462-89fa-57eeee59417e@windriver.com>
Date: Thu, 10 Nov 2022 11:31:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        Saul Wold <Saul.Wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        pavel@zhukoff.net
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 11/10/2022
X-ClientProxiedBy: YQBPR0101CA0281.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:68::26) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|BN9PR11MB5531:EE_
X-MS-Office365-Filtering-Correlation-Id: 720d4351-1cee-4242-e209-08dac3390083
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IgiQwLSmACgtkh1NeiRSMRkK70jLO7Mk+/jJvISR01YsORRblggGRIodgRfYZE5aNWtvNynKabPyORvNQEyNRSU8DJl5QF8EF25pFteTrwLC5OkliGmkNm+esLDZemb61vt3ldNYuZo37I0drwwvnrwNjATMykE7TeNmKeadEBA74Vy1lensgBZbPuzD0IuW+vBF8u6ZIFFS4A6+Lfl9RM6z4ZLLleIS28zkGyzIjGmy3QYZalHIguj3qO4AxGzyX6Q9B8WdJnpkSqvXT9k8AW6zJgVqqvwkSFvZ6YfgRSpuXO+75SsfTUXfx/NlSF9ctpxYEd3XCWo+AqoIxOcxPyTQfCTx5FM7OLmp9zZ3niGQFQmKbO/5eYaFDy2hmiQY15mqXyNRApd45q9/EN9QelPZJiTlITPneooXTVXbQHfnb83wu+uOJzwi5TSQLht7SYLSkf/9mJL0fb3slnyY5qg1dBxIupMJDrONOjpSf/rAZl1PDlBNbfiS5DViU063Wq9XE+HcNGOkEA4JAtgfxcK5vyooVFL4wtvw7Ogtpk6aGJaHC//B8jRYiy9/Z+nuzebSS7721+CnrdPm/68bIay4gxCOzhWuHkvOV2NhIjbYyCgQbnTfs153oa8Z5t3iMMNSf6c4Fz0Ey6OKmp5EUp1kTYZd/qMEwvRlOOuVkOcoth88XuBnOnfdOxew7llhRbdkK1bNIfIeL2HdCNggvwWqy85+Ozv0Nvj+cqzNSmlxsT64DtxaEQ2Ydlm9sNVlceVJrZMSqQun3O4K7nbRBAwyD4If6hoC2q2xknsE2Xiif2xmbQLK11sIRnPaI3KV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(346002)(366004)(136003)(376002)(396003)(451199015)(38100700002)(166002)(5660300002)(316002)(86362001)(31696002)(2906002)(6506007)(41300700001)(54906003)(6916009)(66476007)(66946007)(66556008)(8676002)(4326008)(26005)(33964004)(6512007)(44832011)(8936002)(2616005)(6666004)(186003)(36756003)(7416002)(31686004)(966005)(6486002)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YXJlclZzekxoTldTT2dxbVgvVEV4VGlkNXZOZTU4MUFGdzQySWgyNno2dHBo?=
 =?utf-8?B?b3gvQ05takI4bEd5UzZSbzBRcVVlT1ZYdDdoN2JBS3NPUytaOGVLOVVpWUxj?=
 =?utf-8?B?ZndiWlFYTmI0amh4YVowWG8yRnJORXZUYUhBK1dGRmgrUmkyTCtFeGdlT3M2?=
 =?utf-8?B?aURxVTJLOU1iUXhpb3c0bit3RkdMQi9JUzBJZ0orOThHOUtMQi9aVUJtQ2lN?=
 =?utf-8?B?MjlPTE1Pb2FCSjhzUjdOajNXT2FpejdBeThITnRNK2NGWDRMNTUxaXM1ZFpS?=
 =?utf-8?B?cUpwak84UWdFSkJETFYxMXdwQThNa0FZNDNiQ2I0dE1xZWRQVnVpSUx3VmFK?=
 =?utf-8?B?UktZUTNScjNPSnp4ZWVwL2llWGVHR1FiSHdadkErM2FaczI5ZFh5MHhsWHZz?=
 =?utf-8?B?UExXZlRtb1ZnZVZaZG1FblFrcW5CMUxoeW53OVZ4RmRBbTlMRlh2M254WGUx?=
 =?utf-8?B?UFBQZURkRXdQV3A3bmFzdVpkM0lJNFZIcnpKS0ZVS3p3d01TRDBIcG4yRWxK?=
 =?utf-8?B?NEd4WEMxeFZrTUJmQmRvRmtEWkVOblBqcytEMjc5NCtQMDg2ZmFDeS9PalFT?=
 =?utf-8?B?dUNWYlpzdkRRUGR1SkMyNEo4WjhQZ0JGQWptcG1KRjl5UkJtRW5oTS81NEdE?=
 =?utf-8?B?UmtsZmp6NUVvVW5PNzJUQkJkNitCd2RLZlRmQng3czhJdHcwR3JxdnBwZDZX?=
 =?utf-8?B?NVdYVUt6SkVaYy9VRzNwYVJSeENBWVo5djZxdkRXRFJScDJXeFNRNlMxUmdT?=
 =?utf-8?B?cEpQa0F0ZE5wekp2NlAvWCtXbUxGYTBRLzBPQjg2QXhINlFWbVhIbGJUSWNP?=
 =?utf-8?B?VW5tSWplK1g0N0VQb2xvcCtWVzhXc3RXR3JlMm13cHkxbWttUURKY0NHU0c3?=
 =?utf-8?B?TFRHRDBxUk1lZHhOUitRVjRkMUJUYlduL1cxUXo1VWR0Ky92VG5aYngrSDlz?=
 =?utf-8?B?T3crSmRKaDhtL2VJWjczLzJZVTdKbFVWRDh4RFdpTUMyZ0tVN3RpUTZZMzht?=
 =?utf-8?B?bWlNVU1pbHBGVERyZ3F2NlJwSkNlS2g1YXBDVEFJVlJlTzFveDltQnd6S2tM?=
 =?utf-8?B?Ris2aXRENVEzVVlyN2ptM2EzQ1RNQzh0RGNRV0M3S24xTzcxRjJKUjN3a0RZ?=
 =?utf-8?B?MFpLZ2NKaEpYMVQybWJ2VFVBQlB3YUpqR2JRRWNWZ3pFblQ3YWNYbkc1U3VY?=
 =?utf-8?B?WU1ZR2FneGtLY1lod3FaY0Q1YTVsWE82NnJVNXpUK3o4QUg2ckxGOTJ1L2JR?=
 =?utf-8?B?bEd5ZWZweHFJYXQzRWJ0VXBvNXlZYU1aR1FseXdOSEJTUzYyN2czRHQ4clFU?=
 =?utf-8?B?VUt3YlFwVk4wb01lV3cwNmFseHRqQnlpRzBkN2dIc3hSbDB1djVxdU5hZWty?=
 =?utf-8?B?VmV1OFhKeW5BTDMxOVhHbWF4NmhmaXI1dnE3YUtkRG40YTdscU40aFlmQlBK?=
 =?utf-8?B?TXZTLzREMUxYNVRvbVkzWElpb0d1cDZiSmE0NTN1bmJPcUhzeEg1aFVEYTR2?=
 =?utf-8?B?NndvN3FBaVJLd3NqSURDb0FvMmtQenNZcUdNOUpWbHg2aFJXM2U1N3VjRGd6?=
 =?utf-8?B?d3M3dWk0UXA1ZDZLNXluMGlldVp0TG5nNE5aN0lucnpJanNyeUptY2ZSVmhn?=
 =?utf-8?B?bUJiSTBodmRrNUtLMzNWMHpZc1dwTmxLSlJoR1I4QVdHUkhIK2l2SzBuSCtQ?=
 =?utf-8?B?Qm9Yd3B2ZFBudmNRcWxMWXRXY3hIT0sxNHZsdno0bUxUaFlPVnF4a3VIb1dD?=
 =?utf-8?B?TktrS3ZQcDJUMXFWVzdPN2tBd0hGa1BhQlZLWVRuY090cHBMT0xUMTlSVWha?=
 =?utf-8?B?Ulc1a29FaE15YWVMU1NCbnRxTUN0cmpWWWdTZHcza1ZRb2ZLeXRDQU9vS3Uv?=
 =?utf-8?B?LzZpcDY2WlJ5N2ZJMW54bVFxYkREcXhjeW42djRsNGtRUDU4YlVPdVRlV1o3?=
 =?utf-8?B?TjZyaktrVU9pR2l4K2hFakY3UlRveTdqZUhWZ3JVZFd1TEFCRkRrU0txWHNC?=
 =?utf-8?B?cytUWWF2c3U4SW5rVm5CNjJNL3V2cWRIRGNXdGE2NXBPK3lVMUJKVGo1clhs?=
 =?utf-8?B?ckdhNjFhTmowaTNyYmU4SlJFUy9IOXFnSUhMUlF4bVExSmpLZlFkSkVDZEJN?=
 =?utf-8?B?SEZWQ3RzNmxGTlZ6Zk9hUXovRmpaYTJlbjdoZy9YeWFLaGN6cnJ5emRrZ0RM?=
 =?utf-8?B?NUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 720d4351-1cee-4242-e209-08dac3390083
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 16:31:21.6947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5/h85kr/C3y0HiTmehuSPU1o24hLrmFPRIXInsXvat5NbEWZ0T6xpX+Ob0GVm8kCa+27QOEuUEft3fq3bTZIuXmapfAF0p/R7+dT//YPAWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5531
X-Proofpoint-ORIG-GUID: FvuDbRN-4iFjff4-htFJzVyytreZhtoJ
X-Proofpoint-GUID: FvuDbRN-4iFjff4-htFJzVyytreZhtoJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-10_10,2022-11-09_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 mlxlogscore=798 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 phishscore=0 mlxscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211100115
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 16:31:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58538

--------------Iz73X3cp0AcvtN85s7ssF5hm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2AACWJao020035

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, Z=
heng

*ARs:
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *69 (Last week 69)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 44)

*AB Bugs: *61 (Last week 61)

--------------Iz73X3cp0AcvtN85s7ssF5hm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Zheng<br>
      </p>
      <p><b>ARs: <br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>69 (Last week
        69) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>61 (Last week 61)
    <p></p>
  </body>
</html>

--------------Iz73X3cp0AcvtN85s7ssF5hm--

