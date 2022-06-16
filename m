Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8384AC43334
	for <webhook@archiver.kernel.org>; Thu, 16 Jun 2022 15:33:14 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.19292.1655393589233023282
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jun 2022 08:33:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cTOXqyFd;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=316642a49f=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 25GETXoV008321;
	Thu, 16 Jun 2022 15:32:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=5QojLJueRZvI4kDSoGb4NVALTJARAm7f1Oy/gPbdV0w=;
 b=cTOXqyFdnUT6JqPUIoDObQd5/2E5h8txwjRGYFcVUVFoCYRLCXUbEP2aaqr7tkNX+vGr
 kYVB/gUCeEv+QHwEBpQLJXHv3DJ5FbQIHBcDx8X60n6txL06lKkOhY/weA0dVnY+IS1X
 8hnT9OhclMSwl2Hb/9b4G/ChUEwrj1dWlaUiZBo99lnK3NFYtYKOs51wb4oT9LCYo+rx
 /DBW3lLuB0El7H86V6G739SL1udrja49M7LjSN97YvLXFZuAQPj6Nzd+sdilE4+SHluB
 eGWxWDTW45vbpd+2cZzryTcXV9vc87IkmcUVohzmhtyB/mHjxR/LsY5LmAnPTcJnrA8E NQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gmj19c97d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jun 2022 15:32:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C793wQX+x1W02IeIZ5ZRWsOm0/hRhwT0gKgqFdskwdIwHwntmwRKhz70kHyEpoNqmxlOQ/OcweBWLNMhwzMS7bwMB3cgD7kH2E0Tvb0lPSMQY43WggUa7XNT0LzYE3gduINu9/7zzdUpRAvqt1r4ZLhMrZiONvy9IkIS9BmylDWuTuZpvLPC3rIFUwuHirjLEQJp2cvrSNUMA06b4bMhr0DbUP7H7uCBF9mch5nGB57P7acvOwiwuEKJTtJHavGz/BQE0rNgkuq0+8+9ya8YVkvqWPX8Rp15wLPDG4WzbrLjWV9R6GmaiS3i9Q2uwTqTPn3M2pOVxHaPpqtsEdGP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5QojLJueRZvI4kDSoGb4NVALTJARAm7f1Oy/gPbdV0w=;
 b=JqmakvrQS5GkQuS1my7eX92/HFfx8k4+3xZiBDwHxTqcvqDUaxSXEZNkOKy2lT3ttb5OCnBrUUO1bCW+GDJs/RpmxHyNq7Smr8aUirzn2GIR9q7pgu/aOntBSqEMgZMkdo/tuf66LP5kBqQRaJrGQ9gQosqLC8hYLZ6ZJtKLZV4l3yCuyklnLK2Hwd1U3Txg2V58atlLkXuwoyGm/Ehuu1M+MFhJMmvtvyDsVGmhnqYToXgWXkOcjhO8PAtAl9YNpvYKdTY3Ppn9IADxAj5Pclh0OX1UkfLLkssShDnvex6rht/gGCtruMYWL1C5quETT/kcJ6zULTpHqjuFlwGQrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BL1PR11MB5494.namprd11.prod.outlook.com (2603:10b6:208:31d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.14; Thu, 16 Jun
 2022 15:32:38 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5332.022; Thu, 16 Jun 2022
 15:32:38 +0000
Content-Type: multipart/alternative;
 boundary="------------0KIruX1cQ37ZE11f8Pvq54Ml"
Message-ID: <ca9daa25-6647-a632-020f-c3040d08fb4a@windriver.com>
Date: Thu, 16 Jun 2022 11:32:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/16/2022
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
X-ClientProxiedBy: YT1PR01CA0118.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::27) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfaa9a0b-e06a-4de2-2eb7-08da4fad71cc
X-MS-TrafficTypeDiagnostic: BL1PR11MB5494:EE_
X-Microsoft-Antispam-PRVS: 
	<BL1PR11MB5494CF25DB98221CC1EB4EDBF2AC9@BL1PR11MB5494.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	e/TyO3YfWUBrsrR+mZ92rn6ppffgs4l32EkwRopiUweGho41YCUv08kM06onboGq3B/RsBev+J8ulSDHKlOFJww6n8LtaW/023vF2Qha55sS5kdjamqayZZb77bFt2lKLqXztC56T/SA7igqbvmFG8a1+6VJdiepL+szDvJzKMlPRRltoSOca7YwAxSTZjsXJFjjqWI1Vtyzw2immNQ8QBpOqHB6Hfd8m3FCntgQzMNLkzh1x5oaEkFox2tuxKJivyF5EU1z8JAb311XALghVusGVdxmrBlNJovK4K/VqtxbyHuFljwjbhJaQfd0M4wKFVr1TsNpCpb1TPxTybNxpOU6BZE0TyajjMVj6iCVcXqKUWM1gIFi6IisyREL0J+fRnmY51Aghdv0UsZI9DnjZYmE6IhUrIqL8zDcWkz59pFJYwCRZP0hbz7ubAO5TJyqYCagSxQ5bsi4jvU3WRamiTp9r7va0x/7S/cAhPSkEzVM/T0Blvtp+dDluUzpeSjoUW0uwQ/iPcfSVgV40tY8r2tdppbnprPNMictxZEkmJ5xBOEuOlIFvRYBRWhp+/UzPayh6aZrKwglN2XIGaWMSC2fw4LpS76OnUKpV6ybdoDpyveADsOIF+c9VIxPGhz5SY4X+9XVr8RjydFtH0r759Tj4DIwUZvYnRHnkNkmv0QCHCgb4S0HvB+ZWZYb+3TarliNIVpPbU9bMM8tL6nGRpWGtSyCzLbZdozeN3PqoTqJNJ/eqA/1bvgZ4ICQURAHqVltxmK0fqEYjcP0RxeeI9QzLh1SXEXqYbXHsDxGR4jfgz7Lb+h6zluN4KZSFA7mQq+0V0ZKMVW6e5u5k3Z/Xw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(6666004)(52116002)(186003)(6506007)(107886003)(66556008)(86362001)(166002)(26005)(6512007)(31696002)(2616005)(38350700002)(38100700002)(4326008)(31686004)(33964004)(8936002)(7416002)(44832011)(6486002)(8676002)(966005)(36756003)(54906003)(6916009)(2906002)(316002)(66946007)(5660300002)(498600001)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cjU5L0xZS3JOY0w5bmFSQnV5dG9XMkw2aVVpemNPaDJMblQ3Qk5YaGQ0MDc3?=
 =?utf-8?B?K0VPOWNqUTNIWnVSUitqKzY0bGdDcG1WZ1lxcW15SGZUUzdidHZrSlBVU2Nn?=
 =?utf-8?B?SFVuMThCc2JzZWZVaWwyUEI2ZUVrRWJlTjhwclFPZUs1QnNUNW1KSm9zK1RI?=
 =?utf-8?B?OFRYdjUzam0yVjE2YnNIUmVkYXZDREJkendEUWw4OEZxNG5Dc2NQQmZpS0p1?=
 =?utf-8?B?WXhKSkQrMHFWZGdwUHNjbjdOZTYyNUNkNU00aGZxaDdERkpGemszem5mOTNj?=
 =?utf-8?B?RXRWWVNiNWFkaDVJOEdYUi83dk1IMjlmOURhQ0FDQUVvVEdzOGpIL040ZWx3?=
 =?utf-8?B?N2JrRVFXNUVraktQbGJzZTB3WjZUek1ZeWkxZjlrL1FWWW5RNkJiK0hSL05W?=
 =?utf-8?B?dmtwcFFSS3ZtSTlpKzhFSVZCM0xBNGlwMjl1ODdaQUNsMUtaenByVFhha1gz?=
 =?utf-8?B?NHRkMlo2akVvL1FrS09abXB2Yk8yN212RnliT0t0alBnRUZ5anNKVUxKajFz?=
 =?utf-8?B?SW5taHBGQVRRTHJoeWhGcUpRd1RZaGpTZVM3ckVYbUlHdkZXVzNwMkZIUW1J?=
 =?utf-8?B?OG5sM1VPcHk3bjRQOTU2alJqRWRCMEtnK1lqUXVwaStxOFpRZ2xoWHliSFM0?=
 =?utf-8?B?a0I1aXI5N0tPQVpKQk1NN2RRV0U5T002ZWtjeTNFTkRkdnBHc1FtRFFPRUNk?=
 =?utf-8?B?cEloalZrZVdWNHdqMkl5WVBCeWg4ZU1FWGR4RENzaDR3bHZyV0N1eFkyOWta?=
 =?utf-8?B?WHovazJFMGR3U0dUTDVIaGVTakpLMU11cFNMZTNMWWpiaUFCSVd5dDNCcytL?=
 =?utf-8?B?ZE5iNGNQRzdING5CVzBXWUFVRGZ2djROZCtUOXJUTnBpSDNnVE1adUdyVVM3?=
 =?utf-8?B?NWhFdEdDL3FNK0JVMGo0K2ZNTTJYeFRSZHlPRUkvblZTQlRLdlQ1Q3pVRHpW?=
 =?utf-8?B?SFVpRGQyTW1tdUU2QkEwWkpGdjByNGZ1eXhRVFViM1JadTZNR0NHVHlWTVkr?=
 =?utf-8?B?UGp4SEtraDQrLzBRbUdsMkVXaS9LbGF1UmtxUGlPNCtYenFMVnk0S1RhNVUr?=
 =?utf-8?B?VGFLSUlxYXJJR2FEQ3ByWFpVd3A1b3JkeG5uTDh5SllPM1dCTTIvbGNYMkpG?=
 =?utf-8?B?eEdIWisrL3NWdDN0emlSRFZ0R0R6eDBjRTg5WmZBYU5LdHAreVdkYWNON1M2?=
 =?utf-8?B?R2hTUGFmNjZUaTNzY1N5TEp5YVNJYmVsUFVqenh1S2o3cm5tRllBdWlJaTBE?=
 =?utf-8?B?cys5YVJkcXBPUDVYN2xMUit1ekZCYnY2MGZBSDhZRE9lS2MzclBWbjZEanhZ?=
 =?utf-8?B?TkRxSWhQUlRCL29tZnEzZzRUTlpmNVNvVHcrOSs0bDdVaGlFWFArMkx2anEz?=
 =?utf-8?B?ZXE1RjljWTc1Wk8rZUFnSkhxekZUWTNWNUF5c2NLWTl1dDRDZGhsbTZtbG1D?=
 =?utf-8?B?VWQ2YnBlMGl3ZFVzalF5cEhybURwVk0waEMxeUVyNlIwREk5Qm1lSWRJSzRj?=
 =?utf-8?B?bnpPd29pbGNmTjk3WExHSW1mRThrenBlOUYwb0Nrd1dLMWEwVVFsdjdJSTBB?=
 =?utf-8?B?QjByQncwMEliRlk4YVpHT2pOLzcra2lSUTY3cHEyZHZXOUs5b2xTamptdE1V?=
 =?utf-8?B?MjBiR01oZklDbldYcDJiSWplbFNGWCtydXRDelk2NnpNNXlmUmI3enpUVEdZ?=
 =?utf-8?B?YXdUZ1ZoY3M3VGdXVmRCRisxZ3BjSm94TUlsRXl6a0pKckw5OW1XOS84Smlo?=
 =?utf-8?B?U1NYZkI4MW5WUHlZUUhUbEJoVGVycHdTNC9WbTYrMC9XZDJBNWtBbFRINE83?=
 =?utf-8?B?V3crc3paeHRQV29na1JhVnJIWXgyOGovL1g3eTNPVFJqOVE0RGN6eFplejIz?=
 =?utf-8?B?TE9FU01zZm5YS3ZGREptQmNIRmFhQ2pmU285bGZidGI3WTZ3VmQ5S09JRFJl?=
 =?utf-8?B?NWs4cVJWMlpXdEhlZ3pqZjgzaW96VjJuY2RydXlGL1hHam5kNjlhN0F0MFow?=
 =?utf-8?B?K1FNTURLelJFVzR5Z0RSbGRWbVRWVHRRY2QySGpzaFFuSFRUaGwvNmNxWkU4?=
 =?utf-8?B?Vmp2QlVaSVhjQXI3Y016RTJKOHhMWFNSVXBibXBSYWtZODNrekV6a0hnKzcr?=
 =?utf-8?B?Vk9ZaVZvTEI0ZjVCUzBXSFlBM2VwZW1DMzBlbWpxMXc1aGVUbElXZStVbG9B?=
 =?utf-8?B?K1FXd0RzNWdpT2NnekFRejlvenRyclhiU3FMdG4rMTR0VytIYTZ1ZW9ESDlT?=
 =?utf-8?B?QU1STlZRdFRYd01XSkI1MnNjMjhIWFNGd1ozMnk2MG1sVFFvb3ZlSzBPRW91?=
 =?utf-8?B?MDdMUEs3MkR2T3MrSlUyQUUxRXY3K3JRaG9tOXZLbGl0SnBIaUpWcWpRMkNO?=
 =?utf-8?Q?Wn4zhW7YAab3Xtvo=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 dfaa9a0b-e06a-4de2-2eb7-08da4fad71cc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 15:32:38.5833
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 o7R0pLZ+KMgIdGeB8NyBW8Mhirp01FTH44r/XHepAXcYPx2/vQOfOuvFiS8g3IDbxF8yevjIyfgeBdbR/+xxLA+XwmYgxQ9PGd7LTXUVCaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5494
X-Proofpoint-GUID: 2XemRjBC6quw0_TtRpBKdMnqMTc8p0oI
X-Proofpoint-ORIG-GUID: 2XemRjBC6quw0_TtRpBKdMnqMTc8p0oI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-16_12,2022-06-16_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0
 mlxlogscore=671 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 clxscore=1011 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jun 2022 15:33:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57341

--------------0KIruX1cQ37ZE11f8Pvq54Ml
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Stephen Jolley, Saul Wold, Mico Marguet, Steve Sakoman, 
Pavel Zhukov, Michael Opdenacker, Richard Purdie, Aryaman Gupta, Randy 
Macleod, Alexandre Belloni, Ross Burton, Joshua Watt, Tim Orling

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *75 (Last week 73)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 45)

*AB Bugs: *49 (Last week 47)
--------------0KIruX1cQ37ZE11f8Pvq54Ml
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Stephen Jolley, Saul Wold, Mico Marguet,
        Steve Sakoman, Pavel Zhukov, Michael Opdenacker, Richard Purdie,
        Aryaman Gupta, Randy Macleod, Alexandre Belloni, Ross Burton,
        Joshua Watt, Tim Orling<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>75 (Last week
        73)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 45)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>49
      (Last week 47)<br>
    </div>
  </body>
</html>

--------------0KIruX1cQ37ZE11f8Pvq54Ml--

