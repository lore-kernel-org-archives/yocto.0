Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622EFEB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 16:56:11 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2312.1688057770107427024
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 09:56:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Tr01Phzg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6544d58e9f=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 35TDikLF027479;
	Thu, 29 Jun 2023 16:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:cc:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=H1FVTpkJTu07intwWpj
	5nlpBQ+7NKzL4UyuqrTeOjd4=; b=Tr01PhzgJ9CBH/PcWgZ78JLDan0sxwJ1CVG
	fYSoZP1HX+JXav+1t/nw/YDUDPAcvnOSJVtDdtZG/O516BZzoEPQr1Wq/dQqs6ai
	1qAYRowt6SIoGnsgTum/ou/06uHZvYNT65dTcQbRzlWUrr6W8QYV7FfCBpDqGRuH
	lsQr2G3gjRG0cs/VbxWFReo9SfEZneulERAGMym37uiGBcdn0DE84LhzhkTcol/P
	438zTmHiP8yFz2Yypd3kkYYppVcDcriX54wRof1Qe3tUJiJhskx2ocW2I+aeoIr6
	9bCSMUxH7H9ZiBXRQZAdjyS/3ch9J3fAXfMbDlvz9B4SifddJxg==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rdqf4d22b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jun 2023 16:56:01 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6hiIQyOEa8XZfaXIMx19E5lJq25e8FPAT/0/5xC42EpWvEhfv1P3e6yaO9+ZJl22sN3SS2pSamY3upRaZkUU47cUIeF5Uhya6rOt6Up6GIZSHEixtwdxi91PTGLpccfkIgMFgxE6BODFy43/Q/4/+rMLGhngi6UrxvWXtJd7amKik4PXgw7+QGbjXZzcAX5beFLalPj0eBpd324GQycgxlvPRNtfqlwTblZ2Zq8MwJ3gdUib2Tai75iaY6FDRHq5SzYQaKrNFiVvlIkMSQlZyzYY21k3GqnRreRPCSPvKdgEZdf7ddAD2JvzBTog8Q8qj4OcTQN0CNsOE/L5AO5Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1FVTpkJTu07intwWpj5nlpBQ+7NKzL4UyuqrTeOjd4=;
 b=N2DJClNdUS578TSna9vAzAWOJ23PxAoIA2lXqzHnN8PD9rC8aIwzFAOo3DhMYapxNgWZE/Qe2eHvwvad8LP3AloWEpfXyTfsfm0ydS3d81m9/thObl7C78p7tj07yvVf+/Gh45rcLdHIzspmHX3HI6LRFwWLs5MW3JU82IelIKv6RRshNeyXOvFn0mA99eyc0C64oYotlf8E6mVyaZGE4XAOe94P2hNdTL/hUdwoXEMRM5vY6KjTMxGXzAHxSSPPYT2BPALu36Gx0QzOPdqupa8xJNFVbsDgjJo9lXxyZSKaTlrOuh0KbVw6kq2Kd1+bNvKapkgWTFa4E3TIp1dAYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by MW4PR11MB6716.namprd11.prod.outlook.com (2603:10b6:303:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.19; Thu, 29 Jun
 2023 16:55:58 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5a4c:c35b:8704:34d5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5a4c:c35b:8704:34d5%3]) with mapi id 15.20.6521.024; Thu, 29 Jun 2023
 16:55:58 +0000
Content-Type: multipart/alternative;
 boundary="------------JU3TXQklyVacSu1j2RPWQRrl"
Message-ID: <a2196339-acd8-3894-6f2d-ac8d34c774f0@windriver.com>
Date: Thu, 29 Jun 2023 12:55:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 29/06/2023
Content-Language: en-CA
To: Sakib Sajal <sakib.sajal@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        akuster808 <akuster808@gmail.com>, valery.chernous@gmail.com,
        tgamblin@baylibre.com, pavel@zhukoff.net
References: <704e9bdc-ac2a-6bd3-8483-34df5d007d2e@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <704e9bdc-ac2a-6bd3-8483-34df5d007d2e@windriver.com>
X-ClientProxiedBy: SJ0PR03CA0267.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::32) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|MW4PR11MB6716:EE_
X-MS-Office365-Filtering-Correlation-Id: c14a2250-61f7-4b34-f015-08db78c1b628
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AUVL+aXUpjmWVdesN5Q08299ezdRGVVbKmVzEQDs8b2lWJk9CwM4ydyXx9UUYUl2ryaXDa5fW+7/N+fFuV1TywsIonZ9JesY/s+D7qetvTXMGtQm6MaZt7RKK+AGoz1C2AKqx35DwqppsI2l04pUQ1z3EdlpOJ05Pbb/QalIMmjgsrYRrFfPTxR/ujNN503M8PxhwPeEURGT19qmYxckS6/hIpym/AGlEySJ/Ivusa5YISKdZ8L1ok1UyMABLAAiwHJFmfK4r3ODWiFUN7Zr04sMkqDFYp/9WwK7H8dUtAR7+P14Ag7IfffCFR7PPlP6QDP9JbnKb5f/mkGR/b/tB9dMRxjBSIdnWNHaBMPfLkWLhZVBqebK7ffEsgHNmVqLSd+8Tg34/cfJzFnawfLXSMFiGi4jugcPk+96MO9F2iDk1c8QHenzb+sebRyFwfrxv0TJqQQbll8fqPJZPKb7CjhAT0hdUYbSt7AvZEAVqF4/KKrvYXpnHhMz291CLWXos2NNwj4a+UMIVhwC2DCmD8Xs6OXbeczXiFncKZru3AopNguGho4FGgudcdGTh+BLZcHT633Yj/vQv3Hn3mixJBOE9x0xU0icoGqUMbwYg+6Hlh2wnxSRKx0yf2WyaUvPB9ez8USu5tCWiHek/xXsDg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(136003)(346002)(396003)(376002)(366004)(451199021)(6506007)(6512007)(166002)(186003)(26005)(53546011)(2906002)(83380400001)(36756003)(2616005)(38100700002)(5660300002)(86362001)(41300700001)(7416002)(8676002)(8936002)(966005)(33964004)(6486002)(6666004)(31696002)(31686004)(478600001)(54906003)(110136005)(66946007)(66556008)(66476007)(316002)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UkVLUE84NXh0QzlBaE56Zm11ZUVGZW91U1YrdGFDYy91TlRrV3VqbE1tSmhF?=
 =?utf-8?B?QnkvalN2aUJ1bVZPNU1kM0N2MFZCakNNenY4Q1lYRnMza1AxbENWdzhaTjND?=
 =?utf-8?B?N1MxbHJWb1BCNDRWNmloM2hKUVYzSUpaV1h6YUhUS1NvZ2pBeHlmMXFJSjF2?=
 =?utf-8?B?dkxqYllEQ3hHNGFvc1RCcjhKNko5RjFTYnB0UzRTTjY3MFpwVkJ2dFRVK0Fa?=
 =?utf-8?B?N0duL1FrTisrZTZKRVdWaWdSTWEzOTRrV0FGdGpiWldJV0Zkdlo1d25mZk5i?=
 =?utf-8?B?My9vdkdjOTVHc0tjNDBwbGU1UjM2aFhNR3BKWWJrSk5USU5FTkhaNDRSZ2p4?=
 =?utf-8?B?YitYTGRhbG9kNUVnZzFyY0N4U1ZMVlhjcDNrWEF2ZmpRdDdLbmxwR0ZqZWdm?=
 =?utf-8?B?R2FmUGNPR0REOC9FZzllTUtNSUNRRWRaaG9mWjhYa0lpcDFLdXUyTmJNcHNo?=
 =?utf-8?B?blhrcFJrTGNGRWgwd1kzSUVldnpHak54ejk1akxONjNISXZDc2FzQ1N0T1RX?=
 =?utf-8?B?WDlsRVVqMERuVUpoQjk5ZXFHVHcrblVjc0lPak5LMWZiSHk1UnEvSzdHNHRn?=
 =?utf-8?B?RGc3RjJ6ZlRsOUtRd3pIaXN0NnlvNzZZZmNlV1ZaRFgzUXVKVjd6aWY2Mk4v?=
 =?utf-8?B?MDJzWFRqWkZxd0lkUitVYUhlVDJYcjN3a3g1VklZUW1BMjlad3ZZNVd3dG9G?=
 =?utf-8?B?eEMwbG10WndTZlhWUEhrM0kxSGxueFpVTHd3ZytheVYrSmxrYk9rcDNBMGJE?=
 =?utf-8?B?bWVHaC9CeVFRV0pnUUNwQldLdHl0YjA3WXRrQ3V5blVRS2hiazh6eTM1dE5y?=
 =?utf-8?B?cStaZFBESjMzV0xGRlFyZWc2OEZRWGNrY2ZibjhHYmpyd2swWXNOT0lybStG?=
 =?utf-8?B?NVkyb2c2cEZqbUsySWE4SVlZdXRacGJrUzF4VUhNVUFGNEJ6R25oY3gwL0cz?=
 =?utf-8?B?WVZLT2Nqak5nbXBqbHBSeDRmemdod1hra2tHbllONWxPdklRL3BSa1dVUGZo?=
 =?utf-8?B?ZWZ4N0R4UWM3NjhoVFAzaUI3WmJia3hMQnNGQ2pOQnlZWXNtZTZnQnlUdUY3?=
 =?utf-8?B?VmRucWdzcFZVNks4YXpGNVVVYzNHUkd2bExDemwrcDlmSmNjc2dBeDVaZ3dj?=
 =?utf-8?B?VzYzQXJsM3MveG4xUCtXRysvUURoUmo5SDlPYXBYSDlyanIxYmd2S3hYeC9X?=
 =?utf-8?B?Vll2VEw2R0I1RC9ZWkc3ZnRXZS8vSWZaVThDOVNBUlU1WlJ0WlRkeFVscFQx?=
 =?utf-8?B?eHRFMlc1Uk9vMDhUTVhmbmoyNEdIQUFWMGduNE9pNkFFM29CRjFLMTQ3Y2RY?=
 =?utf-8?B?aWd3bGk5eVBtaUFIcDJjbFFrSjZKckhTbitzU3hXbDRlVjdGRVNRY0JXUUFu?=
 =?utf-8?B?eDc0UW1tYlBpKzJYd3lkd1YwT3E1c3FnL1M2N3lITlBqcGRIZ01rTXN5NXow?=
 =?utf-8?B?UmlIeUxTYm5YR1dTQUhHeExpcVNzZ0lFSnJlMmJJWjBmQWJXMTQ2NmluMWQx?=
 =?utf-8?B?MWp6N0FKb2FYL0dZdms1UE5KTlFqWTFHMkJYWlpuUVRsRXc2RnBCTWJMeERC?=
 =?utf-8?B?b1pwN1F2WjVjMVV1d0NkZ3EwTFUvc3VYaW5ZZDJSMTZLN1U0OWVBejBKL2ll?=
 =?utf-8?B?VWNPczFqKzdpTm1pYWlhLzFrZnpGRkMzeWFQSWd4MFlrTmdlUUtybW5tMVho?=
 =?utf-8?B?TzJNWmliUkdRT1NhYlpaSEF5d2cvVERnZmVjYWpwc0RpZTZqTFY4c25NRmpM?=
 =?utf-8?B?UGpFRCtUSlQ5TTNBbjJOSnVHcWIzVkVqQy96OWRXS00ycTJLQmZGckpXRHJM?=
 =?utf-8?B?OEpDVjdDTFZ5Mng3YXJmSGd5NnI4Y3Zqa0NiOEpGWjZnQ2ZBTzBORHZOdzQy?=
 =?utf-8?B?NmVaODBUWDEvaVhMSlNpVXRWRHphSmhSMUM5UXVESmVaQ3ZvcE9FdDlNeGJW?=
 =?utf-8?B?VkVwbC9jMnJwdEpxcmlEUFcxbm1kblpFSFk1L3lFdERod1BBblFJSDY1MWEx?=
 =?utf-8?B?c3BzYkpDSjFGWXpyR1VhK2JoS2Y1czRHTklrdm1CVkxRK1JHSWVENkFZdlBn?=
 =?utf-8?B?Wk5DTzNjZk9lL2JCNVlpcXdBbU9pV09qNTNpendrZUZQMDIvUEdNOVdDREdJ?=
 =?utf-8?B?WnNybWJFRXMrRlZwRlM4L0dja2Rvb0oyUE8wd29hcWpCSU5zSm8wa05hMElU?=
 =?utf-8?B?VkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c14a2250-61f7-4b34-f015-08db78c1b628
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2023 16:55:58.5247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E4cEb0RqorjCtZcphdaM4d1DAKhFatkQnh5IQD+vMflToQWcQ0s9SiQCjCdBaeG61dJ75LYir3mk/ETiOPC3ODwqfeuF96FF1EzTha90ehQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6716
X-Proofpoint-ORIG-GUID: nUSARvu8YynLrWSAtk7KsKcqY_S0H44a
X-Proofpoint-GUID: nUSARvu8YynLrWSAtk7KsKcqY_S0H44a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-29_03,2023-06-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 phishscore=0 clxscore=1011 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2306290153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 16:56:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60480

--------------JU3TXQklyVacSu1j2RPWQRrl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-06-29 11:14, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
> Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
> Alexandre Belloni, Tim Orling, Michael Opdenacker, Ryan Eatmon, Luca 
> Ceresoli, Yoann Congal
>
> *ARs:**
> *
>
> *Notes:
> *
> *
> *
>
> *Medium+ 4.3 Unassigned Enhancements/Bugs: *74 (Last week 73)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 44)
>
> *AB Bugs: *68 (Last week 66) 

I bumped all the unassigned eSDK issues in:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Future_.26_4.99_Milestones

and fixed the titles so that they ALL consistently use the "eSDK:" 
prefix since that's clearly important! ;-)

-- 
# Randy MacLeod
# Wind River Linux

--------------JU3TXQklyVacSu1j2RPWQRrl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-06-29 11:14, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:704e9bdc-ac2a-6bd3-8483-34df5d007d2e@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
          Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
          Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Michael
          Opdenacker, Ryan Eatmon, Luca Ceresoli, Yoann Congal<br>
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
        <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>74 (Last
          week 73) </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
        week 44)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <b>AB Bugs: </b>68 (Last week 66) </blockquote>
    <p>I bumped all the unassigned eSDK issues in: <br>
      &nbsp;&nbsp;
      <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage#Future_.26_4.99_Milestones">https://wiki.yoctoproject.org/wiki/Bug_Triage#Future_.26_4.99_Milestones</a></p>
    <p>and fixed the titles so that they ALL consistently use the
      &quot;eSDK:&quot; prefix since that's clearly important! ;-)<br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------JU3TXQklyVacSu1j2RPWQRrl--

