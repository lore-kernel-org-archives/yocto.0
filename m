Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACA8C47090
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 15:41:15 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.8410.1649345615889429717
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 08:33:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=C6okpwvr;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=10966f8f92=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 237ENmfP020845;
	Thu, 7 Apr 2022 08:33:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=RhppgYdBjxh/EJmOs1mgwtvOUZGKFs7CAaWRwRK2E4Q=;
 b=C6okpwvrLBxW9kZ31h378Q5r2sOh8pgLD+IMuNnlYGnMbEwbURjrEvDy9FJIq1asmEWm
 RYGovbp96XH/QZaC40VBiAS7d15UtP0Aq9XT0E1Xut5SvS+TXduCJT6LuL1vpv1xyVEl
 JmAhSWExBNdvH9Z0PuEePt2Fz/CNLUg+KRfAv8ePUWqXK7yntorfuzulgosCG2Mm/e7c
 swn/VMEQihYVO72X1P7JBsDTkC0JSWat2/Y/W9pFYD2QrgxFB64RWVhMV94n4zukjsi0
 5/xrf2RG0ZKV9CfsSyBaPrNU2gixa+510OQs15A+SC2gq5ypu7iGd45jtLyslaz5dfY5 iw==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f6p0jc3rn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Apr 2022 08:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5Cc3cBYOSjQ3Evp+H15tYu//ls57+HiMqicpE00nCNN2l15nEBLFU6JsgMPL15Wglm4oH7kNI/C6NuGv6KRo30QRR3AaoxYRQZ+H3ecusHUrBjBLWqH+E0HfCprY4cbAmF80yA7uLYa6zAUrOJktInvDFYbPGbOBFTrPnGGK21PJRDpVEfupzKZ5oJodSlUFb2/ehrA5CZFaVW5v9g4i4+kQTL90LYSUxwVe6TchzfRLDNEjSJZZxtVFcct5buCvMbgbf0K/a2/D3O9XLDD1Av9Tnop6N6HH7iKmBXaeLpNHzFf0S9feO6S5I9AXqGfLlqno2RP6W6pna1YI+cbdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RhppgYdBjxh/EJmOs1mgwtvOUZGKFs7CAaWRwRK2E4Q=;
 b=Jzse4givgqiliB+CZ0LypaQ9tIZUjLCW43Ssl3+2jAA+bC48vCANuOktS9cPLPhCEFIXf/I1XD7ZXujUiR70dONIJQgSgk1ArI5DfCYrYDsAWA1Awt0ABrniJL7SA2W4cLKqeiYgn02jzmtAuIcAvNaA9SPJQp1tuzEly0tbPPDm0LtcpifQ2LuV6b1Bgxo3U8xK7ZmYFyc7bbRqWTCmYgtnna6OavKil9LV3OnHqcMrn9aUN2dO2HCunDZJ9BHO8zBeGIeBkRlOgqhEbyCThcFB7+CxmoUIUrdgZ7fWtmAKjk6wVYSl1lDWUeGMJvkYfQlVdsB7t+i24izD/dSsag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BN7PR11MB2785.namprd11.prod.outlook.com (2603:10b6:406:ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Thu, 7 Apr
 2022 15:33:24 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc%3]) with mapi id 15.20.5123.031; Thu, 7 Apr 2022
 15:33:24 +0000
Content-Type: multipart/alternative;
 boundary="------------aq2neDZvK9ZuRRKaIpmebp3A"
Message-ID: <12002b4f-325c-856c-401c-360284a483a1@windriver.com>
Date: Thu, 7 Apr 2022 11:33:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 4/7/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        tim.orling@konsulko.com, Steve Sakoman <steve@sakoman.com>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "Wold, Saul" <saul.wold@windriver.com>, luca.ceresoli@bootlin.com,
        Ross Burton <ross@burtonini.com>, trevor.gamblin@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0133.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:e::6) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a29369cc-7f89-44a2-dedd-08da18abf3e5
X-MS-TrafficTypeDiagnostic: BN7PR11MB2785:EE_
X-Microsoft-Antispam-PRVS: 
	<BN7PR11MB278501D22BF1938AE63A43169FE69@BN7PR11MB2785.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	R56hPMroXvcQCqXfCKDlr5p7zCPGJi7Q/l2o16wvywDGIv4dWyn/t6e7zQyDeK7srdPQ8Z1GM/WQ88wC6cGKmhfUVAr+vKI16uZcc6gdyYc+0Pg8TwmKjG+zSAgPacvLYuBoB4wL78suW0JD5ZtLDOJxI1LvofcLabH//aRDw55us+dK4wjehwu1PJ5CSvgoBvmuyogTsz72/TwvEuSar/Nof/rBxDyj511/AgIHjIPh8wCfsWFH2+BGjFDhadHD5Vg/0SIAArULVyGd+f5lBmCrUlzM1qshd6XnMHMg2dKadKFDD3bqs1mXIdvO2OUg/pt7TCJ5XMdXAbWXyxf5tcivl0WpNTn09KRL/IHMZCVpng+xWB6HKklMrzMlNjGbZOVtyqkqYKYLYkOJi9qrYzzlD5MzS7Zc1k4lrp329YxJHqz+jkXBSqg4JS84l0a2gB7T2mHlAU9Tov5gAEERDmYYhBa+frOx/pV2Vkz05yFvWnWme5ek3ngHvNdwXfP58yE/mmFCb2DppSisbqjAtzcgj0ZpQ/0ueGzUaE7pT66Kyuqn9vG0Uhg1ZGeuxRDj1Pf7zh+b/GqPN7+hnRPzGaR6M6vOoWUauFhuizO6rzn/qiEpRJZ13mbQWqVNlrTs8HhMKeCM+EOZNAGhLVpIkUS0cQEsTImUWsnK8pa4W1Wag5CaDFE0BHzDg6T2xl0mO7qOqF23mVUx8AkzX1j2qDudQ8PvGhCPZnoUIVihPMmafN92qihsPpIyYhbG9YD+emKB5u7Ak8B0mGZVnffesDf9OVcPFnjB/LxXuhk58/a25ZOmyzeG8/I9edZpX3bX
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(36756003)(2616005)(186003)(2906002)(33964004)(6506007)(6512007)(5660300002)(107886003)(4326008)(8936002)(86362001)(83380400001)(31686004)(66476007)(66556008)(66946007)(8676002)(6486002)(31696002)(44832011)(966005)(316002)(38100700002)(166002)(6916009)(508600001)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WTRDSU9yakU4YmVsQmpNMXZiMTZPVUNuWFppTVFJbzJkUllKRS9RdS9vRE5n?=
 =?utf-8?B?cWNhOU0wUi9Ib1VwYjQrOS92TnhPclJmT0ZlT3piU3RzMnhhTXd5bkNVYjlI?=
 =?utf-8?B?WC9UQi9uS3d4MlNPeEZRMEIvNjVyT1NDckdtVEJhNGtPT3M5c1pnTzZwN3pI?=
 =?utf-8?B?d0hCM0djR3ZYK0x5WXZpdk5pTFZkQnJWcG9xV3lDWjltQTJlU2lPMjBnNzYr?=
 =?utf-8?B?bkR0TkJaNkpkSVNidGpvWVdZYWVxZ3Nxc1RrUlFkR256aUhiRGNwVDNwK0tr?=
 =?utf-8?B?dWZneDVsY25nNmw1anRQak5IbjhzeHBEVHFUd2h6N2E1MFBURTJXbURjMm5p?=
 =?utf-8?B?WXlKLy8yRmFlVG5jVHFYM0JLWWZROW8vNjRsSENlOEVwenc5UDNXOVpYMC9M?=
 =?utf-8?B?ZWp3ajY0dmgwQmxPOGpVZW56TVlPb0prSVFqbk1iRGpOZC9tbEJKUVpVSzZ2?=
 =?utf-8?B?SGFYdmxVS2pqdXdMVmhaelZoa2tKT2FKYTNFQnQzeGRkbzJjQlNVbnk5SU1i?=
 =?utf-8?B?bGZKSzAxVWVVRlVZd0ZsMjNEenVHYXBjRkNHOUR1NUtGMkNZeEg3YzZ3b2N3?=
 =?utf-8?B?VWVQZmlPaUg1aG0vWU0wSnVUb0RlMHBxTmpLaWRGSlFIMHhrU1MrNHUvYUhw?=
 =?utf-8?B?N3ROeDZXRTFKYWhaRlJNM2cyWTNVQkkrcFlTcDNKODMwTlJibmtRVUxkQkVo?=
 =?utf-8?B?TnJoYUg4ZlFXM1hIQ2RMYW85UlIzNW5uaFZPeVdCOTd2bFc5eUFaeUZiaWVQ?=
 =?utf-8?B?Sk80bWJEVUlURXEwT3loSnIxZGc2ZmdIemthL3RJWjVsSmJMM2d6MGUzREZz?=
 =?utf-8?B?V0M2em1GL3NVT1dmYXF4Mmc2UzJZRDFZY2JEZlIvU1RPS3did2ZwTnVtMFYx?=
 =?utf-8?B?bTl5ZHVaaEtCV2d3MGMvbkJTMEhqcHZMK2xBenB2b3E1SmNnYVd0N2k3ZHlW?=
 =?utf-8?B?NXlYYUlPVVc2M2kxUHo0Q3JCL2JvQUxEdWpGRG5RWXNhcmpWSENycTNaRXR0?=
 =?utf-8?B?bFJoT28vdGQ1bXI4U1NyZ2t1RVNKbWswK2dBMlp5RExzTmp6L2U0TEFkQVJi?=
 =?utf-8?B?M1ZyZS9NMGlUaVQ5cGh5ZndXSGJ1bDE0MUFqelBFc2R6dEtSWHRtQU5PcWgy?=
 =?utf-8?B?K281Yzd6M0hncWtEOW1KMHhHVFRCR2cvWC9WN3dGTURIMmFRd0UvdGpyQVFn?=
 =?utf-8?B?ZEsraEtycDh0OTJ6UXNpQjBFZVBiQ3FRRXNHZVd0RGQyU2JkTHBhbzBjbzNR?=
 =?utf-8?B?ei95UzBwcERJdjI4SytzcW9OYjcrZ21SWHYwMTRLRkhVYTBSQkxBZUoxdWMv?=
 =?utf-8?B?eUlTOXd1eWtreGp2Z0cwUnIvTVJIMndXYTlycFFoUzNNSGpXK0F6L3I5UmNz?=
 =?utf-8?B?Y2dOY1B3VFdqWS9kUWw3Q0lqYzQ1TGJVNEE2LzJ2M3RQSFlmNmRqNGRiVmx2?=
 =?utf-8?B?NGlGb0N2M1lBZytyMXV3UXJkcGJJTFp6WG83R0VmaTN6ODJldHk5MDVNKzJT?=
 =?utf-8?B?RVVGTHhJeVY1Q1BGY01oM1htM25FaVV4UHJ0R3FXdmhGZlJOakcxeTdWeFpa?=
 =?utf-8?B?UGxaWU1CM0o1VG95MlozeTNFQWxva1E2QzhOUDR1NUs0R1JXVXhWQkFTYzNC?=
 =?utf-8?B?SlJUWVdzOFVuSXIzelJ3MWs1Tys1L3F0VVU2bE9FeW5jaGpGNDNRU1pHK0hn?=
 =?utf-8?B?WTlLSkVJMWx5cGRtOUNmSmREdDNWQzh5WktYYTBsVzloY3oreEIwOVN5NUJE?=
 =?utf-8?B?YzAxSUNJaGNOcHJQRE1lN3M0aEd5eWlvVWFVZHI4YWxNREw3eWdTWjZ1ZCt1?=
 =?utf-8?B?ajBMWVdVaXBrVW9iSkt0Y3JUUjhuRUs4cWhLM2xDUHl4QnlFa1Z1QmY3d21z?=
 =?utf-8?B?anRGWmVSTVZuVnMwUkozYk14cWNKQlZ4U3RGanpnSGhJRVZDdytQV3hLUi9I?=
 =?utf-8?B?bndBcm1NV3AxcElXZzJxcWxMRnc3UlQrcHZjbUhGWDVWT2EzWk1OenI1bkFT?=
 =?utf-8?B?L1FGemo5VjNJeWE4clRUYnNPR28xcVRDZTdFcElzRHVxazB4cGkyRGw3YVVU?=
 =?utf-8?B?aElGeVBRRjcyc1FXRDBkMjNTVGhMalN2eFB6UmRaUzZSSlQzL1o4bTAyYTZY?=
 =?utf-8?B?c2ZNSmpIcnU1eGgrYXVkWXBtUWNFSk5wdGFNdTNQWmxYSWM3VlNXZEVkYk41?=
 =?utf-8?B?enZGd1BUeFJzV2dVUjhYdGdYTVlxRkxxbXpuaVpFUTYyVzNiUTZqVXl4YzBB?=
 =?utf-8?B?YWQ5S3BwRUM1aHhNL0RFSUxwZlVwSnJiME5JSkZxNm5CdldKUWNGdS9DaGNr?=
 =?utf-8?B?NGhzT0d4cjl0NHpHRFFFVmFLdDIvZFVvdFY4cktCcWtQMldTTFBUaVFCWHYx?=
 =?utf-8?Q?9Y1lqLth/jm7GzzVFyen2qyonQml/TB/rD/ZusbX6sQUg?=
X-MS-Exchange-AntiSpam-MessageData-1: AV5/LGhNyfsqaA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a29369cc-7f89-44a2-dedd-08da18abf3e5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2022 15:33:24.0811
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 oRR84bKeOm0D9M8U78tXt2FkicMfAjepv6NZdJoC4y5LZB3jTXi+h6mkg2jqwXfg5PkHO3Zj9eOZibX9zruxYfoKsxwCbR8y9tZbMb9mDp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2785
X-Proofpoint-ORIG-GUID: v9LxKrt9zqEs5xH9_2AuqoB9QpxvjlZ2
X-Proofpoint-GUID: v9LxKrt9zqEs5xH9_2AuqoB9QpxvjlZ2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-07_03,2022-04-07_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 malwarescore=0 impostorscore=0
 mlxlogscore=817 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2202240000 definitions=main-2204070077
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 15:41:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56682

--------------aq2neDZvK9ZuRRKaIpmebp3A
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Luca, Randy, Richard, Ross, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Randy to review AB-INT bugs and adjust/move as necessary

- Randy to review 3.5+ bugs and move them as necessary

- Stephen to update the reminder email with info about bug 
contributions/assignment
**

*Notes:*

- Trevor is leaving WR/YP, so a new note-taker will be required for this 
meeting

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: * 14 (Last week 16)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *61 (Last week 60)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *64 (Last week 61)
--------------aq2neDZvK9ZuRRKaIpmebp3A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Luca, Randy, Richard, Ross, Saul, Stephen,
        Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy to review AB-INT bugs and adjust/move as necessary</p>
      <p>- Randy to review 3.5+ bugs and move them as necessary</p>
      <p>- Stephen to update the reminder email with info about bug
        contributions/assignment<br>
        <b> </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><br>
      - Trevor is leaving WR/YP, so a new note-taker will be required
      for this meeting</div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!</p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 14 (Last week
        16)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>61 (Last week
        60)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>64
      (Last week 61)<br>
    </div>
  </body>
</html>

--------------aq2neDZvK9ZuRRKaIpmebp3A--

