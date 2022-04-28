Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63473C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 16:37:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.13272.1651163864976519013
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 09:37:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=plL2Njt6;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=2117d3780e=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 23SAxlMc027600;
	Thu, 28 Apr 2022 16:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=H/927407fXmvLuONtwqZGUIAFE0ei7/0da0jhaqSaPg=;
 b=plL2Njt6oBBUDteV4FqWAYoL8OhxQb3i7TFbAefOngDLEjpCt0Ct2UgfmCI2SvKEC6RY
 YcDIq/dlBjh0g+zjX6Xkn21wgf0pkLsIp70XvrOzYkD7U6CDL6cte7r8lFHhphwRrwfY
 Hmu1j9QjVfG8MDUJyDBXNECHZOPhW+JayR1L9wdvtFMkEfwafkncerDi+OLoVUEa9eHS
 6+hYbKlaDIhenwNHsntRsMcWmUTXdAq4Myc9xOAXKvQEBGwEx1x11HsKARfnSq/Q6fZr
 5QNZDC8GrWCYxLFyd+nhPE/XOOdqIFPUoM8UnMnAgsRMjTzM2Ua+EAkoT3tGnRAfYMAl 2w==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fprtcsjcx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Apr 2022 16:36:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UC8V7RA/CywDTvyMxO9IUFywG7OY7hNVDx9WJ1fNPSIWBaUzRdhNkL8E4NlOvdAzM+PS4RISHjxSQY5bAApV7kBKcnbimKtKUaY/Hlgqn6ueHKsQ42KiqC5OcgbNoagd4uVldWTEVlDOqqgfj/87r18T4kSYiiG89zG88tUPsB2NxSBszJR1oRfl4C9K2K6Y8T4vOnlRwOj0OE//VlUEXkzIyzCRA8n5J5k6NnTXh6pbHOzNiVBoD+vUxAGbHG81p3BXXndYTGlhMMBCCwNvg1n8ZC9UFP7UKEge0ceL9eGHkkeitKr69UlnDgokCgaOr2chKhiOMofF93QMXUAY+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/927407fXmvLuONtwqZGUIAFE0ei7/0da0jhaqSaPg=;
 b=K02AP7pQU0kFLGK1cID4NoWHkeqQnh80cruO+iKNkqun9nMnpeQBvVFvioqALQvGdsnMVWJ4/LHD/Q3gqs7ZezTgXGbjGMXVWUSl34VTFhPu4aIhNeypy4GtBtB1gY8P6JRBIQyHoPf4TOq48Hqe1BRMbHzvEwyFaV3kELrkz5G0iZaKofNRaNqiWr3xjpTxXBlbyrzZd9En3NPang4xOn9E6oaa3+XJGCdpH7SEGJtyQcKdb+shbrmFPIHVKL/S4gkKgd+RRph+/LuFWxuNrhjaoB6OO0t3GqmG51sjBiMofd/GA96ts5y/ROKABzOV2IiKefO+oWoWkqKinXRkQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BYAPR11MB3319.namprd11.prod.outlook.com (2603:10b6:a03:77::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.20; Thu, 28 Apr 2022 16:36:44 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac%6]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 16:36:44 +0000
Content-Type: multipart/alternative;
 boundary="------------lM03D0SXLJVeowwaNRjz6tgo"
Message-ID: <a3084a1b-64f8-1ee3-21e4-81be6ff6a71d@windriver.com>
Date: Thu, 28 Apr 2022 12:36:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 4/21/2022
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
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0157.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:7e::26) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 635b6440-a4b7-4b03-9b7f-08da293547c0
X-MS-TrafficTypeDiagnostic: BYAPR11MB3319:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB33193170248340CD952FE78CF2FD9@BYAPR11MB3319.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LgEe+fovmcJ+WtZ7fKNsf5VKjkci268lQ659sh5IWdL0BCkgllOGaD8G17U1H896gn2gswZQcpchUFio2C1iNAMVG5MO5keuYWw/Y9FXtgPGlCzH89pSh5lKVx7jaYxpaiI217i1lKUIGCtzO6JkmOj+86QPEjG0kGuW18aKR/AURkF/MfahXCFwsOciND7y5swPpT9f5XvQhFXkDJrWSq+tsSofT41sT4JDnxH3elg95WKNdBx96NhlRIVNBG2gZU0GyaMF1Zc2XIvA5dTmu0i/AMxV8ZRB0lp+gFwFaljsvrUFeOlZU3V2qkFFPXWvifJSLW7ARmOkIsXRkFXYSQbNsjMI0JqHjBn4LZL1x59iDNtR66ojauog0Hg2ROr+px2DHOepno3OnYHi7NTo7s23h8TJ1ZfYB5fetXPbIUOJvvW3keICTh7Gspyc+0lsITE8QBkmoOVZ2qq+DS+8QX3MqUKCLp/d9BpmilQcDXcGfPngHgNla5N6NB0cuLwMJqpzZUAMvXXaGwcKVF+ovx7V44ikVBHmhlYAyLSvY+YhNphT+YHoPpZx/zMgKin49EvWNMDKgJQldcpOt53AJmUNTuYIO2E7Iu55IdzOiQDTjDFpHv8cYG4XYIAQhQqQ16h7TKUv5n436k93U+FQroXYWd8reVwryf83kYjLDa5jusOF6iheae+A51DMg1eZP8yv0ayNLeuRlGxA4/51qthVY7Pdi4lVBZpZI4dC7/NPyaEccFcVKTwWqyfFT9F2lPT4YR1gLdYnOiDYmR7fnu9Bc6zUqAhoj1pH/Odm9aJhztF34I59DaZtyQ1rO4C74t5ifEaEtKxPAwRmjcnk2Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(31696002)(33964004)(52116002)(36756003)(6506007)(6512007)(5660300002)(38350700002)(44832011)(86362001)(38100700002)(7416002)(8936002)(26005)(316002)(54906003)(508600001)(966005)(6486002)(66946007)(66476007)(66556008)(8676002)(2906002)(2616005)(31686004)(186003)(4326008)(6916009)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V1FmSEcrdmR1ZkR1eSt0Q3FFRENmUFppNkUxMzd0bDhhbGVIOW5zYUZ4cGlV?=
 =?utf-8?B?aUIrZ2s0WURUV1E0T2o1YUp5N1hJUU9DVnRnMmVVNUhqQnBUVFFlM2Q5OExk?=
 =?utf-8?B?TTRSSEdLdDZoS1JVQzNYbnVROVNTYjJwUUF3dVJvcXpKdVAvd2tlUXZ3L3pF?=
 =?utf-8?B?NUZ4UGFyVU1wRSt1YUgzZWxhKzZpaGhSVW1NeDVJL2c2cDJpVjZKam1oeUZa?=
 =?utf-8?B?Ujk0d3FTQUZuUU1ZcDFlbGR6RDI1Mmk1R2V3TnhobVV2RVdZeU9CM1FwRG9p?=
 =?utf-8?B?OWtqWjBmeHRtMXc1K1pzYmVyY0FubXk5cjdrems1dWFQYlNqT3NDcHlsVmkx?=
 =?utf-8?B?V1B5NVZPTVk3RStTMjRqeHdyeDAxeW9ITitnT3RHRlVzSVVCV3JHRTlCcVo3?=
 =?utf-8?B?TTJ1Uzc0cFZmT3M1V0FCT0Y5WU5Ga2pITEtQZW9NM0xKUkNKRktQcnJWcmxX?=
 =?utf-8?B?WlI5T2toYW10QWZ5ZXFlSDd5TWlEcmlocXNGSWZQUVMxK1NscjRSSWpsd01r?=
 =?utf-8?B?dmZScnhBQlFMRTI5NFF4ZGhldmZYU3ErMGpjenBWVjZWekMyazFjQUVHanlt?=
 =?utf-8?B?RjBocUJIRm5lRzBacTM0RW1CdlFaemMzNnBoMVd2NFdRTUx0bGhIYXMweFZw?=
 =?utf-8?B?MXkrbzhNZ2RQaFRqcGpCbnNYQWlqeTV2dE83WjlYUCtMeUZKRVZJODdUQkxX?=
 =?utf-8?B?b1dQcWRaNndHU1lVV04wbnV2SjlzSnl1MS9lSFJyUmNxOEZDZ1hzZHJRNU54?=
 =?utf-8?B?cHNSN0xpQ0dZRlVKcVZQSStUQzU1RERNTEwwVGYyZjlMenFoa1RYZWkxLzlV?=
 =?utf-8?B?aTQ0VjhsSlhyd0p1LzNPUXU4UEdZa2g4VUZ4SEdVVFU4aGFwRnJrbzZ1dU1M?=
 =?utf-8?B?K3RPRURtU2MwZENUa2p2Z05yTkZ3VS9taHRSMVBIcmt0Zm0xL3ZHemM4dkxW?=
 =?utf-8?B?Q3BTN3dtaUFlYTNCVkV2TERyYVhVUDVjekZVQUxvRU9qcUJ1a1NVZ1V6U0I5?=
 =?utf-8?B?RE12a1pNZzdRWDg5eFJ2TWpnSEx5Mi9DcnpaZTYrdmFQZCtLL3NLZ1BCVndI?=
 =?utf-8?B?WGpZSGpUU1g5WmphYThtSHZ1anJKMWMrL0tVdkRXdlZsdTNwL1QxQ05VanhQ?=
 =?utf-8?B?WElQTzhKWEVLZmVQcmtXd1BsVWFEeEZMUmVJMk1abDhLNm04VkdlaFZIRlI3?=
 =?utf-8?B?QTlsSHd0Vk9rcjR0cG15aUJyRXBXd2E2Z1ByZk1RM1ZhWkRGOVZYOCtndHZq?=
 =?utf-8?B?YWZJYm16K2c1L3YwOUFmOU5aa2pDTjA0ZDdlOGlzRk9sSDJFMUNZYlgrV1FP?=
 =?utf-8?B?UjNaRDlzKzlwK2MrY1pneDdMQmh5bm9lM3ZXRmhUWldwcmgxVDhRNjVXQU9z?=
 =?utf-8?B?NjZycjh3bU16QXYrWEY5RmtMQlREUjJpY0NxNWVZNkozZ2ZNZ3JqYUNhTFow?=
 =?utf-8?B?eTZ2UG03U2ZyN3BHdlZ1M2RKbXRWR3dtM0tTNURkclJqbjJRWnRYUjFqUTB3?=
 =?utf-8?B?QThGNFRlRUxseWs0U0ErQ3dibkxzSTlXVXpOaCs2dzJvSXlnalNac2hDSlc2?=
 =?utf-8?B?cEE1dFVIUU9MTi9XaGpkVk5YcnFxWndzYXFwZ0NsczY3TmZtc3laRThtamcr?=
 =?utf-8?B?M1hhWG9lTjBsdTNNZ3AyN3lkUHBJeDYyQmNUK0xDOS9VZlFZajJnbWgvMFRr?=
 =?utf-8?B?Zmh5U2NYc2NsSXF3NW9MV24zRVdtVzBLOWVsaWdhcnhkaXZ0L1d3WlpqeXBZ?=
 =?utf-8?B?TGRFMDdIWVBWamhqZklKd2lRbytLTDIvaEpwZFVTZUt3TVRLb2xXNDBCa05I?=
 =?utf-8?B?M2wxN281SkUrSUFiYkhFOHRldXIyZnY3RVJXSHlDeFpRamRTNmNRUXYwR0lj?=
 =?utf-8?B?RURCdjVpamhkWGFJYXp6N1FBUmFhS1ZsQjcwd05oMEZuakhnNE4yK0JRL1F0?=
 =?utf-8?B?UTl1VVNmb1hUWElON3pqK0picmF4eGtkWmx1UEtKZ3oxTzRCcFJjdHBCZ3hj?=
 =?utf-8?B?b25YbVlQUDAxWnpQemk4aTlja2R2bG5UcGZsUHdEMnh5T0loaHYxSUpEeUIz?=
 =?utf-8?B?MnBWYzNCUEZNb3pVd29xT0JYUURzSkorTDI5K1l5bnc0Q3ZMNzE5bkpnTDFC?=
 =?utf-8?B?YzI4Vm9obUhNMnhkNFJseW5YbjQrbHJIejVZMUp4SnBZbE1SRnZJcFhmeDR4?=
 =?utf-8?B?Q0tnS0Y3alVlbGlEQkg5UHUxWVlUSE84ZDZlSFZTZWlXb21vQkVJQ0cyZ1dl?=
 =?utf-8?B?QmJ1ekpTVWwyemxkamNQWG9iNm5UeFl0TmNQcFFnTlM4RXZQZ2I1ZGNnS3hF?=
 =?utf-8?B?aG4wSEZ6OGovYUlIQzhPR1IrTGg0WjBYQ011VENLVXJnUklhclQ4WEdsMENZ?=
 =?utf-8?Q?nz0X65RvLVOjUN2I=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 635b6440-a4b7-4b03-9b7f-08da293547c0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 16:36:44.3281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 rA2ptOvDhznmnPoA0N4badmjAWnb32OpR/WeywT64DjYCbc1fOiEsAnXLF+9N/V5u8KpPNYyfUJpxHj8S6saRjxQzApTaejIrYBmbROLKa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3319
X-Proofpoint-GUID: uTAl8Za5dCFwia62R9UZvxOr8Mj6-ifV
X-Proofpoint-ORIG-GUID: uTAl8Za5dCFwia62R9UZvxOr8Mj6-ifV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-28_02,2022-04-28_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=716 mlxscore=0
 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204280099
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 16:37:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56946

--------------lM03D0SXLJVeowwaNRjz6tgo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Akuster, Randy, Richard, Alexandre Belloni, Luca Ceresoli, 
Bruce Ashfield, Michael Opdenacker, Ross Burton, Saul Wold, Steve 
Sakoman, Valerii, Tim Orling, Joshua Watt

*ARs:*

N/A*
*

*Notes:*
Added AB frequent label, AB-FREQUENT, to bugs that occur more 
frequently**causing problem for the QA builds on the autobuilder. If you 
can help to resolve any of these issues, it will be highly appreciated.*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *77 (Last week 76)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *48**(Last week 43)

*AB Bugs: *48 (Last week 53)
--------------lM03D0SXLJVeowwaNRjz6tgo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Akuster, Randy, Richard, Alexandre Belloni,
        Luca Ceresoli, Bruce Ashfield, Michael Opdenacker, Ross Burton,
        Saul Wold, Steve Sakoman, Valerii, Tim Orling, Joshua Watt<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    Added AB frequent label, AB-FREQUENT, to bugs that occur more
    frequently<b> </b>causing problem for the QA builds on the
    autobuilder. If you can help to resolve any of these issues, it will
    be highly appreciated.<b><br>
    </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>77 (Last week
        76)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>48<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>48
      (Last week 53)<br>
    </div>
  </body>
</html>

--------------lM03D0SXLJVeowwaNRjz6tgo--

