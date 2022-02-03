Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 395C5C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 16:32:06 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.11530.1643905925436593375
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 08:32:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WalzUlU1;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=903308b88c=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 213DOgYr011474;
	Thu, 3 Feb 2022 16:31:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=5EGvzg8zUWVpyKtd8p7ZAqW+AGTl/blEYx69gqLGxAg=;
 b=WalzUlU1yrVTCMjSyxjJGJZ+Z7BulHRGBIWtqKVFChsH0nDFfydS9pjIao8e0A9luK1o
 fEy2GmZmlAHM8iobS61dvTdTWMsYy+wz4mKEMu3uM/UvVWH/NsGo3jykIQqDnLCqFdHC
 3xLcToY4Es99i90p5vOoezZrZvL2d7hxvOXzRmvsFDsV1I8AWozoGgGtBIIalDp4NgIY
 DDbT0KhGHT3Is3zfgQBzEYJz7bE0Oc7jueHeS8aSvT5JoMzGhUStwo/9Qf7s9oOxNqxm
 L+f7XWqSFhnGwgg4GKkkF14jsC3H28dvdD/DK6/Nrcx/GeYe3L9qfZPIWZET9sFhT2+2 aA==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2041.outbound.protection.outlook.com [104.47.73.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e03e78hgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Feb 2022 16:31:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NxJlMR9m7wgVaIHO/cw/rOq3fkPGTIEtIGv0+8hOrLFbZ4zmpjlMVvNqmUuuvZXYMp8D5zvRqQSyPWlzwLMUPuSO0ABVwiMm/44oHjLd8Gom4JSocQ2n6MaPRUrYcuBL3gj6M+as8Sks71TW++NhfW4xYsq1tesqewh3vSLfvG8YOCssFeLVkEqJUxed8FpmK0VPKBUgPhR8QrVhRaoXauSZQx2PvyM92VB/xXf4okehw4guhkSVVNqHmep7s7nVVbTb5KrJUvSQR6Yz0uuouyuBSoHdWUm3sx5Fikkj2xC/XrvL8RS+7863Y3Q0ue+ZrIoU86iK7wGV/CnTiMxzgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5EGvzg8zUWVpyKtd8p7ZAqW+AGTl/blEYx69gqLGxAg=;
 b=Q+DRLCpHk1pFg12U+amsG4YcvIN/gNEiJWtdvFTB/Tfdm+fkcOVdnmEDi5lrH3/Klgu+2143Jup3+Wf5q9y/41M/J+ORcXFuPBl/xBbRbw6A3dmtYiVKzp8C6vQtpZOEPq66LLDfEvfkn8joy7SE1lD2RXAFPnI2xKFxwfa1yYQZdsDTZ9Py7+Ksz/x9mDKWlHJefdFT9YoD+R81WgPgVfVclW5U/mMhgLwq0myWCmoWcQC3diySZ42S7cQkAolMYpY2l52t/3dNiVSFzItQ0jqaFSPifa0sCE9p/pcN71fSAckt6MNeUPsLUMvPM8XR6XhJapoyWNfa7qofH60XYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by CY4PR11MB1367.namprd11.prod.outlook.com (2603:10b6:903:2d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 16:31:43 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1%3]) with mapi id 15.20.4951.014; Thu, 3 Feb 2022
 16:31:43 +0000
Content-Type: multipart/alternative;
 boundary="------------kA87axudev1PJZGHS4s4E1e7"
Message-ID: <fcc6caaa-0415-08ba-c5c7-8d446ad06f95@windriver.com>
Date: Thu, 3 Feb 2022 11:31:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 2/3/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        Steve Sakoman <steve@sakoman.com>,
        Bruce Ashfield
 <bruce.ashfield@gmail.com>, tim.orling@konsulko.com,
        daiane.angolini@foundries.io, "Wold, Saul" <saul.wold@windriver.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        alexandre.belloni@bootlin.com,
        Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>,
        Andrei Gherzan <andrei.gherzan@huawei.com>, pavel.zhukov@huawei.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0302.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:6d::17) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db2825d5-bdcc-4a14-5aae-08d9e732a9bd
X-MS-TrafficTypeDiagnostic: CY4PR11MB1367:EE_
X-Microsoft-Antispam-PRVS: 
	<CY4PR11MB13675B1D55F43968E877DA249F289@CY4PR11MB1367.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a7KF7kNAea1kDXRskZn6Sylk3ll/6roID7pYRo6ZZPTcP5LRFKuZwY2ypo+OOR9kt7qderPowAnPU/LHmhoEZx9FztgIwpu1wv0YXWcFtDUcnyjatK9DdHzhCaogR59EO0+16uN9ehyInpKbqTEOSZ32idzl6eShdtN8I5HmAn0TKahTXpqG5mEy6u7ZZzIDshNeZWxpDEsbogtmj80d9DXTk9cEyApI845a2PJ2Mcn+uTF+wtweFV3i2PpyZ+NcBcTcW/92hi2kqgsEtOJJBqCReu3DLtAHLywOmk60p+FzccT/x/o99JYRuwpwKmmjKFFTW1EvVbiPiSdwiy7oJ8eBybtARTWXEVjhsDuOrpxOGFil2MOlUFBbdx3yi4nZscAsU292YwE/ah4ZoDpuXsVhScdFCeM8t+ny7HCo7bXC5VigKphHunqzsH3fztSRWJ95NekgRYsXFBj8Koztd3c6/ZxAGx5pYf8roAzqtnKLva1WxoGv3BZrTWYlIBNr+g2OLSjznNX9WWc2OwjRBVSOjOuwf/ARN18V+9NFzq7Z8l0bTBNUoQaZFTASBNvhKIV9e4disS5fEalcmdpIDoFWRz3zVbqfixpXG92tdyfX6K7pK6D6KjyY3fHPOVI2yeLuSfrGdOEnw5vWU2nMMrhAxbmOHmE+5Dot5f0XT0pcYOgFASIMGLZppfum5bb3pQ/v2fT8ZqboNY0k9w1v3uaUidfRljNXxOvBypIZNDNGutCbVw+y9/PbTD0xiMd6zYf15ypx4oI1AAaGtkgD/uWbCge9CpzWDlXAmx5V2Ouj8TA+7wVUK9n70MC48stt
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6916009)(38100700002)(54906003)(31686004)(2906002)(36756003)(7416002)(5660300002)(166002)(83380400001)(8936002)(4326008)(2616005)(508600001)(6512007)(186003)(8676002)(6506007)(6486002)(6666004)(44832011)(966005)(86362001)(316002)(66476007)(66946007)(66556008)(31696002)(33964004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V2dlRGthSUlHUGFQVDhjSEVVOXhIZDhBSjFLZHhVbWtPNkNFdEViNkVBZGRs?=
 =?utf-8?B?Y0w3ajJhS3docU96Z0o0TFY3Umo3N24vcVAvcE80cDkwb2tYVy9ycUw1dGlu?=
 =?utf-8?B?enRxdVM0NkZtY3dJbG0rbFZYSmFhb3BPWnpZWGVyVnpUYnkxNzlwdURxR0pT?=
 =?utf-8?B?bTk1L0hmMEt2S1hnMjhKbFpyS0tnL2JUSTZzdzByRUtvdUkyR3ErSmxaNEx4?=
 =?utf-8?B?enN2M0FGTFc3Z2d3SWdZL0hOWmxTMlMvU3BEWU9sMFU4ZUZMR0V1NlEwSGRU?=
 =?utf-8?B?MjRtWFJVK2lTRDhGcDJ1TmttVWJMRHJwQ2RtdXNCemkxcVhydFpXNkU1dlh3?=
 =?utf-8?B?VGNVdXUzK2pUbGd3aGJVbE9CdWNtTkdTT2ZRR3RSQyt4ZXlIN2NVZG5BeWtD?=
 =?utf-8?B?M0s5bThoSkk2Y1RXbnFlcVlKMlFXY2pnYmFSbWxhMDUzbGVhaDBjcjJUQ253?=
 =?utf-8?B?N3lJeEVLV2Y3VTQyRVhWUlZzK284OEJzUUd4aWdDbFdTY0wvRmtqTXFPcStK?=
 =?utf-8?B?dEpKOUZ0YWsxeFNlZVdIalJGLzRqTHRtWG5EdXlvQlVmUmdwM2hzcHI1RFdY?=
 =?utf-8?B?TTNuNjZBdkxtYTFYdHZJNXFyS21Gb2haY0lLK24wdlJXQ1QzWk1Hek5BU2Y3?=
 =?utf-8?B?djRaRTVYYnRodERBTTFIZzExNTlIdWI1T3FNSytYUk1nYlNWaUtKWU9DcGF1?=
 =?utf-8?B?Ui8xcEpSdjYvcmVuQXJEbjNJRW5wcXk2eG5QVFJxbXVjNHhVTzU0SHUzYzI2?=
 =?utf-8?B?SVdwZ0ltb1hxMHI0OWhmRW9CRy95UmV0Umh6ZWhTYmZGQnNlUEJqMHlqeG9s?=
 =?utf-8?B?NFlNaTllSmJHYkZOaUxaOHREVE1ua1poamRmNElBNVF5WW5TaVZ3TzB2VkNQ?=
 =?utf-8?B?QTlVMXEvbS80VUpKMXRvUWJWSWNod2tyd3JDNWtJUml3TmpESnNRT3kzcGFP?=
 =?utf-8?B?QktlZmlRYVdUTVM2dGRIMXV6d2hqN05LL1R0dlNUMEVEUms3emp1dU80elJX?=
 =?utf-8?B?NGRxZzRVdndqT04zNmQzODA5VmJXTXNVVDlyRmp3R2ZVRFRKN3VpanZkaHJk?=
 =?utf-8?B?VUNmVGtlU3YxMmZIdEc0Y3VrK0twcjhIdndsYTRkTnl1akZTZldEYU1ZMFpH?=
 =?utf-8?B?QWNQcjN5ZUhpTHI3ajVmeDhPUFJyOXJxZVo0cndOMml3Ym5OWGhlb3ErdWZr?=
 =?utf-8?B?ZGh2b2MrZHRINWFGcUcweG0yVG9tYzZjUFJrTEcveG0yR1JGRmpYbUFBRWpl?=
 =?utf-8?B?TjJEdG1lTXVXZWRIaDZoem9MN0gyS0tDeENJR0xtd3l6Mno0VDdOWklsTFBm?=
 =?utf-8?B?Z1UzcUFFYTFLZi92TXpGQ3E2amlMVk9KL0RGRkV6b0lNKzhHOEhLbGR5akxx?=
 =?utf-8?B?b0NnbmhLRHdGZGJCOHpyYlJzMVVNKzdoa1ZOYzNzUmp2c2tBa01VNnVDa0tn?=
 =?utf-8?B?OXpBTlhrcnpTbGVobFB0WU5MVndwZ1BhejVtT2U1ekNXNG92QlhuTnZneVQr?=
 =?utf-8?B?TVlmMjgrUkcxN2tGVG9yS250MUV0T0JaUlE0ZXFPYVFFdEQ0N2JFTDlYUWwx?=
 =?utf-8?B?WVlTWTBMRlA5VlRjZE5YWEJMbVZ6a1Q2TENTSEVyYzd4V3VYRWExZ2JkQmFj?=
 =?utf-8?B?L0ZRZzFwOVpITVY3M0tocUhveWlEZjlVTDF1ZVd6TVIxbDRDOHdUV0FmYkJ6?=
 =?utf-8?B?SnBuaDZPWngrRGpPTldOTlVtTU5jUERpV3U0TWxwU0ZQUDNRZFBJeVlhQ2VG?=
 =?utf-8?B?cEt5Nk5pRFVaRDE5cHh5UnYrWDB0enpTZFdYc2ZjeGt0LzROeDVmWE9DcnZZ?=
 =?utf-8?B?cndFQlhpR2lqV251UzVUTlpER2JiM2NnNUgyZCt3TXFPT1p5aDYxRUI3WXZu?=
 =?utf-8?B?Q2xBVm5icFU2RVVzVGFMSjkrM1FZQWNjUDlYNXFMVkFwcnBkVVBPQTdiUG9h?=
 =?utf-8?B?SEx1MU1lM0IxQ0UyTDc1Nk5pV1ZtUEQvSFRweHg5UWpqSVFweEFkN3pxeHkz?=
 =?utf-8?B?bkQ0cEQ2N3R6dGwwaitlb2s3VEI3aHpoRUQrdVcrUHl0cW1iU1VPYTg1NldE?=
 =?utf-8?B?dG84VXZFK1BNaVlUYW1uUmpQV1JkNC9JRjNYczY4SythOU1zU1J2NE5Namd5?=
 =?utf-8?B?Vnd4NXhIakRNZzZjOTVxaHlFTkFCaHYxMmRCY1ovTXU4ZzQrbUloVFdLL0w4?=
 =?utf-8?B?d3pYQUovZGpQUU9mYVk0YjZZYXVyUGJJb2hOWnM1bDhQT3AyblJZWHdxdTUz?=
 =?utf-8?B?dzNmZnNxQWVsVlNreG5lZGZoZ0FGdVBLWUluRkJMaTlhYUUzd3ViM3FrQndO?=
 =?utf-8?Q?hqoqAE7zECUcDfDh2m?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 db2825d5-bdcc-4a14-5aae-08d9e732a9bd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2022 16:31:43.3494
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 eWYOC1F4jK5UHqjV1I8BqwBwpbm+//k+uDYq+3DN3kloJPIOPRYT+LxUWxCmpiDyThc3by4sj4vShLBtJiM90ZZdFm9hz81SKeHCVVi8c8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1367
X-Proofpoint-GUID: ti2oNfMe2wn9g0nYfa8-GVTlHfYneR0w
X-Proofpoint-ORIG-GUID: ti2oNfMe2wn9g0nYfa8-GVTlHfYneR0w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-03_05,2022-02-03_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 spamscore=0
 malwarescore=0 adultscore=0 mlxlogscore=842 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202030099
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 16:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56060

--------------kA87axudev1PJZGHS4s4E1e7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alejandro, Alexandre, Andrei, Armin, Bruce, Daiane, 
Michael, Pavel, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Armin/Bruce/Trevor/Saul to move Old Milestone bugs to M3 or later
**


*Notes:*

- ~50% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD

*Medium+ 3.5 Unassigned Enhancements/Bugs: *76 (Last week 76)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)

*AB Bugs: *73 (Last week 76)
--------------kA87axudev1PJZGHS4s4E1e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alejandro, Alexandre, Andrei, Armin, Bruce,
        Daiane, Michael, Pavel, Randy, Richard, Saul, Stephen, Steve,
        Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Armin/Bruce/Trevor/Saul to move Old Milestone bugs to M3 or
        later<br>
        <b></b></p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~50% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>76 (Last week
        76)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>73
      (Last week 76)<br>
    </div>
  </body>
</html>
--------------kA87axudev1PJZGHS4s4E1e7--

