Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12617C001B0
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 15:08:57 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.19766.1691680134259343405
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 08:08:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=OMLGPm9/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7586f9fce2=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37ABoWjK015406;
	Thu, 10 Aug 2023 08:08:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=NbnnYDbk7jrjW9V943L4GMZ1RG/fYNtnfZ2I4Wcwc2U=; b=
	OMLGPm9/11zHDHwe3ghCHuS1jIlQb3gsBlgx1p5NSuQ7maDu5rb4jjZ8WwKMoldA
	h3/Q40iEGkfLyOfCQ+M/8mf0es9uMyAA5xCXKweNOXoPHe8ANTVOgTJnnJ8lkacP
	vu5e5kLVnho1R47d+IEmWJeU4WRO1M/QhspfcyHiBefV/OFyBCtOd4eWHdUe+1b3
	tCFi2U2MtpVHFMXQjEYwPQnaOHi5Ts/ngY3onJXIv1t35EFGa+MxvW1wBi6gzLcr
	OIm7EzAPf5veslotNm0yLPf0d6a3floABDjXELdMcD8xcpSrL3KB+BwkDIq7zSqJ
	O547mGNNgfJEvfgtalnUFw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2177.outbound.protection.outlook.com [104.47.55.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s9hq0cu9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Aug 2023 08:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAX0jvc1MacVwAS3NH3UntZsXK8eC/kXSi4XrXGCq5VwS6lWARdfzPUr4IpcjmGdaIXaOVHoWQ4XyBDFZ2oNvc8TYM63OCK9MLPyeTwPw8D8B5sHM04CB1efsIz+5aYz++qHznb630g7rTxwCW88+IydFSaVvq5GgPhCrqaz4/cgbrkEDWWPI2gnajG/enfcQdMjwdxROeDEiZDnllcGZ27/sjVoMCV18qUSfbkSOaJ0Drcnstwfh/evZB0HG41KbcdfiLDie6ysnGNYb/i0IoJ8ZTiHH1MmQdv77MIzb6K5/+HlR6gdQfvkYx0+NLQO4mk6CI3O3Eld5PPAxSrhVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NbnnYDbk7jrjW9V943L4GMZ1RG/fYNtnfZ2I4Wcwc2U=;
 b=NqldiKlwQyxU55KcbyJU7tJsZL0AGnpU5NYZ09IavKsCGGDGbZwxGio0pCMNorozjPslebgYQbp9+kKI67kVx4m0JZo8VfgJCvqN1oQo3Eg2sd6L/NsY9WKF7y7wc5FzuENWTVJHaNCk+JD8lZMK9alsUwzZrI9eSE9i+430tymIeuffYNq/+lKrCh0HKBZHcxZY3EgsLTKEvap0x4WOKuhPolwvr2abzCrEHxtR6XTFIByh0swYCiN4B7o57HkJf3QCNmUtGSQ1KzJQggiIcJr7Z9KcIV7epYuedQTxtEeTozJf8AZKx6Gh7QTMEcvHaJEkDXcZ31auW1SWt0inow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DS0PR11MB7357.namprd11.prod.outlook.com (2603:10b6:8:136::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.30; Thu, 10 Aug 2023 15:08:32 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f%7]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 15:08:32 +0000
Content-Type: multipart/alternative;
 boundary="------------EL0QF5OFvFw0XJYWXjSrb0zs"
Message-ID: <155d7f61-6c16-ec96-d576-4be0bf3aace1@windriver.com>
Date: Thu, 10 Aug 2023 11:08:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/08/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net,
        antonio.oliveira@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: MN2PR18CA0030.namprd18.prod.outlook.com
 (2603:10b6:208:23c::35) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|DS0PR11MB7357:EE_
X-MS-Office365-Filtering-Correlation-Id: dad6d650-4dfa-4cdf-0263-08db99b3a89d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TT5S8vwYDokSABz/6+Q/3iDkCo1eA8ufH0FkFLhtLMQiTmumtgtJ4XRUJ2kFP/wYpaJIyBYT1I42poEjekvzMMrbaXHTC9dNtJqXJX12o2ecskaI0VUzfinHIOWbpHt6glmeDsIMcHzDMz3wwEqWwGSbpLpAn0S2ukSTChK6VgUp86zUQpPeUb+DeMvNiRbozF456egopEbzp8BotsZcmpMNC5b8gbI7XN/9xvK4a0LgsMO7CHS0Z/leLadnflbwSXI8nJvBZzjt0q3I6Dbe3PMdUFeex3j0EkeMuvVcx60QlarFQSuXaE8c9g+D7PxSyZrxjmE4xXnAVUzUL2poCq1b4NWDDPOUXREg8I32iWPLG9b9pvJCYYts1SJkyHK7RA/pDpt4+AGFQV/GRihkpJR5sDiwAiqcS2fdcb+o8ol/NpfvQWLQwZ23UvkrwLrkS70A5bSMobgl0SVgnUIxv83M6c5k1c7TCT2OsHAx80+vnc3F4cgB0oLbKtNppO+yI9UhJiQjXiSe0nN/UoI+L13LEaDmATJ05+qRbN/awxIJbunxJSasF02SxMVyf/SShG38RoCpokkTo91JQbyyQIIZNufmDqsfyYbE6lp8XOq/iVSRLmjXPUGwUGgI8Q2MYFTNX5K264uRUvdZNcsPdw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(346002)(376002)(39850400004)(366004)(451199021)(1800799006)(186006)(66556008)(38100700002)(66946007)(66476007)(54906003)(36756003)(7416002)(5660300002)(8676002)(8936002)(316002)(6916009)(4326008)(44832011)(166002)(2906002)(41300700001)(31696002)(86362001)(33964004)(6486002)(6666004)(966005)(31686004)(6512007)(478600001)(6506007)(26005)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?djJxNG8xak8xRDhraTNoU1lEd0R4dHJWZGZweGZDQkwvY2YwMDVxZFhtT0Rl?=
 =?utf-8?B?dXg4TWRES3FuWUV2WlNscUkwQWtJNnBabUFVb2wyL3VJTm5wRGtVa2RKa2Nv?=
 =?utf-8?B?T1JOVzdSUG4zUDM0MGFlcVovVFV0dm1vVWRqc1hZWTdmaU1QOEhmZTd3ODhE?=
 =?utf-8?B?T05EQmJIOGVLeW95SW1ZbFR0SFB2ZFJhL2hPQVZFWTJ1QzU4alhyWEs5V2FB?=
 =?utf-8?B?NWN1RzN3N29lKzlDWnZnakNSeUt4QnNLNmlRUEhYZVd4SUJCR2VPdENWNDdO?=
 =?utf-8?B?UDRJMzBtai9BalFNTlRGSExYQWJWVWdwcUNxWG0yVUY4NnF6ZkgvTlJ4RXNp?=
 =?utf-8?B?ZTdRRlVwaWVwSXJtS0lSKzIxRDJ1RTVtcnlvUnhlanhkMUw0UGVqTkg0VnFF?=
 =?utf-8?B?TkpHZG9IVVlINExhRG5OME50WlNqeGZFMzh6WmZSTklVcUs0ODcxTTF4U0dS?=
 =?utf-8?B?R2Fzd3FiVGcxWXFIT3JXd2RwNDNaTGxXMHFSL2h6S0hqak9QTmZPYndiRHFD?=
 =?utf-8?B?aUJCcCtXUzVGUUpGa0hpWDJqSFJaaDV5bkNTWjRzeHdyUHZQTlFsVGFJYnBJ?=
 =?utf-8?B?NjZwRlRMSDJaTWUyMGpDaUJOT1FIOEp4ZUdZM1FZVHlldGhGRGdpYXduVjVO?=
 =?utf-8?B?TWVNMDEzUXppQkJKZGtJVGUzSjBkWmhMTS9wWFJONS8wVi9yOEYwcTVUaWgw?=
 =?utf-8?B?L091UGl6NlJwTTN5SlV3WGpjWFNqNEQrMklEbFdaVTJMNkxRNjhuT1hjbDNn?=
 =?utf-8?B?THdFQzRPWk1vNWRJYnlYdUc5Ni84aThPT0dGMTJXRHlXNWVVeDh3UnE1azRo?=
 =?utf-8?B?NDEwMVg4M292ZEdlcCtzTHVEbHk3M01CaW5hdmJ2dGdBWXpzN1F5SnIxYjc4?=
 =?utf-8?B?S1YzODlKQWlRcGd4a3FIeDdkbms0N1haRUUvWExudEgrNXRkek0rRHVQZzRL?=
 =?utf-8?B?MGd2MnlLQ2tpaUFWcThMSnhKQnBGTjNrWjZFa29uMnNJSHFjMGxoVG5rVUty?=
 =?utf-8?B?Nm1BUnJlcU5CZEJYY3lVcDU1S3R3dE9xZS9NODhpV0cxaGpMaWl2Qjk1VkRm?=
 =?utf-8?B?eHFzRStNUzF2Y2FCcmlTalNoQWdTc3RxTzJUQ2V3aVlRbGdxNmxPNzFLU04z?=
 =?utf-8?B?M2k2OTNpY0tIQTZOT2p0T3p6T1E5UUY0UXl3WnFOTGlhcVE3THJhQXNZQjFS?=
 =?utf-8?B?c1JxYnM0R0pqRFo3OGVndmYwSXJrUytRTHRveUlLTnhyamhQRnlCYTBsL201?=
 =?utf-8?B?NXYrblkzNWxFenIwNjVwN3hQQkwzdlJQT05uRVVBMUtUbCtCUW1LQmZab1Vy?=
 =?utf-8?B?bTQ3clBaWXBhWTJxa2FKM0ZDL2pmdkVTUzBKSjNMdFhpYnNnSVM2V2tuWFFE?=
 =?utf-8?B?TVQxNkpQcW5XMjJJYnlyVUNxQVZ1QklpU001UGJXYlNTZ2hTbTJReVU2cnRx?=
 =?utf-8?B?Y1hEOURuY3gzR01abS9LbFJyb0VPQllLUFdSeVBQVS9kVjF0SUtxakpCVit3?=
 =?utf-8?B?MGIvZEI1dkR6Z0ZvMGFHLzh1OU1sUWwrMUV6c3J0VkEyODl3eEwzQnNONXFt?=
 =?utf-8?B?VUI1QUJsdDJnRU5hdHZXbUdtWWpPZ2FPMFZXRG0ydDllV1VBL0MxWGd2MklQ?=
 =?utf-8?B?RHZyU1FFV3RWRTV3Uk1CVEZnVFJyZW8vZVBORUNjbWkwYy83N0l0eGo0Rjd2?=
 =?utf-8?B?VU8wYjZJWHhLRVFPT3lWVnRvbUx4TEVaV0djN1kwcURMcTZRTFVqQkhSNWt4?=
 =?utf-8?B?QTcyZmlVcThlUEhtV0JxWHZ0NjlDNzM4Sm1EdzJQNy85Z3RYbXVoV0d6R3ZP?=
 =?utf-8?B?Y0dweXdhRE1uZDBGUWlZY0g4S09VZm1qRDB4dmErNnJNa1JxUTVVUzdJSjF5?=
 =?utf-8?B?T1FtRmd4bnl2L2hFT3NRc1paY2dnR0VtL3Bmc2hDRlZEN01GQ0FwUkRwK3Zq?=
 =?utf-8?B?T3c4OEZsRUo2N1IwVUtId0xUaGlGMGxaeHZrVUtSamdoRTFubGJieWJzdkFl?=
 =?utf-8?B?bCtmakw0NldlZTZPYVErdTBXWlR6dU9RRzNBRkhvQTlDQm5sSTFBelJ6dExW?=
 =?utf-8?B?QUM1ZTJ2OEpIY2hneC9pMWthRHNOM0V2SVlFcEwvbWdwNGYvVm9UQmxTeVhj?=
 =?utf-8?B?dVBiak92eUN3bWlURkZkbGNWY3MyS0crTFRrVUJrSkQ4Y29rSHYvVjh6eFRx?=
 =?utf-8?B?V0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dad6d650-4dfa-4cdf-0263-08db99b3a89d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 15:08:31.8859
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7o2GwOAfp9RtZvhTnPfWNf+DBJQdoOPqru9a3marWS8S3uB0qu/+NX1uaXK/ApvuD1CuVb9ACcB/0w43ilxpFerot+Yipsa7bOjZ85uxRSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7357
X-Proofpoint-ORIG-GUID: 9TVskCxBXJnVsoK-GVTzVjVxD47-S3Nx
X-Proofpoint-GUID: 9TVskCxBXJnVsoK-GVTzVjVxD47-S3Nx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-10_12,2023-08-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 impostorscore=0 spamscore=0 clxscore=1015 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxlogscore=828 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2306200000
 definitions=main-2308100129
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 15:08:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60772

--------------EL0QF5OFvFw0XJYWXjSrb0zs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Randy Macleod, Trevor 
Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, 
Pavel Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *65 (Last week 66)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 47)

*AB Bugs: *71 (Last week 71)
--------------EL0QF5OFvFw0XJYWXjSrb0zs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Randy Macleod, Trevor Gamblin, Alexandre Belloni, Michael
        Opdenacker, Antonio, Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>65 (Last week
        66) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 47)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>71 (Last week 71)
  </body>
</html>

--------------EL0QF5OFvFw0XJYWXjSrb0zs--

