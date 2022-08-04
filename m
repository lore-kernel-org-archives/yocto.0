Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EC7C19F2A
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 15:25:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.6260.1659626718337981603
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 08:25:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TPKLQF8F;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5215f22b21=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 274DoHRY013524;
	Thu, 4 Aug 2022 15:24:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=kvIU+sb9FJN9A/fZqwr+cqZPg56Jh88qBKa2FRSQQ88=;
 b=TPKLQF8FqKhnKTottXGuQGNH+sehPWFkpaeykTrrkbLOi9kO3Ynqd9UER0NQmwb20cUb
 iHSdJZJaNJ8DP/qfgMomvc/kieNRupt8p2EChgjJvkv/g1+RuPbuUHLb2KcFl9P9h5Vz
 h1x/SNEUiEHPww2ucoKPqniEKinnM5nE31MRyS11UxevI7y60l3pzwkH45l6Onsuw1th
 fTaiy5HdunzQIlIgjbevIDPgMmLT2zViAmt+Ucj7+fI/LKClHJFfDAcrnrtHcADLeGSz
 bZPEhVPHKWnnx1pa80P4czf+3cREMMPYkxSHWho0YTXicumIaY8WLpWckxAqvNdL+W2w AQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hr3x30hrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Aug 2022 15:24:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c5lGtgI5v2GdnaVGA8HMPILmt0bd6c0PPHAcI0EDONBjEcK2GM8Fp3Zxl6GqYLpeQ6rh2Z8AG4QUQ7OStPBXIPko3C73BAyUX3RnOLBgBXJdbirEzmCJvau+k5Nxe2KA2QfOlsHJqpX02pobgpLSR1aR/3vJBhEKARi0eUxIraUSP9rS8AJH+zOfpaIKPmfi49M6e/prt3/rPdVT8ropwYccj7uVUWYrcHXNVlr5Dm++eJxmtjKedj3BKtrAMvu9MpkS1uuV9oeLOmyv2X9qKFVafZImaqzPu7poeiK203oVLUfExxoiyVEfnNF77p/zmdI0ggI7uPWnxjY+Smk1jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvIU+sb9FJN9A/fZqwr+cqZPg56Jh88qBKa2FRSQQ88=;
 b=gEbv1g6hysHj/aZ+Dt03XLf0Jm3AlkiXoxJks8H8U/9yifpjyHE7Z7yVxY28recX7RF9pYaRPCEjtP+jcy5VqBQJ55TI4pzsj2Wbjm+6n2re3IJGf/x+5thTL1DNmuSsQB+1v9AjHq8l4XytpWmqaxMKEH7WKHssTY+bpG0OHSACMiGL0tzH2lRR5f85Po0jMUC2QKUOFGfUqEWmZ3hZuDi1xQCcHgvSJC2szCUhpo+3C27q6Nmp6uo9UOQGT6mC6c1v6Ea85PrdR8tXD3qTxniC/9tg1HUlVEYmPoEB+Md+Aew2b0W67Q02y4Kxk1YN+lFjMyZCi62CoQ9xmXMIFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN2PR11MB4496.namprd11.prod.outlook.com (2603:10b6:208:18e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 15:24:51 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 15:24:50 +0000
Content-Type: multipart/alternative;
 boundary="------------LohG2Bd9qM0Shcv1erGgVez0"
Message-ID: <0db7ee00-f1eb-8efc-d27c-bc698b7ae0c1@windriver.com>
Date: Thu, 4 Aug 2022 11:24:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 8/4/2022
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
X-ClientProxiedBy: YQBPR01CA0097.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:3::33) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f62cbdc-a24e-470f-cb67-08da762d792c
X-MS-TrafficTypeDiagnostic: MN2PR11MB4496:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RIZ6lY6a5j2buLA3S/yzVvh82fTUjXM7pJPGnEg0gY+a+kfDB4uzykixbTpnNZEBadPufv/C9fNj8IPWZ+INXiqNjh2nBdV+suem0x5Bp57wRkx2uCZjDBeSDcmqBRI23Iet9gSpoqD9ms4qAsa7fGsMywqotMWRH6lAPGAdAbtqqyUol44rnLEb7oby5mPCkfBV9ZnDY0t4/40kHU1LifZjO3N7W4Py+Gvetxx0wD3IiVS6JWhxKYTo/rrYFG8lp7yAAADHxPKxpz2bWYMMsWbkMW4akjPhZLG06AnWTU3WB3Klgd4bhWCDqEAyAxfBLUUV89ZK8F+O2hPQMuaIKta2v9T6YVi1K7Cdz5xoQWwTLGIf1temGB692VF7yZHiVJ49NAPyRIOyW6Y/8ayOwghe8QdRQXsCkIqrn02Ico817bel0ebYzMKDLUVxiyqOPkoBuCqgA/j3WExWEzraNiRfYKqBcuSMv9XclD542sYr/vz3a+M7SLlS/fOtNipfIwTZABG0wtPrk2svpfGkRtqxGrIPLa1ZuXk5pBsDC8gJkPAHPDew/cYMPygloX3Z7elIpXaAL5EoJhLEUWRg/glhrGt5dce6LCVI5ThISATNtLwnaU0+h/XS2Ll5FfUKl7iMKZo9KL+HoTUIUK5WGPuuOAq2qLChVP3J4rtklDxnUpWpTCttFSwo9Y9pG/7JVKZbkbx5laLBXYYVITlRNDqggMBzWzchKjvsbalaPgs+zDkGk3sfbH4taF7ZqTvRbtPJ1mFb2suHgrkYhMTLipo5OVhpuAZzB0y5NAUyRzV0jMBJ5eoFB/Yz6iFAwfc3AmNO/QsvbIZ/kBqMyTT+42GwgrOvBX9Yrwm2MCL6gtYJdWw91fHrKGJGmC/QU2vJyjtnYu1e7D3RFsEAPMnmbw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(136003)(366004)(39850400004)(396003)(36756003)(186003)(166002)(66556008)(66946007)(8676002)(4326008)(66476007)(31686004)(54906003)(6916009)(316002)(8936002)(966005)(6486002)(5660300002)(7416002)(478600001)(26005)(33964004)(52116002)(2616005)(6512007)(107886003)(31696002)(6506007)(86362001)(38100700002)(38350700002)(44832011)(6666004)(2906002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dG1kanFFVWw5NFhJd20zbzgxYStqbEl2K2RzdyszMlJVVGs3V3krcm96dCtm?=
 =?utf-8?B?RWpNQUpWdkgySWg4b2oxeTJQMG5nQkM4WTZKOHhvQ1V2a1p6SXJlRVluOFdT?=
 =?utf-8?B?K2pHQ0MwOTFOaGhESFJod0hTWmdtYXJZKzNGUnVuSGdhU2p6U3FFelBzWE9z?=
 =?utf-8?B?UDBoaytHUXJhVzRZaHFWS2Zpdis0R2pkN2Q4OFNMMDdnaTUvL2s1bmtnZHl5?=
 =?utf-8?B?OHRWbllBa1JpM3ErV24xUlN2TTZmTDBOV3l0LzVlV1IvMG5YTjIwYUNLNXZZ?=
 =?utf-8?B?T3NLbjNkSTR6UzZxdWRTcG1WRmloenpKTm44NS80QlJ3QWFkQmQ3dndVV2hy?=
 =?utf-8?B?b0V5Q2xEK3JHaENoQVZsckxFNU1aOFR5YXZwQVlSZ1hJY0dMS1RBaUY5MWZC?=
 =?utf-8?B?QmQxWnZvQ3VmTEZxMWJkRVIzUlhIWWlwWDRDWHVyb0JhRmI3RmV3dExFekxl?=
 =?utf-8?B?cHk5ZEVPU0p4M2MvTE5oVDNkSzUzektqTXNkVzNqRVZHSFE5V2dFaytCZ0pI?=
 =?utf-8?B?TzZ3SjY4VmlKbkFqUWM0MjRTN3RVSS9jek5xamNvYUlhTHplM3hCbW0xZ2oy?=
 =?utf-8?B?Uk1YWXZiUjc1TjkvK3FvL1pvRVFsTnlQamNkZ21KRXQxTEtZYWpmOWxhMVlr?=
 =?utf-8?B?YVBGTFRDWnk5K1VFbmNJMXp0MmRpRCtzZmtzdjhEVUIwVnRYckRJN1ZJSzcy?=
 =?utf-8?B?b2M1QXoxelg0MVhNWUZtMGN4OUJnbVNQc2Q5ZDJiV01Lb0FRUit6dUlsTVJF?=
 =?utf-8?B?NXJncEEwOTFneURvRENEbnJ6dkc3MjdEd1dHR2djdk1wUmczVEEzVFB4TnFu?=
 =?utf-8?B?dFpuMEtPRklJN0Y2aDFMUUNhZkwrbTBITFEvWWtjdDFzTXFVVFhyU2diTThZ?=
 =?utf-8?B?TW5DVElPUmZhNkE5VE1zU050L0IwTGtMU0g5Z3VreEhPVlE0TXZMdmlrcVJC?=
 =?utf-8?B?ZkN5SzM5QndVYk5DK2liNFN4eXppWTBoeC9DSzNzWnRwQkxOZHlFSWZQc3Ro?=
 =?utf-8?B?bFdxRmtwdm9YRlJ3RkNkZnFYVmQ1dUpiN0twSFdESjlmRzc4K0RMTEluUmRI?=
 =?utf-8?B?aVpDb1plK25INHVnRTNXSHROUFhVanorL0VDUzJid2JERElrTGlIZ3ZBNTdt?=
 =?utf-8?B?KzlUenRaNlRpdEtHZ3dOa1MzRy9oaHdOcE92WE42U1RlQklNcnZ5allQQWw5?=
 =?utf-8?B?YkxBOVgvQngwbE5mbUdxUWxYQmtiSlBKRTBkSG9XVVN1SG1pZ2t2cGh5a2Rr?=
 =?utf-8?B?bm9hNGkwWDV5clMySjgzMUJoTE8xajV5eWRYSmFoc3N2ay9FdTVGNGlxalNl?=
 =?utf-8?B?ckh1eHE2eERvcnZPYTZscW1JZTVTcVFZWS9CYVpQY040cExPQ01ad0NweVpB?=
 =?utf-8?B?bWRXUklUK0NtL1VCUEhvOGV2MGlBUHJlRnA3R29Eb1JVamRodzdGNTVjWGNW?=
 =?utf-8?B?S0UyYzB2Y1dnSUlXdDJJNDhoTlMrWmVjN2haMWJrZjNQalgrQVhweGR4REJI?=
 =?utf-8?B?TE9TOHZkcWxnTzNhOXZzZ21iMVJ0eUNHNTI2UytweXRycHlKdGFoZVhYTFFl?=
 =?utf-8?B?bVYwaW41UEtTYnVCb3hiV05XY2dxQlFRYVVFMDRjYmJYMWV3L1NCTFl3MkxK?=
 =?utf-8?B?UmhnWVhncEkyVHJKTjY4TTAxMERCV09oTUpmNUVjMEZqSVpvNFdVcTdXU0Rl?=
 =?utf-8?B?MFZZZjRCYlR3WjdWenFDOUNPV2dIZVJkREgwVGRzM3BXRWlTLzVwK1NxK2hr?=
 =?utf-8?B?NlBJcTlSNG1TRnI5TVpja1lVVlpsbG5tLzhlT2I5WkZnV0dNOUZad0txVWtR?=
 =?utf-8?B?TlcvTFpYNlpvRlRGZ1VDb3IzZUl5YU5BSnRMV0s1MmV1V284cHIrdWN5Znlt?=
 =?utf-8?B?WUtWZ0dydDR1Y2pRV0p3b05IQzJISUZXaExQMkZrTUNJdmZuRGtKanRxVk5w?=
 =?utf-8?B?NVRZbzRvY1NmMVRCQUUzbk9HR1M1V2xCdENNeTdTZGtRMGtaUWI1a244UDFp?=
 =?utf-8?B?VzhvdVFFS1QyNEhQckNYSE80UGRvZU8wWEVUaDIzOERvSyt5NTM4VWVrSWoy?=
 =?utf-8?B?VUZ5WWNUaENocWErcVhrcEZBTmhMK1B1YytyaGJscnlDbExQeFB6Zlp0NWNE?=
 =?utf-8?B?SG5rejRZUUkzRU9FTWMzMlp1QnBDTEthbjVvTmxyejFjSUhhdzFXQkZVRmcr?=
 =?utf-8?B?MlE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3f62cbdc-a24e-470f-cb67-08da762d792c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 15:24:50.6962
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 XA7MW1OtYz+RVYwEFQYoT2016qZteZrLBjSYIGfrx/JoVj9RHgiOmw+Kj8hNRLlzJBf3xa1OcJE5fXO3BLsFTsZBFMs0eeBMBZdLhTw8C+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4496
X-Proofpoint-GUID: 9fj3WPasIlzacKBvoKJVpskWsUoW4J62
X-Proofpoint-ORIG-GUID: 9fj3WPasIlzacKBvoKJVpskWsUoW4J62
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-04_03,2022-08-04_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=921
 suspectscore=0 bulkscore=0 clxscore=1011 priorityscore=1501 spamscore=0
 phishscore=0 mlxscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2208040067
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 15:25:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57781

--------------LohG2Bd9qM0Shcv1erGgVez0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Aryaman, Ross Burton, Bruce Ashfield, Luca Ceresoli, Paulo Neves, 
Michael Opdenacker, Tim Orling, Alexandre Belloni,

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *78 (Last week 78)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *50 (Last week 50)
--------------LohG2Bd9qM0Shcv1erGgVez0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Aryaman, Ross Burton, Bruce Ashfield, Luca
        Ceresoli, Paulo Neves, Michael Opdenacker, Tim Orling, Alexandre
        Belloni, <br>
      </p>
      <p><b>ARs:</b></p>
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
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>50
      (Last week 50)<br>
    </div>
  </body>
</html>

--------------LohG2Bd9qM0Shcv1erGgVez0--

