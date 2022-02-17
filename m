Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6B6FC433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Feb 2022 16:30:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.2116.1645115449836986482
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 08:30:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HTkNPH5X;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=9047a018c8=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21HDxPNi005883;
	Thu, 17 Feb 2022 16:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=Q9zzz8x0mwBoinUS2QPh4Eup0tXbUcly8cjDk1ZXAQM=;
 b=HTkNPH5Xb8i9fjBmsEcAdX/aRO2bY4XP416iNFYlRa/AA27FKo5o9oHOZHy7bLz4bscc
 LD0H8sXMVHkcZ5Wwwou6Axjn4MQkpPbgJuGZrhL+u4026DV0na3YuNm03HVip5uoCoxd
 3+gnrB/yudzo9WyeLZfIvVUGZC3SXRU9W8XixtVSr63O2yDuT4n5/gE1+iLUkEf5sz6v
 wNPISdYhGKOHnQU71/ZavL3QSOOeAuR6cV5mxTsWhuBs5kz03vyTVkMBvVvTy49cKAWx
 aGBBytDopTV+g/gCTzgEcNmT2W5cyoURJzU2X73r5P7PXqBOfoZRnQ9to9nOm7gqb0gW Tw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e8ndw1hwe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Feb 2022 16:30:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gcx6eqNKo45jZDltqsilsruQldsBitoWXip3aivlpLH2zWU+p71Oqamj/dG5+hjBMwiPKmCFHQd5UdI2UAy+6w7naBO/EQIIEQwNaDUrVbNAZ0o+/eWo67ymjm4nafoAq4kQbEd6sN4xRxjpGQj4Wc0+h+X3dO026etICZ6BGLi7jkqjKP76+y5VfsfSpp9UnKdAQjwTlkrcLIp5L2wmdesamNak8dc2m1s6ONiBl3N1cWG4VhP3oW50zfojhA18Mi7/rzTQibm8Lm/nocUCmeHPGu8imQ7A4UD56l+W+UkH8a2HspkqqXtpz/kCFnOmPCldbBBwgXPYBqms1DXQGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q9zzz8x0mwBoinUS2QPh4Eup0tXbUcly8cjDk1ZXAQM=;
 b=I8smlNP5Td3sQqhR4fI6CfdekvFeNxiV/RbelPdtDkYIAQSp6R8hdvO02V+A8bA+2BGoeMTeZqRgma6gQwr2q8r5KDkAZcE/A07jFUiKi444TGAl28o+PQa57Y7Znsxn7v+5SHOgpo4OwSXRlyNEzgD/kv4qZNDCTwFKh56gXre9xu96rVI8BX+cM05e4VvANraWg5Gs6f3/mw/qttmEQNnTq8g0mDYQeNeR4NrUUeLw+bWfr4NfQCq3uSWkWIKBlc+TT+a3vlafFAhWoclvTeLERO8RM6oC+fnuCMNnSTg1I8fjinCG0CgPZJjT3oD3WqH6YjwssLsRZ+56d1sggw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by MN2PR11MB3629.namprd11.prod.outlook.com (2603:10b6:208:f0::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Thu, 17 Feb
 2022 16:30:27 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236%3]) with mapi id 15.20.4995.018; Thu, 17 Feb 2022
 16:30:27 +0000
Content-Type: multipart/alternative;
 boundary="------------xvLhy2fnrtmkiFWxhUHZJSUQ"
Message-ID: <f316146d-5cb9-e88c-1b2d-94129ff8e1ae@windriver.com>
Date: Thu, 17 Feb 2022 11:30:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 2/17/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
 tim.orling@konsulko.com,
        daiane.angolini@foundries.io,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        alejandro@enedino.org, Bruce Ashfield <bruce.ashfield@gmail.com>,
        pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        jansimon.moeller@gmx.de, trevor.gamblin@windriver.com,
        Steve Sakoman <steve@sakoman.com>, alexandre.belloni@bootlin.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0133.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:e::6) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e55b5245-6694-4a8f-9b51-08d9f232cdec
X-MS-TrafficTypeDiagnostic: MN2PR11MB3629:EE_
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB36290D70D2147B9D14286D719F369@MN2PR11MB3629.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7dLftFXFXm98eInWzBohiUw0yEiol97gQyeg9hadz/1Z2vKhbsI0eBQv5guGpQoQXuHOjUr+AlphuDPxex7aYO9vUvtIba4Fl0nZ3W27FQmWX+h3u6BOWwBxVbNHzFIEh7J6o6qHUqkChtHk574qE2epfFr0vpZTIvJ5oGSFsPLl51IXXwykGLpEA9cz/w99743V17sTTFmoO3ucQoXAty8bftGJRgxs5UVELekSLMCc2ThiGmpPnkcq+LiSs7r2VM7I940BjpvHrBESWjMepJR/TaInnG9IahQlUe3neiAuWq7c2jxblJdCK1Lzo6zzT7dlMgc7G3/jJ0TK45Frs5S0RwcvgLHcBFjVr56Kpz4kLazqVBYT6nJf0SsuMNzn/bTN/Y/xMIaRRKwh2JDBqtY9BW9N7YWnHli4+bHzTqMoNxtILuxITKF7hruWAO58sI6/ibzZ6Us0R1pFFsna0iL+ZVGZSkhwKyj41qvxLBEnu1+dpmwF2/tMrYHUdWwZ5FbpZWleoL+G8tzK1if2eUSeWg9337QStGntbMcmDMiERB9/QeFHA7eRly/nZz+QSERWf+W7EvB734+TQA+PQuKkKmJhTezScvc+s9x4GZ7Us5UERYbLJGILPOLIz0fc9zS3bR/FMrw44KLDX1LTKa5MtF7MbaRjVAxaB/FNmZtfVXMGcl/HnvT9FYsWX9aHBwiDO3zJZIstHpfBmcFeWX+YFsNKLinfqyBkNIlho5Mpsh7WTwlCh3bLJVPm2soqdYYmvznCMGFv+6Q2wZSFOvUWAGF6+MZb0HgSS+UTGibQFxOupW8dNunBuLGCb+iS
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(54906003)(6506007)(316002)(6666004)(6916009)(6512007)(508600001)(2616005)(33964004)(186003)(36756003)(66946007)(66556008)(83380400001)(66476007)(4326008)(6486002)(966005)(8676002)(31686004)(2906002)(31696002)(86362001)(38100700002)(44832011)(166002)(7416002)(5660300002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dThHMzBIUXRYVlh0MG5XYVBzL1QzdjcxUWtXbURnNmlLMGNpYWVRaFRBbWhX?=
 =?utf-8?B?L3BXcmpMVE9Dbno3WnF4bEVXdGNTY2xHRi8wMjRDazNGRHJrakh3ZHpTRGFy?=
 =?utf-8?B?eHJ2VHFyWTNscmpWT0JyQk5XMUE2UXN1NzFjNGM3STZidE8ydmZRMWppNmNR?=
 =?utf-8?B?QXQ2N21RWlpQWkRmc3duNmllT2l5VDVBRUl1Y1ZLazZYajdMUDczZzY4ZE8w?=
 =?utf-8?B?V3B4ekJPNFRtUmFOL1o2V1lyeFpOWjR6ZmovOGVJVGdsMWh3RGlZN3QzMDZT?=
 =?utf-8?B?RlZRMUN1SGo2WUNTM1JXUit3Y0M3bUZRZlh5Zm91b3dlbVplKzF0L05sb2tB?=
 =?utf-8?B?ZHBReTdwVS9mallxMHhlOXNFQk41VUFTQ3QwNjBwcFp1c2k2akEvWUVJZmNH?=
 =?utf-8?B?djdPc2FORTRSdVRQVkgxcktNamw0ZFdBMXYyZVdUMVkvTTM3MC9NcG1ac29W?=
 =?utf-8?B?dkdhbGtMd3Q1RlYydXoxQlVnV09RZEJxMmVONFhpaVlRQ0kxQzhLMXl0bUo4?=
 =?utf-8?B?WG5ER3laY2R1cFFEWlBucnNSdk5NUHpaV3gvYTJ3OEVJRHFMOEhqUXg0ZEhi?=
 =?utf-8?B?M0xDUEY1UXNPK3pqTnhjYzh6ZDlPdHlLb2J3ZktjSFhmUnpZOXNDSVJNN2Vx?=
 =?utf-8?B?a242UE9UYzdIdkxHRjZSaC9jVEVUNWkxTW83RTZiMnBMMWtqS29FQUhvVit1?=
 =?utf-8?B?RHhZMjFQQzBOVXlCQStkU3NNNG10SFRjUGdZMGdac0J0bGFibjJIR2thNXYz?=
 =?utf-8?B?aUJVczIyYlJPTXk0Mmg4R0lkd1JiSFIyaVlsbWI1MFZHQkh6VFhuOTMrSFov?=
 =?utf-8?B?NXBhcGhkV3lLa3hCd1loZEpjb3VOTkUrZzM5K1NPdmJBNktmN1V0QjN0azZh?=
 =?utf-8?B?RWZZMEtpVGZUNm5sRVlKSmptZjVEM1hvUFh0VDk4bGdVUDdqYU04Mi9odDVK?=
 =?utf-8?B?ZmJwN2FaYjR3UU1rcHZjR1dwRFlQS0VXKzJvK2licmU0VUh4dmg0bWZFYkE0?=
 =?utf-8?B?aVdYVXBLNHBCdlFSYitJUHlJWTBHZUh2YUVxY1V6WGZ4K1g3OEo1bC9HUUZV?=
 =?utf-8?B?WFp6ek9PalBpcS9nMndkbXozdDk5N0tJUUQvQXpKK05yblJiK2pSci84cTYw?=
 =?utf-8?B?ZEcyZ29jMk01ajBlaWxQU3o1SXlVREJBOTFGVXdRVkErL0RlTTJaR1ZIUk95?=
 =?utf-8?B?MnhIc0IvRWNydVFLeWl5UTBpN3g0NFN6N2pTWU5JaDFPS3FMR0U0eThjNWJZ?=
 =?utf-8?B?TVM3Qk5SRk5yeHd1d1VhcGdjand5SUZ2WHA3M016UWpEaVVVR0RXODNYZnJl?=
 =?utf-8?B?eTBPQnYwRVNpV0lnaVhaSmpxVmY2VG5GaWpBZ3BaczFCRWlseVdpSTlUNUg4?=
 =?utf-8?B?cEJxVXB2QVdOVnd0TDdOeStEYWVLWmdGZnM1QWNlTDI4ajBqd3E1ZzJqc3Ri?=
 =?utf-8?B?THFKN1hYSHZqZzhWbndIMGh4ZmZVbHR4VGkrbDVSWE5TajVSaXM1YnVzRVpQ?=
 =?utf-8?B?OEdCZ2RROG5UVWREajdEUnR6eDFIc3l1Ti9RZmhWWGxTNG02V3VXNWpibE9l?=
 =?utf-8?B?dmlDNkNLY0xZeHpFcFdTOU5zYzZERm9oSURUNjFVbU00N0lMNWh6YmVyUG8z?=
 =?utf-8?B?SUpWd2tVdS9zSWRzeklEbTkrYVArazhGRmVlQkx3R3Nkc2l2T1RtdndmTzVD?=
 =?utf-8?B?ckR6QkFRMkVhM05qMjV0Q1VCd291SmNYWTFNSHNUenRVUk1OTXZXTWQ2QVh2?=
 =?utf-8?B?Ykc1VnYxTTdsZFB1R1NtTGpNdFV2OGtRTzBFMkpZTElPWEJwSTlzbFNzU09W?=
 =?utf-8?B?T0huaTJsektwVkNYUjYybkNic0NZVCtESFNGN1BVRTdGSUtiT0Q3NDdkM3Nj?=
 =?utf-8?B?V2ZWSEN4cW1LajdZclk4czFHTUFRZ3hrRE5IcXpGaFF0S21hT0ZFWHA2MVlP?=
 =?utf-8?B?eW10aXZHSXJwRzBUOVg5VHVCbmVPcG1jZitOdEFPWDlyOEx0Q0dGVXk0b2ZN?=
 =?utf-8?B?UFVuQ0hmZlJHd2ZqSU5RNGYxaHZjYzVvNGEraEJGaitZelBiMTA2SERuSW9V?=
 =?utf-8?B?YytVcFkyNE1Rd1JjNjlVeVhRcUIvaTZnNUlzVDJrU01RaUhkaFVFa3VNRVZ4?=
 =?utf-8?B?NlBLeXVCZXg5Nk1VdmFYcXYwWE9VVnhDcGRFd0xIOTlLWnZ5bHo0U0IxeUNS?=
 =?utf-8?B?U1pMRXRqeXJkY1JxWXVtSWxweWxiamtQRm12OS96OVQrWmJhUzFBbG15Vm82?=
 =?utf-8?B?RGdDd0szL0JhSjZYOS9FSlVGTUczQUhyeU9qU1ZPKzc3QXpFSk9CcGpLcnFI?=
 =?utf-8?Q?Gb6sNiyKYMhsVDD6z1?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e55b5245-6694-4a8f-9b51-08d9f232cdec
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 16:30:26.9257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 TkuxkapunJ7s4hvrTeqJtLZHpBFJ2s3F102mR3AoyT3aQ4yzjnoPnt8RDW/v3oeBLVp1ZwtguZL7W8ioqIOoJuvSRzeCd+hXIRpNXW8h6yM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3629
X-Proofpoint-GUID: 2MuEYDGPQL6X2aVZVgHNXJIWpOkD_42O
X-Proofpoint-ORIG-GUID: 2MuEYDGPQL6X2aVZVgHNXJIWpOkD_42O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-17_06,2022-02-17_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=887 phishscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 clxscore=1011 priorityscore=1501 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202170074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Feb 2022 16:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56215

--------------xvLhy2fnrtmkiFWxhUHZJSUQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alejandro, Alexandre, Bruce, Daiane, Jan-Simon, Joshua, 
Michael, Pavel, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

N/A
**


*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD

*Medium+ 3.5 Unassigned Enhancements/Bugs: *78 (Last week 79)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)

*AB Bugs: *73 (Last week 73)
--------------xvLhy2fnrtmkiFWxhUHZJSUQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alejandro, Alexandre, Bruce, Daiane,
        Jan-Simon, Joshua, Michael, Pavel, Randy, Richard, Saul,
        Stephen, Steve, Tim, Trevor <br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
        <b></b></p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD</p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>78 (Last week
        79)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>73
      (Last week 73)<br>
    </div>
  </body>
</html>

--------------xvLhy2fnrtmkiFWxhUHZJSUQ--

