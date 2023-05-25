Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CC2C7EE29
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 19:51:33 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.163.1685044284951173277
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 May 2023 12:51:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KeTx1JbN;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=45093f2a94=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34PHavca010737;
	Thu, 25 May 2023 19:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=dqVP58aKK0cuvAin7+gRG7uwAnUu5E4kz2Kvb/16e2s=;
 b=KeTx1JbNEFKyUZs7FkKAsJRKIKmcs5aL0Lq1xIq0nmt2k4ccjRn/o5+l3NWYq2Iy28UU
 lgZxNzsGAqkXWxoo6CSsdJ8E/0O2FxIAfSJn4OZDBMtHw4c9SXN3vamujUaYautgpZO3
 Vexn+VFn9zlNT5OWjdRYk4Sk0ukWv6zOtwhYsH4ZEipLrZjE80EsCxl7RSDOvwuZ0lmo
 w48kAQluRRbNEwpdP54iuuU+M+lbq8sdJ0kpu4dUzzgkE+221/+geHAcQWfZOC1LWoOy
 Mcm5Q2WN4EcH+/WQL0p3c4H0QrEj7FBTP0j5xmBzpfdBETcxelyuiRZVnK4rkzWKPrIr EQ== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qpn67nfaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 May 2023 19:51:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc3jPeJ34X3F+mQoI524CHSjdms3e7D1CGnTKeg6GNed3kpkeKvGdxX/nU4pDFfplNOhclFL+aUkfzDh2jyOH5mdt2TWuEZwTJtkRcC9KfAcPlg8lEALG8nTzUfuUyYYyV8Z+7E+Ecw/DsjgWI81CeFjKGZ1dizbD1w95bV4Q2O90TRt3K08o3uApMZrE4HfPTFV94HrZRVYLmTnIhGWncAcwqo4Fjjt3Zf5s9LdDtaTEguKOKBvgRphTLei77tI/lhLEqc9QDZOarqouQmaGiZgaxYMTrHygheurvpviqFlP544hf3REgHgKVoZGj/HpynENC9P5cNiMXugCvSDug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqVP58aKK0cuvAin7+gRG7uwAnUu5E4kz2Kvb/16e2s=;
 b=j9/IjrgSqYncX85l0+ElQflKL/xIXFqG9vM23bexDRnN4zTgDwurzqqu7yHtCPu64iYaAIsKHJQfZ0YKEZpXw8kDvy9tHbojmlE7IxRCYhEnMy6FLuc+jdfEKRkxxXzban5I/xeSh/kpb2mA5j0AgSuctLXKLl1gr8jTBndzwDVcIw++kS5mEdQoW/2AqsqU0V1BmPbrMHzeRD8V+zMEnwyUPaCnuOwXOUBs2FCbyPRv2B5ZzhaTScGl0e82v4zthVDnTB1ZDWRw/2JnTvsGlCugAdjeohqo+NfPghllTzzy/bTMK0FBS4la1hR/lW3GhFhRbnmwrj0uiys/USNg9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CH0PR11MB8235.namprd11.prod.outlook.com (2603:10b6:610:187::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.16; Thu, 25 May
 2023 19:51:06 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a2e6:a5d4:b628:fa7f]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a2e6:a5d4:b628:fa7f%6]) with mapi id 15.20.6433.017; Thu, 25 May 2023
 19:51:06 +0000
Content-Type: multipart/alternative;
 boundary="------------weIM6oMeNx1sD5fizkKqT3xp"
Message-ID: <f6143de7-4cc7-3b27-5a70-0ef335bf6692@windriver.com>
Date: Thu, 25 May 2023 15:51:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 25/05/2023
Content-Language: en-CA
To: Sakib Sajal <sakib.sajal@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>,
        alexandre.belloni@bootlin.com
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        akuster808 <akuster808@gmail.com>, valery.chernous@gmail.com,
        Zheng Qiu <zheng.qiu@windriver.com>, pavel@zhukoff.net,
        tgamblin@baylibre.com
References: <e452b38c-dc36-920f-3ece-66ea7d8420df@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <e452b38c-dc36-920f-3ece-66ea7d8420df@windriver.com>
X-ClientProxiedBy: BYAPR21CA0013.namprd21.prod.outlook.com
 (2603:10b6:a03:114::23) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CH0PR11MB8235:EE_
X-MS-Office365-Filtering-Correlation-Id: af85b0d5-1372-4dc9-5855-08db5d5960a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iwbQqJfr+bWrOZDi3rpJhPAvQlKp9kgjMnN4ordz9jpfgaK7D3ndjQ4/fJ4/vkAlS3T2pHtp6dzjZ92B75Hxzx6pRCxfQTGPnuFmmSuH3r7E1Q3EjBQUbjAFOU1sPKQ/oMHJbWBl6IAWbjOnPKuiQnab+zWDxJaQrC6DHMAVNVzSQWsRUZ+5Y2lsos5AbmZiVXYNvJ4zinHBjdZsZef2R8nvfwWNLhgF8Nak1A96+gC2LRfcV6ibTXqqweXpRGfBGtRF8KXGQSKU5+RCIDEQaJ76YqSJAnC8PsfJBo57NogWxLytEQLzsrUSM02f+2NyGvxG75BtGBmUw7FXqxzBcFoeT9mxrEgm4CG9quRXa9RcRvqwx9M2EUXLODyiMBeakltYjZl74JRW0dD2fPJfk6henuoTR7Bj2ICve1ZoPhvvivyYiRG51N1WL4wG4GfRco16WNs06p2Fqgc0mZhOXueLpk6H0/b0bbXKh+dBmso86w1EAnBejMS7Py52iCJoezUs/WjEHnfAKwZsjPbjsVN2+ju/HtEnNuXKzDsHi/vVI+NbT1TRF+qK+a7UarV7XQj13gKGxHEx5TvwO8FYhr61Ji0rMkQ7e/YsrELgjIYzQE4MPZdCsxo1xyCEIo+4rixImC+rSnkeSHyIUsyFEw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(376002)(366004)(39850400004)(396003)(451199021)(31696002)(86362001)(38100700002)(166002)(36756003)(26005)(6506007)(6512007)(7416002)(186003)(53546011)(5660300002)(2906002)(2616005)(66946007)(966005)(110136005)(478600001)(54906003)(8676002)(8936002)(66476007)(4326008)(66556008)(33964004)(41300700001)(6486002)(6666004)(316002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cEo5TkdZeXFFSGVXSk9RSlBPS09yRldnR1Y0cjYrM2psQTlDbVRpNHV5U2JZ?=
 =?utf-8?B?Qk9QNTNsWmhmbHgzVUZzSnNabXQ0RURqVE5pUjlxY2pzWTIrS0tPQkV2YUlZ?=
 =?utf-8?B?SG5DaXhhbXh6TjljTXhrYlFLOEhRZTJwcGZQTVgrODh2N1kvYk13OW5wcmRw?=
 =?utf-8?B?ZTd2MDRYclc1eWw3TTdEYVhXNFJKQjdYNlhJUGhQcnJOWlZJT2dHbUxPZ2lU?=
 =?utf-8?B?cW8ya0F6S2lFTXZXUXlpQVNzNElFNUp5VmpMV3ZmWEN0aVBDdHhtUHNERG1Y?=
 =?utf-8?B?M1hDZ1l2am5WbW5jR3VTeG5xeFcraGRPZUlMbE9aelg1WVFXbWZ6UWxucGNM?=
 =?utf-8?B?RHdhazM3bm5HUzJiOHc5N1B0eXp0b05HUlBUZkt6Tkc2eEtrbS94N3JSM3ZP?=
 =?utf-8?B?Q2dyTmVSbjRYRUtBRlBmWW5WL2JxS0NYUU9NcU9kdkRGWXdvcVFvSWRnNHox?=
 =?utf-8?B?UUVlUU0xZnQrRlBPejh2L00xSWwvazR5a05jT3NTZitQVisvZ1pvWUg1VGxk?=
 =?utf-8?B?cXhkampoMEJFYUhwbllOZTRoZFJBT241N2FWbllPV3FkeWxMMHdYcm1PcGpk?=
 =?utf-8?B?NlFkYXFMekhiblVBd05FNGhOaGt0T3R4V1A2SmI5YkpSVTVKbFl3UDRIUFVV?=
 =?utf-8?B?SjJVWTJmbHllKzhnd3JXUHpZZzQyaWppRjVHcTkrYURkNGZNWWZVdnJFYVZM?=
 =?utf-8?B?SnNMT2V2LzJoNU9rSTJ0NVlDSVpwOXN5R0kwTGZheURERVR0U213b1pVM0ZI?=
 =?utf-8?B?R0pReG5FbWVPY0pJdTZyeWxhMFhWYTFJLzk3bWl4UzRBU0dmTEtoejJabXZ1?=
 =?utf-8?B?SHgyTCt1ak9yMFVuRngwUjlGTjNWTlZQZXFZMkRObUQ1SnYvT3VDRXJNNVN5?=
 =?utf-8?B?KzNBYVEwZFcwRmNXR0hrNTFyVGRYTy9Db2xwbnQ4aWtkSHJ3RGdwbjNpYnA2?=
 =?utf-8?B?WnJCR2ZRSnRoa2lJQWtvYlNBMS9UOFNXSklNa1ZDeGxSelV4SWpqRFpaVHE2?=
 =?utf-8?B?dDlkMjhKYjZsUmpRMlA2NEMvVVpPQ3BBNVJqSEdGSlBaY0ZIVEVKQWRrQm5U?=
 =?utf-8?B?U1loQm5kZkdtSmRxQmROL2Vrc3UvV0hMOVFiYjloZnZoVk5WbE9waHBoamNB?=
 =?utf-8?B?NDM4TDVPUCsxdUxSck1DTlFKV005YklFdzF0Wk15TDdIRUt5cXFkempkMEpk?=
 =?utf-8?B?YllrbG0xakVOck5jV3VpTmp1Q0pTcEI0bU1POFdZWXB0azRxOUQrU2crOTJh?=
 =?utf-8?B?UDhJd2NaTHN1blp2MGwxbktLMEdHVllOZWN0cm5EK3dRNDRiRSsyWWIxdFR5?=
 =?utf-8?B?cm1BNnI4cFNiM1hBTzhaWHUvSVNpMUhXMFhPdS9wbndna08wUDAzaHZvc1VI?=
 =?utf-8?B?bEthbmFTZGpOU2dOaExNT1FnWjkxUE5XWVhXQVJ6V1phMG16N3l3OGI4bGJh?=
 =?utf-8?B?VVhjL3pzZStiaVJROW9uQURsL2owWFQwcDJDNFp0WTl5WXNXaG14UTcvSjFa?=
 =?utf-8?B?SEhUV2d3SEtDWmt5QUtGVDd3ZXd3Tjk3R3Y1bC9lZUk1L0FqQ0RvVjdYS1lh?=
 =?utf-8?B?Vm5rSUlPN3MyVVBIL0drb1RjcTZGNk8yRDJFeWVSdWhseE51NFMyYnUyMEh0?=
 =?utf-8?B?aTdhaVlEajJybnVPMmROd0ZLQjBxTXQ2dGhNNUdnV2E3UlNmaFhJK1ExdUdU?=
 =?utf-8?B?TW8rWitoOEtrZm5Gb1dGamVnd3hVM1dHZ2puT0tVSEhuTmVsK0FVVGVua2dY?=
 =?utf-8?B?QnRjd3kwL0lXUXc0N211ZThYdjRJdG1ZVFdKT2srQ3hLQ3FQbkoyekNpaTdO?=
 =?utf-8?B?Q1JNeWptM2tSMmxPckVWbTBQdHJ1RHhPSGdWWFpieU5EU29FeTFCNmJaMTM4?=
 =?utf-8?B?QndKY3Z1M1Z5NWVOWVBnem83SHhFRTVTRDI0a0dDTGVHZWh4UGxmanpzTUpI?=
 =?utf-8?B?OGJXVVFCbSttSkd0V2VSeHJhamdmbElzL2hSMjQ2MnV0VHR3Z3RCSFJrVzJW?=
 =?utf-8?B?bFFBUW1JMmFSZEhmRmdiaXI4MlBnbzZFcjVIOCtXcmxUV2RwMXlScEhEam1h?=
 =?utf-8?B?Q2lKRDRGcHM0eFlvZVlkTDBscDlqWFZlZ3RnQjdCUC8zYno3QXdDMVJ6RXRx?=
 =?utf-8?B?b3Q4RDY4bjgreWZhVzhmaFRmdmhlYU9uM2FPZExCd3ZuS0wzd25kOWI3ckY4?=
 =?utf-8?B?REE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af85b0d5-1372-4dc9-5855-08db5d5960a1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 19:51:05.9579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YtrbxQejNkaaQnl0XW8pZkbeEHSdMMgt3Ho7oAc47T8qJ32feEiB/3B1bEfIZQWjCiLD9AVp3pYeeTuZWVBBnydiIfa62C7YPdZU5NLcrrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8235
X-Proofpoint-GUID: XwkRUrsaeAYE2GKsepQp9V6DruaZknyV
X-Proofpoint-ORIG-GUID: XwkRUrsaeAYE2GKsepQp9V6DruaZknyV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-25_12,2023-05-25_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 clxscore=1011 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305250167
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 19:51:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60124

--------------weIM6oMeNx1sD5fizkKqT3xp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-05-25 11:31, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Ross 
> Burton, Joshua Watt, Trevor Gamblin, Randy Macleod, Alexandre Belloni, 
> Tim Orling, Thomas Roos, Yoann Congal, Michael Opdenacker, Pavel 
> Zhukov, Jan & Sam
>
> *ARs:**
> *
>

*1. AlexB: *Alexandre Belloni teaches Yocto to new users and he tells 
then that the simply have to memorize which key variables are space 
separated; Alex is going to create a defect to get this list documented.

2. Sakib to drop Zheng Qiu from this list.

../Randy

> **
>
> *Notes:
> *
> *
> *
>
> *Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)
>
> *AB Bugs: *72 (Last week 72) 


-- 
# Randy MacLeod
# Wind River Linux

--------------weIM6oMeNx1sD5fizkKqT3xp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-05-25 11:31, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:e452b38c-dc36-920f-3ece-66ea7d8420df@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
          Jolley, Ross Burton, Joshua Watt, Trevor Gamblin, Randy
          Macleod, Alexandre Belloni, Tim Orling, Thomas Roos, Yoann
          Congal, Michael Opdenacker, Pavel Zhukov, Jan &amp; Sam<br>
        </p>
        <p><b>ARs:</b><b><br>
          </b></p>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p><b>1. AlexB: </b>Alexandre Belloni teaches Yocto to new users
      and he tells then that the simply have to memorize which key
      variables are space separated; Alex is going to create a defect to
      get this list documented.</p>
    <p>2. Sakib to drop Zheng Qiu from this list.<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:e452b38c-dc36-920f-3ece-66ea7d8420df@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p><b> </b></p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode"><b><br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>72 (Last
          week 72) </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
        week 44)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <b>AB Bugs: </b>72 (Last week 72) </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------weIM6oMeNx1sD5fizkKqT3xp--

