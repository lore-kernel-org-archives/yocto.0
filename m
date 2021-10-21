Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A277C433F5
	for <webhook@archiver.kernel.org>; Thu, 21 Oct 2021 15:28:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11080.1634830124935158406
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Oct 2021 08:28:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=E6ypUqOB;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5928ee0f30=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19LDWE1i007887;
	Thu, 21 Oct 2021 08:28:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=YFjlLSbk+b/4sGu8urdl3jUgu67gyJshJIH8Xrnu50E=;
 b=E6ypUqOB58PVM4VqPCRytRd67EQSzWnuxccxUQtGe6E7IQACYHxSCmsfDuG9tpzSJ2kg
 hC8wDdj/Sqsp3n6KdHgMljeRQOo8nv49/gq7mbI4fq+uYs9YHXmbK0XHFnjo02jFkeNz
 7SDc+ojYCh5yzHLIIMD5iETeGSvohHgpYkjsF5tOptFx4hQ+hcYR2fK4w7APILmhsaCs
 qVsJXlywm/Lkz1SGhYBbFnJTvHzJTyimScHrf1DIEKbfszexF7ZgY6Z5at67DOcCQhD4
 Ta8qk3aLa8GuX23dQjaNtsgqmM+KwjDcTFR+FXOuG1o3ousXcExtjVuAPenneXhRmdVj 7A==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bu965g3j5-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Oct 2021 08:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQe2FQthBXcidfRaZtUGYIry6D1yBcu3ifvLhoVy3kEaeVvgRdNqAKDzsYWX2GOe3kKRovMgU2R7mNJxQg+pINrWv0+Ld8s4rDgajoV53qlSLiWhUIoBd1Lh1Q8KIr2YbV9cJSbCcrLRNfC6jDzP5JK0p4wJm/ST1H7PL6XJggNsC7S1vooGF8eXZZu1uRm1/bALU95ZDbIb0KGS+/PfTqXBP54P88EAVchQ3AgZMtJ+WSaeJHVKHiYxtMEeiMnbEE50plTKkRFfIa8kiBYa3j9wf+rpmA3pL5D4Eca4/Gy3VISx4sZskC9HdKZIYGa4JJMYVEqyjQKOB37eEgDwVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFjlLSbk+b/4sGu8urdl3jUgu67gyJshJIH8Xrnu50E=;
 b=C+siSjeWPh1sQFvY4y7MMQ7BxOU2R2RSunCXQJVNhei5bDqN+fu4LQcw0oGLikS9AYa0pV+0mRW7QFD71LAQhLGoCd/wx8FRr7PlnlSaOqzEGEktX7C8zSjwry+LEDmoHZavdLIIHMrTIYqooaZjrfvLMSk6iOT1QBBzwgRC/PgYA/iFhcXK4JIM9MIUUz3lFf0CpuyDeDnTCa+TbHOpf8aFf4notyEoOtwSfl4EiqpRg4YorJEIMdruX7atvxgNll4Nadi+vRtFt2YAjHcESQevqTuSTVNiILKotbwqJJaAxLWWnH6gQ1SBVacmjDPh1WhkqC2t5lmbKqR6TVqEZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB3910.namprd11.prod.outlook.com (2603:10b6:a03:185::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 15:28:31 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4628.018; Thu, 21 Oct 2021
 15:28:31 +0000
Content-Type: multipart/alternative;
 boundary="------------uztPbsUYdGrtEi1us308Lspn"
Message-ID: <4fc7e792-34c6-6518-94d0-926f29c336b2@windriver.com>
Date: Thu, 21 Oct 2021 11:28:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 10/21/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Steve Sakoman <steve@sakoman.com>, Ross Burton <ross@burtonini.com>,
        daiane.angolini@foundries.io,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "Mittal, Anuj" <anuj.mittal@intel.com>
Content-Language: en-US
X-ClientProxiedBy: YT3PR01CA0031.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::15) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [192.168.0.191] (199.167.119.224) by
 YT3PR01CA0031.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:82::15) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Thu, 21 Oct 2021 15:28:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 79189713-ba27-413c-f45d-08d994a76f8b
X-MS-TrafficTypeDiagnostic: BY5PR11MB3910:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB391073A0D73F1A5A041DCDB59FBF9@BY5PR11MB3910.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 WEzEWoAKIJR4xNrKIZ4TS8DrVxbo3jY78mrwy4ZbsybyIBTMsqkHuglNAWEpuapVH8Dw3WgC9x5mBSGrW9lAQGIvmY5syLPYy6Hc15xKJo3zMrxwdGX+tf/YfHxvf3OD2x5I+JwWXi8j4xPqXlUlS8jJHUVTs9Tbsv7LxY3knaNND/BhnKpcBSmXQIxzRDEw6chzCZi4BcWdyahRP/Yis+um6VwNjzPNOHtm5fPzA/dwuFzZsttzVYz5KgIYWHxfrzo6m60q6Pd6drMU4+3LwYg5+/B+DkCnt0pA0osPMDK9x6jBDU0rZtUpqLLw2t7+M4iqqDVa544d2t8j79PzQFMFNaO6io3g7vBRak/dEItfZzdy46OmidzYGErH3OlD697cua1hQLAhPPkiMzI6BqLQgKhR8bsyVBA1Zm9ZDxyRGmevFcXXGe7jw0OzJnZcNL+ZHYLDw3yddb+ohWSUTpNWkPsEywhpqnNL/FMO3HDf9xFvvN2htbjtHn+Ertse8wTH8L4te2NRm1niKrNV+HSu9xLSyXIPC+IBfOY7VndRdKKt2SeFbg0bxGBc3UC8AzrA8oIBRTCSpIAuoEoWukXwhJxXV1aH26ky4s1U4CvSDtBICUfwzMYlGM1sH349wiALOIOjT6XMSm82b2KFpYeqMJOc8EV4mIIXNFkkX/j1fWwnZRtqmNOAKOhsWy6HwwSWBFtjZsbzHUTYskofGmwZ2kNfwXGv65jiZ/9uFcthYkmBOjVjA9JRgAZJZIn+QjMzGUDauTx7qSLEhwUSSomUdgA4C7uMlhgMDUjoa+gfiqgY20B0zlaDc5qkG3WZ
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(186003)(31686004)(38100700002)(8676002)(2616005)(166002)(44832011)(316002)(31696002)(956004)(33964004)(508600001)(86362001)(54906003)(6666004)(83380400001)(16576012)(6486002)(66476007)(66556008)(6916009)(36756003)(8936002)(966005)(66946007)(5660300002)(26005)(4326008)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?a3I1anhpbzhXakl0dEpNT1NwV2lQL1VVL1B2S2FLejJGelJpc2plVy9QMFFC?=
 =?utf-8?B?SnZKOWQyMjZNTCswUDNuVytMNkFSUVdtUnNsRUNONlNBMEFNTGJLSUZsd1pC?=
 =?utf-8?B?bkhxS2RGS0ltbW5xL2lhREg2VmFTT0NLRnBJVGJ1eXl5RUNTSnVlZWJTZjR6?=
 =?utf-8?B?UkRMWkdEbGF0OHpjMWhjbXd1N0w3bitNQm0wUXlNUDJ4MTUvdW1RVXhqem9T?=
 =?utf-8?B?eGhnTzdkZWdCMy9hRUFBMFBzQVlybGRNMTZ1REQ2UGl0WWRXV3IvblZjdm1r?=
 =?utf-8?B?dHlpTHBnU1RJK2RaM21ObWZOTEErWXpMN0NLTnJsNzRaUnI0TERFcWdPRVJv?=
 =?utf-8?B?d3pTb2dxNDR1aWtsL20ySFNPL3YweGhYZFAwVnpiUlNoRUlyTGpXZllxbWVD?=
 =?utf-8?B?N3c0NWd3b2JldzVyWVhtSkUxRVlMSGtBSWFrRFlFbW8wRWcrZERYeG1OaU40?=
 =?utf-8?B?S0NOOU0vY3NObkFXZ2RMMjVjZENOQU16WUM1a0ZKNUM5czhNdDhrSWhRSlVT?=
 =?utf-8?B?RzBXajMwcmVwRDVGaGNsWVJDeEhLZUwyMjYxRWJPTThUeFlpdFR5UDQzM2t5?=
 =?utf-8?B?Z0d1WHhkYk9aU3c3NlZTZ20wUnVNWElLNUJRUGRrUW1BRE5ueTJGUTlldUM1?=
 =?utf-8?B?ajQ1ZkpNQ2xTQVpiNXl0OFBCaGIxOFlKR3R5MWI3bHVYekNSdFNEakdvOTY5?=
 =?utf-8?B?VUtyS1lQSmpxRUd5bjJkSHZUNkJhUTJRRDdBbUFCU2l5bUFzSUpna2pYR1Zr?=
 =?utf-8?B?bEJ6QVNsV3lWMXFBNUw1QTV6RHZwRTl3VHl0M1REWmlyNDlWZzVkZDdlZjlE?=
 =?utf-8?B?bFI1b2RPTXBEZERDcHE1dmZmYUFvSmZOdG9QeThWcmRPYkMvQUlvaE8xZ1pY?=
 =?utf-8?B?WFg4bjNoY3R6d28zRkJSOEtBT2dTN0c2cjRQQjVtYm1acU5HZ0E0cnhLMmZV?=
 =?utf-8?B?VGEyaXBock1QVkI1Z2lUU052UTArUGtZL3RnSlFIV213aWt0OEdlUmMwakFn?=
 =?utf-8?B?MkVtZDF6eFE5R0FmTFVLbEZOdTRxejRKZ1p2UVAxZzlYUTl2QW9oYk9rWVRJ?=
 =?utf-8?B?R296UUFjd3RYSHRKQUxqWGNsampnTGFER0hQcWpJcUdBV21MUlBJVEk2RHFs?=
 =?utf-8?B?d0xSdEdrZ0RFNVQvS3FldkdkYnFadVNBbnppT2NKY1IvczQ0YlByR3Y5UitV?=
 =?utf-8?B?VWY0WXlsRHVmZFZKZWtCbjMwakhpc1YxWFBzSHFDUDJnalhNeDJjUGZMaUc5?=
 =?utf-8?B?R3pOa0FSWHVQeCtCbmtZWDNlZ00rSS90bWxBUm9MLzNJR3lpVGE1SldFU2VG?=
 =?utf-8?B?Wk1FZVZvSVp5bTBiS2tNVzdRb0xzUkNJZmZ2aGJYV3lTeUNtc1RqQ1NKOFI4?=
 =?utf-8?B?KzN2eDY4NXc2RWNXbUE3NHRBRjNuMDd5Rk05TDV6TS9BR1h6R2d4MzRvMlRx?=
 =?utf-8?B?YWp5MkU4MXRwR1FyWTljZUdJMjBZMnBZOVpqSHlEbURzRUJoeU5PdnRHcSs4?=
 =?utf-8?B?c0Fad3VnQnQ4TWxIWUZHSGh2Tk0wOFdkMlBLTlBCL1FpT0YyY2xiaVdGQ0Ro?=
 =?utf-8?B?YXAvUUlKVU9wc04zdytvbzF3U0J0dDV0dDJRSkVyQWZaSnFNTVRyTStvY3Qx?=
 =?utf-8?B?eVQzL0N2VFFveWk4UzhYSWhzdGdIMGtiL05jR1pWWUlhTUJkNk5sZXBvc05J?=
 =?utf-8?B?NkVZR0FEaU5kRllIWi9XNndtUVdRdEhwemhTUC9hbnAyT3pISEV6L2RPZWsx?=
 =?utf-8?B?cFVHSWdGeGVXK2pTSmV1OGtqSlRKdE1ZNlRmUGxTaXIvN3hpMmZ1NFcwbUhR?=
 =?utf-8?B?eXMvYUdRVlVNdVFSVmwvRXVWaXd2NnlqQ2tQWERwWUd3Z05ITDFkcVlNM29N?=
 =?utf-8?B?cWtYSXdwak9MY1R3MVRlSGR0NjJoL0lWZjY5NGRyOFJLajAvMzh0Q04vU0ZL?=
 =?utf-8?B?Y2FzMEdKUytFZG5sWmNUUWswQ0JlZ2xTZTRNYUV0cmJkd0NaeWdNVCtjTEtk?=
 =?utf-8?B?QjRRd1Zxc0x3PT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 79189713-ba27-413c-f45d-08d994a76f8b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2021 15:28:30.8833
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trevor.gamblin@windriver.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3910
X-Proofpoint-GUID: xkQ3sdnAhOfStCgGdNjemUo1aVvO_nwi
X-Proofpoint-ORIG-GUID: xkQ3sdnAhOfStCgGdNjemUo1aVvO_nwi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-21_04,2021-10-21_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=978 mlxscore=0
 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0 clxscore=1015
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110210080
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 15:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55113

--------------uztPbsUYdGrtEi1us308Lspn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alexandre, Anuj, Bruce, Daiane, Joshua, Kiran, Michael, 
Randy, Richard, Ross, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

*- *Daiane to take ownership 14605 when a Bugzilla account is sorted out

- Randy to move 3.4 AB-INT/Medium+ bugs to 3.5 M2

- Everyone to review Old Milestone bugs and move to 3.5 milestones as 
necessary

*Notes:*

*Medium+ 3.4 Unassigned Enhancements/Bugs: *70 (Last week 68)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *13 (Last week 12)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *63 (Last week 65)
--------------uztPbsUYdGrtEi1us308Lspn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alexandre, Anuj, Bruce, Daiane, Joshua,
        Kiran, Michael, Randy, Richard, Ross, Saul, Stephen, Steve, Tim,
        Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p><b>- </b>Daiane to take ownership 14605 when a Bugzilla
        account is sorted out<br>
      </p>
      <p>- Randy to move 3.4 AB-INT/Medium+ bugs to 3.5 M2</p>
      <p>- Everyone to review Old Milestone bugs and move to 3.5
        milestones as necessary<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <br>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>70 (Last week
        68)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>13 (Last week
        12)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>63
      (Last week 65)<br>
    </div>
  </body>
</html>
--------------uztPbsUYdGrtEi1us308Lspn--

