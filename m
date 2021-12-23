Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EC1C433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Dec 2021 16:18:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.34860.1640276316066328613
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 08:18:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=d111e63N;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7991ac76d5=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BNGE0t7017326;
	Thu, 23 Dec 2021 08:18:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=pUceAdR2hlraODhP5ebN19qgPIuq8GrVKcbZQVTP1i8=;
 b=d111e63NXEeI19xZGRQzBlyJRBFUtWsPvJAjx6iclvoWClx7KZ9UwOTjiPvysBbYfbwY
 FY4ZIKNKTGt7p680kjOEHUDzNtnngEXhLibFOnaV4GZYT/Fau+B4bv0YN7G2J8Qwc05V
 lhU5Mb02uiQG3+fjXbxDzjaUIbGpZ2TRE9pnmuYlKSJeiGaZ6Esn5PGFgK9eoEah2f+E
 DZim4YpO5tEyyCQ2hhuwzWmRVJsMqx6qZiappARq0ztET4RD8OqE9NV+EteDrwQNQrT3
 SdMYBIXQtMhR+Fl2wiKshlg6jBE2B0OE3wC9FeNYkrmsn91Pvm9qIA1UcnlicEGK+4li kQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d3v9ph79j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Dec 2021 08:18:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fs2LIOp0PEZBz71uU5Cvx9V7UHPRsZ/qM0I/JIFETfF8hvhmEO7qm2wI6NgC2pbcPmdhdX01quXj5AIykjhB9BAe4WL2hmpLufTu3CmRINCULAQd0QbCXY00PQYHNObl6wj0m7DuU0r+lAIyxTVGaSR0UsS3x477AzEFA+M2SvyC5GJPRRCclph4oESMXZP00tYtxt23y7KWXRek3JrtTEXeaFFFyTyFtpGK8uFWGHy8+kVCguUJ7U3r9Ir6vl6p4s8VuIh/pycUGQy0n/eOubig6MI5mJrlbOfvYuAFzKZdbdZ+tCkhKyxvXyKGn3xXoE6JYkL7b5F1j+lnXRcY/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUceAdR2hlraODhP5ebN19qgPIuq8GrVKcbZQVTP1i8=;
 b=i9AbflBpdFVraaUVMmWqhOWjM7Jjub1EkL/vwnw1Lwx7sexxqBXNOE4bj3xEaK/LzMPuIRRWK1STkNfq1TfU0UcFwafI7LkAuQG+ELD0XBKs2WDKkoOmF8A5hIaVmTybWnxYNlEKFGfcTHS9OOkiZgDJJRouXuY9EcklOeyr9Q+yltTVEWBbPQqBaK+HqjXCg4kpyweVDQFQ0XcRTalKIuRFpWfvHjWA/+dSol4BxABJirUyAUoZEHhOrGyPvwQWKTTRfp4LPF6EtRPwWOcvgAeDq/aGiLSV3+d6PuIkIXGFww+mEEdNKgGOMtqMwA5rKa/fo4Sal6FXdcNXg3iPCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4150.namprd11.prod.outlook.com (2603:10b6:a03:190::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Thu, 23 Dec
 2021 16:18:30 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::2c56:bbbb:8def:1f37]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::2c56:bbbb:8def:1f37%5]) with mapi id 15.20.4823.019; Thu, 23 Dec 2021
 16:18:30 +0000
Content-Type: multipart/alternative;
 boundary="------------tB4Yq5ruYKnNI4AiUTumL0JI"
Message-ID: <b767a014-c8de-34e2-64a6-16bf466c1059@windriver.com>
Date: Thu, 23 Dec 2021 11:18:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 12/23/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>
Content-Language: en-US
X-ClientProxiedBy: BLAPR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:208:32b::20) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18607cbe-b1fd-4c01-8149-08d9c62fdb96
X-MS-TrafficTypeDiagnostic: BY5PR11MB4150:EE_
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB4150A47F6ADCDBB8F5CBAA9A9F7E9@BY5PR11MB4150.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QOw/dkPoOE6VEr17xoppzgCcQD8TeIoThtGqm4VD0GH8EVCurV4AR4CMsWBtjNnrQAKb7dot0S7xALrp4gu9C2PHcIQNh+jhRGGBsVRX8QKP76KxMZqBAjJ43iYO8bqQMwssd5KpylX0FwPxYaBFXrDc2pVbLBOUS7eY0fonX1IzQXjuCfDbK5Geav1etLRV0TkavWGSOwArDk89eTM+nOSJ3IXL13UZmcPN0odJaa08BZwYA84uFPFdW5EUI8XKqdKslUTLbmHg3QsD5CTiXYf1q4lCEiEbORDGOgyFSyHmRSes7zrBLuu4TsknuKRMtv69HTj2kAlYzXLmmRua0yn5H5uROZqaD4I2UEfSh+W2K45bxS9mUQF6SKKkBktTbDqxvgHm1FcgoDITM0XBNyhP3Ll2MeKvkqXye+JrjJenhjqmreHA0Y4hwM4fa0DtpJ1K2scWZ5HDJ+X5YyzFMSYl5OaVkaJtBSmyxRqflSXoX/WHHqLIAglxd79NJp/Xsdho1K3bFbYc/4FgzJj/eBSQhHgXSUacQrOHOt1CoFS/RgPYcKqyQYjTOcAnnNDfwTkQqx4ysgsXbBIE5/cz65HW95VxKrUiAElAijnn3CBFIolhLleCPvk7DTZcrxTKmtWZTGFAtrqK9fEjkhjDfJZw03aNAU0BgEqAti/12H0kgNGW5T2ALawRsFfSPdqQyyeqAkn33BxAJNRHBs6cW5cha7a9oYYsQh/5xbMZ7cpiq4epQsM+Yrlg5pJpEKfsqi4De+6kvhGvsGdWtTv+UYsfrsC2KjEBiYazhTIxm7nblhaC5bnua5W3gtvyFM9W
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(86362001)(966005)(6916009)(508600001)(31696002)(6512007)(6486002)(38100700002)(54906003)(186003)(166002)(8936002)(107886003)(36756003)(4326008)(33964004)(44832011)(316002)(6666004)(2906002)(8676002)(66946007)(66476007)(66556008)(2616005)(31686004)(5660300002)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T2xOazFQN3ZSdGNuSnNsWnhtT1dDejE4eTVjclJRdTNxbWFqVlhBYXY3V0xP?=
 =?utf-8?B?b3hlN0hLTVVCVXNSQVJ2eUhWQlFWNURsM1hKd0NIN0NMK3NiZWo5VWVVTWhk?=
 =?utf-8?B?cUZ5MElLLzh2YS9Dd2RxZlRzYjZmQkhDZ0x3ODZzZGxiTXAwazVpaW55bEVt?=
 =?utf-8?B?ZUtIVWhobW5ldFdneFdQWXo1OFpMZXlPdlQxL3FuanpwUHNlTGN0N2lGbllB?=
 =?utf-8?B?U2tKTW45QlNua3VkbW1pRitDdzZraldiL1F2dzhvSytqTGRKVDhGYVM0V09C?=
 =?utf-8?B?bTRYUTkrc1oyNXdoUVhucmJldUNpSzZiQTJlNzl6YUF5K2o2UjBMeVVDSGRJ?=
 =?utf-8?B?SU1UVGxsaUVBZStZT1FRVUlGRXY3OFgzS1REWTRmaTY5WGE2cVpKb0hTSlNj?=
 =?utf-8?B?SDBtcXQxSkxaYnJyZ0g0MU96WU53b1ZhdlVNK2ZzWUZOQ3ZJOHJlTDhlMGR0?=
 =?utf-8?B?QXdwVVo0OEw1MXk0VndvN0FPbXdQR1h6eFZJWmVQb1FucFJaMzBGcUNmajZZ?=
 =?utf-8?B?QnNTYk55eDZyWUU2SFE1RDl4NHI5bEdnMFNKUnpqWld1Qmg3WXQveUtzUkU3?=
 =?utf-8?B?NzhnMEZMVXV6QnN4eW1MN0Y3bmFjU05aa3I1RTdOb0Z1ZFpxN2hxRG5kK0JL?=
 =?utf-8?B?WkRjejdJaW92VVVwc3dJVWZSUXpubi9tL29yeXhEaEUvdnlDcUVTdnRMeC9R?=
 =?utf-8?B?ZUpxcHRQSGU1MlRzNVRvczRxUTNtTmlOaDI3OXY2djVwRkw3U1QzcjZnbkhF?=
 =?utf-8?B?dU94R1ZYWERnYVBabXRaalBPSHM4a1NoZjVBdHVIRndIQUJnb1BIQ0g3anVk?=
 =?utf-8?B?cmVWOHo4Nkk3TnZZeEc4d0h4ZW8wYkIzSWVjVFJoWTF4NzcyWkIrOWwza3VY?=
 =?utf-8?B?TDZ0dVRuV3dGNHpYV0JaUTZteW8zWE1FWktOQUUwSUtmTlQvNmxWYjNmTmxU?=
 =?utf-8?B?QTQ3R0psLzF0cytXYXNKb3FubG81cklrQU5tUUFEUXZBREZXdllCNEM1cHBG?=
 =?utf-8?B?MlRMeml5WHhUM1d3bU1nL0VhY1dicWJIUlB4K29neVdPeGhmUFkwa0dERk5l?=
 =?utf-8?B?bGlDbnU5UTRNQTZyMU9uMXNBUzNueWh5bTIvbklGVWdCUFFWOFBQS3VtT3k5?=
 =?utf-8?B?SGZpSHpVY1FNV2M1ZThVb2JhMUlTcmtVeGo5MEFaMlJsSXlTQTg3ZkMzM3RT?=
 =?utf-8?B?a25WdGhpZlc5VXU1dFRwM0x1a0hJd0JUN1paeGNPSlcrZVc0azN2eVM0bUFX?=
 =?utf-8?B?MU1BT1BMZVVFUzc2YXViNU5nVVdqSUYzY3JxdmNQRnFIWUVKU3RMUWl2Mm5E?=
 =?utf-8?B?cUdpZVV2c0xMdisrb3VJVnJFVjQ0VFJQYy8vYUd0T0tSOVE2MHU0RCtjVWh3?=
 =?utf-8?B?OUpPb1FKb2FKYUo2WWdPVW04b3ByQmh4TzJLMzJJVC9xd3NWVnhSZlhPdVh6?=
 =?utf-8?B?cWFBSTdZRnpkcm1PR04rb1Q3RFUvUmdEMXVIQ1Vwd0FySkQ1bXR1SUZNUWZ3?=
 =?utf-8?B?R015MUZMRHBCaTdhVzgvMmwxcFNoS1BaZHRCUStXYi9zcTVGdWhzd0JwQXBH?=
 =?utf-8?B?Rjl1NWJjaCttUVNBVUhoTE5obFUrNENhRHd1S2xkZk90dDZqUmhZZHArbC84?=
 =?utf-8?B?V2QrTmpFYWJJZUVyR2pRMVdZMEtjNlEzcmhaZ20rMTc3a245RFVzQTIxdmh4?=
 =?utf-8?B?RnJGY21CaWNuakVvSSs3dDlDZGQ2amFhNVdJNHNrT0R2cHI5bTBXWnNhaE11?=
 =?utf-8?B?TUNWTEpkYmhUNUdmU3ZFcC9LVDgwTlZKaGw3dlNyTnhvcW9LK1p0K0x6WE9p?=
 =?utf-8?B?cTRZZ1ZwalN2ZlAvczB0TUErN0w4bmhhNFV1aU4xWW5lLzkwc1ZrTTFCdzNr?=
 =?utf-8?B?b2E5TEV1UnpZTUpNVHhXSXZIZnpzdEhMVU9zSUJ0ZVVsQ2ZXZEZtRTA3VWIx?=
 =?utf-8?B?Z0xyd2ZIYkdVcFpqMDQyOXk5WUZ5K3paNWdORkVjcm90RmxZeHVRdWlpSlYv?=
 =?utf-8?B?ZlJ0bEhKb1BkRkhGT0VVS1IyNlQzWlVILzVjbjk0Y1lKVFIwR0QxZFR5M1Rs?=
 =?utf-8?B?YzJtUjVGT2gzY0NuUnBUSG5wd05sdTd6cjV2L0w4N0xldkhuZStYaENmbGMw?=
 =?utf-8?B?WVZlRnBuWWUwZFVIUGZhY3A5cUxRSmpJNjN1aGpMUHIxWTA1Z3NiMTZpYTVQ?=
 =?utf-8?B?MGVMN0U0VUV0c2U2Tm11V1ZZdnA3bk9PTkNZblpxcGFnekU3cVFWT3VOdWtq?=
 =?utf-8?B?ck9mOEYxNldsMi9acFdkSllzbEJSU2FkUFg5OE45dzlRTXgvdzBNTkNyQ2JL?=
 =?utf-8?Q?DRxsN79f9taTh/qEpM?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 18607cbe-b1fd-4c01-8149-08d9c62fdb96
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2021 16:18:30.2440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 TgMAzK11YHSe76mm+ygVRV0e/8vK+vFW7om8wbsaTg70SrOJdBItYc4S0X2P3Qog78ODVsoC4UbrHt+/71HZkFgfbiLlaaktb0AjCrNCB1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4150
X-Proofpoint-ORIG-GUID: TvqW34CMWlHnnyhA8aXUiQFnxzudzW3k
X-Proofpoint-GUID: TvqW34CMWlHnnyhA8aXUiQFnxzudzW3k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-23_04,2021-12-22_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 adultscore=0 mlxscore=0
 mlxlogscore=681 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112230087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Dec 2021 16:18:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55650

--------------tB4Yq5ruYKnNI4AiUTumL0JI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Randy, Richard, Saul, Stephen, Steve, Trevor

*ARs:*

Happy Holidays!

*Notes:*

No triage meeting on December 30th

*Medium+ 3.5 Unassigned Enhancements/Bugs: *75 (Last week 76)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *70 (Last week 73)
--------------tB4Yq5ruYKnNI4AiUTumL0JI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Randy, Richard, Saul, Stephen, Steve, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>Happy Holidays!<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>No triage meeting on December 30th<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>75 (Last week
        76)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>70
      (Last week 73)<br>
    </div>
  </body>
</html>
--------------tB4Yq5ruYKnNI4AiUTumL0JI--

