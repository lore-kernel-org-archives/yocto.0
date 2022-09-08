Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F513C54EE9
	for <webhook@archiver.kernel.org>; Thu,  8 Sep 2022 15:20:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.449.1662650430352989498
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Sep 2022 08:20:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WMKVaaOc;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6250024179=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 288DKdZW015548;
	Thu, 8 Sep 2022 08:20:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=ALJY4nvz6ZXsEl1uYSQxxDwk4sHKkzAN6mib769HW68=;
 b=WMKVaaOcwLnHq1xoUne1JIgOWZV5qax1S+eck/gUNIKk13MzkL6jlX9R282oyNzqZGcM
 6cram9yaktq8B3wkJIcf81cMzWB4QArfH8WdNMquIRj9gODQhea2Wqcjw9WRXjeJGK60
 j+S7lelXxHHBcmQcaj+kwFQphLSDg+sBvJTncQtsrM9geqU1g7X5U+53ZSoBujC8EvNJ
 21m5nxLQHSt+JMyOHu5rmRKd0Q9S0U9AyA97Gl3YTe7S7gFb95BmDU2WX2ayeINgNXyo
 LG6AkI5uHlQyvao8icUkb7akrjKXWZj3v1T975wvE9EinJjGij7UzWKLkIPiDmWWD3Ex Cg==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jeh0q9ws8-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Sep 2022 08:20:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKI6n0ZCUK9/K/LOMpxI75uzTNaXtKs86eLnfTbc0Lm8sdUKGhewl0zbn99y71UIx6CD0Wk5Ta4euH2E3l7tOYcpBxgsodG6rjuQwB3ojQEfuAzJfx35BEbJaw9arwMgz4qqwQQ22n3PYzDpiJDUWj7kHRksfoZ7L8IxvuvASWCEWf2M1GG4Wz2p22R48F3zTrviZMg4o2Ez8CL7HzLkFRAMQQ7KjKRl4kb5gsGTCKS8NuGp1uYn+qibyEtlfMIEtjpb/4FVky7vCa1fsEEenGgcKvjWpn7DpfK2mgxKIhjcjeD0YJp4oJWA4/m/du7KQD1eBZWVcT0pT0rq//3LRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALJY4nvz6ZXsEl1uYSQxxDwk4sHKkzAN6mib769HW68=;
 b=Xj9ZzYLPR8DJXJn0heZ7B5QT04eSg5pbSw4qCAPAjp5GZbyPlOcAaELA4Ixal7T8B8291fvOj5aVz7+QYmxNLhlmxGmKg8UH4nMMeP4sgL2CQ+uardLiGo3jILanLDe10mhUIXGoZ15D6LHz+MzUq5XIWMTqxupFy1pvFuo1Ro+dSiyxpHFJy/keeKpNzkM9eWhWS6DLinxvMaTRKAzvgN7SSSkEnoO5LhT0ATjNe84oLVVId2SNGjKwOaiMKyE+EoafRd+nQB/6IbGLbirhOgEA5rI4wWUMc1l+IbfaGfey0c0KjCMVCKmiJ30ZyzTqJbH3BBDpLfbOWzDWe99fLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DM6PR11MB3883.namprd11.prod.outlook.com (2603:10b6:5:19f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.17; Thu, 8 Sep 2022 15:20:05 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2%5]) with mapi id 15.20.5588.018; Thu, 8 Sep 2022
 15:20:05 +0000
Content-Type: multipart/alternative;
 boundary="------------pAJ3PHMkqz0Nj800EZx60K6D"
Message-ID: <e022fe0c-f598-c03b-523d-d66573956121@windriver.com>
Date: Thu, 8 Sep 2022 11:20:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 9/8/2022
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
X-ClientProxiedBy: YQBPR0101CA0087.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:4::20) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ee12e8e-ab4f-4749-9ee5-08da91ad9b9f
X-MS-TrafficTypeDiagnostic: DM6PR11MB3883:EE_
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4RnbsMCHvACLzMFBOROeDy6OCoc06dkCJXsWplwI2U88bndjwJXo+IkV0cpJuoTFlGQPlOiT68Ddt52FXSrCbHWaIg4Ti8RDhj3qJcb9+DRQ+Nyg+COpLHB0wKGGmS4r+meZG6CTVJN4Si+e0yIfUdMryzV/H8DQdi+yMDELr/nglYFHStwhaiVusf8H+C8Q5+dS7/jDvo0+AhsIfyNEilfcjjD5oJZdo1n23sPvWKlG5fu9SXZV9/VW8Wguawk8yCQeMiIkmMuxDx3/8DxX5UDVOKIussZfi+9fSAgN8UyzdxOcdkM8a0G+pIB5SJkmV3n53jHZIqIkJHXO0l+ZvHxDGBdhh3FM3pw6n6PJy+Fb0PeIQpHOX0Ivq866o2EDrQM1jjdK2Ug+Q7wOaQQFEmzr7ZqUlsf26py1VtvwtJI/s8z3wR3CgLWKbqxIbtAxDUzY37ZjfOpmnOCUvg0JsSmfIK1PYq/EeGfozLPSaAKbh5wQ4ACCyW1/4r9hudLolpBf7kshsbz+1U4orA6qG0BS6gC3iRKqmrr78qJX+5b4ZJA6qYm1i80tcb7lFzA9idhGo74JwOUj7Yil5tTE5pNcl98s8r/G8TBpsrUTLjfVzx7tj/YwEzS2htcY+s0RJ5rGiidYnqL0qR66EYUIih4TRt5PUOd5XsfBpP1Sii0UermLk57s93dOdiRTwPkMIHLC4KeacaV5nhfM5H7fSULpUfEf9CESG5CgYfY0wb4NczVoc5H/NN6jUn1E82FBtFQWoAW9CaEnOO7hLq2lNUbC3BZNff6cm7xdKH28JN7nhQ1N1wRDrOrDzLSUXffAkVXr0wpahBpmzT4US5yCFg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(396003)(39850400004)(136003)(346002)(26005)(478600001)(33964004)(6506007)(4326008)(6666004)(41300700001)(6512007)(7416002)(66946007)(66556008)(66476007)(2906002)(31686004)(316002)(86362001)(166002)(6916009)(54906003)(36756003)(966005)(6486002)(38100700002)(186003)(31696002)(2616005)(44832011)(5660300002)(8676002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MUFhTlhmRzR3QmJIbE9UanlJNEFqbytvZy9MMy9vd3pqZkR2dExxOWFlNlNs?=
 =?utf-8?B?Y2NuTDh3UHlwUm5JendEbWNMRGdTV3JmcytqWFdzNkVJckdFSXNTTmtEdkEy?=
 =?utf-8?B?MmVRQ0wwc0k4R3pjMTVRQWVObEdiR3JybmRRNVZrckF0c0Ixc0FEeG43OXE0?=
 =?utf-8?B?KzFqNmVkcDE0TGxVOG5GbXduZ1FVUmY1bWYwSldGK25TNm4yMjJjTWtFOWZn?=
 =?utf-8?B?L0hNOWtrRmdOMHIzUGc0eFBiRjlWNDV3cW9TRlZJQXRqMzdHT1RmMk12aHBw?=
 =?utf-8?B?bVc2Rml4RzdJdXU3VlJKTlRIeTNZN0d6UUJMTXlabHYrTm9BeE1ST1p4TEx5?=
 =?utf-8?B?TlJtV280em03WVAyREhKcSsxVkZlTE90d252UEVZWHlyMi9XZ01MYVFhWTk4?=
 =?utf-8?B?Q2ZaVVorRC84MStpZXdwN0FGQnBDeCtrZHh6dHQxR3d5Zi9MODVpNXMvRDVO?=
 =?utf-8?B?N3AxcG5rc1lQbmZXNFIxOE41Sk13Z1N5c1BoM0ttRUg4WHViQU9kZmF6SHVy?=
 =?utf-8?B?eXpodmFXVHVVNVVYR3NHQzBjUlNKUEx1ditpWUl1SVIwVDZxVmI2M2tFNkR6?=
 =?utf-8?B?UisxaHZHMUttYXJ4Y0NwK0cxL3E5MTlFcUVaM0JXY050VWRRYmVzZFNiUzlT?=
 =?utf-8?B?SFlSZDJUeTBtcStFSDlVWWJoUTF2M1N6cUhuVU5YQUNiZDczWWplclg2bFRD?=
 =?utf-8?B?ZUpVMmlCOTRyUVhESVVYeFJ5emJwY2RzOXZKWElZQXFldSszcktzMDc3d1J5?=
 =?utf-8?B?dUFobDd3WnpvbU5JNk9mYU1YMnBySUtkbzhWUzFZdFNXa2ZGSUYybENrLzBz?=
 =?utf-8?B?VHFJRlRVK2xVaStZMzBYVytmd24wTFRvcXhEZEp3RWIyaDZBNVJ3Qk5TcldX?=
 =?utf-8?B?MEpnTU00UVlrNnJDcVNiaTFFZ3BxTWltalBrQm5DWnVVMFJ0bHFtRW8wVmpm?=
 =?utf-8?B?RXQxc1lMVnhPT3NJQVR4a1lJVUsvelRGdThjYnl2WU5lMWJ5SzF3MThUdERt?=
 =?utf-8?B?YThmVG9GbVZsRExMVVJXZnJ6UEFBZVlHbWxHSXZ5MXUzYVF4cUJEV0JrcC90?=
 =?utf-8?B?UHVYdExkQ0FvVXpTYzNUTlBldURWdkFVOG4wMFJlTUFhWUNKdWxCY09rdVJx?=
 =?utf-8?B?RU9GbHg1WnR3ZUIzMGtlKytnV0pzc0RFUEhNWCtHZkdWL2hIdmZxd3BGd2tF?=
 =?utf-8?B?UHZUdFNFUnFRbkxyTUlSTkg1YlpjM3VtUU9oMjRueUJScm1UaUx6aVFkOU5k?=
 =?utf-8?B?SmZKUlVVa3JjZ3lNSXJDdWpPcitsTGpiR2lQQ1JLQzd3bTUrTHNhWXgwaEY1?=
 =?utf-8?B?Nmgwa0R4OHNBYkJNaXNOYVExS0kwSXR0aGMwbnJ5K3V2ZUU0b2xyU3lLR0lt?=
 =?utf-8?B?dmsvZmtCNGVLcnhaTDlneGltY1RDeGdTV2Q1dElvUkk5ZzdNSWlyWG9LNW9J?=
 =?utf-8?B?RGI3bW4yR1UyR1FLOXVGQ0FraDMxd3FJaGZIN090WVhHbWdZWE4yMnFodkxn?=
 =?utf-8?B?T0FkUU11UmtpOTN1ZlNHWGVSZXdpYjJGdkQra3JUTE55K083ZDJ0d0Y4V1E1?=
 =?utf-8?B?azNJYkdLeWxYaG5HVzlyLzh5b1dLYTQyNlh5OXorUGUrOW9VWk5lVmlid2h0?=
 =?utf-8?B?WUpIMWpwaVIwWWxoVXEwZUJQejRCWGFNRHN2K0R4MTJ0RU1Fb05TcWJkS0c0?=
 =?utf-8?B?Z1krSlpta3FkM0NLZklRd25nbkFBYXpmaEU4d0NBWkdEbStMSWc4d0d3U05k?=
 =?utf-8?B?QlFKMDByS1RNK2JMdHlYTGJaeXVzcy9ZL1Z6bFlLdlo2REFWU1lOUWpJaE93?=
 =?utf-8?B?ZjRuZ0FvejVLZHA3VWJzSW1YVmFwQ0dpalF0TUVCN25jQkJ5dmNoVjFscSt1?=
 =?utf-8?B?bjdIYUhsQVZZcUNzajV2d2ZKZ1lwNGt1eG9URVMyWC9nL0ZHV3lwM0h0VHlh?=
 =?utf-8?B?ZHpFQmJHV0Y3N1RoWjUyeWpBTTlBNWloM3ZXb0tpSW05Y0VWWUlDV2llYTRM?=
 =?utf-8?B?VC93dXliOVIyWXUwRExIMEhzbENXM2szejdac0dUZ2FWU0luZDNSUTdIWk95?=
 =?utf-8?B?RVhPRjdGdEhmODlaczZjU1NtTDlxUW1adDJxNDV0alRNd1Nrc25mcmNDdXB0?=
 =?utf-8?B?NEtRdVlZOTJMeWk5L0ZJSHVPbVFlTHBWNnNZU25IVEFKZ1c5by84QUZGTEI0?=
 =?utf-8?B?YUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3ee12e8e-ab4f-4749-9ee5-08da91ad9b9f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 15:20:05.5614
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 blzo3QR1pJig9SlcXL/Is7t207CbbQktIFQvcbAM2fGXBi/DPpu3KSCiCQYnPvGBPecQWI7xfYyK1LK50xvgfi4yQkhjYOUi9T3RYXkkj98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3883
X-Proofpoint-GUID: jN5JTz0DFqC0exLmMMhdKb_xQUlBM2u2
X-Proofpoint-ORIG-GUID: jN5JTz0DFqC0exLmMMhdKb_xQUlBM2u2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-08_10,2022-09-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 malwarescore=0 spamscore=0 mlxlogscore=903 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2209080056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Sep 2022 15:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58008

--------------pAJ3PHMkqz0Nj800EZx60K6D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Alexandre Belloni, Stephen Jolley, Ross Burton, Saul Wold, Tim Orling, 
Pavel Zhukov, Alexandre Belloni, Zheng Qiu, Bruce Ashfield, Pavel Zhukov

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *67 (Last week 67)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *55 (Last week 57)
--------------pAJ3PHMkqz0Nj800EZx60K6D
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Alexandre Belloni, Stephen Jolley, Ross Burton,
        Saul Wold, Tim Orling, Pavel Zhukov, Alexandre Belloni, Zheng
        Qiu, Bruce Ashfield, Pavel Zhukov<br>
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
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>67 (Last week
        67)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>55
      (Last week 57)<br>
    </div>
  </body>
</html>

--------------pAJ3PHMkqz0Nj800EZx60K6D--

