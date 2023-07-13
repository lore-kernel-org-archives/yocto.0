Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE777C0015E
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 15:37:04 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11948.1689262618688464529
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 08:36:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=IWpdL4oH;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6558f0f7be=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36DCam6p029893;
	Thu, 13 Jul 2023 15:36:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=juiHUXfs2/R5JR7CmAqzQpcoxT8qEfLyUO1LiMCfIPw=; b=
	IWpdL4oHnuPAmCTeutA/0Us8KenifQ3/46xCACw7ESEEamBxNLbPeECwYDKuhuan
	bPF3mARQoMO3avi20iqllkK+lOcaXMN4EpmY91jMkaXjV+gtqu+tkibkfRk+olP+
	7St/k7yRnAmtOlaTYui53ofK+TzlYgU7MA0k7ZgRhNR1TMoTNzr/6VlMN+B5/B3V
	/NNPE3gPIoOJWtu58ZN5AJKu7MiDxMyD/DPLPB/GCUtzB8H42zTBMfIqW1Aj+/6J
	mrVSy75/zoiZswDoR9NBPgMgDU4Q9hNRmPaMUMykrukN+aXMxPqk2zaJDP7/7oqK
	FGVPR1WZ4T39mndE141zcw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rpxs5cqyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Jul 2023 15:36:51 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LY5OjpGGx128Am0thO7qX5XEI/08KFZFhpXaZeZuNmtjFRUTTUc1ifjEJyCaivWvR1V+ObKCDOo0GDEwFPlSGPBQFrSj0Xocxb8c58EwH4AggN/c9rltnj4dwbLMRml4fUtkLMW4clt+HUeyP1LOUyFLq7zfadqn4XD4sWvnniHPyAcciT4zkF151kQDfqEKv6GYX7dM+KoLAdNbinaQwrOyms2VO8l/E879iI91eAC0z1oxCbGQeOPeKCbm2iXmoNmBHFZJSA1GysvJL6uZ0enta+3888CmQCU5IxCcLJJWDabtiOIQgH9Ebbz6E/pOa2dJZlVWP003O7Xp7zV32w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juiHUXfs2/R5JR7CmAqzQpcoxT8qEfLyUO1LiMCfIPw=;
 b=KpcIgRX/sE8h1aN1O80PfKb+i6CyV1qrbR20HSniAB9Z1zPHh4RocNqlFL4Jo7y2o6SCW4DDAWlw1fAhCDCLodlptGD2AEGnJSCyfeg6bPZcPgjj8A49YJc8vB96DsbDiZrMATwGgO44z7NdDMLnBq38yZYYd/nOj8lF7+ZttZtxh0I/bQPw/ngwGsMDOxptm8GoUU0qjqXg3jqVtdL+EGGN4ptiH5h8RhR8MIcp1G1K2SL7Ct/+ihciDWwMEv3u77YsM8kMhr4AT5f9oMFH6+1gVMLMIKQccGgPJ0nfRNwTPo3PFAQFJYcqPVzr7k7+6MKazRjuRTxdhRNXnF/O2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 LV3PR11MB8484.namprd11.prod.outlook.com (2603:10b6:408:1b4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Thu, 13 Jul
 2023 15:36:47 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::361a:84a6:e004:25b4]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::361a:84a6:e004:25b4%3]) with mapi id 15.20.6588.025; Thu, 13 Jul 2023
 15:36:47 +0000
Content-Type: multipart/alternative;
 boundary="------------m0zul0T3mTIIwc54qc5ZBEyJ"
Message-ID: <79a986b9-95bc-1a6a-3107-74c26ea39e73@windriver.com>
Date: Thu, 13 Jul 2023 11:36:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 13/07/2023
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
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: MN2PR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:208:fc::34) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|LV3PR11MB8484:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e4d0661-480a-4c8b-12e2-08db83b6f81c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JFRX+fPP3onyngfIBHI94v5HJo4PUIsGPoJdHqj+Q6z3mrbKasmBo2MyuGLmbNI722GG86l9y9wYFKbnh+lBxdj1f17FgeKiD9EQUkeNgKsa8h8j9jlftJ1cVMLwM1uuwt66+xkVAjqLlunPHsmqVT8VPDZNwdL29gSjk6EMBd8+gw9WMaYh7eY3D5JRxD9voK3BGaH9n6lPLXDwxH+SJwD56aGdmIHPSmplrcjD75jiddfEM6AXCFAwtTRQUp+jFn2spn+Ql0RwE+nK/b4Ag0NRtDt0yx51uq+oB64EU2s5Dv/4SdTEDOjZVIkslYQZavMyRjZh2feDntsrKkGlTvLlYRxK9UtIRdhIaT6VCVfjOvBpKK3f9qbtx/gpVPZDXsgGZ6Fj8mORIb30zzhUxN5w07VECoanL5A5g2gkZEwkZT+jZw8A7GVZh+Pq3Ih1pTfiyIPmuABZX5UtYR49VoeXK/xQ2ifNyodV2AfYDZ/+0wGgUjYw2uh6UgpImesJtZFcWpkpCURQ79rMjBGItCQ1wADeYnrfrGJIdvqLRl9HrhuGT4SxnkB9gSMvnXvxUFYgZqF80ZrpTrWibKhIsMqcadqPlmGjFs/enAhtlxIAfRlexjK3XrNTK+32VLUuKJZT9CTlygd7GHzz5FnIPg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(136003)(39850400004)(396003)(376002)(451199021)(316002)(54906003)(6666004)(186003)(66946007)(6916009)(33964004)(31686004)(4326008)(6486002)(66556008)(66476007)(478600001)(966005)(41300700001)(6512007)(7416002)(8676002)(8936002)(86362001)(31696002)(166002)(6506007)(26005)(5660300002)(44832011)(2616005)(36756003)(2906002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OHhhV0svSVRZU1A5TW5uZFdqc1I0eTllSnlpUU92MnRmR05ydTJldHpURXNv?=
 =?utf-8?B?ejI4WHN4SThoeEg3NnBlNi9ZZFdNVWxhWXdZTXNiS1gwR3hDY3NFMjluQmZU?=
 =?utf-8?B?OVJlQzJCZjFqZk9hNmVVbEFwTHd0WEpFTzM2a0o0N3ZjUWRTQjZQL0o5V0Rx?=
 =?utf-8?B?b3FNT09KbmEwUXh3bXk3RDZsbkdoUkN6Q3ZZN3QwV0JRakJsZW9reEpCbmRz?=
 =?utf-8?B?RElpTldlRDBJb3R1VVI1dUNJWnVoMVNJejE1VnJnQ2VCQm04TTVmL2hFMG5k?=
 =?utf-8?B?RUljVUsyZml6b1B3c0I4alZVU1ZVRTM0V3BrK2ZsckhKQytwNGo2SVlyQS9l?=
 =?utf-8?B?emVPTFNkOFNxOTVuUlNET0R0ZnZjYkF4OWxsT3VWM1EvQTVsM25uTE9wR283?=
 =?utf-8?B?ZmlSZ0xmbjhWWDRabVUrM1pieVBwc3h2YVlwdkRpWWlTalZmTnFKRWkvNFZZ?=
 =?utf-8?B?MTNHUGpzcVNnclFhS21TS2hITGU0UGFXTENkOXZJeDlKNFY4UWJVemxyVTVK?=
 =?utf-8?B?RmNBV2x6Qjc1Nk5nN21uZnh1L09wNW9NRDNuSEtMVnlUc0VXY1ZJS09aZmNl?=
 =?utf-8?B?Q1RjUVRraHB3M0plZ21BSXozem4rd1ZLSzRBVEtuaUVIL0hIQ1J0SU85U0FI?=
 =?utf-8?B?bHVIMU9aUkJkYW10cXM0ZDJaVFVNdFR0dFlROGlKSUgrTEdpdG5vZlBDNGNC?=
 =?utf-8?B?b1BaVkRXZUsxSy9QOGtINnp4UlVybk84cElQd1NyODVtUTJmcDkzYlpReWxZ?=
 =?utf-8?B?RHRwQXVrcXN2UWZ1TFQ4bDBBRUdydk5HRnNmMTNMQ3VsSkpjVVJhTVRLNEZT?=
 =?utf-8?B?bHN1ckpDRkpTSEFzSm0zbU10aHhObXNSc242M1E0eHdYYjVqWmZKRXdiVnhi?=
 =?utf-8?B?ZHhaYzR3c3J3NEYyZmJPelg4ODhkU2tNWWxISStQay9KUnVzZjFmYjVJSlFl?=
 =?utf-8?B?RVBiOFphTWdCcFBVY09KUTFWUDhObkgvSzhMdm9EdVFjUk4rc1JKSmVNYkV2?=
 =?utf-8?B?VTYvd2NZa3VNSWFreVZXKy95ajQ4anJ4NUk5NTFVS1MveU4rbWw1QUlyeHNO?=
 =?utf-8?B?VDJGTnJ0NHR4R0dveUlQdWUzcDkrcTdKQUNkMG9kejdkWU92RUgvSDZkN0Ev?=
 =?utf-8?B?RUpoMEVlem93ZWRNWFpMc0Nka1VFS0xPc01oQzI1Z0ZyQWYrbGFPTjRoTGFR?=
 =?utf-8?B?ajFSSXZ6YmFCS0Z4eWtiSUo4YmRXZFM2eW5UdTRNa1Fmc2RqTmZQTklUWTN6?=
 =?utf-8?B?aTlrWXFRM1RwcHR0YVZCNFV2cTVPSXJldHQwZGhNUS9obGEraUVvQ1diK24v?=
 =?utf-8?B?YVN3QVZtVjI3Vk81WTdtOFB0cXZLRHExT3lPM1NwVGFhUzlNb3V4a3U2TWF5?=
 =?utf-8?B?T1ovbXJWdjZoREg4Z0FCZTl0d21XVVlFU3h3WkRrTVVxb0o2MzFCQXMrNkMr?=
 =?utf-8?B?bnFtR0VYeDJVTmNvRXMzRUhPUFFNZlRucERULzdRMTdqUkFtWVRGU0RmdzF5?=
 =?utf-8?B?T0ZpT3NCSVJGU3pSS0xpV01HbDIzT3YzKzdHTyt5TkxsQk1JQndzTXd4L2ZP?=
 =?utf-8?B?cFFZRWFiS3RmZGRGWi9QQjBLdzBLQUtRTzZZNGQxdUhrYTBVK1MyUnhUOEdE?=
 =?utf-8?B?R1dTdTBOeVgreS9kZHhKbytmcGRrdzBLSS90Qm9HUmkyM3ZzUHlBL0NOdHRq?=
 =?utf-8?B?VmRuOW9Rb014Qk9tRFJBOFBjWnNWa2VoSmt6QldhWEpKQ09ueFQvcHZFNEZK?=
 =?utf-8?B?aEVObjBtNzdFRGcxTzY3emVzcmpBUEFoRUdlUENCaytzazM0OExZQ29rSUUy?=
 =?utf-8?B?enZxemQ5d3o1L29MbW9lTWdncEJ2UGNKcEdvWDNyQU5ZdjBCcXl0ZHVBclU4?=
 =?utf-8?B?UDZvcG1VUlVEVm44dzFvOUZVUlhoODA0SmpMakY2dVM1RWpYcDFINVdIdmQz?=
 =?utf-8?B?WWp6MkdPbEFncGlJdFhtOFZEZW4xcWF3UEl5WG5nL3NYV3kzQ3h0RHhMcVNu?=
 =?utf-8?B?ZHM1VUl1aldoeHZrMUlFS2dKTmNLWTQ5ejdhTEdnczBRUzh4UGpQUHc4WHhj?=
 =?utf-8?B?eGdTRDRLM0NxU21hWnpIQWMwSFBmakF4aWttS0JkTUtPa3c0L3pKNndIcUxS?=
 =?utf-8?B?eW9YYzU2TjJaaHZ5ODBXcDNDL1F4ZGVacjRFQ01ubGhlZzluVVpBNHRRbERj?=
 =?utf-8?B?SWc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4d0661-480a-4c8b-12e2-08db83b6f81c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 15:36:47.4412
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3SHfbNKaXqgS7LQdsXi22YG7NiYV9x/gFT59fb40hAfcRj5LKr8FRRuVWtC9iPFls/lAX41PSnSZrY2uOvGe7IHRf6GNoT+HDHkPhLmmzXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8484
X-Proofpoint-GUID: j6wwS8snmGber1vfZ0Pw7LWEkso1qFd-
X-Proofpoint-ORIG-GUID: j6wwS8snmGber1vfZ0Pw7LWEkso1qFd-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-13_06,2023-07-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 mlxlogscore=916 adultscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2307130138
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 15:37:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60569

--------------m0zul0T3mTIIwc54qc5ZBEyJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Jon Mason, Randy Macleod, Alexandre 
Belloni, Tim Orling, Michael Opdenacker, Ryan Eatmon, Thomas Roos, Luca 
Ceresoli, Yoann Congal

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *74 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *46**(Last week 45)

*AB Bugs: *66 (Last week 68)
--------------m0zul0T3mTIIwc54qc5ZBEyJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Jon Mason,
        Randy Macleod, Alexandre Belloni, Tim Orling, Michael
        Opdenacker, Ryan Eatmon, Thomas Roos, Luca Ceresoli, Yoann
        Congal<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>74 (Last week
        74) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>46<b> </b>(Last
      week 45)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>66 (Last week 68)
  </body>
</html>

--------------m0zul0T3mTIIwc54qc5ZBEyJ--

