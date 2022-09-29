Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46487C433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 16:12:47 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12186.1664467960632885057
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 09:12:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WXJ0kV5d;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7271d274ce=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 28TBnguO031175;
	Thu, 29 Sep 2022 09:12:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=ffDZ3q48r73ETzZC5KePTWFa7RTV4mveYzuSRAHo4gE=;
 b=WXJ0kV5dduIAzZ7KfC1UCg1UFMHTYzgn6UCMV7YLKuDRxX2SZOyxass1H5kSPjvG4Byg
 Snv97tVN8uzCmMG/HcvhKIjaiXbxbjfkHlTKp3P5knzTrRcQdcMhZnr6bWGy2ZxmVmOK
 zC8tXhRO9FMx33ppmsJbMWbxhB8rbH2VV/PyArUMP/7sq6oVWm3CSS1QhQI3Lhf/egfs
 Pd3ohHh7Qz/Hj6nH/6GKSjslw6m2DxAXw+BcfjW/GBBv7EzJEcY2cwRkQvrNq2cjdXy8
 1cIameZxt5ssumopjEV3HoIrXEMof13ZUWDh+dA9XDUv26KFzen8mqQmZ4ypordw4F3E TA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jt1dkcf09-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Sep 2022 09:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L588gCDdmxJxWJu5yUA0NH1aWWtvqmmDEN2EjOY8tLg0VRQinUIJA7IwncY6kFcG/hCjM5+jSeLfGKpO1h6uhA92+HWnwje84aL4UNcQbtaZCV4+3ASyGBRY6K9QCApfE6mTSaV2+sA5XHtdHDs31K8ouM6aV9OM9tGZcKz2LkYtV42v+n46KDbFjgSOCZMkuysYat6IHYeUakvZF2smKGOP1GNoi5Pe3e1oIYv/BRg2iHh7DJX62Vk4anXwesfM6rjGCBoEph04an3XCAJY1hWYw7Wu9EDmKX5OKevCNenwdH/ZVsjleEiD77FfTDEXuDepK8kT9B6yoX9aSPHgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffDZ3q48r73ETzZC5KePTWFa7RTV4mveYzuSRAHo4gE=;
 b=Trib4pe3ktPFjL4uuDeCueFwfNJ2pk0Q6HA4c7IDwykrb+sspGHn8nzfm7jx4VETUnaBS7wltwol0xFBnNY39y3ME+vQuCqmPH4SpHC950g3IBZsl53yCyJyomzBVsMvRNE2EQkHJTvd62nAeqt4eyiOHuNBCW+CzShJRinTtCSEUhPCmOLgzaDwDTXa21FD8JQopSL8y6OADaXlRvxS5gU2bBaYpNmianjW6b/PCTHtcITej8zGCB1CCmen0e67EX5+EK1DHXqx0HWoKJ2ubwfb8dBPdgWbSuoPVL4YeDJcdybiTRNTNL2yejmwliiPaUPbJvRRD23OfzVllLN5Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.19; Thu, 29 Sep 2022 16:12:00 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336%2]) with mapi id 15.20.5676.018; Thu, 29 Sep 2022
 16:12:00 +0000
Content-Type: multipart/alternative;
 boundary="------------rAOw5JjBdRV7elrqyKkOBThj"
Message-ID: <b5f5ae89-3f21-5937-852f-183433b67c3b@windriver.com>
Date: Thu, 29 Sep 2022 12:11:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 9/23/2022
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
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0109.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:5::12) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MW3PR11MB4604:EE_
X-MS-Office365-Filtering-Correlation-Id: fc913fcd-d204-45ad-c6dd-08daa23556fe
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5b5kj4PB/aMYikuIayFekVOlyY+MjAIdOe5Nqaa18x7gwmh3DX3kiwExGHXebtuzSJ0Sw3aywYCQyrnvLVT2VsBtANuxORMcDmxuiUo2QeN8jAEmyAK3HiQobt5jIBh6egG+t/rkNQenzjLggp6eTWy2dQpN/XG5yQsgBVjIHWQHVaFYFEtv+6zly5AQv0fzIko02MF7ATlVjCmV0iJWekypru65kvYYw5FBLjfmbNwNLHVrzzUAmzCeY+4HgeqpfdsuvGLpXpXrBYqzd66W0r6HgWGeIMfyNNk3lkMcGEUj5NGWgDnlZFc4iZCC3Nd0UcUPYmKORlttMmbtjtlx4823AD1rdt8KQd/7tL/QKxyVHxTnvUVGy/F5HfzXXDnx7/o47yFHsP9VtY12o4bF7ERxKWd3qUIPQAK9I/octmlOoEDjjExIenOaoIC+eZsaX701xBPE0/b+QCQ1wg4D+gnEaBKBh0jqG6+gJ5PzhhQxjDqYBgxx/R8+NicuWHn3T6lJB246eNPdUVFTjsqgDmbMPqbBUOyTKCxYFoRXbBFvd9Zsp7UMsogGu3rne4iIhHQG880l4RbFmccNjS1y71+B6xpdST5QMQdVZAVk28SdhndUiLlZwFD9lYMg6u7JxksMElWKMhClG79JnLC0i4OHkA1/AEa2JZjcBcDtX3a8Nj9oHKf+wOmcLaTHn4iwVdbKRgwWM2uxoGz9Y7FMoz2Lsz0zGMcY+59yTr+Nfa96H6bmNfwWPCWj6o5hxlYe4ZQpThhsj4D5VJYIcGalrcGBzyEaPCbqVYKwMYrMspNTql1vY5xK6Ql0ztA73gaK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(396003)(136003)(39850400004)(376002)(451199015)(26005)(966005)(6486002)(166002)(31686004)(38100700002)(478600001)(86362001)(31696002)(41300700001)(8936002)(54906003)(316002)(7416002)(33964004)(6666004)(6916009)(2906002)(6506007)(6512007)(8676002)(5660300002)(44832011)(2616005)(186003)(4326008)(36756003)(66556008)(66946007)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dUlhZ1NZSndtWmQ1SUNVZlBWOFpLTDdzTjhjUTZOZjhUZzExR0oweldXdWlt?=
 =?utf-8?B?bEVtQi9OcHFJMWVXcXVnc1ZHeFE4NGxvR05KMWdLRW9ESlVaRVA1WUUrcHhI?=
 =?utf-8?B?Qm13bW4wRS9JOHBvUlo2NnpwUXdhaUNUS3BTSStvb25CdVBoNEpuUDhpT3BW?=
 =?utf-8?B?ekNscGJQVUo1NGlTNFBQT0pLR01TMnJnL1krSTdHMVhOcFpJVm82Wi9UOE00?=
 =?utf-8?B?NERKWTJ1WFQ3Q3JYbk5CMXdpMHB1bnZqb0FYWDN6SFpERG9DUnAzanBMalhY?=
 =?utf-8?B?OUtDamVyeU9aMW9HMmkzbzlvRkVZN1B3YWpucFdyb3RwY3ZxZVhNa2k4UkxE?=
 =?utf-8?B?STd0ZzlGSWdEaGhlWU80dlBBd3RCdUlhM2ZOZ3IvdWxhM2hxOEhKODNBYWlk?=
 =?utf-8?B?OWorR3QxdVhzNGJHU1pudWZWcXdrSDVRc3prQitVanFyWEVjcXdQMXAycjdH?=
 =?utf-8?B?TEZyVG8vdHA0c2ErYU93M1orRm52QlBoVTRSUkp0Q2pOcVdMVVFzQ0tsSmJj?=
 =?utf-8?B?emVZNWhOL3VSNkJCWWZCYkFMaW9MRlcxRFYwM0RGaStDaFU0VDJpUjd6VVhq?=
 =?utf-8?B?SWhsQTVVWVVMUlhnZ1E5aHRleCs4akp5Z3lGV0VTT3hQVzhGdlBvNkluOTcr?=
 =?utf-8?B?T1ZlcWpRdVBoZ0NNaUJBb0NMTTJQTXVJT3JFMGpSVkJXUjdnMmpkWUptaEp1?=
 =?utf-8?B?MGI3ZERFRlJiYTNNSmI3MDVyaU1qVXJZZmFiTnhyWjhncHVxVnB6RFMwNTZ0?=
 =?utf-8?B?WXRvOTAzUVZrTFdsa3E5YUhXNDNWWWFTOUlhOWpob1AwVlcrY1ViaGRLeHox?=
 =?utf-8?B?bEhlZ3dSY1NBV3p3ZUcvTExVUnFtclYvVXQvUk9nY0VrWnFIdnV5K1huRE53?=
 =?utf-8?B?L2hnMHlpcFRBckMxVUR3U1RibW03cjNNYyt6Z090dkV6RTIwT0VSWHEzNVJj?=
 =?utf-8?B?a1lxR1I0T3g2RXN4bnJxTEdvOGg3NEl3d0lDdFMxQlI2T3NyRzFZYXlXbTdj?=
 =?utf-8?B?MDZLVml0citIMTR4OElQbk9ITE1yTjlldURtdUZ6UUxWeG9kdHZtQ1FZV0d5?=
 =?utf-8?B?eG1Gck1LcWlNYnM4Q1lsblV3RVlOb0dQMUZNQS9mUVlLbU5ORTZLTVdid3FD?=
 =?utf-8?B?WS8yMitJQzdnU09HQjZVc2w4U3BzUkFvZmlKTjkrRTJzaDhUVFp1UDlsa1ZJ?=
 =?utf-8?B?aStNSXhBQ3hnWU94ajdHWXpkOU5JQTdNTUxXcHkvOGwyNnhCNnZPUFZCa2ln?=
 =?utf-8?B?QTVrL2ZxclE0SytLTDU4MnFtUGRydTNJODd0eFJaMEpwQjF1Um4wOXdFYkhB?=
 =?utf-8?B?amZWb1M0OGxZSjBYZDI3ZFB0ZGk3TkRRWFRweitSSlBrZXJvRzAyTkl5bUpP?=
 =?utf-8?B?MUdqY05JWXcybWlCOVdENy8vVElmaDRNZzFHQ3AyNDZ6QTQ1dUt6TWlkWjlk?=
 =?utf-8?B?ajdlYURVeDdORnhnck1CWXlHb01ZZ011bEZyaXZrNC9WSmp4UkV6Rnc1b3R6?=
 =?utf-8?B?aDFKTjRkSTlrNEYwdEx1M0FqYWd6NnhiM2Nmc2F6cTkva0NqbHpvQy9ka09F?=
 =?utf-8?B?ZlEzYzlGemtyYUxscDZyOVR5S0w3WU56RDZwTW5RcGlrN0VQNnNXd2JwQ0FG?=
 =?utf-8?B?YUIxRXVZL3J0T1ROdWFFTVNvT3pKYm85MytvZVZ3aEVkSzZhNUhFVFFPZXlX?=
 =?utf-8?B?NDRzRGFmQVl2a09vZm5sOG53bmx2Zk5mdEZPeDcxb2dJZFdJMnVwblV4eHB6?=
 =?utf-8?B?TS9SeXNlTUdwbGdnM2NrMHNvK3VzWXdIU1FyUVBGUzZsL25ieVNGWkk1ZUcr?=
 =?utf-8?B?WWZ1eHdjUUd2QS9jOU04TE5PeDl5K1c2WU1mZUhaMUlFZ0JkNkFWT2NMVTB1?=
 =?utf-8?B?MVJyS05VcUtKZ3EwazY3c1RjR1NWWXJUaTFDTDRhejM2MmlaUGlpZytTbHpC?=
 =?utf-8?B?Wk9ETS9NbVU3WnU1Q3pyTndsMWVxMGpoTFlvbmxPTFZsZWhrQlprTHFhY0lt?=
 =?utf-8?B?NjJaV05QZ3RsNjhCMW9vRGo4aWcxRlRpQ2x5SDN6YkMzam9BeVY3SjlGaTdx?=
 =?utf-8?B?K21yY0dDUDZLOXJENnJXeENvbThUMVl0SW5ER0E1Um5LcWc5UzJzMjdwN2NP?=
 =?utf-8?B?aUsyenNWaWRvU1IzSExjYThyY1k0MXNzQW5zbmg3SGpvWUd2N1dHOEhoeHVL?=
 =?utf-8?B?S0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fc913fcd-d204-45ad-c6dd-08daa23556fe
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 16:12:00.4569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 4xjbdDg852SJTTPN93d6/8MfQbv2MAxAdh7fjsHjud0Xbg4GddHCzSpY7X7y5IxVkiNDPbAhkNgXefMTnFztUvhC46deRzq71BFxsT36AY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
X-Proofpoint-GUID: 5kpahi88Z3OGAGlkIFVSE-wueJ6C4Fne
X-Proofpoint-ORIG-GUID: 5kpahi88Z3OGAGlkIFVSE-wueJ6C4Fne
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-29_09,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=927 adultscore=0 bulkscore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209290102
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 16:12:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58220

--------------rAOw5JjBdRV7elrqyKkOBThj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Richard Purdie, Alexandre 
Belloni, Stephen Jolley, Ross Burton, Tim Orling, Alexandre Belloni, 
Bruce Ashfield

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *27 (Last week 27)

*Medium+ 4.2 Unassigned Enhancements/Bugs: *8 (Last week 8)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *54 (Last week 52)
--------------rAOw5JjBdRV7elrqyKkOBThj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Richard Purdie,
        Alexandre Belloni, Stephen Jolley, Ross Burton, Tim Orling,
        Alexandre Belloni, Bruce Ashfield<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>27 (Last week
        27)</p>
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>8 (Last week
        8) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>54
      (Last week 52)<br>
    </div>
  </body>
</html>

--------------rAOw5JjBdRV7elrqyKkOBThj--

