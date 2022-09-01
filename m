Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33756ECAAD1
	for <webhook@archiver.kernel.org>; Thu,  1 Sep 2022 15:09:48 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.13510.1662044980928280543
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Sep 2022 08:09:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WJaXISkp;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=62439607fd=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 281AEDQ8028400;
	Thu, 1 Sep 2022 15:09:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=6pMAu6dofgeo6Sx79v+d8jGBKtpoU2zFxJk4yPxoISg=;
 b=WJaXISkpRdvPTA53bSdjI6s+UdxCtsXKIlT9Q4AeCRyfjnoBhXTjwWvg+SJW2xdYqQuh
 JJwMu5LB/EW7K9wa27a9GzKRGzwlybuB/JbplqlG3r8zQXpLKObjNN1uA2dyb8hZ2hb8
 rqTgMr0BscPSeqTGpdSRTB7m6g9v22Y/prKPG3srRNY7FcaKfbzIhSf1C/WpK/uwfmM+
 OpnnQwh6XZ7ZhQqEyzHu0lRhm9vl/khD+ppZS6IJpaggNJdBGvnB+t0Cz8adIC48k23d
 KgQ+rAy8olhxrxWvQmknbCCAYJ7/h/q56eBE+1es7KKHo3PCozsas+1jIrebY3Yjwa7w KA==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7a89mt9g-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Sep 2022 15:09:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHjT5SH/JO7Asg1R1GsFHOO/wIl2BM4CnwVKveGq655hlqByxAFhjYAIysDbbr71a1ifO0Uq2oCgZqU2QcqkJRilaE7Iz4YTi3WOqLPP1u9PKnFl4AdQ7b1duMry/nlGFo/2WCd+XTvwQJ0snLZSx4JYlb4bUxDwurSmbfqh94oEp8+JCIr9xdWufYYWXpOKjI3laNmLqcNkgdnWtYMU1SfivO0bLhIYrOTfjgF2+w6G2md+wb0Bnnfk6HLOt9lFTV7T6m+ZFpB5LDFuGj2ZLRhMhrd5GjQTRY7r4IH1aYD6Ti2sLqY8WcA9SFagdhDMC6htEezphLz1i0gFXs9oXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pMAu6dofgeo6Sx79v+d8jGBKtpoU2zFxJk4yPxoISg=;
 b=EbwlP+KN4wtYr5H3/cUBGjMzg4F91giDMedUZ8nTVgnoYuCYAhmaSgtSxZcfuauim7FsOSdWoVGce7t7VbixTAEXpS+FmC02ZxV1MQ40q9zgXcsprj8yz+BVVYVGmb2Pa1JPnyQ4DkV+L3/+Njvn2Sj65F4psUQIdenDYWcZim64EW/QFsFkilo75+dtLLwOWXvYL+w+JPV2bvxnq3L5f6QZYsOEUMsGe1K+5nEewaWHBn8OqipyADauYG2+jZ3cp6Lc50KfFxGHE3aPxc6YP69M4b0+1KmahM2DYLc9hk38wLBXz6Af5mSAfB6qF6MllDR2cbwhC40atzFDtcYZWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH7PR11MB6521.namprd11.prod.outlook.com (2603:10b6:510:213::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Thu, 1 Sep
 2022 15:09:15 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2%5]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 15:09:14 +0000
Content-Type: multipart/alternative;
 boundary="------------64cTRVeHg1j0x2sojk8WiKrj"
Message-ID: <37bd767d-d227-b32a-3911-1c95912da1c5@windriver.com>
Date: Thu, 1 Sep 2022 11:09:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 9/1/2022
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
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0015.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01::23)
 To DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d16950c9-d96b-4206-2248-08da8c2beede
X-MS-TrafficTypeDiagnostic: PH7PR11MB6521:EE_
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	v/4U+qRKQQDaPwQKQ02qiUIWCppaGkC8x7ZrOd7WC5MliH1bt1xJqnOrflw4edQEHqfxdSZGUm4BziIDRV2E40Rz+jJ1d2gDDgBQitPG9gsiwanj96CCrGwCeslHL94wiTYOfc1Ylf5BGUuM73je1JWuwDX4/ZkviTRMR1ZJEP0ZZLFG2CMHblMBvQs3lSgPQu6JpZEGN3bNDnr6SyraU51TbjmuT4gmTIXwWf7CPPvCAp9NOhBB0uafLl3nb4Qv7tAK5+Mrw1wD2k7zDNHGYOcRrKXa892WJYxYtHTuW9uyQ9GthZ3xiZdvydxztAAbNSkh01KxcxM/ZmQjDLiOenDKcr8RUPWElDMIxOslPY6/wlfQhch6rV3sdIdFkJxmsgYwvvRq0r/KEXh3Q5HC7wvHy2Xbsrcje9pcjjGI/otFfgYMl77ONqoN1OH/T4TwGNyVrxsYgHtf2L8TUbzlJzLwjDoeHKp/mCDnZjrNdEXGPwWLuTinEnLcGw0P0cGpsVD3nLyAocSpkXC5vl9EFKrdDJg7up9t5bymU3IWxRapm4eZc2OkK/Qi9TRr+7fKSU3yuTyW48zeubN6CBU6fq25TdFY3L1qpqF3lxH6de2ege3NDX772e4wlwhJ3+fQDlV0sHXFKTi9Y8IlnIYrVhVEai/f4/UhuVzpxOyIuQ96DxERSTw1lMttclQuBGAI4+nstClmogza58RAxG2LzT2DuHPqlF6iVu/U7z/6jUZpYiAgs4VnV2UA3uz3CSoV+g3VvZ+Ox3g9avJ8DmhbkJotUF2Ia6oMpsmmOuvUVUnqkpl+MdpSHD28QGdnMjt2
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(39850400004)(366004)(396003)(376002)(2616005)(186003)(7416002)(8936002)(44832011)(5660300002)(8676002)(4326008)(31686004)(2906002)(41300700001)(86362001)(36756003)(31696002)(478600001)(6486002)(6666004)(6506007)(966005)(26005)(33964004)(6512007)(38100700002)(6916009)(66946007)(66476007)(66556008)(54906003)(316002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Ky9TZ3NrQWUwY1YxR2U4SmRzWS8rOGllSVJGWGgyTmtjZjJvV2FoZHZEZVhP?=
 =?utf-8?B?eCtUQTZwK3V5Zys4UDIyTXZHU1lJRUNzeVhrQzZHNFV5S1MxUEdaZC8yOVBL?=
 =?utf-8?B?aU82UHJod3l6T0FpdjIzQm9mKzd1bHA5c05iOFY2ZVI0WVdIU1l3UldPcnZh?=
 =?utf-8?B?emZuUWpnR3ZXKzN0S3ZBTk9VbUo3ZVkrTzlUNEd2elVPY1pET28zaWE1UjBP?=
 =?utf-8?B?cTFmRkdzSGduM0VKSHlyVFNqUVNSN0oxaUFuamdvV0wvUGRqV1BWR2F1TGVz?=
 =?utf-8?B?dHB3eFRmUW9od04yQ1pUSVhOemJzOGJRS0lpS3pnbEFZbjJDV3g5WE9iaHor?=
 =?utf-8?B?aENFaktXZ1p3ZWhxajFsV21xU1gydk1qbW53R1FVMHA3S2RHbER1S0UvTUh1?=
 =?utf-8?B?c2NTZGM1YnZmZEJDam5VekcwTWZTRkwyUFBXMmRwY1U1d3dkcStpZkJlM3JE?=
 =?utf-8?B?OVpyTGx1RzRjVWRpK1RXSHI5b3RFK3lyL3lhdERNVzl1dTRhQ0JrVzNSTkw2?=
 =?utf-8?B?VzN4Wk5wRTluM3ZuVVJmM2VFV015aTFWdVhIaG1lcUZYWVlXYzhoTkZiS2RR?=
 =?utf-8?B?dUtVcXlaUVZOME1CRkNHZmQwcUFYNVgvRThwYlhwQVZxN2JyOVZxM05hcjlY?=
 =?utf-8?B?TmdORnRwNHhORW00aWZEeURmUENEdzZQUWFhR24xWmsvODZCRG1vTS9nTjJ4?=
 =?utf-8?B?cVFIZkRQOXpjTFF5dGVwL1V0WlZ4R29RUkFPWDM1SytnQlc3bWttWnRhQzV0?=
 =?utf-8?B?RUlWZkVFK1BncG9ZdmErWExyRjMvZVNHemQzT2FobWltcFBpc2dNU0Z3di9y?=
 =?utf-8?B?RnNuUEdreXFONThQYmM2THpFVFVJejJOM0ozTFFhdkJVcXYyeUlBaGdUSllU?=
 =?utf-8?B?VzlrOURHWDR1U0JqbkNYWldUdHVsTmxtU2g1Zmxlc1F4aUdWM0M0L0FFdFUw?=
 =?utf-8?B?d3Brb2ZSV2xsU05GM1JyN3AxeGl5VjBXdlJYb3BydWhuMm1kUU5MUTdKb0FR?=
 =?utf-8?B?UksvcTBuNlhvK1VMNDdQcCtqNnBIN0dJWUdVZWJndFZWaVdHajFrVWl0RzFB?=
 =?utf-8?B?NE5mdUV2Q2RWY3RIa2s1cE9URWY0Yk1zK0lVbURVbVQydHk5ell6MVg0dlN1?=
 =?utf-8?B?eVBFbFREVDRRQXVzV0Z4ZG0rM2RqQWdacG14OTZkZmFOZjhvUjlXVzBUYUkv?=
 =?utf-8?B?V0RmTDN6eU5uZHVTa2EwL2hwZWwvdStwZWVUTHdEbGQyUVNlczM4enJMdm9P?=
 =?utf-8?B?ZHhjaHE5djRKYmtMOTE4VlhPMVBRbHY1VGNOVkROZEIxajlJS3J4N2ZITTBw?=
 =?utf-8?B?cFhsdDNSbkxZem1Kejd6Y0hjckl1aW8vWG1UVzcrdnI2cm5qRUk5ai9JNzJr?=
 =?utf-8?B?bDdrTDVhd09VTzdMcGJmcHdnK2doTStJVUhIMkUwU1NlUXI4dGxRRGgzZ3di?=
 =?utf-8?B?RFBYcy9kdndvYUtxZ0ZTS2YwK0w0Wm9JWkhBdnVNQklDZnplWlNOU1hvN3hs?=
 =?utf-8?B?UXpnM0F4SFd5amh1cTRtZDB0RXU0Q3hoR1VzZDhaSTRoTkhQQUw5SGcwT0dN?=
 =?utf-8?B?Y0drY2dHaWpjTFZkQXBqQmFwYWxBZk1haUh0YjJrR3RkK2cxbGJ5Q0g0THk2?=
 =?utf-8?B?TFhtVnh1YTlrMSs2R0lNSU5Pc3dSQVVYTW14UVloOXVzc1pWdEYxWC9Fc3RY?=
 =?utf-8?B?bUFjTUxnaHpPWXhrNkVSWk1jMGZPNmM5R2t1emNSSCtlWnlMK3dGVkNjcE45?=
 =?utf-8?B?c2wvZzhRZkxkcDdIbytJcm54UGpYeFVvd1V4cmNuT09UWStkbklBZ09sWDdt?=
 =?utf-8?B?S2t4eC9jWW10NHpxWVZzeHQ2K2tDSkdHMmh6WjVEWFd2MXhUSExnb21UK3dE?=
 =?utf-8?B?RzUrOGxEQ052dWo2VlFFYW1ic0pTNGJHTU5LeXdvVGdlT251MVgyU09TZVN2?=
 =?utf-8?B?MTNkOUNKVzMzdER2R1ZETk5kc29pbWhmaS8zSmRXQVdXSEY3Y2JDMnFyZ3dD?=
 =?utf-8?B?Skd5U0FPYVdnYkpOdmZJNXFLNUJwU3VMZklYZEQwSkRScFozaW8vQTA2QWFm?=
 =?utf-8?B?cEh1OHArZDJLNTc2dE9qa29qY1JMSDdpcmFoRkZhKzkwQ1lXaUQ0NGxYc1Qw?=
 =?utf-8?B?QlVET3NKWThqVVhzV1BXTHhTMlRCT1ltOFg2WWhNakFxNlNvQW5sVTlsSVNL?=
 =?utf-8?B?Z1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d16950c9-d96b-4206-2248-08da8c2beede
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 15:09:14.7238
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 k164zcqVOMFJR21x40VKLndmCeWpeSeix/qrA6wOeZ5ASxIumg/a3ZY+ZHha9T+vUjeSF9UKZrSrytQyqlr6APiAY3OMG9emFWWCLydhNa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6521
X-Proofpoint-ORIG-GUID: bmdsbkgzLoYsZ1PVdxfmu6KgMT7y_k1j
X-Proofpoint-GUID: bmdsbkgzLoYsZ1PVdxfmu6KgMT7y_k1j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-09-01_10,2022-08-31_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=897
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 phishscore=0 adultscore=0 spamscore=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2209010069
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Sep 2022 15:09:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57968

--------------64cTRVeHg1j0x2sojk8WiKrj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Alexandre Belloni, Stephen Jolley, Ross Burton, Saul Wold, Tim Orling, 
Pavel Zhukov, Alexandre Belloni

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *67 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *57 (Last week 58)
--------------64cTRVeHg1j0x2sojk8WiKrj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Alexandre Belloni, Stephen Jolley, Ross Burton,
        Saul Wold, Tim Orling, Pavel Zhukov, Alexandre Belloni<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>67 (Last week
        72)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>57
      (Last week 58)<br>
    </div>
  </body>
</html>

--------------64cTRVeHg1j0x2sojk8WiKrj--

