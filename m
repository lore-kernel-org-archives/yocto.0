Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8A0C19F2A
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 15:46:20 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.8076.1660232771769675194
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 08:46:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Poydc7Ty;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5222674877=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27BFOkOh003419;
	Thu, 11 Aug 2022 15:45:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=+pCAKPUEtrujyA6UQysUspimczMJtJzNK4zNY3L7KT4=;
 b=Poydc7Ty4x6LECEl1V3FW+SUgBxA/PihDOudvFJeS5qVmfaU69gLbON4t9ZGUx/vaLGS
 HNcaXQ2/6O85FHdFEcKZItWIM8GARBJP+D1l0FFlG/fTFUvGJC7f59VyRvGgJNAxceHd
 X1GoyO7dtF39GwfpcM7t8UDnV8uI+CbJSD+regAlOiIDdmYVInvQgMDX354b796dUfha
 E3QFBtvdBcuVNdtfHmPQgN0Y4nQDgXXp8eyRzOhWRAxHNFHee6o0L9nr1ndhU6IOEr/3
 f4vgIBMp/1Nr5QEowpYgmLEGkJIaZWd7bkrmQv0xXQHjzl+f44ObLoEGB5G8yh+7rLv3 NA==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2047.outbound.protection.outlook.com [104.47.57.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hvqe6rgbm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Aug 2022 15:45:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nfdIXiu67fOy0Crw8qjln0PV9GXZZ77JVjz0gebIY4TK3mXcYN9J3Hh6x+Rx43M3wzOISgRIhsPErTNyyPqm3zTricnKe+13K46T8nVBOUaOfhyZoM23LdWlRkflIRpde3KGGkNY4Fgpk0pPuHMioPj05sEXKuPR7BaHtAoE4Dr0IoB92I592Da5AS4rWSaHL7BsB0IDzOy5PP/sUPWfK69/nyafhuP9g5frBLj0FNtFXCUX8K5iDjfJrrRHSx0GCPzBSLZNR2i7ip2t3B8FxcmpCFs1Bp5v8lKO5Ju0iPZo/MZUFAWQbd3aYosZoS/knG7iu1NaEul+o+dYxjBmYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+pCAKPUEtrujyA6UQysUspimczMJtJzNK4zNY3L7KT4=;
 b=elKNd4q3WGTTFVSelqZiYlo7Art7B38Dn2UiGPcEiUpZyavHVIoaCkHXxx80K3are/LCK9FYQaFctAtE9nodFRd05vIMtAqA/CREt7WwNEQy+oXp9lJedZrkQ+vEQQxb4KOHsHFv9188TALW0T5Ep6W8ZNdj+zThEVZ0wuqV5BhElGNz9SmKN33eCcDxXVI6CKFkTAniemuDz4x4JSjugVXG1TS9sNFCPI7xBrFlzeduyRSk+Q/97Wi1XUKqk30RMR+oykLxOfVMITGncLIPLdCysC2c3lTLhUpMvbv+MDEWSrtgIDk8Mg/w+Hiyn/nHnQdZPvysfUARrtxro3N+bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SA1PR11MB7112.namprd11.prod.outlook.com (2603:10b6:806:2b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Thu, 11 Aug
 2022 15:45:42 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3c53:9479:88d3:bdcf]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3c53:9479:88d3:bdcf%7]) with mapi id 15.20.5504.020; Thu, 11 Aug 2022
 15:45:41 +0000
Content-Type: multipart/alternative;
 boundary="------------CbSlNf9Kf1Z907G1n7R8HuQn"
Message-ID: <a94f77bd-4dda-74aa-ae58-a6a9dd642225@windriver.com>
Date: Thu, 11 Aug 2022 11:45:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 8/4/2022
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
X-ClientProxiedBy: YQBPR0101CA0326.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:6c::25) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21481e8a-cc55-4d2c-d495-08da7bb08b74
X-MS-TrafficTypeDiagnostic: SA1PR11MB7112:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rax7wL0SCa19MKrM+O3z7mjpJL/JeBj/QdIJCqaK1uyc/JUAvuReOAmLI03KG5Z+rWBc7uKOaED0LUFtQCQGasnpRxNI5chi/WwvgaQNSCs/gniTvqqJd/rGDeHm1xfSb4Vr95iB8JeC7DX8igdtQpacURvTi7PEBWY2TPsxbba8VifFDr1LVHWlYAf29LDpelfXVa7aBwGo2/TebR5xwfUQyy2MM3/bWZFzJBYHXCFC/M6A0XngZrwhfDIykQTAezbkvW1rjcAekzRo6Z/fMTyONV43efcwQ00SXXMBCqRMD83bMMIFGBb2jW73PLLtjFg3EPvXNN/m8Z2t9rvw1SwwCrVfzKff+OMB7n6tHoLwIFAtChsg8D0XaZx2ak1icVb/qrSt+EmCzL8EBoTP+/ne2FSblct8fNmjQl7JEbhmMEe/nT2VIKaQXf4XEcK3XuSHPRGccd6ax+gsJdODxRhJaVqNMBKDxplTSyClnK9xB0GJCTzzUYQFn68e1gNOyi/mN48BifnbawPDBEWjUuh8N6W7mM27CO3lLlNE9+QPS2ySdzu1iqq2M7wC4pNZqz27XIyoCg3cW2gjTA23eHPM+/c80c+zSg0cKn2Y7drPpOs7QahueNgjcaFNxOBdpnthJn9N+27bwB+ICX28U56VwMxgWWtF9tx3CeqMjv7uFV/oyCJUcmj1XpxBwPh6+Jw5Ajq80ZBImbtoDy0lDwfbz046M9lIuLlxzDra8r+kBdAu2kdLPY59MEWMqrAGlIJT9dlgbo84+WCa1SPw8kMDJeEamd/u2y5+7LyGrqpUxPqeO7sC5TCrIoEH8hS3bjoR9NPZihzxr9FbQQEAYp/RRzYZ/heC/RC+XTAb1y2FCTDALu7uENHGSJhRRG2wf8YrI+8Qm8BgowGKLnhqFw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(396003)(39850400004)(346002)(136003)(38100700002)(2906002)(478600001)(966005)(6486002)(26005)(8676002)(33964004)(6666004)(186003)(6506007)(107886003)(31686004)(44832011)(52116002)(4326008)(6512007)(66556008)(54906003)(2616005)(316002)(6916009)(41300700001)(36756003)(166002)(86362001)(5660300002)(7416002)(66946007)(31696002)(66476007)(38350700002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RFpOSk54amREY3prbGxSdWNmcmxwNExIeDhXL2pocG52OEJJbmZ4VE9Kckl6?=
 =?utf-8?B?V0Z2clRTT1FIaUgxUlBhQlVqTzFQS0RXZ09QSHNjSEQ5RUZSSURwcEVLd2wz?=
 =?utf-8?B?YUpqWndRdlo4TWlSSUNvTU1GbkN4dnBoU3lwK1pPMnNGd213MFFhY01vQjNS?=
 =?utf-8?B?OUVTS2l4dUdYQ2VKSDRQdlZBclgvWWJaTGhTYzFJRWFpWk5vMVQ1NGx6d0Ru?=
 =?utf-8?B?WW1ockk2ZVRrM2hYVkpJU0xoZlIxMlBWSTFqa1Q3V1pFcFp6cHFMSnRqS2dB?=
 =?utf-8?B?Vk8rWHUrM0VlUFhaZ1A0TFBvTGFTN0REVEFFK0VNckdXVXJBcXllektRQ0Ji?=
 =?utf-8?B?M21FcG92QzVEZVlIaDJPMDh6cUhJbzdIMlZMYTloNzdIenl1bC9WVmxjU2NY?=
 =?utf-8?B?YmtmTXUram93clJFWmswdUNpbXEyY2RMVENXdjAwczVXQWhXSks3TUpDRlFw?=
 =?utf-8?B?TVR6OUxOUzZFRlUwUEpjL0FVR01ma0J5OWhCa21NL3hBbFlPVnlBVlNYRUEv?=
 =?utf-8?B?NTJkN3ZMeVluRTVzdi9XUXhXSG5GU1hOV0pWVjQ0ZnRMb2lMcWpzeklmcXZv?=
 =?utf-8?B?ZUo1SWhnSStqUmRBMFpHK3g1S3hkRkg1eitTVk1VaDJ4eU5UM2t0RXhSL3hj?=
 =?utf-8?B?VVBveU1MOHJmbVhUWTZYbS9YNWNULzdGZGp0MmYzRCtZZkRrcEpGT3RGWGdC?=
 =?utf-8?B?Wm1xNUt4OWhVR2tNd1NtVGtDS0Q3dHk3eE02RjBHREZORlhEQ2YyZG94RUty?=
 =?utf-8?B?SW84UTVGMXdlTzFRVlRrcVRRUWI0QUV1a2dyTEZ1WERwaDBNWU9ET2dHRjdC?=
 =?utf-8?B?VTQ4cjREVyt0dkpYdFprcExaSmN0cExIMVlDMkVhN0ZTcGlRa1FtTUl3c3hZ?=
 =?utf-8?B?WWY5b2wzekRUVGIxSmRtdGFLS0hBUUw4K0lmMFhlMHFPL0RxSGNuaS9sQXdD?=
 =?utf-8?B?ZXNWRGp5Vktma052VThLYWZ6cFNMNmZidmhJZVJOWnBRcThiMWpJUVJJc3VM?=
 =?utf-8?B?UHltaU9oSjlueXRjUUVnaWdlK09RbGhxVDF4ZlJjclp5U2wrKzNiM0VoUnpv?=
 =?utf-8?B?UEpDOGlDV2VWRHNVWGJZSnphcitCWU1aTi9hNGwwVk45eFVTYUg0R20vL2M0?=
 =?utf-8?B?OXZRd0pUOXJGTE0rUDAxa2syWHB5N2hKZFlLKzB5L0ptaG1VWkwzVlR6RHFq?=
 =?utf-8?B?SjkxUnFBQllJdmk1U1ozai9STXdNQkNTcVZWMDNjdmxZZTQ4MGtUeGdTemFP?=
 =?utf-8?B?czM4Q1E3Y2FZSmtBQ3ExSXU2dG1VT0IvVWlmYnF5ckIxbFRqV1BDYXRMUFFt?=
 =?utf-8?B?RkpBbTd1Q2ZCZzZCM0UyejJONGg2QjBxVjZSVmUrZENoeTlBUmZTWFNBVVVo?=
 =?utf-8?B?QWdBekFwQjRwOXZMN0NDd00vbFZTTCtvT1BpT2VHM0NXRkFYeDdtb1lsYlhr?=
 =?utf-8?B?VE9TRjF1UXIrSGZVUHVCVndpQjFlMjhmQjh6dWw3L3VaREhtYld3Y3RLa2JK?=
 =?utf-8?B?WEVPTXZ2UXhDbEZTL0xvWXE5bWoycHBWdks4UWhrZjNwTGVoQXNSOGUxTkJT?=
 =?utf-8?B?OHVJSTUzanFPRUdpK29Cekw2WDJEZU1nMHE1ZmhJSVo4dEFJT2I0YUZUZEx6?=
 =?utf-8?B?NCtNcmtpWFEvTnVOaEVESWFnWHRIZjl4SXlrSTFBb2hzRE1Bc2pwMXpBTEVk?=
 =?utf-8?B?aFFmbksyKzBvNmw3eHRLZHJzb3lJRFRtZm96dDdiM3kvdDhrSE5oaVVIb05J?=
 =?utf-8?B?V3pJbXdsTkJyRHpBeTRuNEVBcnZVQ21Yc1hNbjdzc1Q1dnBJTVRxdEJkcmpM?=
 =?utf-8?B?Z1NWY1B5YldSN2lKUTAzenQwRDZjSnhLZ2p3cFRBWUlFS0lzQlRrdGRuUUJl?=
 =?utf-8?B?VnVPL2FqNUI0N3QxWFV0VnlOQ2pUM2R5NTN6TDNwWlNwTER5NHJQMlZPS3Ja?=
 =?utf-8?B?aDI1d3JJSmFxblFaZXVZS0N1K3ZuRXBIZFBzMnR2TEhUaUdrdXhPYnpubVRS?=
 =?utf-8?B?WlN4bjdjSE8yRm9GT21jTUZLeGFRQ1NNeitEdzQrNzVDNUIvTGhsMUFvTW4v?=
 =?utf-8?B?anlTMzlQOVU1YlVrNDdpSXl5QVhSdVJOalN6WENsekY3SDNZY0toSXpSbDkz?=
 =?utf-8?B?dFdteVVqbENXOFY3ZzFWdTJlNVd6NmdXZEZ4anNZMzl3cGFmVU52WE4xRC9p?=
 =?utf-8?B?Smc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 21481e8a-cc55-4d2c-d495-08da7bb08b74
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2022 15:45:41.4402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ZmWe5RTX1vc8y5HGrJfDMyP/tXj6j5jbi4YxUWsSlCHNJ72o725Ct6rbrsTl3ok/mhINslvqr1HxLMbTAPzlksbRYGOURAw1JSN68DJZB/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7112
X-Proofpoint-ORIG-GUID: Kw5MyxGmF5u2HDw6S9tX0nzqT1gMjccM
X-Proofpoint-GUID: Kw5MyxGmF5u2HDw6S9tX0nzqT1gMjccM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-11_11,2022-08-11_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=962 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208110053
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 15:46:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57826

--------------CbSlNf9Kf1Z907G1n7R8HuQn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Aryaman, Bruce Ashfield, Michael Opdenacker, Alexandre Belloni, Pavel 
Zhukov, Alexandre Belloni, Alejandro Hernandez, Paulo Neves, 
Satthishkumar Duraisamy

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *78 (Last week 78)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *54 (Last week 50)
--------------CbSlNf9Kf1Z907G1n7R8HuQn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Aryaman, Bruce Ashfield, Michael Opdenacker,
        Alexandre Belloni, Pavel Zhukov, Alexandre Belloni, Alejandro
        Hernandez, Paulo Neves, Satthishkumar Duraisamy<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>78 (Last week
        78)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>54
      (Last week 50)<br>
    </div>
  </body>
</html>

--------------CbSlNf9Kf1Z907G1n7R8HuQn--

