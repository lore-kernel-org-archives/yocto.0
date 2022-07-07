Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73035CCA479
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 15:19:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.6761.1657207163738989250
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 08:19:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N+beRjmU;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=41870ce31d=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 267DP5rq004678;
	Thu, 7 Jul 2022 15:18:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=gOi5/iN2mBpPpdXTT2QvztRyiLt+qmBTeN/CKViy85Q=;
 b=N+beRjmUD9i4X16qWRhugyCNYW+sktyfnzwPgo5ToaHQ3pMPfuUVBVz6wkcXxM4IdAFN
 eKKLtE5dXnM3rg5AL5GMrdQXDyTODS3ugyKbJegdimo3oD+Zgk7gNXTCG9dSVliCIdBq
 36Sb8w2ju8VBqWqTFimL3yhSWGjUxbYiGY+dlHTRFun9+7WRUmK0bp5xRWf3cxqg82xj
 P4GFgT5Ge+s42nwLT+meIetgc8BThYu1wnDJJrsIoPFNQur9TKR8OcAgaLEFZPmuG0f8
 zF9zRxWZMbF1xMxvpZij4M1/QqGzxwerO0SpMeXVoRGBL9ScgRXWwhQeGgGed7EUoRu4 EQ==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3h4ug7hggg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Jul 2022 15:18:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGN5zvFfdRajN4grxSksy5PUR3zEBAFqw8SD9Wn6GNcxaXTY+qdrNnVTV9oi/G2Kkgh6RCMhvhHHQ0+bdRD+Z4w3+WrtlNw4zSC9VWZfUD6UHe0+vTwn6Hw774EiDI1ojmahUWLrwFdglI97IWUDGa7n9GxxQoY8WD/E4RUywGjDnc7rO+JXNuY/7LJKyRhAKHX0SY8nIihSlw+f4EG88uo+dlw2YMywgjF9tnldIo/Npe0CQ3BUH3lYgLiQyCe/gZ39m/n4pP7Cje4fYS7fkz0n+PjxWDowfp3DSQyfG/0cK8YIbv/tAmT30QoMMBXo3lvZR1/Zw3ZEWBRZm0q/1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gOi5/iN2mBpPpdXTT2QvztRyiLt+qmBTeN/CKViy85Q=;
 b=QyLoXbwiQCuCTJyM2zIb/LnOYsPLvk9DSQ3M/ToiuzWXyNfmbUdUo9m8c3t/aWzk1unNjFtPGY20v2l/LguEyfH9Us4U+RRbTqRWTjr4aPJsBsghTw8/1DqXrVsVZOT65pVz8SRJqGQFR6vmBgdzxwksItDiAihIqgU+ZwlfUW+aH72bjODyTvNl+aTEIAnx+OUOetmjlL9inRDgivEDRBZMn4LtBjOel4VBuyhscbs+ErQt5XyzRCinFWoXMQZNY9jDm3NJENygkXKor8Gk3JUvW1IK6QPXVqauVBSR+OYl68EB5zJ41Rp3C+DoVLb5YHdXQIJUPgMKhF33jZ7Mmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BYAPR11MB3797.namprd11.prod.outlook.com (2603:10b6:a03:fe::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Thu, 7 Jul 2022 15:18:49 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 15:18:48 +0000
Content-Type: multipart/alternative;
 boundary="------------bF8wmofbltMlEn0qLrRpvUJJ"
Message-ID: <8e6d792d-109d-9200-8564-b6357e12ffdc@windriver.com>
Date: Thu, 7 Jul 2022 11:18:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 7/7/2022
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
X-ClientProxiedBy: YQBPR0101CA0053.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:1::30) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bae96467-4b5d-4a74-0fbf-08da602bfdf5
X-MS-TrafficTypeDiagnostic: BYAPR11MB3797:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KirMbvJmwFwy9wi0su86/4NrGJH2l5ENw4w6vXikjNKNGbFgISHsIcHkMfGCTTRF/DFqQToMyDN2IjkPv++mYTuezIf+hlHQHdc7bD6hySkFn+ZgpHpDrY3xq/a+92/zh4dMfhBaxbuT/4kxvTDAZHliubwpR/sq0iDFLsx8K0Te4wx3GXdnz7B57GV0se37iqg/jSV230v2cqze/cUBYBA8CKGszWxIusOIC5iFBgieiI+3vXGz3Bilv1xqDtPvkI+Ypq1TQDNzk1Ejs/U2WCqR2oDmArYGRlx7ZJjZGvvHpe/Ey1J5WXZTY8KAX7FYuaRj8646yuaMP6AOfp/L6Xgp4SZjJoouSfRPpPpKEiy1TUzYlnKDHMKjQCQgm++++8IqRjgzsKNewIoebXUWxbOEIlKPJWmLuKQSwbQkiDQkMFws8p/lehM4iaJ/E/nCj+ZMnBrB9znDyFQQGgETodGT+nDjDBop4mfMDkjSMLWwGU0S/qZKX8RMrwidZZK2QP4A7uih8U89NiWnTOM3X/0SNNj7/E+YcazYQx/fiDsXOiGMOys7YuGirhSCjS7AINzk593vp45BNcOxZ3X3XB4OuFAzcO8lgdo14b4J3fFMa4XfZ1OpU8jBE5VIQxxX/cyfbRcE8QO0p+1s1Sj4IOf7B09TJPTntGKK3xHBsXK7Qt/gtoDJf7bSpgy6biz4hFj4zCeuWpQPYPSNmrUCIGl284wkyHibev4Rb59A36TNjSv2webk0JV+9b/GvCH38GLlicr8dqPIi7s4ceG1vHzliqZJed4MJ824RrukuVrRFtgO7KugEaaqvBq53DjVHr0FQGFRekZkdkZwszRH/u0Cxp7FlaKkevCoDY3EuEDfJCXYWBoVUx61IvqUfWaMc2ZJIUyG4jwYvMPjkfGAGw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(346002)(39850400004)(396003)(366004)(966005)(26005)(33964004)(6506007)(41300700001)(478600001)(31696002)(2616005)(52116002)(8936002)(107886003)(2906002)(6486002)(186003)(6512007)(5660300002)(44832011)(31686004)(7416002)(86362001)(8676002)(66476007)(36756003)(316002)(4326008)(66946007)(38100700002)(38350700002)(54906003)(166002)(6916009)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NjI3WnU2ckVVMmFoKzk0bjdIQkN3STQySDFmVWNaQkxpZ0lYalFFWSs4MEpL?=
 =?utf-8?B?dG92Zkk1Nk4xNHluZnN1Qkt6UXdzR0Q3VGFsLzBjUXFnci9PMy9BNzVZdEtO?=
 =?utf-8?B?c2V6czVGSUtLM2xSV2hmeUtKOURKalBPMXNqN2VOMG5wcS9IWS9rWC9BU25U?=
 =?utf-8?B?MmZ4b2xuWmpYSVpCR0ZWVEE2dWVZdjJIMDNic29CQUhhMnFyZHVmempNRExW?=
 =?utf-8?B?Nm5hNmZGRkJzM0RJQkJ4c1NycjhLZGl1UGNNbmV2bFRuckw0YWR3YWhHV3Q1?=
 =?utf-8?B?dEMybzY3UlpnQWwyUEM4M0N2MWFwZ2IwbEVxSmMwUUxsOE00YW5xSXB6a3V3?=
 =?utf-8?B?RTI4WVAzSnpXYUJKM0FTL3Vxa0l2ZTlNeG9lSGtwM3IySEgrSERKNGFHSGt3?=
 =?utf-8?B?Z256WVhSSFYxaHlhaXY3Q2RCMDEwZHgwV1FBWkg2eG1iWTNqbkNZekNGK3lt?=
 =?utf-8?B?ZTQrNUUrZitLWU9idWFkcnVOM1FsWjZINXh5UmJRSnNkNVdRSjlyL0hTdTlG?=
 =?utf-8?B?eGJ3VUVZL1pzbVlLdnhvS3RNWFZyOFZvZjlkMEt4SGpWWHZ4SzZVRHRPeVBi?=
 =?utf-8?B?UVNtdEo1Zy9rOUVpM0t6b3dNS3RuZmMvNXZxcitkNE9IMTgyQzRZVEJVbUUr?=
 =?utf-8?B?a3pLdXI0VEovTks3akt2MW95dXFycWk5THdiNHFRMnczOU54OXExZFhCSHZP?=
 =?utf-8?B?eWIxSmF1SjRKLzdvRlBPL2NnNG1mVVZtbzdiLytZc0xqZlJJWjN6RlpDcGpZ?=
 =?utf-8?B?RG9TaVZYUWpRNlRMNzU0eG1GM25LY2t2VjN6UlgxR09xMUxWemFReHNDOXFY?=
 =?utf-8?B?RERHYWgvUk1vVkFxeHZKQ0Y1eHgyUEoveWxWNEtpVEZ0cnpLVytrTzRhS1d0?=
 =?utf-8?B?YVhmd3dkbUhaYWhSOWRPRGt1WFdTRTR5SzBPRDZVKzZaSDFrcSt5dXZVWVRR?=
 =?utf-8?B?SE5TRS94UHZ3Z0I5aklnMGRYN3o3Tm43MFFHdTBNM3gvZVFNeFpmc0lqNHgv?=
 =?utf-8?B?aFhOcWpFcFJRTWdua2c0alJTRWoyRFFIVXVoZlVpcjZZT3gyY1MxeitadW5C?=
 =?utf-8?B?dWxzZUtOajhpRDJrTFJUOUFINkpIUU9vRGxDKzh2VjFRN2RrTDhjT3FSc0Jt?=
 =?utf-8?B?SG5aODhqNEVqci9qeW4xeDd1WGJMRlQ3SEpSdS9yNndHbWpqeEZ2ZlQ5VDlZ?=
 =?utf-8?B?ZUkyVzNhUjlwTkIwdEJEcCtzTmNiL3cwL005MGc4dzkvVXFma0JQZXN6TjFY?=
 =?utf-8?B?QlpHRU8vZnhOQWF3NFdLS3ErNW8vOHBWM2hhUWhPVXd0OVlJaXl4NmhYYXUr?=
 =?utf-8?B?T0tDaTBqTzRLdDZBMnFscktYNXpvcVZkN1hHTGFkYUFEZzBXQ1hQNWRjdFVU?=
 =?utf-8?B?T1QyUkpnY2lFelg4RllaTmZneXpwUFkzdWNndW52cGs0YWhYNENsVGR1cERI?=
 =?utf-8?B?QVZmVGtPRUs3TkJDWEpuclZoNVRYcmQ1OE5PQzdxcFR2UDR3QkZQZFZUYitK?=
 =?utf-8?B?cU96cCtMeVdndDhPTytjeW5aaFVKamNaa2ZldnVWSnN5TWNScC9lYnpCYm1P?=
 =?utf-8?B?ZGxNZFhJNmFSbUt2T3c1RDdpaHpuSnJ2aHdsMUlwRDlNQ2ZwTUcvL0JRYlZK?=
 =?utf-8?B?bHhHczdjblBkSGFWWkVrWmhodThmeC9Xbm8zNVZ3VmdNeTBWQVMwZUNubU9Y?=
 =?utf-8?B?RHNuZWRhUFdGODh2bVB0REh4NzJ5OUt2R1dsdDZVZVZYWkFJczJMejBoSDlV?=
 =?utf-8?B?VE10cXN2cnU3WHcwcFpIYys0Mm1XNlVEUWJJTFVVaVBYdkMxYkpBUVVQN1R4?=
 =?utf-8?B?WWlRd20zRE1CdG9NNk10bWxaOGhJYkY5ZVdRNDR0SWlzQXMrT3ZBZnFoL2JD?=
 =?utf-8?B?L212ZHhWZkdrZk9Cd0Y0V1pOSENUM29lbjJjTlVXT0NhZ0I1OGF0YTI3VVhD?=
 =?utf-8?B?UUxZVzdrQXV4djBRWWZyUEZMTFE4OFdVQktXM2hDSVhndzQxaDdJd0RDcEJk?=
 =?utf-8?B?a2QzQTNvczJGellMKzg3N21TRFFSOG1QbE15ZjJFbUlGYUJaQWFRaHE0M3gr?=
 =?utf-8?B?amNhenNhajRUa09Vczl0YUdySVFnbjArUEtVbitxVmJ5MFRzZkplcWxaRXF6?=
 =?utf-8?B?MEFibkdSTWFmM21ma0FpUnZWdk1jejdjcURyU0tIcjRPeDJDRnpNc25uSDFq?=
 =?utf-8?B?ZlE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bae96467-4b5d-4a74-0fbf-08da602bfdf5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2022 15:18:48.8465
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 /fsWlxRAhHSqdrguklxzq6h4D3l34Vki+2eiQ9IC6nLHfIRwCJ4exhyqK/cIMZv2r1j8X+ZQFuxoGM2ZKFkekdxc9K3xY2bdk2n366npRLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3797
X-Proofpoint-GUID: YWGiefI7zOLk04nbrBj1Va0Ht00dSLrg
X-Proofpoint-ORIG-GUID: YWGiefI7zOLk04nbrBj1Va0Ht00dSLrg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-07_12,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0
 mlxlogscore=834 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207070061
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 15:19:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57474

--------------bF8wmofbltMlEn0qLrRpvUJJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Saul Wold, Alexandre Belloni, 
Paulo Neves, Richard Purdie, Aryaman Gupta, Randy Macleod, Jate S

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *76 (Last week 73)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 44)

*AB Bugs: *51 (Last week 46)
--------------bF8wmofbltMlEn0qLrRpvUJJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Saul Wold,
        Alexandre Belloni, Paulo Neves, Richard Purdie, Aryaman Gupta,
        Randy Macleod, Jate S<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>76 (Last week
        73)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>51
      (Last week 46)<br>
    </div>
  </body>
</html>

--------------bF8wmofbltMlEn0qLrRpvUJJ--

