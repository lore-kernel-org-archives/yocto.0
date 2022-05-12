Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930ABC433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 17:31:48 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.287.1652376704474344352
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 10:31:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ItYb0frm;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=2131306356=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24CCL9XP008518;
	Thu, 12 May 2022 17:31:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=LOy4aZ3ZxMSMB70kVcyC9syNbH5YMRmIb2myw2U5J/Q=;
 b=ItYb0frm62GeyXol+j5uNjkR3thMTPG1QjmYFddpRg1WJcoEXKhNobWATywRPrKO1sqL
 MY/7yQnLwxOnIxzvChMJ+mht1YFYf4cKzlamlulqFlPP5gUG2fe3hYfTppzxG9cEVAkQ
 PK9mXLOAWDdWnYgH/jIkVBTrGpqa/SfMon4a/2+9bDi+FEOS5nlnExYnLzat+p5CXKZh
 jAccDnZLL5eyOzTzDlT1NZ/gaAQ7ZQJPJyx79cJeZFLf3qoUVBIiX4p/Cv4ELzhNa0iu
 qMi17G7fN8PLj+5JMLvHbkz+Qj45xcR9RTPO044NeNbXqCdaEfoawOpBORfvTo/vJD16 XQ==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2172.outbound.protection.outlook.com [104.47.58.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fwfr8c52e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 May 2022 17:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFV4yyS+5Ddwpeh1sctTnuIUm9VZfplhlbXGuEU6pETrzg4Cir/YovuWmzf9otO6ZIHz6MBRSO/60KqEk1FTCoYWV0XP70ojVhZSKR0SPNWscautIfApWKudhfH/eLXrXaptYb7axYyA0DZF/NhtuFY8IuiuY6nJvWHQrWHjUXCis9qyUNyovfOWMcbmipEzBEJ0myBXsbU5kO5Yb9TH5r08CMUHIKeGJ+/g4VdIlF47ZMxyWh2VGqhN3AYaR5c6zsD9KpNj4YnYaZvk9NNnYQ7PGXdKstYaSmko9NeD17KZ2F8bTeTTrVQUHN/6hMfZRjUtLzrmQDf2lHL3T0F3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOy4aZ3ZxMSMB70kVcyC9syNbH5YMRmIb2myw2U5J/Q=;
 b=X8DR4Esjhu886WWkTp420Cl+qoM6bk2RiKEtL1OzWSM2E/zaiZmJW+gEYbrYK083JBSFt2mwENfh2j8gTlS1rUiWXbGWyjlnWDc8GN5RPnxazBch4WZr8BeEvL5UQK5aW3h32Q5qFbTsKdKV0i38ebCyfY4hUzGHFJ1xl8MjdxNttmoeqURzkWuqFmHMDXIx7WWvoQ7Btre1hyCxvI7Qs1zJI/0znOhpn8O80UjTmKwKC3xd6eeBGoLUvn8OTHWTLt1uI+mA63YDS2VwhhiJHGunlianfihrRqhehO+TYS+Ja09jRfYK0vEJdhGvANzVy5SHc3tSn6y7CP6b84TdtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BYAPR11MB2776.namprd11.prod.outlook.com (2603:10b6:a02:c8::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.23; Thu, 12 May 2022 17:31:20 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac%6]) with mapi id 15.20.5250.013; Thu, 12 May 2022
 17:31:19 +0000
Content-Type: multipart/alternative;
 boundary="------------G8RXXH0a6LXUo5sMrYgEfuEE"
Message-ID: <e0a9d493-7d8a-7788-0778-933aa0051185@windriver.com>
Date: Thu, 12 May 2022 13:31:15 -0400
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
X-ClientProxiedBy: YQBPR01CA0138.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:1::38) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3d6df78-d692-445b-9eea-08da343d39fd
X-MS-TrafficTypeDiagnostic: BYAPR11MB2776:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB2776CE74B78DE1C4F4402746F2CB9@BYAPR11MB2776.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WypRZoOfohtQ99i39YGU7eGBF+YVzZ7RuhMLbM0VhUZ++7IivR/JyxQEObN1hUOsuNucnwq/WSvXG1IGUJrfBOblCWiudKjbttZf+lSMm1E7ME2wdjNdw0jyzWsxcfYY06LG7dzPwUG1+L0r8YpLgzyejDrCz2SYZZqJh6plv7tRN5srV2B1CKdG+ORF2QEs9yOrzDPrrr9MTDP4NWg39rE8Vkr8Z9X5XEWUb8CpslXqdY9p9z/OOXu+lqKFdwx5onxWGvrO7GWaluH60p3DuRldipuXW5F+vUjb02FX182JNcZoVeQacf73/bsLUAajz85m7nic28261Yxr191CjKIwe+teeAvDJUbWqZFvml7owo1KxosQfCz8Uont9NooYLCdJNzSYrdJ08Xa3OpWZnnzzzNtQVUU9kzd4oCDFxFXp6SeJxWROyEuFD90tmXtbaA6c/P7FhCopfay+usdXsUZbsNf+Wd/d8c9rdElZtxdW4cqdl4V2VNEQejTbnzjmKR1cTFwf+8m4NkFWRU0T4IcHG2XCiM/zfOETsSV/dv8zgXp5SQY4OK+hb6VccGc4q/KqRHC/guZOX9LtZ/IIg5MKOREBcmpbDqFY7xEv2chsbtui4tWXvROjKUT0Tyu7c+l4ru7HfeJDDbvaXuIoDidd8xAnYbkuR6pHnQXXlcEB9Akj6mI8Ov6vhQlw0582avZXohfDhS6QGZYgF+gMVBaxzrHPCjnwbH7PLnDO9J3qjwACheV/GQ3TCMyA3CMfwi8BIAj1Bl6HEzsATqKKokCuyMbNrUZ9h+w9qf5Q1xHIQQ0t3fty/mVceImknJBOueDcuHEFc1PlFW5oRjJC+2BX2xmg91IquHIii6D4TE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(966005)(33964004)(6506007)(31696002)(6666004)(7416002)(6486002)(8936002)(5660300002)(508600001)(2906002)(52116002)(44832011)(38350700002)(38100700002)(26005)(107886003)(2616005)(6512007)(166002)(186003)(54906003)(66946007)(66476007)(316002)(66556008)(6916009)(36756003)(31686004)(4326008)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WlRRUW9Yc3RMUENoQ25QcStPbGhJQjhYWDArTmsrUmM4MURqTnB2eTZ3cE9n?=
 =?utf-8?B?WHJEOVZLR2ZmZXR5TVM5TWdmc0gwandyQVdha1A2RHJaZ0FRVE5xWS9VMFZD?=
 =?utf-8?B?V3IxZzJYSFdNUmZLcnhXU3FXMjBFcGNkMmpaZ3F1TW5Zc085c0hXS0IrOXNl?=
 =?utf-8?B?YzFMTC9lSlV2MU8rRWNjMjdMK2dRcTE5SnJ6R0JPTWNqZnZac212VGMvN1Zk?=
 =?utf-8?B?OG0yU1orZ3lSQXQ2dUpIRyt0ck9RMFpRSkROMHJ2R0hJd0tMNnNLc3BoQnE1?=
 =?utf-8?B?NHM3TVViaWI3NVpCdkxUbDRXZElTSnZkSHJVb3l2MUJDbnB1Q2lzc1JDUmhM?=
 =?utf-8?B?TStSeXZqbWFvdFVGc0ZCMmtmUHF6T2x4MzNlWGRRME5MVGljcDlnb1VNakto?=
 =?utf-8?B?UDhVMkhtODlhdE9nRjZsSG1GT0laOVA4SnJoMm5lNFZyc0xleHd0MWdkNkRX?=
 =?utf-8?B?TklncmNSbmlYMUlYbVU2TWw1aDlUNHNpZnhKWFpoSGVKQ3ZvRnNqWmtSVHBh?=
 =?utf-8?B?K3NON3UwN2lGdDFYQS9Ccm80Q1dDTFFIb1FEcDJQeWJmZ0NKNE1jMTIrOXUv?=
 =?utf-8?B?cjVBRndYMEtCTGo1R0dGQ2ZSKzBQdi85V3lFMGF5andrWWZ3V3FYN3VCUmZx?=
 =?utf-8?B?bldSTzBmcnlvZkh5S3ZXZldnTjZkTHdPemVoWTkvQmFMcGhkc1VaODFUcUpk?=
 =?utf-8?B?K3ZwOHZSRzlaM2NLZ0luV2xrZEczejYzNEtNQzYzcU1yR0VnK1VHc0Flenlh?=
 =?utf-8?B?cHVaZXBzallEcnl5ZkQ1Zkd4dmY3T2N6Vkcvbm1aMkdYU1JBS2prOGxOQTMx?=
 =?utf-8?B?NmsyczhzaFkwanFRR1BpaEF4U0NPNFJ4U1dVUzQvSjZkcGE1MXNLWGpuZmRy?=
 =?utf-8?B?aktNbDVHS240bEFibUcvWEczTldXZG9mcWlvNDNhWTFFODJLS1ZrbDRSZEk3?=
 =?utf-8?B?V1RHT0tvMmlIaFU1Vk1BMEhJdHJWd0RTZ3dHOUpheExSM0dIOXRBcnFVZGJn?=
 =?utf-8?B?NVNMOWhBckN0WFNtM2pEbFBNWFNjcER3MkpycUNKekxMQklOT2JDbCtpemoz?=
 =?utf-8?B?MUZkSk13MWJRTHRZMHo0WGVhMTgxaVVDVlI1OEFSZE94ZFBsRUthSWJqckxu?=
 =?utf-8?B?dW5pRTltMEFzMzFvbVkvWFBmL2pXT3NKa1hkZksxVFI2MjF6WjNXL1Zkaml4?=
 =?utf-8?B?U3YwTm45dC80VGlkL01seFkzYms4eDZxRXNaQ3h5YUpqN1VFU1pQemtBVVBX?=
 =?utf-8?B?TUdrbyszMlJ0UlFhVngvb2cxZExiODVpaHBzTFArSXBEMmtHdTFtRk5XcHRU?=
 =?utf-8?B?c0tQM2dNSFdrT2lWOXpVK1hRR0RKaHN4dmJIVE1sOEZWa0dtWjhac3VKd1pL?=
 =?utf-8?B?QWhUbHltdFh6MGpNMFZ0SUxON2hzT1VQRk5iNlI4NlZLMUl2UmtkWEZxT0o5?=
 =?utf-8?B?c2hYckxhdWpMeVF5RUk4M1NaZ1hhSVdkMWFHNTBzem1vUVN2aUpya3NRSjFi?=
 =?utf-8?B?T1JtSWxJVW56T3Vxc3d6dkpIS0dIYXIrcU9KcmhacDJPOExyTVQvdVBncnMw?=
 =?utf-8?B?djlWSzlpOTdUTGlBaW5meExLNHphYy9PSm5ieStEczRPQnlQdlpSK0JuNE5Y?=
 =?utf-8?B?eTVSV0tyamwvMG05RkFVazZoMXJZM2gzY1diZ1BCRzBWeEZYWTZkZ0ZpVXAx?=
 =?utf-8?B?ajcrRFJFYlFtY2Qrd2FYTjFMRGNVSGE4S2lkeVYwbEhFeHllR09PRGR6RURp?=
 =?utf-8?B?aEFmVTkvNWt5ZzBITFdBOWVGb1M2Q3dEL3AyamF0K1BhUGFRenF6RWY0bjlh?=
 =?utf-8?B?NjdzWEdyWU1pbHlsT2VJSFQ4VzRSYjBjNmliZ05QVjJERXFaRElZbWh1WWNi?=
 =?utf-8?B?SU4yMUI5UDlxTFRoZTV2M0tGZng0SDltSnR6MWltSlNMU0xzakFBa0twbkwz?=
 =?utf-8?B?cUE4RXI4UkFRVFRpc0I1YUdUN2FQZlhyRFI0L3NwaERnZko5QkRBSGxhSGNq?=
 =?utf-8?B?RFdqMm55aUVkWXVVRmxuSDY1eU92TUwzTzBHNTA4N1ZIbTc0dlhzNEhmV1Bj?=
 =?utf-8?B?eFZvSkZtZXg0SkZaQTNIc1duT2I4WHVSREdFbHJPY2E5UFZqam5kNEJwN2Rk?=
 =?utf-8?B?VWFQZVJzMHcrUGRxbTlLRGJoLy9sSjVrSU9oVWVJUjFldGtpa2NRUEUwUGlP?=
 =?utf-8?B?OWFtUUFUbUUvcXFTNU51bWVmMjZDVVNyVTBnaXE3MlIzQml4MnBQUHRQZktT?=
 =?utf-8?B?SHpwb21ZNkxoKzl6OUdkMDlpRVhPS3dyZllWZmVtdVk1R1k1MkIvVWpISko5?=
 =?utf-8?B?S3p3SHlHQ2RhVU5MdW1DOUpaK0Rzd2x0Zm5FQi9DZVI5SXRqSXVOSm5udTFh?=
 =?utf-8?Q?QqC+PBQDgWF/cC3E=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a3d6df78-d692-445b-9eea-08da343d39fd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 17:31:19.8324
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 NgUhshvKyMSbgJzf/AL1ubGIdqXqlCA2m7WXqRS+ensLoQrVfQL8UN2FcclHcp1WlsetzHca6c9ilcgDXbAU5JwwTvYAB+lzVXHUYA5WyH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2776
X-Proofpoint-ORIG-GUID: bp5XV7yY3E5Uq6Jv5I_-PxmKWFpdFmXF
X-Proofpoint-GUID: bp5XV7yY3E5Uq6Jv5I_-PxmKWFpdFmXF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-12_14,2022-05-12_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=591 lowpriorityscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205120080
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 17:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57083

--------------G8RXXH0a6LXUo5sMrYgEfuEE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Randy, Richard, Bruce Ashfield, Ross Burton, Steve Sakoman, 
Tim Orling, Pavel, Aryaman Gupta, Saul Wold

*ARs:*

N/A

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 75)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *48**(Last week 48)

*AB Bugs: *46 (Last week 48)
--------------G8RXXH0a6LXUo5sMrYgEfuEE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Randy, Richard, Bruce Ashfield, Ross Burton,
        Steve Sakoman, Tim Orling, Pavel, Aryaman Gupta, Saul Wold<br>
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
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>46
      (Last week 48)<br>
    </div>
  </body>
</html>

--------------G8RXXH0a6LXUo5sMrYgEfuEE--

