Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82EB4C433EF
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 16:30:57 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.1843.1636648256642485054
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 08:30:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=sWnynSpM;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=69499be121=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1ABD85GX011181;
	Thu, 11 Nov 2021 16:30:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=oq1TlIvH8C1d7zy12qN9itMDfTc3ekM2MsqnHAddiN8=;
 b=sWnynSpMnQBZqcFppOsXAnTicuYWfZyjYl/uOeZImMiTjUVPo3uk4cIOcoYwhhSLC/L6
 BPajMrTWQnn5PQFLUQ5/3RzKs3Se24DkcZO/DttsQkJ5fehhaBQQHaZCe4hkXeZzB8jK
 nxqls6rLgMw8DBthkEtnUO49qShxzrYXWDnTFN61oaWDYRaz5T9tUCZjxJCigGWK9/iz
 p3jrFZVwiptYFXeEgWBsuAH6/Kd9rlqSkG99KAL+kaCuyIfRcf5nbeGDI2yTpUsBKYZ1
 EM31PX+RYQgKlPQfOMAb85uaS040Z8SqZIcmA0OYZQYkt46rWPB+6e2gAs2Kvg7/A3z6 PA==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2174.outbound.protection.outlook.com [104.47.56.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3c93ss862b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Nov 2021 16:30:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXe0X6KhcIZq04xjzJTYuob/8f4LE5wkyjy9bycXezyh7zx83IRLgsHrOTIISQaetm7HiuZ+wjhfmoVgmMnQPgKQW3dL2Wswdj1g7nBxVG7G0Vb0IM6UDKR0axaOGk/wuv6iuWxQPx3mjxvTzsJG8ldmfDFYabPtOwVSqQ5BtVNN9OaHHenC3J3Gz6FI5X0BH8T0xPe2rcjl6O6tyZiHPqQzMEDOzXTKsqKuuFTahLKndQ/O+GaVzKw15Nb+bO7bUrRpbXfFxisvxyu4DYrSEuQUZbCn08amJ//08YqyaSbqWabvprg1+0RPfFne5+NydSjYtSYtfQjSlREEgzIrYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oq1TlIvH8C1d7zy12qN9itMDfTc3ekM2MsqnHAddiN8=;
 b=P16D3vm/w9afH+E8TmDALP3nigCKy9U/zwfWS0v02AzYmHwxUH31/tInv4T3RtVRL8Wv7cGaZ2tg66rb6QrsaYYrVw5O2LkDwwS144yQo2H2hr3O7NS8vAjwxcymdZL0kAyfHoUeyhy0Mj6DoDwXvghahtBc2Y/hW2K5sIeItVWsFwQ8ThBfuRUSkAcA6D7Wnq3rKKT1juHFZ6427Nnyv/JAyJ5l1e78qhYaIYf3gGA9DMLvGNxwc+EY0Y/ygmtEywMM/UuMp3jhvQ8VbsKHltFCj/W+KWs/z48Iw6DT6/wl+ZPsfS+WaZ7D8mY93ULyljlPZvp3jWNytlt8IKRvPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4150.namprd11.prod.outlook.com (2603:10b6:a03:190::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 11 Nov
 2021 16:30:49 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 16:30:49 +0000
Content-Type: multipart/alternative;
 boundary="------------qadBQnqc5tCZ8yhZVNaOm0VM"
Message-ID: <eb6f7da7-ba22-c8a3-2ae1-db962ab128d3@windriver.com>
Date: Thu, 11 Nov 2021 11:30:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 11/11/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Steve Sakoman <steve@sakoman.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0149.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::28) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPV6:2607:fea8:c29d:d7c0::1e0b] (2607:fea8:c29d:d7c0::1e0b) by
 YT1PR01CA0149.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2f::28) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15 via Frontend
 Transport; Thu, 11 Nov 2021 16:30:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f691e29-20fc-4837-91b1-08d9a5309e95
X-MS-TrafficTypeDiagnostic: BY5PR11MB4150:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB4150FA3ECE96FC1238E2FD829F949@BY5PR11MB4150.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 BvBfrj79DUT/K28LJC9AEv3rM7Ms32oB6MKIcghiNzNtSqwgfSt7vXj50rRu5xgTo3BhFnEgXNaXcRT8JIYCp689l0ubqdB8Xdka396FoXEecpOEDcvJetMjg0ve+x8Qfe5c+A8DHhf4pn+P7tbo+K6jJ1/1D8xFeZGtkWy5u/mJgKyPx7sfgenrseLrab61fRtH7JZjWaa7n0SY8X+wJr6ySSSzLGKjxT4Rag9ijBxabf75UYSPYcTi6Kp7mnhVDpD873wAK0ozIF56ZE7pvgXIeHlkZ3CFDSM0RJG5ybQAetJXm6fr6PJihKkaRl18HeKLOv76OPp+Ycm/55Qx6GkoMim/BdFK9meKTf3eH9txYCPuCfMPufEIqlLsW/3AZNb26wx0KdnuOv+yPiqjRJity8ti2J5hPq9Yx1Ems0duk/YYgNcEIwkKOTcXZUnRaN/eCr/OFDg994e7VohOyGyA6WUTIrZcvfCw/KbP4rCEKAxwked8oqv8sbonVwBGoDRKAofwbBSgu0baxF0NJ48bkPDXpNzQhUQHQ0dUSkwmccTAtgz1+zjjIFPYwF5M7OxJ9Tjr4tLD85vm4mEiOuo+HhXODTecAylogk4SfEVCSJaE0OY3PWyWRlH+Bkl+p9MhLlS5l1ftZnZ7dzFdlv0ElMl83TvAt6q6BAFIYwGzo00eJbTueThl8laWm3PcnjL9QXzhHVcJt4o/ypEo1V8fA9ti92YmmHwLDWT23cUkS3d6KEDMzo5z+Vpuy5qGiegdrmkriEIZdmkU5n+ycAngS+1rp6/EMGbkNwb7wijHFB1d4ja+i0e72fH0G7Ll
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(6486002)(86362001)(316002)(166002)(38100700002)(44832011)(36756003)(33964004)(6916009)(966005)(66476007)(508600001)(2616005)(186003)(31686004)(66556008)(8676002)(31696002)(66946007)(5660300002)(2906002)(8936002)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?TG5MbHFIRGN3TzIrbkpWWEx0aWZMVFl3U0ZHMTVhWlZlY0l3dlRrYkVBS1d2?=
 =?utf-8?B?QWVnS0hKZnorT0x5L1F1aXlSSDk0YVFsM3R2VmV1NUwreUhLYzlpdTBxY2RK?=
 =?utf-8?B?MFNxdGFhZDFGTmVKR0ZiNDVZemovaitxdWNoa2E3ZzUrUVhNVjlrb0xUNUQx?=
 =?utf-8?B?V1I2aTZ1RzEvaGhLenpyeHNUb25UUStGTzJ2elRIa3duVjVvVDJHN0F0UTJh?=
 =?utf-8?B?THNFR1FqRkdYLzRoYzVRVWRtMEo3ODV3ZWdDRHJMZTlSMi9TZU40RWtqeGxt?=
 =?utf-8?B?WHhJZ3ByZ3h5RWFyUERkWXBKaHhTQ0RNUDJsQkpYSTJCelFLQ0VDVXpWNWJv?=
 =?utf-8?B?NUVFbjhDaDdFUUUxTXFXSnNYVEFFa2djOXJ6V0N3U1dpNEJ6QWI1M3JoSHJq?=
 =?utf-8?B?djFXSjM4NW0rR21nM3dUa0RKRk5xSWJjMHUxMFZEOUNobXVHb3JPTlVNT3VK?=
 =?utf-8?B?K2hPQTNoVkREY0FPSkpXQU5YQTdwbE83UFpBWEdSV3lpZmkzaWx6SWRmYzZ5?=
 =?utf-8?B?QTl1YVlac0c0REg5c0c1L1RjTDJTMDFmdVFwT2NtU0ZYNGgxUlpXc2FRSWlU?=
 =?utf-8?B?REc0RDh6ZTAyKy9zU2dFSU9iQ2RuZ0xWdERDV0l1RGtDRHFOYlZQVXZFR0p0?=
 =?utf-8?B?clB5OFZ2dFVhMnZ4T3ZFaHNLbWZncFhEUE1DbzdmNnZrRk82WnF5bklhSzFo?=
 =?utf-8?B?QjQzelB4b3lBUVM4R1JUNUdpWEE1NElxbXdKZ1p4djdsQzZrOEgwTWlMdlNK?=
 =?utf-8?B?emxmbVYvU3RSTzRvUFpuVjEyUkFLbXQ1VkZVY3lrMFdUbnZEN1phMVFwL2JO?=
 =?utf-8?B?Z0c1YXBEVU9aTldBVkx0TWV4Uy81M1daK281U2hXa0VXVm4yTllKU2ZiYzFz?=
 =?utf-8?B?QVBHYldhcmozNXVtV1ptYTBhVEJEUDlWT0lSaW5CSjNNeXdicWVSUHFhRmxZ?=
 =?utf-8?B?VmNPQUkwMmFaQ3NrUWtRbDJKVU80UHdnNW8vekJyWWU0bFZtbXZZRTBWYTNP?=
 =?utf-8?B?REMwNGlEd3ZNZldFcmkwaUtRZ0o0WmxYWnZaU2FvYnZGdFE0NnRya28reCtP?=
 =?utf-8?B?WlM2bmpITjZVNFIzS2lQazJBTHJVL0tsUGlWMXhFSnlOUERqaGp5eWg0Zndt?=
 =?utf-8?B?SmM3NFpicEpIajF4bG9EUi9VdHRLYStUNkRzRE1Fa0VLdElTVVpjd010Y2xJ?=
 =?utf-8?B?UnFiWi9SeDVncE5rSnNBSm5QdUVhR1JiTWduU2NBWXdLSkxpSWQvOXM1ajVQ?=
 =?utf-8?B?c3liZHF2TTUzVzNuQ0VVUXFFNVo3VmM2Nm1kdXlBbkNlcXFCTjErSG9wNHhP?=
 =?utf-8?B?NUs3VmwyMk1lSWpxRXRYOVVNdyswYit0Vm84bW1WSE9OWjB2YVZ4L043OStp?=
 =?utf-8?B?aUtpV3ZYZEIxcjJEdm05OHRQN3lDWm5ML2dDRjN5WVY3RU5JZWpkb2JoZ29Q?=
 =?utf-8?B?ek5zcldVVUd5TGI4YXlWSTJLUzJad3g2bmh2RVFld2YxNjZnQnJ2eVlQN09I?=
 =?utf-8?B?eStFVy9XZUNsWFdOUjhkVXRTeW5WRUl0bW1Mcm1wZjdUNEJ0cHJWVmc4VmxR?=
 =?utf-8?B?TFBYZERzMTg5UWhWcWUrV1lkSkxWejZibkhDYnZUZVhaZE5NU1BRbURadHBw?=
 =?utf-8?B?cmo2Yyt4KzMwNklrL2k2eHpJTExsaGorMUlvNlBkN3UzWHdNeDVjcmRiZWY4?=
 =?utf-8?B?MTlMRUhRdkE1ejFId09YU2dwclBYaHFTMitON1NjSXZHaDJrRmRsK0NGZFRJ?=
 =?utf-8?B?bUJ4TGZCdE1HWnZ1NldwMlN1NllncllSQjZZclp3UTRrVGNtQWF1Mk8vV2Zt?=
 =?utf-8?B?bTBnT1ZCN1hNdW5BN0NVRHlWZm5wTy9aWHVjQ0FrTkRkYzdvd2tuRG9LQ21I?=
 =?utf-8?B?WmNGWlAwUDNpM3dOaE1MK0dqYk9mUWFtQlpGbmlhb0RaaS9rdmcwZmt6N2E3?=
 =?utf-8?B?UU1Rc0lLQkgyU3NhUHFvS29QdklJRzRUMzFnNDJuaEY0YnRxbVFwSFhRUzB6?=
 =?utf-8?B?N242L2hCalVvL29zZmdIYzh0UTVrR0FvVmhqK0I4dW5Jc0prUnUxTjJJUWkz?=
 =?utf-8?B?ZFdrTkpMT291ODRqRERFWk4wVUFYYXN4anpId05YajlnczFpUk80QmVZUmw3?=
 =?utf-8?B?RStyL1Ryd0V6YjVQMkV3blpGdWI1cHlpcFEwZUdITkhWcmJYMkp0ek1GMWRt?=
 =?utf-8?B?TmlnMExvSmREenYvNTJKSHh6Q0tTMWhGdGt4dG90QmRsN0R0bWRvVUJXUDJo?=
 =?utf-8?B?ZTFsV3pyendBdWxrenhnemlXUHJJZHdMSnBqUE10Y0pRS1dLMFgyeGRUdXBD?=
 =?utf-8?Q?zXHTQFfKT3FC01tvB6?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8f691e29-20fc-4837-91b1-08d9a5309e95
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 16:30:48.9410
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 E6ev7Qb6zlrs2RpXNxBv1nSIe4Sq6+GlTjmkBInyrAh/vdp6OUt3DKMft79SIzS9PZaZXJWD9+RVyGYEeV0qUZ3lpr1YHerJoxmyzlRIewg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4150
X-Proofpoint-GUID: skdJNhlFvc58sNRsvXTg0EYQYHGEPWjd
X-Proofpoint-ORIG-GUID: skdJNhlFvc58sNRsvXTg0EYQYHGEPWjd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-11_05,2021-11-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=769 spamscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111110090
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 16:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55316

--------------qadBQnqc5tCZ8yhZVNaOm0VM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alexandre, Armin, Bruce, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

N/A


*Notes:*

N/A

*Medium+ 3.5 Unassigned Enhancements/Bugs: *73 (Last week 79)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *62 (No change)
--------------qadBQnqc5tCZ8yhZVNaOm0VM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alexandre, Armin, Bruce, Randy, Richard,
        Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>N/A<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>73 (Last week
        79)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>62 (No
      change)<br>
    </div>
  </body>
</html>
--------------qadBQnqc5tCZ8yhZVNaOm0VM--

