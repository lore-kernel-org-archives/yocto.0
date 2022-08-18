Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFBC00140
	for <webhook@archiver.kernel.org>; Thu, 18 Aug 2022 15:30:32 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.43171.1660836628354322249
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Aug 2022 08:30:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=EETMDsFH;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5229cc7152=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27IEb9Z2031519;
	Thu, 18 Aug 2022 15:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=YLL6h46sFDXur2xrWSF6U1AoskY/Ec7y88uZbSDONfQ=;
 b=EETMDsFHtTFWUcGg3R4x/IyFLweGCTgQv66xlfT/BAjQJh8dqXeaKVjobW2YhgJ8K2db
 TgbbZVEFfa+hf88G396fFeeA665wTz8iPkHgAfx5l/WO5itsqTQGQROjD+73DWZtkylx
 o/5t7MNRSfA+bVr8G/L7+SylQuZ2KGVYVBj74Duqa6anGqsNrTOeBiLKliy58DXoqzwb
 bOk9YUub0z4QzRaoWa9QxxsbA0sMCXzV8dq6t4U8Epy2eEWl2VwuD2p0yPLKaMzhX5hH
 75rweNxMu76AvFt4joxFf6WqBMUoNI59h7zUYpdvNBEL61y5byVJr9OM+gRno1bkPES3 Fg==
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2168.outbound.protection.outlook.com [104.47.73.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hx2x8mged-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Aug 2022 15:30:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ak3x95Seqx6UVU/06QUPwheeN6c67IHOdYa8L4Ei2GO1ujPlLFXHfXxjzxOsq/Lxi3lA9iIFJTfsm6W9T9Xgsw3460bCKEivVuKyz9vu8U6nnL/bZ97NGJEaPQs3YLFBNnMhdpWzJnNsQBFHPywKnmzDpOOSA9RhArpiJwH0W2ZK19YFwcBShNzWCGYBPW4GNjg8S8xkIpfl5ZdC/qCJGw/jN4tftnkz5KNLsfLJuGQhOyE57lSKnLqCjBXBz3k3tlxq0KC52c/EWXPVMBjOmZRDkStoLMrz9cO6sZ0SzIQEdr6CKKEYSsgsNKY/QBa64Q4rdnNBjtQ0QBSNdw0UOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YLL6h46sFDXur2xrWSF6U1AoskY/Ec7y88uZbSDONfQ=;
 b=bKo5FkHvxxh9ddH/vG2OujZqVrLAtnqOzB8gNlqva77KabUsIEV/oyiW2RN8yyLUOfMmNSHmmuKSAvFWPs7Ax6a2ZHBjrO4s0LqtzRh1YAuOo4zHb8KnQ1Gq2dEuvHrgnDIsjuu67pQL9k7sIzAQxNzwXVhrMCFs0Ocni1AJNsUQifhFJXbP1SsiSXBmV8L4V6X4wLF7ifG3clKLuOz8qvf6xiiMXj53Px2mpMvZBpHIcDqe3zdL7rX7jUee2rBSevgx7x9zi3po09lqDpyU9RIJp1OuXHge9n4rScv88pn2y9hDpcCQlaOovDFaSgmApArXuLw8+xrulBtMD4XE2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2536.namprd11.prod.outlook.com (2603:10b6:a02:c4::32)
 by DM4PR11MB6166.namprd11.prod.outlook.com (2603:10b6:8:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Thu, 18 Aug
 2022 15:29:57 +0000
Received: from BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::949f:b579:5d22:e430]) by BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::949f:b579:5d22:e430%4]) with mapi id 15.20.5504.028; Thu, 18 Aug 2022
 15:29:57 +0000
Content-Type: multipart/alternative;
 boundary="------------xOHOfgBbOlU2sV002bdt8yUn"
Message-ID: <8a0cc8ee-d367-d2c7-1860-2d21daf8a857@windriver.com>
Date: Thu, 18 Aug 2022 11:29:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 8/18/2022
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
X-ClientProxiedBy: YQBPR0101CA0243.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:66::24) To BYAPR11MB2536.namprd11.prod.outlook.com
 (2603:10b6:a02:c4::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96b5e5db-8b71-4f44-0544-08da812e819b
X-MS-TrafficTypeDiagnostic: DM4PR11MB6166:EE_
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	W6TB9Cpws6asrCuno12g8RXthBGM9TTcihqLuWLtTBQ4GBCZSMhJ6f4m00Gt4YXfVHjWERphfody37MVYDSbRF+BXB4b56wrDDEwBKFHKDh023vmxEBhsIBNmSNDr9bLan2cZzaTgibRHJ09fJo9eBI9REXIiRGokzd85NA1h8KQG0Xsh8cnoIlbsqqPWIG7vZaqgoZta4DEVemSsOkeOYAQ6UMS2MRiPZnvMnqcCCPAJ/yzwW+ZEeo/VqCmG7I6wymyON7n0igLp9XG7OAjw2s+9jnFoIgJiEkGr7r+/fd/wcOPgy5gWJRjyOZME1ArYlepRrseRrtJ0WMjtkokh0FPj1DHZr25foyS/9NUIypqtfFSPrOEXs4GIWvRH2jGX40iUwic9UuJ0vzUMvCNpIHpEqaJyFiBTt2F1vDg8xHDUeaNgRV3B11UhGR5CU3np4kdN3+hwSlG9JM2EIj4NPiRHH6T1GQoTDRnnl2d2uXD2CeVOO9jxse6eI8drnqckOrL1wda1nlj4bYjPIq3ma8tYW3uXFzZj/VBlgqn764kkcUe1JbNnvVktwWPyaS9YyZRNzuWdDcNZAsV5pxstyYtAC/xid3BS1kk7/9qw5oZR6sDu58hmr02fqEmnLalUaJjKK7z1L0roO1yu7r50uRH95EnaWhzMZxAfgJUDZvyEZXtNCNawaMOM/X9rsZf9360OBGdUHyp4MDSZzTMltOm2GLbVcrA5Ihea+S6hXjz8M2V0dWxv9QWuoKf9tWHrGs200FpFAaWOnqGK4vXvWQ5SnV57sjhIfUBMz3IgZHnPd3/h0cbby2AeHShHJR1dBLwv7EP7qSpWwbSkoplFvq44iGhAhDiXMW6vUsbF2M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2536.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(366004)(376002)(39850400004)(396003)(2616005)(6916009)(166002)(316002)(186003)(54906003)(31686004)(36756003)(38350700002)(38100700002)(6506007)(33964004)(52116002)(4326008)(66946007)(66476007)(66556008)(31696002)(2906002)(966005)(8676002)(6486002)(86362001)(6512007)(41300700001)(478600001)(26005)(107886003)(6666004)(8936002)(44832011)(5660300002)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TFFUR0FMaXZjblM3SFc2RWJSSGg2K1d6b2lPRS84RkRoQ3NyeXdTc1YwZlBm?=
 =?utf-8?B?RWR5SHVhNldRQlJhODBtWXpEVnJydksyNzAzRE9lemIxQ2x5L0dsWmRYVTlN?=
 =?utf-8?B?U3FJT2ZvM2I2MnZ0NTRIUVhjRy9ZUTQ0ZTk1cWZxSXhGVDJVcTlHTlR4MkFy?=
 =?utf-8?B?R29NeHkzTGtHRXFpdmN5UTRsb1NFOUg2Tlp5WFNWN01xYXNoRDRSVHdsSVFi?=
 =?utf-8?B?RXRmeEcwZmpuREdsRG9yNitQU01UOVdtR3VtVkFRcVlZNzlnWWNxN2pDMEJM?=
 =?utf-8?B?L0svYU1VK21zMjg4SUdzS2g0cGJFbjFpeVBVM3lYcTBsV0xsU3lTRjA1M0VS?=
 =?utf-8?B?OWlESW82OFZFYXZ4YjRSTklHOWRPekdYc1h4UXNTU21IcS9pTVBMN21MM09h?=
 =?utf-8?B?S2Q4Z2dRVnZuQzhBaTNDYisvWDMwd011QU01eCt2UHMvRVI1Q3R5RVY5bEVW?=
 =?utf-8?B?N0FCTjdIZThwZVNuMlBBRnRBcnp5VUNpa2lSYkRsd3prKzY3NzRsY3JXTCtM?=
 =?utf-8?B?ZkVHUlRtYXRTd3ExelAzaldhTUFDSTNWUGQrYlpoNk13T2tVVk1MdzlGTkww?=
 =?utf-8?B?WHkzblVaaGhSNDNCQjhnYXY2R2V6UFZObFp1K1hPdVd4NjRtMDRUMFVFcTBs?=
 =?utf-8?B?QXB6MGtCMWl5ZjJySi83dDlLTWhQblpya3FydmhUOS9ub2lKdUcyY2gyTTNI?=
 =?utf-8?B?K3JTNlkvNUdQa2RXK3EvOWJoWXVoTjIwd0k5UjkxMEg2MDZuUENHc0w4R3Zu?=
 =?utf-8?B?R2RZYW9mL2tvMTBTNXRUTnlFUGhLR0cveGc0NzVoVjlBNUl3T3RJYkxndGpU?=
 =?utf-8?B?OGhrcjZHN240VFY0WnBmWTdsWG1lczJHTDVyanA4cXBCcjRkNlVOZTdvT1lX?=
 =?utf-8?B?bncwdG5heWlYUVdrVmN3V2I3amZRV3BXN0RZQ0VWMm0yUHN5aVdJRWFLMHcz?=
 =?utf-8?B?TFFVOVNiOGlja1lHQWxYOXNNUEovWFh1a0VsYWF5cTVrZHI3eVQrRHVuMmIv?=
 =?utf-8?B?b0JDeVdvYWpncy9zUHZsRGtGaXE2QVB6RHVrVTJ6K2w5R1JCU1d2OVFkY0dL?=
 =?utf-8?B?SXcyVlhPeXVlS1F6bzJXSkkvenJvdlIrb0p4K2dYZ1FpZENsWGJ2YXFMUE1x?=
 =?utf-8?B?cFltYTNpSktLN2YyTmNkSlljZHU2bUZoUGZkUk16SE84N3dSTldNNzJ6cVhx?=
 =?utf-8?B?RjY5ZlB1N0Y2dFNFNXZaSlpkNXdBYi9xSTk5Z3RHRllHSVhGK0ZzblV5WE9M?=
 =?utf-8?B?bDIreFUxS1djZ2NNOUYzcUE1Qy9iQ3lDY1dHREhTRm9PSGp0L290aFVwUDky?=
 =?utf-8?B?ZGVYL1Fab3FTR05KSUJHUHQvNUwxWlNJa3dJWU5TM09LQUt1dzNTYldhN1hW?=
 =?utf-8?B?TzVBbUUrZUN1QW91dHBzR1IxYUxScjFZMUxENEMrblRFUnhZMXlvRXVpMU5D?=
 =?utf-8?B?czBNcm1iSGl3LzVyUUJxNEhMdWtMV2lvVDB1Y1dtNjdldjE1NkJycmV5b1VP?=
 =?utf-8?B?QVNCMFZDY2JKbDNONExScnhjcjdUSm9TN2NSZ2hmK2pIR2QxMHhqY05pVmpa?=
 =?utf-8?B?RGRZc29OOHltZ1Y2MG5oRGdQcVFHR1ZaUFRFU0xHdXdTcTloVXpqQXhURFQ2?=
 =?utf-8?B?alRQaDZtRzU5aHBod1ljSU1hZFM0U09SL0VYZUdmNnBHWmVzTkc1QWtkWGw3?=
 =?utf-8?B?NFg3Y2t0bUdHUXFGcmtjbzkyaHNxV2l6OUFDbnp0bGdDSVpiYzU5aWRoc2Ja?=
 =?utf-8?B?RlhyQWRMSkNxZkN5K05ZQkJ0N080dG1jRHB0SERDLzFsNnVkRDN4N1lpN1Fl?=
 =?utf-8?B?RlNDY21icEMwV1ZzVk02S3g3dUhMdDNDejhzWUVMNVVlVUxRZG5WWVY1dHAr?=
 =?utf-8?B?UmlJY3lQV3FmMCtlRmV2R2RHRlFSOGpaN3MvR3Z5UHRVUzdkSDg2TVV5QXVQ?=
 =?utf-8?B?R2JxSzJkRXNEU1owVGdRSzl6NVBoWXRRNzgzd0d3dyt0MzZ5K2ViRFJLRTQ3?=
 =?utf-8?B?MHJ3WmFadFpJbER4ajE3VGU1b0QxN1ZNeGsxcE9WaHY5anR2aVBaZEVYcXhO?=
 =?utf-8?B?aG9zaWpLTSsrRUp3VzUycXFLK0llYnpmSUFreXhrelY5SGJ6cTlubGRkVXNJ?=
 =?utf-8?B?L2JhMUlWdE5XT3AzckVTbXlHSDhkTFIyUWQvYUs4YWpPNUMrb0d5ZjZ6QkhZ?=
 =?utf-8?B?U3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 96b5e5db-8b71-4f44-0544-08da812e819b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2536.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 15:29:57.3307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 jmE+Nv6cZgvAvm2NJ/gpbBxLAnZRNIosU+K6UlxmRTc0ORBpwXBOZvznjiEqT4Ml6aKLQP1ipCumTIb2ZxVznbjUk12uNT/E12AUH12AWco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6166
X-Proofpoint-ORIG-GUID: ZTmYJfpQYsyqUcwcCaH1Jsld-SgcKfIX
X-Proofpoint-GUID: ZTmYJfpQYsyqUcwcCaH1Jsld-SgcKfIX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-18_12,2022-08-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 mlxscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=901 adultscore=0
 impostorscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208180056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Aug 2022 15:30:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57863

--------------xOHOfgBbOlU2sV002bdt8yUn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Alexandre Belloni, Pavel Zhukov, Stephen Jolley, Ross Burton, Saul Wold

*ARs:*

N/A*
*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *78 (Last week 78)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *56 (Last week 54)
--------------xOHOfgBbOlU2sV002bdt8yUn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Alexandre Belloni, Pavel Zhukov, Stephen Jolley,
        Ross Burton, Saul Wold<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
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
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>56
      (Last week 54)<br>
    </div>
  </body>
</html>

--------------xOHOfgBbOlU2sV002bdt8yUn--

