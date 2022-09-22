Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22399C6FA82
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 15:52:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.542.1663861928943056716
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 08:52:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TX6gEdzt;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=62648c4f6f=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 28MBmGST002867;
	Thu, 22 Sep 2022 08:51:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=EsTIJBYVe9vyss3X6bgdkRd5SySeZxKCCbWXWhcgxXM=;
 b=TX6gEdztLtJbhc7XwErXHbRvSUH8dmLoF9rUDBERAo2UahV15B6qFhjycvqcFFjEaJs5
 TAIg8r3GHO2wiZmd9lnz9gWE31Oy2aQWETDY5pyiWTuEKo/WVYECunozG+M8KTjfO1ik
 qW20W3atfjwV6AcNDRgfRceYtcH9eo11IGbY1Z3NnF7bQol6vKesLiORuDIjuxNF+Ews
 49BrrlX616F+ZCxM9Qvo9ymsNA5RCTBD5tseyuh5g8fzh77M+vm3SZ+hjmLSPtpvkwrW
 4yr4AijBSsUwzQ8NtC97L9irFqPDaFhisvpSKQPAy5BuW4KNJ6W1L8gyZRIlsNzKTNp8 7Q==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jn9h3vcmr-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Sep 2022 08:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNDjkDxiT/g4mXnQdC9fIrpEknSQdQCWLum9mWwxg+GXT97bKHYvT3Qz54BtIpWbTQh5/anfpYoNu8NlmLuLw79IOfvJ77VoA6VrhLIHx/kZaZFuDhaabWmIMUOCDJw3K0L1nbSiruskDu2BESg9RSqCjtAyqKsxxxkpDX5zUJ98u2rtxRYiSTuTfUnkuY/zNFyElPCS20RCqZFvg4RLVDnLJfliQKbKZ9pEMS/4LaSIeBcKWt1W76VVSoJKUzTjdDucFxsVhDc8l5xNm3J0KN5zQ8anvS/Jx+ZvcxNgZmRv7kHHfJKz0jqVDhvi6gGN91BWkY2Zwgd7TANLCFCs1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EsTIJBYVe9vyss3X6bgdkRd5SySeZxKCCbWXWhcgxXM=;
 b=R23gmovaR61v28xk8k8QNAWXYVO5FSYRwQVHBMMb+VWcxZH6pIyXaQ+m9oJphu4O3oHTLai2xxrrZKG6c9nn/dcUm43wwZWYbzvOIaMASuXXMskOLy9qjIsAjnybbuxIMX4d5yXQQR3bp863ieww6oRVOV54NyilNf/jxhb97RQ9tLWSQEActELAdVOxSeb2upe0BfwNjztyfd+F1idS+YnfUgvtZ8kmZpif8FwVOV3NUmleXm6RoDFgV9IDnrNwcsHQlEx7DNaRDrqMySE3VnAh/BuCl4PZ2Ypwy4lv6DDRxk8WpjyRxfIvWfFvMmaR4RKUMytM5dLTx3YWTdfOHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CY8PR11MB7267.namprd11.prod.outlook.com (2603:10b6:930:9a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.16; Thu, 22 Sep 2022 15:51:46 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336%2]) with mapi id 15.20.5654.017; Thu, 22 Sep 2022
 15:51:46 +0000
Content-Type: multipart/alternative;
 boundary="------------1L9nR9gS0VorRHUBdtSEdEPs"
Message-ID: <2be11a5a-9e38-36ec-6b36-9f1c82282049@windriver.com>
Date: Thu, 22 Sep 2022 11:51:41 -0400
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
X-ClientProxiedBy: YT2PR01CA0013.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:38::18) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CY8PR11MB7267:EE_
X-MS-Office365-Filtering-Correlation-Id: bc6003b9-2b1f-4c25-5fe2-08da9cb259a3
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t9vsJm872eSUejTnSZxSxUmVeGzlljG9aHWBPtOeFQGaJkqCHwTLepfFPH9vHC4uMAnwndOQE5UYpGWhoapg9irVQMaNjQHyorqVlK80/ltXw4nh5KV99nHqFpdUr3ZToE/8M/SG5pw3O/4IGH2mrB9tFX1hjSNco6/M/CBAIHsDyo1icQ9zu1o1lA/+CL4N60t9iMmW5HDQAOKRyGI+U0/9uDx5RXYh1AjZg2MsN1ZrM0FseZDjuTb00SIlC42jjYufZuSeS97nvQR1mKeH9l/9RWlXGpMVak0RFMjYTvHn+t1+9juLt261dr6MezC+HTrQV7dwmrDD7td4SqbOCPNXRT1DBMJoIqofM/tJSyd279ttLZIaJJR0yiMfftIiDcv7wXZgcqwgz6ZSR/leL1vS+OM/DaRz4qIY192KDuuul6FWL1GL/1iUf4ujgJ+7l0B7vSOzGr3DBrzTPu8yg8pW55YmQXWbkAB/Dvxzq8LBRXBY8/197ZTJy2MY2IIw9xMXPCIu91Sb25e0m0KnymeAtRKBgE1rfY59q8ITwxaaIKzOayvhy4De5qcQ64R2FhwGX3e3Qui4IevaIKENvQOVhhvCVgDUhAkAcsLhyzbri+DX/gKkghmvI/Ew1Qgw3mWuEsQQBkah6r0004y8jJpR//9IidXVUwgLLlCD+iKSTaqxPzcNs6wM+I/4dxFprIX9vwkR/EswiFeBh0kJzIgb/cDXxJYeIsHH1v1Z5rXymI8LOQm6koHssVtW43+9OISJnS9n5jveCtmTNldksy1dS0X90iIWKfSldEWuZa3m0qxMC+iLUq1D9mi4Nqq3EiYBWkaJxZsdyGjol7fYTg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(366004)(396003)(39850400004)(451199015)(6486002)(966005)(478600001)(4326008)(31696002)(36756003)(7416002)(5660300002)(41300700001)(316002)(8676002)(66946007)(54906003)(8936002)(6916009)(66556008)(66476007)(38100700002)(26005)(166002)(6512007)(2616005)(186003)(33964004)(6666004)(6506007)(2906002)(86362001)(31686004)(44832011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UExkRzBDckM4ZGV4dit2U25QeWg1VWUza3FTdFZsY3l0Qk9TUzhubVdtRTQw?=
 =?utf-8?B?TWY0NUxqTm1VNyt1bHFaVklKeWppNWthbkdCUmRKWW1XZE43b3IxNDJyMXNr?=
 =?utf-8?B?SkVDdEVCSEJTM1dsTzFBYVdrYUZtc3hVd1dkRVlmNGVIOHFwdUF1QTJRK0JK?=
 =?utf-8?B?LytiRUlPUE5tZ3lyUll1cFNJSHAwcnNIOXgrQllCaC9sUWNRZEJKZHg2RGpW?=
 =?utf-8?B?dGpHN2NtdjZ1U0xFZS8waVdYaHI5VldXVUl2QzF4SlFVY0NSVHR4emhJS1JK?=
 =?utf-8?B?Q2dBZm8wNW93ejlURitCanY0NE4zT2xvc3NiK2FlRTVWSkEzMzloc2kxWmVL?=
 =?utf-8?B?UDlhd2d5OGdQMUZuU3RWZGRaaFNzVFp4SU9VNVd5YWgzcXh6blJENmpibWdM?=
 =?utf-8?B?SXN3RHBwcHdzWi80b21OVXYzdThLbTJhMEREd1BPSzBuTjkxbEJ1Ti85dmxF?=
 =?utf-8?B?eUZLTGgyTzlERjhpYzkzWGNRQmpvSUNJSXFXSGtyRXNiMXNUTFBnWHhodE5I?=
 =?utf-8?B?MWkwanFDWVp0OUFJU1MycWw3bEt1M3I2ZXppMk1WZkJXbVZLRldvR0lKU21W?=
 =?utf-8?B?b0dVQ1hOTVFhc1pZaXk3YXAwRkM0WEdnRC93bnNmWGM4YkpkMzV5VmNsM293?=
 =?utf-8?B?bHFJdWEvWktrcHYwWFpYa2dhVHo4WERtK1Y5Q1d4aEt5WTUzMWxBWThjRXhN?=
 =?utf-8?B?RGk5NnMrTkRtcTU5VGlnMnBybWlJM3hFa2NtYjB0QVIzem5pS0NpQ1BMc1hH?=
 =?utf-8?B?RnJrMUFkSjBvZmZYRnFKV0tWcDhpWTlaZ1hUaG1RdHFHOVlwNCtQTFdDbXJM?=
 =?utf-8?B?dTZka3k0Rm45MW1nWUtMWGFUb2lqSXQ2S3dpMXZ1QlBFYTk2UEZIRVhod2E4?=
 =?utf-8?B?eUh5dm5xaE8vcFFNZks0S2ZzcmRCcDN0UUVlUmJQMHI3UUx0SjdaSXJTTjAy?=
 =?utf-8?B?RWs0UmxDM1ZxVUNaWElzdjBtVVgxcVJIN0JSZW9vRGUzQzJoNUNyOWZncG5M?=
 =?utf-8?B?cnBaM0xobGFmNHlYcGJrY3EveXovYzAwck1wZGVqOTlMNHlVeVJkZFp1QXlV?=
 =?utf-8?B?bzlqUW5uWlBLU3ZVZktqdVZVVG5kNkxyb1RnMGlTamtGL2hyaTRXbmdxMU5x?=
 =?utf-8?B?RVpUekE0U1pTcFN1QTNPaHZXU3dXdEdESW5HL0pzWnlaNmlXRForeHpMTVIx?=
 =?utf-8?B?bHYyNHJ4N1Z3OGFMNS96YUMvcWwxNkw1V21Bazd2NzdvdXBWUEl2ZjBreDF5?=
 =?utf-8?B?dWJnRUw0MVJqV0VEMysyUUV4cUdjNjBaVDdra3pMNHkvTWhkdDBhWWc5YUZR?=
 =?utf-8?B?TW9SMFJhSUtjbUoxMUpUWXVzdXpCN09BcGVjcWlxRTdRRDRoRHBUcm9MQ1BX?=
 =?utf-8?B?Q3Bqcm1WcFhWbUJmQjJpZFpHaDdQQjg0OUs5QXY4TUY0WncyM3I5U2tSMDBB?=
 =?utf-8?B?TG9NRU9NTjEzTHhFTXFrSUV4TlNnS05PSnhUUkgzMmV6TVFGUmU3SjUyS0Jn?=
 =?utf-8?B?MnJBTnVackc4Zzg2VGFmUUw4dU5rNjk3R0xjZ3puemt1T2xRbzBXOEtCRjFH?=
 =?utf-8?B?Y2pVcmQ3NmZpMml5TmxaRDdLRGlNa1I0elM3Mkczdkk5a2g5OWg0d2pOV3Nl?=
 =?utf-8?B?UkpNVlJFc2l3a0pGODBrTXdMajVNeTd6cERvdDBTTGcrVXA5VTBoekI3cGRH?=
 =?utf-8?B?dVR0MVJjMlNwUmRnVjR4Q0lJaXdxNndPMTE2bDJuNUNPSUJLdTFCZm9taDBC?=
 =?utf-8?B?TW9vOGJQWTdBdXpGWGpBeHRLb0IyUlYvNEVDTVh5ZjFHOUxsLzVFeEJ3RFdv?=
 =?utf-8?B?TmFuVkpHamJQUFFxYmxYdlg5Y2NTM0FCSWFmSy9Id0piZ2dMVXNST3BTNzUr?=
 =?utf-8?B?Uy80WmVKclJuSlBXY2JJVDgvZ3dXTjd3OWVaVnhIdVkyczlmTk1QUDNENWpv?=
 =?utf-8?B?VmY4TElmM25IL012RVpTZDJrR1pCQURqeHBFNlZLWjhwZWtPckdHL2FHRHlC?=
 =?utf-8?B?dXkrWEliT2VFeWxCRm13SzFmTzlUOHI1V1FEN2RKeDg3cHdMWHhQR0drY0FE?=
 =?utf-8?B?SjltTGlIWUhrRU05T3FhMzFSbVZuZ3lwUjZaaTh3Wkl5bW80WVNGYWxNa0Jl?=
 =?utf-8?B?U284dGRDajBrbHVaRjdFRDFGRWhNbjRDS25JZkpHanVHZHZPS1lMOTRoZ3d3?=
 =?utf-8?B?S3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bc6003b9-2b1f-4c25-5fe2-08da9cb259a3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 15:51:46.5211
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 TNiyBsrvzxchH56ECKMsQ7y1TFB1vzGV8R3EQSOgRUeuqiA93+GyWgErxdZRQT9FlfjMHwctDfIWpdMtT1YB/AgMNBclmmFiw60ZfcTIKJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7267
X-Proofpoint-GUID: UVihRxMFCOBIvQZ4FqDK0zKIb3qBySDO
X-Proofpoint-ORIG-GUID: UVihRxMFCOBIvQZ4FqDK0zKIb3qBySDO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-22_08,2022-09-22_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0
 phishscore=0 bulkscore=0 mlxlogscore=888 spamscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209220105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 15:52:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58135

--------------1L9nR9gS0VorRHUBdtSEdEPs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Richard Purdie, Alexandre 
Belloni, Stephen Jolley, Ross Burton, Saul Wold, Tim Orling, Pavel 
Zhukov, Alexandre Belloni

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *27 (Last week 27)

*Medium+ 4.2 Unassigned Enhancements/Bugs: *8 (Last week 8)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 43)

*AB Bugs: *52 (Last week 57)
--------------1L9nR9gS0VorRHUBdtSEdEPs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Richard Purdie,
        Alexandre Belloni, Stephen Jolley, Ross Burton, Saul Wold, Tim
        Orling, Pavel Zhukov, Alexandre Belloni<br>
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
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>27 (Last week
        27)</p>
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>8 (Last week
        8) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>52
      (Last week 57)<br>
    </div>
  </body>
</html>

--------------1L9nR9gS0VorRHUBdtSEdEPs--

