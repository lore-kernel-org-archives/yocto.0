Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A4BEC43334
	for <webhook@archiver.kernel.org>; Thu, 30 Jun 2022 15:22:12 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.26411.1656602527174195239
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 08:22:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=PLspmmph;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=41806aac6f=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 25UBWIr3013608;
	Thu, 30 Jun 2022 08:21:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=TNZXmWs1jwR/cKdNau9tiVqAG6p8j1XRE2+i6Kfwpwk=;
 b=PLspmmphCz9o0LLrCb4plIaBv/BDMNKRr3G6n7Yfdq1DAPaTxAB0p4sQS0B3NRIKX31b
 Zu7mv7YfAzcWXzEo+L9H0jF8TaKJSGhs71EJm2DV5U311iqXjh39jOPnKhUlO+UQtYdM
 Eq+s4Drko8eUNch/CqIt3CYlrCKz11wqI8BZxbly4S7AejR4efhQkntPsb8lx7ny0+GZ
 DRGRJm/zEDMUazgObbKP0X6wNDrVPe1gjgsCpDDqZxNRce27F6dmjY1ntEaSWIDFpe/O
 oDViSZadkFUEmZ0/Ojul9h2s/Pcma4ckr3yN2CMJQq3o6Y3kg73Q/Ft9fgv4leiaQY9a bQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2105.outbound.protection.outlook.com [104.47.70.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gwwn4c37u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Jun 2022 08:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNG7DDKFinNABzbbBUpNw3ZCzLku3x9sekyiD9oqN40HR/xYuaPuTrkfkDfzo7r0J0uH1rSEBZU2UNU9zTChlU/ENCzr3EzZ+bab8chA9Xa5i0n6YisAphhb+vwQYIppAjB/T/nF3+YGUTBS/HbD/sVNsyU0QD+gE+STxrvHtTIyMF6EC91CAItPj8Uds1qqBAVWDtxOP4t3T10ZEcynKeSnwrjexRGL+vlvHlgRdveFz1217UkJ0QvurTnVG+SNhquyD55asoskf6l5FpBN5g0kiv36mKPhrxgVBLE3XZ//cvnD6lOELLKn1vGIYcjfvrDOGXPWKXH/f0lsW6nMjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TNZXmWs1jwR/cKdNau9tiVqAG6p8j1XRE2+i6Kfwpwk=;
 b=X615Ns1LuNEq4QJ0s/I1bg9uf8aKDMYUhvbme1i3O/+xawoHvCDc7/HbUyDiU3t1T/ayMfyhRmI7oTIPbs2zB0VNwtpovRjacaNUJy2gdMsvhN8FVOuu3NYfZk+y66iGi9wV02+Uv1heVYphh5QKneffmTqvsYE5c7uHlwf0QYMGygFc3GFwTzCewJ6hfb7JDir36oVjf44HuNDCOfnF4J1a2XVGMHdTsT9wZDTBpJWFUsrT9MnCRHiwUfmz9O6BTEcW4O9bEoaL8efdebOdTMRaI+I2jJ4fxM8FnRRYiNf/RWFwBLuF3FQFwBmCpq78BGE6KxWUcstfIO6RWBXMBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CY4PR11MB1480.namprd11.prod.outlook.com (2603:10b6:910:c::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Thu, 30 Jun 2022 15:21:38 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5373.018; Thu, 30 Jun 2022
 15:21:38 +0000
Content-Type: multipart/alternative;
 boundary="------------Sqve0Ul3KuC60yp0LOXFFCHO"
Message-ID: <a067b69b-9ca6-a559-ac98-c3b0d9b2442d@windriver.com>
Date: Thu, 30 Jun 2022 11:21:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/30/2022
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
X-ClientProxiedBy: YQBPR0101CA0261.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:68::28) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 027118bb-4ea5-481e-8fd3-08da5aac3a1e
X-MS-TrafficTypeDiagnostic: CY4PR11MB1480:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NWzEBX4tRlBN8MZYWHJ+nX6G6CYYo5isOt8Bl285Kz1VAg1L1Evg73TuUYtU4m6ZqfUui3g6Aw+263Ba7/RgRd6PMKSxfO1a9/Tpa6Q/MJnQkI0+QOakAK13UysnoIHY1aTFL/g8aYq/+/b1JCvB+7V/RjJKXfPuPBJu7B9p8PvnQdy9By1cqT20Z1K9mFCoaZ7YUUf2MRnGcAUC3RfJ3KR9zC/SV03MAgTMsm4n2BoXe1qXSQ+kVaiiDfGTfTkifDcJ01WSexUbdAMs7bbxjaPeVsGDuS0AXYNGfJ8LlZWF+7lrTFCDlATHFnlvAGb/vPEEXh3YrUt7gZOvZFY83IopSD4/I/wnaD2zVoeeDwTmZuTfE3pcXCTlHD5TiBL/vCcIS1S/x1ql3EkAoyNjfWMSksUdYO+nZ7DagmH1l8yOXXxKleLRVj1x6sI+gdSs6apjVFnO1+N9S/zdmGTTSqSHMLso+lKXihELgXTUv1ltQiCuuuVFypWlcr1tLDrvI7uBO+CChMgOIUXfq+WhRrWlYxkZfvF4On2DuDysA2N8wlX77XPZQLHU+t4CxjIYeF0j4qJ1wxOs2dyJhky8Cyttv/91zLlZl2ZeAFX0i01vEqLdSftci/YVelCISTv3QQWaB08A9jV4BWy7tScWNbgssVQQqT/hbTR6Coo9WX2WWltaodpPAuCqJ7Tb+5+AYLvZPruXlE4uRiYHn6d8DpxXpu7Pe4U2/yV5FBSZDAsM0saKy5w/MzLGNWROEHf6S4utXWwwa/FKSbW3HM7bO3ykdkX8zNo666e5k2zOGrv/BkSM7XblTivW8acZzZbfRY8oz/m6tdCyswvCrSiQ31MClf9Pp0Aj/zaB7uaFpmc9ugy5YZMnsCpIAXY4owSR09rldrVRFAoKUy8dJcbmww==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(396003)(346002)(366004)(376002)(136003)(186003)(6666004)(6506007)(33964004)(54906003)(6916009)(6512007)(966005)(316002)(107886003)(5660300002)(52116002)(86362001)(2616005)(41300700001)(31686004)(66556008)(66476007)(26005)(7416002)(6486002)(8676002)(4326008)(66946007)(8936002)(2906002)(44832011)(166002)(38350700002)(478600001)(38100700002)(36756003)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SWRsdEVyelBnVmdkSGF5bzZCYzAwYmdQVjRJc2YwTTJTUGR4K3FGNFh5Y3VR?=
 =?utf-8?B?L09veDhJUlFBSFk2Nytmay9KL2NKSDh4bWY0NHYvM3BCdnFWSHFjQ0VmZU9w?=
 =?utf-8?B?SWdvQytsemxmWU1xbVNwMk5BakRFSXJ3ZmpFczhpT3dlakNSWlZFVjR5dmc2?=
 =?utf-8?B?ZDlkRGJzeXBYdTB1T3J0QzdzeC9ra2NQZWo3UDduUWo3ZGpQK2pnODR3SnNN?=
 =?utf-8?B?MnhPdVAxb2thdEN5YUZFdWFENmR5ZlNsckxTUXNHZ1JhSnI4TGV2b0MxMmww?=
 =?utf-8?B?SmtHTkpWMDZOL1BPbjlCVmJzNk1RbWVUaGtBMHJxcDUrRlNId2dpVFh1dTBp?=
 =?utf-8?B?NFpFR041YldlTmlYa0xRNGJYTEM4T0gvMExpUjYxWjNBWFpsMnArK2k2MlZY?=
 =?utf-8?B?NlVacFAxaTNVdEpsU2VXNzgwSXpZUUdwSXFuR2ZJcC9sWk90OUlGSngzakda?=
 =?utf-8?B?WjZCSWNteERUcmlsWUxtbldweFZHNjNnbjI3Q2JVdnBVMitxZFlGWE4vYUlC?=
 =?utf-8?B?UFhCS1djb2dwNFo5M0htYnZLbVN5R3dtSnZuL3NSTHRRZEgyMTZ4cHU3V3JS?=
 =?utf-8?B?WkF1OHQwY2haeVhzeVd6VXlZaGNwenRoWHpqTHVUaFhSSUFGTzBsSGJ4NlRk?=
 =?utf-8?B?clY4dlZNYlJOVzZ3TWJ4bTlWTys3eWVXZk84bGVRTVhDeTBEV3hGQzZGZ0wz?=
 =?utf-8?B?b0dYNUE2ems4OUR0WnFkMVd1M0FRb21LdjJLSlVTemNUck83aDNkVGphYVZD?=
 =?utf-8?B?bnVDRlpYVUxjUzBxY1h1b1MxUExyK285NU16TlVsK3MxWG5RRkdWNlRmUlRq?=
 =?utf-8?B?OXBvZUJFZjd0SGVXZW5qVnRDQWMyclhsMW5sTHFvN2pmYWZ3aHRRbklZc1lp?=
 =?utf-8?B?eXlpVnlHenVVbUgxNGNSWUZaUzFjcXN0UWZDNVpBWitDdjZLclFRZm5CVDRB?=
 =?utf-8?B?Sm5rSU55OWJpdVMwL3RhbEl0K1FHK2Y0VnorRDNFenhIcERnMSt2ZFNmVGww?=
 =?utf-8?B?bUs2ZDIxc0dUZkx1UjJqVVFQUG5EK2JlZElnWkxOY3NieC9uY0RiSmtBWnRw?=
 =?utf-8?B?TTVNSk5mUDNBYlUrRzhNOXE0bE54d2x6QmErUVBKY0lCY2s1ZHlKOXRnRExa?=
 =?utf-8?B?ZzNjVWhsdGppdjNGbDhmOXJ2YVFZZmlPb01aL1loQ1R3QnJUSWNuVkVHc3dh?=
 =?utf-8?B?YXM2RDNvak1hZk13YlBndmpNck51dVNkbFM0WXdoRXJOLzdQenlIRWQxaFRh?=
 =?utf-8?B?UEJ3VUVMOFgwNFo3MFhMSHdFRlBDbEdHaHcydVlmazhkb1lweTNTV2ZkZzl4?=
 =?utf-8?B?NnNEUUtWaG10TmJjQkFYWllJU2FTbG5Gd0xVZVlTb09kVWIwUE50TVFidnFL?=
 =?utf-8?B?VDg4dm1DSTBMZnU3VDFuNmxFbTA2d3lUS1UxT2RNeXFxait1d1dCSWR4dWln?=
 =?utf-8?B?K0JaN0paZVhId1ZrdmFVdlZQV0I2K0xGaWxYUThseW5KMzBSazZsWTN5SS84?=
 =?utf-8?B?em16b2o0eHk2c1d6L0paZ25tY3Z6TVVaY3hxWm4yS0VwY0c1dEZQNC83aytS?=
 =?utf-8?B?N2RGczF3OVhpeUJnQ1BuYklnVUh0b1NnNkh1ejBBY0VNVmd4MDRDNmFjK0I4?=
 =?utf-8?B?dXhpb0RWR0NZQkJLK3RYeEV0UGFYVnJvMkRqZ2hYc3RBblVXeU5RcS96OWM0?=
 =?utf-8?B?eHRrVG5KM1YxcXRtYnZlMjBDdFlrKytOYkQxLzNkSURKeDRyTVcyZEFobkIw?=
 =?utf-8?B?dUJpRVFCU0ZtVFZMQm1ZWVVuMnY1WG9UNjhPRTVmZVhodUJJRHIwMmRtU0hs?=
 =?utf-8?B?dWszNk1Tdng2ajI5RWE2cERhSWMveGVod1JRREdXelVVYTRsdmlrVHRhb21Z?=
 =?utf-8?B?NjFncVRFWHJXNy9LUnpTN29mQkxxSTE0a0N5Y1lGdEczNnlOblFhOFpuUU4w?=
 =?utf-8?B?Q043Y2RyQjlmL2ZRQURVVG5wek1ZZ0dlSVRrMUV0ZHVhVG1KVXpZTzV1YkdP?=
 =?utf-8?B?Q2tDa0FOVDdMMWJDenc0S1FWaVNZQlhDKzdyVUFQdDd1YkIrWm5UU0pyeldZ?=
 =?utf-8?B?MG9IRlhDODdlVitrMkUwTnBrWUtZUW4yU210bWtoaGNSVUN0WlpZN2VpOUVz?=
 =?utf-8?B?cm4xUVhvdUFCd3M1aGkwNEZvYjR0QkV1S1ZOMkcrNkFUMUZ0WE8xNzVHRUxn?=
 =?utf-8?B?TkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 027118bb-4ea5-481e-8fd3-08da5aac3a1e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 15:21:38.3708
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Mn7/ym4QmK7j7JrhsgPTTlZJSQPvum7rQKm91nigNOOcha8pOSwycJ9XtaFibxwUYq8ukKbWequscQEhuskHcqpJ7PGZkdf6xxxXlsXiwU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1480
X-Proofpoint-ORIG-GUID: 8e-UpJ8UkmkFviH-Chf9ZhyWYLBdkFQI
X-Proofpoint-GUID: 8e-UpJ8UkmkFviH-Chf9ZhyWYLBdkFQI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-06-30_10,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 adultscore=0
 phishscore=0 suspectscore=0 mlxlogscore=686 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206300061
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jun 2022 15:22:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57429

--------------Sqve0Ul3KuC60yp0LOXFFCHO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Stephen Jolley, Steve Sakoman, Joshua Watt, Saul Wold, 
Alexandre Belloni, Michael Opdenacker, Pavel Zhukov, Richard Purdie, 
Aryaman Gupta, Randy Macleod, Mahdi Shourabi.

*ARs:*

Randy: asssign bug 14829
**

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *73 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 45)

*AB Bugs: *46 (Last week 47)
--------------Sqve0Ul3KuC60yp0LOXFFCHO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Stephen Jolley, Steve Sakoman, Joshua Watt,
        Saul Wold,
        Alexandre Belloni, Michael Opdenacker, Pavel Zhukov, Richard
        Purdie, Aryaman Gupta, Randy Macleod, Mahdi Shourabi.<br>
      </p>
      <p><b>ARs:</b></p>
      <p>Randy: asssign bug 14829<br>
        <b></b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>73 (Last week
        74)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 45)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>46
      (Last week 47)<br>
    </div>
  </body>
</html>

--------------Sqve0Ul3KuC60yp0LOXFFCHO--

