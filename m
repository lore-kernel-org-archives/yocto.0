Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E169DC74A5B
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 15:32:30 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.75744.1679585546115678453
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 08:32:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=Q/WOYHTv;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=24461f8047=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32NBGrTb024914;
	Thu, 23 Mar 2023 15:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=GlZHxRBrAAr+DHqCfta1Oev6GOgiHNnv6BwMe3xNFIw=;
 b=Q/WOYHTvK0lC1B5mh/q4mGnHqTPh/P8NprNvkIj5gyjWwNObWm6+/1V568nC0NlcyXNA
 btV9OwOTqhWczZ8negYOjptzpnK6XOy6t+OCdDA/WMDjAynVd2ZHdfct4WYowVE+w0jN
 ONvhSuDEUh45MRCefJKSONp+Rb8Jb93nLzNz7MI23swlkvdsIURPjzr/9K46Y5Qvac24
 92+TNxtByIHQsIA84z7bVO3K61dQY/SYbG0nbibp/raHcMtlwFgzRjwDO0zOKPbNCq2v
 LvGfdU2V1b/Z3yDA/Z8A4BfQ5IcVZ4yo0X0uivcK52lcVWLhvkaWUWlfDREOYJSVwgvw Yw== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pfqsmsw3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Mar 2023 15:32:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aYwj8bEM6K/EDHOsCfXRpsGnvwq47qUzBzF9tAUxcwOtHqC95hydBFdm1AIIgxDRbjT08rFCn4Ye+W9IPoTW4pC5K37R8uv3t/UOH2wrdRvsRexUTtW7O7I7yCCuslh6me6jylee74cR+6qFNZq6387aC/F1BCoCDftLakzc0bGP8+Vf4x6Nj4wsttexGQusRuo2uTkAssdPw+it9eW98lRrPdVbvnmQkR/xFpd3Vr9f8OSKhhU8d2yHlcjQpgdpeD1/dJe+oh4qpyjsBT+xbflBCo5wiPbJbyhbtvI1HQpQDbdtpizulEUUqe7Oya56v4ZrWQw0ayMgfmi8ne4vqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlZHxRBrAAr+DHqCfta1Oev6GOgiHNnv6BwMe3xNFIw=;
 b=AMxkgAauTQFMY2a4rIuJ1LQlKiihiVNVViwCIUYWeSsZXj9CgoEOB3839zyYNtAiZfvBk4RXnL0YIvDiqi3XAZFdVvz+pSaxAzkO7Oh1WJdLOqgaTZ6MvcDENsSfr4FIu3RnKC8k8VcdcYORc28OKSkAM4KzDCvRKcp0BtLyFqL8h+N5HkNiGkEiVa5CRSYK8Y6mMQsoUq/SVZfcZq3DC/hy779PL66CRdO+LDhGo6AdjLU4cW1WYsY2JqAsABk1OQPv5bmHyzlK//G3Xw3+3vr7SYRilBg2tHiAqSRthSgOfMPX9bODwo11e+UGFpCUE8hxhu1qxI7idPPR8j4Ttw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.37; Thu, 23 Mar 2023 15:31:55 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7%5]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 15:31:55 +0000
Content-Type: multipart/alternative;
 boundary="------------1zGsigYb0VBH0usFcvkmRqQ1"
Message-ID: <bd9f47b0-520d-e599-473c-f650436a70fb@windriver.com>
Date: Thu, 23 Mar 2023 11:31:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 23/03/2023
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
Content-Language: en-US
X-ClientProxiedBy: BL0PR02CA0091.namprd02.prod.outlook.com
 (2603:10b6:208:51::32) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|IA1PR11MB6289:EE_
X-MS-Office365-Filtering-Correlation-Id: ea001074-1ff9-4bfd-0180-08db2bb3bbcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ad3YP8qanZl5tE5qt1kdd/5INPzxQLYcUbfhOg0N+a76NISL6LJsj3UFsFYJu9EtrnxOMNBMAzZiwz5pgWwlOdkN9ZWuIQ887sP5IYO+yyypaNsEc3oFht5a4tBS9BEZpPytLB5fuKoG63AQiSR+nH/IuiNUW6NKJcOuvayduV5fR3m73epfRcZir3fr3B9bGVXdKqrpDqq135idYDG4d9K/G+6PyReN/5BPFeUCHvu8iUmFzE3c2HkGr9FFDT/cfpL4aupeP/wcXTU1apGEHI9RcouPhAFZKgJ4NQw+3Zpdedg9DxrMSWuGYe/G6rlN8+vw/pnd552kX0ip+w7KA+j/1RxCCEV4GDv2tzn5BOFf55pJgjbT9GE2bKU2xK4w7iwTDwV1ATQCxkak6sJjKIFWcsg27hpbmC5oxtXrG9fyxlX6kWVQo+6CRm31xWo7s2oucFV4dEOGmJXgMN5s5cD+NooiRQonU47aJY5NAjE7oHbYC7gXfxd7cCru8jmOuzEdDKXp51RfARkL7hpUJODqGz5jQdJSlteShHb6VZQaf8oz9f8K+5Meatxq3qiDNSxvDCyZo+VWWv8IRET8lOgJJ0nRl2KCipAQg4n+FTGqHCwW2GZ4/h07KyRrwYY7Y/Zx2V6kUSpTGjbpqWhAe9UQQ9wbqcXkLFZRlgy6vYZFrQtQAYYikiWRrqBZh5SGyaPjAgr0KlfxgbvuVzG+hp2xdUHy0w32Iu3aqQPGYQ4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(376002)(366004)(346002)(39850400004)(136003)(451199018)(31696002)(86362001)(166002)(36756003)(38100700002)(41300700001)(2906002)(44832011)(7416002)(66476007)(4326008)(5660300002)(8676002)(6916009)(66556008)(8936002)(2616005)(66946007)(33964004)(186003)(6512007)(6506007)(54906003)(478600001)(316002)(6666004)(26005)(966005)(6486002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?alplVlpuWGZkSmFzOUdkL2I5RWY5akFHNkk5VEpvY3llS0ZORWlzeTdkSzRW?=
 =?utf-8?B?dlJYWTJ0OEtoQW82WHFpWlVIaFNiY01ZbStqa2FEdjJEVDBtL2Y1L1d6amlD?=
 =?utf-8?B?QlRXOVV2V2RuWGZZOEQyT0hhWDFJNVd2TVhEczdBUUpGamFwMU1Vd2tXaVFm?=
 =?utf-8?B?NWY2b0dTc0VsYkRDVkZKRmZQbURGZmtKdittditpYTA3cXVlMnkzdHlmZTdB?=
 =?utf-8?B?engzM05pSXdhSEVOUjZlTmR3eTdJM1R0Uk85d29TSWFFR04xMWlYTDl4R1V3?=
 =?utf-8?B?cGlGVkU3UWhXZGxOWHpWeTlwQUZ6eGhBa0k0WW5qMEJML29iQVd1azZHNXNk?=
 =?utf-8?B?T3RSMmdCbnBXYmRrR0FLNWNOMUZKUitnOUp3b2trY3cvKzR5eVl3eTNhZXBG?=
 =?utf-8?B?cG1tMmk1Mk1IT2duNnBHUUZycHdFYUUxY25Icy9iVmJoZ1ZlcEMzWWRQYzFF?=
 =?utf-8?B?NzJhR2NqOGNBNzZUazk2SmZoYmRNdEwyQWpNYVpENFVpa3RPRzUzZGx6d0Ir?=
 =?utf-8?B?UGxUbmFFU2hpdnpGVzUyRi95TTNabzVmRkt6OUdRTUtyOEZHVjdNeGdTR083?=
 =?utf-8?B?NFprekUyWS9ycXJjekJkd21hdHVMcEtBb09PQWN5M2QySUNjQUs2bWxmNDVW?=
 =?utf-8?B?V0tta01BYUFDMFlvdHAyMjEvKzFHQUhlS3BpOGoxUHd1NW9xMjcveXliRG5u?=
 =?utf-8?B?em5kaFYrbldYbVdTeUZ0aWFFc0pmUDRMbXA3OUg3WlVPUGNGWHVkUWZCTzhk?=
 =?utf-8?B?cXQyQngvalhDNWlZS0UwN0U5NlVKeFRDajE5UFN4S3VuOEVZKzRnNmhzUlBn?=
 =?utf-8?B?VUkzR0RNV0V0MXVadXZiVE5kdVJvSDNLaVRDcEpERTJwVzFKczlMcWZmOTVX?=
 =?utf-8?B?Wi85U1k4aWpYUld0cldlUzArVGJoYkRUUHBjeWxZZytmZGtNbVZ5ODltZE9t?=
 =?utf-8?B?UmlKY1cyR05FYzNJMDBCRE1hL0J5OHJyVEFhS0lDbGE2THFIajE3UE0wcnpX?=
 =?utf-8?B?UnUrK2JUUG5Ha09hL1NKS3J4NDIrM1U1UTZUK0xSd1lSeGgzbEpJMFZKUTZ5?=
 =?utf-8?B?NjVqc0dTMUtVL0VKM3NUN3Q2Uk9Oak1TUUtEblpleEFDa3NSQUdaeW9YZzd3?=
 =?utf-8?B?T2E1NFUyRTJTQlR0bXAvVUtIUmE2YW43dmVyckNqajlicEUwUWxOSE9obmoy?=
 =?utf-8?B?MnIvYzd4SDJRUkdwVnFXckVFb2JBQWpoUWtnL3pNOEFGaHlFZzk4dE5SZHhj?=
 =?utf-8?B?ay9CU0ZnZEgwczN4NWpWZGdqWWRZUUZtWVV0MlFpeTN5QkdEOGthVnJTR0Z3?=
 =?utf-8?B?Qy9rQ1JxeFRJdjRaYnRZOFRpSWFaeXpyTFNEMFNqM2RQNlV6LzRoZ3gvSUJz?=
 =?utf-8?B?N3EvL1ZMQ0EzRi9zNWVrYTJpR0dIa2hwSlJwYzFyRHd2RmQxMEEvbHY0b256?=
 =?utf-8?B?dmhLUmFab1RLdzh6MEdHbkhGSXBlRXQxNkcxaHhJSjZWUkV3K1pTVitsTnRM?=
 =?utf-8?B?T3ZwMGhxUzhuZzJ3a09ja0tIa0ZxQnRsSHdpWEY3cUVWTm9Hd2dhdFczeTZn?=
 =?utf-8?B?cldWeGpRaVErZkI1clpyT1Y4WThqemVJcFpYQWZydnArUFQvV0phY3VPRG83?=
 =?utf-8?B?Qi9oUDQxcFE3cERTbUpiS2s3QXMyK0FKd0ZIN2JmTzczZGVsV0gxbkxTSC9T?=
 =?utf-8?B?clR1QjZjWGlJUmxDOGd1LzM2eHNhWnpuOWR6SDN4aXVNQ3JkUFg1SnlpcVZn?=
 =?utf-8?B?bzdwaENxOHdiSzhYK1NnY21SMktqUFFOOFhoNGZ1UDFKcGtIU2tWMkhNOW5N?=
 =?utf-8?B?WGkzMmlpVTE5bEc3NUd1UjJVc0UyL0lQWjlqSExGQU1SZkZBaFdiQWdnN0VT?=
 =?utf-8?B?cHRhRU1FRkNEUlN6eVF2R1E1TkNTTitTbjU3R2NwcnErTmk3SFR6TkdLSlpv?=
 =?utf-8?B?bkFDSU13NjVBOThPK0F3bm51TFRtOVE1Q1dOM1oyaXU3ZHFaUGRqR2Z1V1RX?=
 =?utf-8?B?WVpsUzhoWmo5U3M3UU50M1Vuc2RIdmdkVDUzTW5HVzk1Vm9SYTBRMmF1dVpv?=
 =?utf-8?B?c0pkQWdWRzBXSXpOa1lpbktaOXhJejY1Mlo5ajFGeFZQNGVObXBCYU9lV3p4?=
 =?utf-8?B?eGw5MGNQcjhOUm5scC9KUWx2WUhwSXVSLzZ6a255WjF1ZFphN3NCdHlSd0Ix?=
 =?utf-8?B?c1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea001074-1ff9-4bfd-0180-08db2bb3bbcf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 15:31:55.5603
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q8lFIQDxdaaw1caLNYBtZnBiW41UtjlJz8Hbw/pG9mRtBg8ZO/thfXTnHPoqz1UgS79Pq3NN2yo6G3alHxEE4jPeHnyh40wvjQkU0jj4BXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
X-Proofpoint-ORIG-GUID: -w_RrOX3UWe9j9cwXwcA-IZAZ2pJv-_t
X-Proofpoint-GUID: -w_RrOX3UWe9j9cwXwcA-IZAZ2pJv-_t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-22_21,2023-03-23_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 malwarescore=0 mlxlogscore=842 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 mlxscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303150002
 definitions=main-2303230113
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 15:32:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59503

--------------1zGsigYb0VBH0usFcvkmRqQ1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 32NBGrTb024914

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, B=
ruce=20
Ashfield, Michael Opdenacker, Michael Halstead

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs:* 59 (Last week 60)

*Medium+ 4.3 Unassigned Enhancements/Bugs: *11 (Last week 11)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *70 (Last week 66)
--------------1zGsigYb0VBH0usFcvkmRqQ1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Bruce Ashfield, Michael Opdenacker,
        Michael Halstead<br>
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
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs:</b> 59 (Last week
        60) <br>
      </p>
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>11 (Last week
        11) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>70 (Last week 66)
  </body>
</html>

--------------1zGsigYb0VBH0usFcvkmRqQ1--

