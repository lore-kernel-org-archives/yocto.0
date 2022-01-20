Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BC47C433EF
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 16:33:53 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.14217.1642696431710654459
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 08:33:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=k+Leo4c0;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=801924a221=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20KCJboo005868;
	Thu, 20 Jan 2022 16:33:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=WsjtnZDEaE0XIdFHHSFTOVyKT+D08GROE+bn3NWkEwA=;
 b=k+Leo4c0OGLtWfs9UypdqveQMHhAmNrlvXo4phynLyV2BST8v8PdmWwjRHU0B0z7oInc
 6IEk8SfzTnIYZUEDEM6tKcm8eV9KW02zBZkY1lqEGLNeji5ZMxcR9g+Htntk9/BddR9i
 pJAWoW8TAVEE/lnXjZwKVa8g7cy/Kg+8SWaxChkke3/93Y0zM55NJKNW4ZuF/Zr2FeWq
 4ObbIk7ykevAWVyNawLdEthNP0c+KSOrL9Au6yxeK+UxrhdWKvCO6lwPl1t2duk//hZ4
 aP/Kea87LFFlH1/GIxjj3Xi1Y81a7OK4yUScsnKfSM52qqNi4TdszT2sv9QQlIXm6oZC Tg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2109.outbound.protection.outlook.com [104.47.58.109])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dpq9yrr7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Jan 2022 16:33:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Us7iikU/fzjOafPNcCQyXURcP9aFbYUohFQNqpgcL8yzhB4rCMIp1AtJqqkNxTXaKyEkn/eOBdWfvgWBiZJYQSgFloHkfLzRepa8UX2ClNVRpPC6slxpoFOi24aEdLqi4zzan1Ia9TfnCpGQjFB0Fg6Zc8KXGR11ZMMSJb/qdb4LBg4wkYkGqBXjnbELGeyD475pGBCAdh6PfGLfvCTDYzJZPVdh6IALcLQmXR2lACEKgyvVWJzAkEdjY6k6qxlS940MUEfaRc2BvHUKfqwMHqglGOb3epVp3Hr1Gqv0+GE9BkCPd5DpdpsXlKqT/AEOMQ544kLfBN3nc3HhtgHfOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WsjtnZDEaE0XIdFHHSFTOVyKT+D08GROE+bn3NWkEwA=;
 b=iub5GoLqoTJgzP7kWHVvBnSyA3RmxUDi9ZJKPJU1lZ/Zb4PSTTvwFlmxhPYrgCxwwWPkgJBcIlmCVpIQdawJ8JUsa3OGYF0RhFG9QC5/X8WGYAKCpxZ36rqf/vHFABtTasfZIN+tcRBDMqmmiFoAOdElefkYuQMpJodQQppSsqpNwJeiMX8MnN5iXjHD1rLu5YT1WE3J8Gms1nI0B3iFWU/oXHrrhWHoqCCGsQEn5XC39D80dkd8z457+Te5sA054JtNZvI0olj+uPOJrwtqHS0TzHPgibjFDi8x3MrRpS+GtIF8t1uHB43aweC3OVA4W76pVEaKnW8BETw2GYevCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BN6PR11MB1729.namprd11.prod.outlook.com (2603:10b6:404:101::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Thu, 20 Jan
 2022 16:33:34 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1%3]) with mapi id 15.20.4909.008; Thu, 20 Jan 2022
 16:33:34 +0000
Content-Type: multipart/alternative;
 boundary="------------2CVTqfxFo0erdW0hZfR6ETKA"
Message-ID: <93a6c56e-f77d-2495-7087-38ba107ce414@windriver.com>
Date: Thu, 20 Jan 2022 11:33:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 1/20/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        Michael Opdenacker
 <michael.opdenacker@bootlin.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io, jatedev@gmail.com,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>, marton.nemeth1@flex.com
Content-Language: en-US
X-ClientProxiedBy: YT3PR01CA0120.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:85::13) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4780dc61-b050-4000-e73d-08d9dc3299c1
X-MS-TrafficTypeDiagnostic: BN6PR11MB1729:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB1729A3894E1CCE2EC8DAC5AF9F5A9@BN6PR11MB1729.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cGD/ZWXD/9eRONAsZeUCQEM6dpf7jWriXoAE3Ap0A/JaKaCsNbN9jxmvY2BAcqXqVspPj5tiGPVKYVzuKscoMWSvKe7FcQjXBzTMusHC5u0vekXSwzstUvTLJ/UEQ8wHwwbbUrttfQk6voQOadZyhSQedj1Pda9qs1HkTOTvIiTEJA/rr4I8dHjF/kxPzodZXU3gN0nrTvw3c3Oy4BOkHMW1pqPzcqU3RHj+h1uoQ6BvCHnysj7X0mhVE2w6zONBzCN3P/RdXBSsnvpN0lj3phABY6jVF40BiaGW2Nz7gJTLMLGZaMgFSDGQ7aw4jSdQz1+VCvbUbzOT9EFPBM8xTTjFPYt8Myqo/2ZxTTFzWAeaGMPCXYCf40PhbwLniDQbVjiCcW3waVYao/Ss2yH9hCRnQtcaVqj2jnP2GiJb8rBQ3Q+b4gHN+2b3IhmG7mK2jJ0LFYxJtQdPvvXk9BAluzzT1IpGnbGZ0ubghGtaJZ2rApUvuhwitZBleu7SQp88//ABo//2QFYbZMFO7zkNMG5wX56Ijmo3Kk6cSpWaBdUX5eK80IG8Fz9gT/K3gviheKSfvRl+mT1wwkwVeYfxeuKXZyOvgIaq8cqgsxQ/xLrCtM+VaaFO8hv38NDkARJt7iE/3+E0U5QFVD3y/EQ0FqPcvsH4dseEh8mNeczPWZfKzbNoTuO0PRDZlQZVCEF0DVO0eBlWDpxBH0p/bUE6NmWcjmuZF01tLL7i1uaGvRuKnXbVzeMf2bpRsrCxIwgodU4tHkwqYOZaKk4+pI5+zZnd9l7mz3/fIvrXXDk4Jl/nUmuVJ53oWx2OBy5zxocT
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(31696002)(186003)(31686004)(6506007)(166002)(33964004)(2906002)(44832011)(7416002)(83380400001)(2616005)(66574015)(5660300002)(966005)(36756003)(508600001)(8936002)(54906003)(6486002)(4326008)(8676002)(66556008)(66476007)(6666004)(66946007)(6512007)(316002)(38100700002)(86362001)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SmZnRnBQYkdSaUVWd3VxY0EwdHdGOHh6cFA3STlxWWpDWStQQzlqSXZHZ2wv?=
 =?utf-8?B?QnIzSDN2SUtRZk4va3p5K3hsNVVOa0ZhMUQ2WmpBY01yeDdFbTdVVWNaRHNN?=
 =?utf-8?B?YlAyZldjVDRPWVNQcWNsMCsvWGgwUWIwZFp1SWg5ODdHZTRhdDBBZFl0ZlJP?=
 =?utf-8?B?Q0t0M3hQNnBmN0R2Wlg1VS9Wd0l3WmM3WEpnbGhRTEZDWFRINU9YZnkwT3pJ?=
 =?utf-8?B?bnhJY29nVjRDM2tCdUd5VlMxbFlxaWFhZjVBUkQxNU9qa1lvOGU3dUtUUkdv?=
 =?utf-8?B?c1ZzQTBJTXJ5TGc5NHVqTERpWWthWjI3QzF1aUJTaUExQVI1WTRGdUd0UHpu?=
 =?utf-8?B?eUNLL2pIVXl4cStYSkpIYW9sMGdVamNzUHRzMUgyaHI4eUtHMDRhVHlBdmVR?=
 =?utf-8?B?M0V1NnFmOUZTN0lMRFNkc3pYREQwNHZ1OGVSdzcrRno1bFFCTysvc1NoSWFD?=
 =?utf-8?B?aGtML2ZqZEFuOXFxNFg3OG9NWnBpTDVNN1BkTEVQOGhUdGdxMnF3VXBGNng4?=
 =?utf-8?B?b1A5dWI2UWEyL1ZReER1OW9QTE54dnp3VG9peFFDaFRPd1gyUGZVd09pSVNW?=
 =?utf-8?B?MTFzZkYxdmR1S3h4Vk53VmJYSHpxejRiT2dLWlVjK0cvY0NSVHVpVEJpQm9T?=
 =?utf-8?B?MHdDTFprc1RDNGE1ZTdxaVh3UlhMV1VndlhBQmxRdzJ5WkRzRCtEMmE5TnNJ?=
 =?utf-8?B?UklFY3RBTXZzMUFlYzNZVm54dktZaUE1L3hPc1F5Zk1rMmdvVjJNc1VlL092?=
 =?utf-8?B?am9xUkpBUWhZbWpxNS93ZVJDb3VDcVRvTnZLY0J6MW8rOEQvZ3RTb1A2NFVq?=
 =?utf-8?B?Nm9uZUs5cnpXbnA4WlNmaE1uMzhGU1lRTWJqbVNOTkc1U1hGTm0rSWp6SEl4?=
 =?utf-8?B?SWI3bDNxd0JlU0l0dUE1ZHV5OUZDUDJuejZwRFdPK3EwOUphOWRuSVR0RFN1?=
 =?utf-8?B?cmJtRW1XdjRaMUtlZDRQcGVPZXJYd2o5Y01NdVkzdTlMdXdmYmgraUh4cTI0?=
 =?utf-8?B?UTAvWVU0QndSeHlQaDhMR25wUUtaZEdsTngrbjlnb2NzbnhZaTZnUVVRbEw1?=
 =?utf-8?B?ZzlSQ3NSVWtxOXg3YXUydXZ0bndSeUpNR2RoZk9QemtoUGx4OHpsTjB6Z3o1?=
 =?utf-8?B?NStrUVB6bVhiUkJWUkJpSFduby9rSWdJak1lVkQ3aThSRTVHZThrdEhRRnZ3?=
 =?utf-8?B?YmZCWGxYQUEvRC9MV1BXTkZnSkVSSnNEWWpDUGJzNjkxYThwYVhUbG9ySUdP?=
 =?utf-8?B?cWpERzA0WC9DWFpLOENHYy8zYVFmNDRPWUI0OVEwMVRWVExlMXIzNTNwNlls?=
 =?utf-8?B?OGNMekRWYTRldDNsYjYwZWhiQXVnaXQ0dDJmWXNIZGVEYUdTNThMKzRWNkhv?=
 =?utf-8?B?YjRXalVaZDZGQ2w0cXdZVGY3eXk2YXE2RHI4QUFKQjh3YzRTN1ZrV0gxcDRx?=
 =?utf-8?B?QjdUY0ZiUDY3RjJJakVEQ2JJUGx1S2NzbmlHcjhDSnV3ZWtVK1hrNDN3NkEy?=
 =?utf-8?B?S1hHWG9GNmhYb2VaVHNFdkRQOGh1eE92c3VGQ2xJVXZQVkd4WVZVZis2Ullh?=
 =?utf-8?B?UWwwdjZVYVlkMzlmR3Q0Rk1FOXR1R09Ub3JmVlpNN2phbzhhaEJjSWM4aVB0?=
 =?utf-8?B?Z01rcElCV2dRWUNiTHJHbDJBQ3hpZjVDeW93VkI3MFlPbkwrUDNpcFdrWThZ?=
 =?utf-8?B?VnRRcG52Vk5xU2JVeFRNQXBLRy9sSU1hOThpUjJZOUxZS2thc3dxQXl4alFh?=
 =?utf-8?B?TmhQYlR4eTR4bURUdTFiZHNwbVVvWm11UGhjdFpUemxwQ08vVFoyZ2dYaDVB?=
 =?utf-8?B?ZFVpVmVEaTVWWVlqL3owbkNUVnU2T09kd2tLa1BjRUc5MEN3aStmR21mZmZj?=
 =?utf-8?B?eStkaWVseVMvNndNZjZYbmZLTHU4M1hGUnJWdzdmS2JKa3JVTW5nTVFDMGU5?=
 =?utf-8?B?SEIzaHdlTGdjTno1MmU1QURRK1FyRWVSaVJDOE5KTS9FRlVjVWh2d0JjS21m?=
 =?utf-8?B?VWRqQ3Q0cnU0NTdjSzQ4VG1TZ1RXZXVSUy9GVmtrVDBWWXlxVlNIRituUjd4?=
 =?utf-8?B?Q0dDR2hhbHRCdi9HczdDRUJIaTVPS3NuMDI5L1BHOWRheTNqanpXZUFTK1da?=
 =?utf-8?B?VzZNN3VEQ1NXYk82VEVxWkJKMDlBWHN3WWxkMFhmclNCeFoxeVV3Nm45SGlJ?=
 =?utf-8?B?SDBiUkx2dTZFWXRjcThkRTFadE9haFd1RVo3Q1VLOFhFQU9aYmFiSXB0Zlpv?=
 =?utf-8?B?MFhzNSs3eTN4MXhFMGR3cm9ielVSYUcxNlM3ZUg2Zk1lZWtBOXNhTUNiYXR5?=
 =?utf-8?Q?QEZZzXEYkchSBIV2NT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4780dc61-b050-4000-e73d-08d9dc3299c1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 16:33:33.9014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 tVersY0PKF4NlpI+TVzU9htYWpjjPbl1leAvTiT09gaws6Q096oTyIIhw3F1xskrjCKW2L4vAJI+C6zeDiqg3ymFtFiuGyaVirkW3r/Q+Rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1729
X-Proofpoint-GUID: c05qxYY_iCBAOqnttnp341vaP4ZFzjmO
X-Proofpoint-ORIG-GUID: c05qxYY_iCBAOqnttnp341vaP4ZFzjmO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-20_06,2022-01-20_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0
 bulkscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=904 adultscore=0 spamscore=0 clxscore=1011 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201200084
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 16:33:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55934

--------------2CVTqfxFo0erdW0hZfR6ETKA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 20KCJboo005868

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Bruce, Diane, Jate, Joshua, M=C3=A1rton, Michael, Randy,=20
Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Randy/Stephen to move Medium+ 3.5 unassigned bugs to M3

- Stephen to make a note about prelink for next week's status

*Notes:*

- ~50% of AB workers have been switched to SSDs. Still too early to=20
determine what effect they are having on failure rates

*Medium+ 3.5 Unassigned Enhancements/Bugs: *80 (Last week 78)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *76 (Last week 74)
--------------2CVTqfxFo0erdW0hZfR6ETKA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 20KCJboo005868

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p><b>Wiki: </b><a class=3D"moz-txt-link-freetext" href=3D"https://=
wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send=3D"true">https://w=
iki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Bruce, Diane, Jate, Joshua, M=C3=A1rton, Micha=
el,
        Randy, Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy/Stephen to move Medium+ 3.5 unassigned bugs to M3</p>
      <p>- Stephen to make a note about prelink for next week's status<br=
>
      </p>
    </div>
    <span class=3D"moz-txt-link-freetext"></span>
    <div class=3D"moz-text-html" lang=3D"x-unicode"><b>Notes:</b></div>
    <p>- ~50% of AB workers have been switched to SSDs. Still too early
      to determine what effect they are having on failure rates</p>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>80 (Last week
        78)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class=3D"moz-text-html" lang=3D"x-unicode"><br>
    </div>
    <div class=3D"moz-text-html" lang=3D"x-unicode"><b>AB Bugs: </b>76
      (Last week 74)<br>
    </div>
  </body>
</html>
--------------2CVTqfxFo0erdW0hZfR6ETKA--

