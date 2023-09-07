Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644BFEC8739
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 15:16:52 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.15707.1694099810179455395
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 08:16:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=UE+sJrNb;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=761436a009=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 387CLTl6020860;
	Thu, 7 Sep 2023 08:16:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=589I/DCpO3Jtvsz9Z2gmnQJE7Vy1FQ/4Q68VwY4wTmg=; b=
	UE+sJrNb3ukDFNEJMopg3d3TFvYxy6ybqgXLNn3mFleW/1/7lIaMv68B+aWRSErw
	VsbTyWHfLqmxWtOX84YCN002UL7pMtPTRaAv+UjQfY8ZXbLf6KtPufo1dZm0ERxk
	OMhpg9cP4gu/7+ZKyAzroEmQjqwvIyVEqQ1AyYCig0dIBAgQnklVQUS0fzAvBhbC
	j98fl7aLnrrbq4GDQ6uYaK+50+Y1mmMxJvJkguUA+gbhGNaFaUjHTZFAivd5MPUm
	LG0wiEGmmYNVNuwruOkmizroEsZ/3iqq4Q2R3eAvMdyfuo6sAiomx7Jx7nUZC8bx
	FtzLSBbXU6h1Gp1mp7I8Kg==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sv4jg4d4m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Sep 2023 08:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVdZ0iTb/nwRuTwx3f8roH68tfAzoo4N/2PvRKQHxzVhhFgJYjqgGOWboPX938yEA0Hyk9NS8Qm3QkuSjwoj6pS8FUX60VtqMx02wPA5Vna8J4nZg1NhNYSDKYhcwWwPKLfXkbjq58Vf+uMj9KMoahWNxm8Lk9PG2PixIt0f9rAJAAtb+ajXEeP3YmjxcL5zLI8Y1bj63lyVbKJgFlfcMV9KdQngwbUnpU0mq9RXZOVeotku3DHIgMaw4eic3UuAttN5vqlx6ThdWMdkO5uSVYFZXDZxa9c+amWISHmV9+kJ+APomklq6JUCwVVaW0YHwyYnnfaPGOmWdzYUUu7JxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=589I/DCpO3Jtvsz9Z2gmnQJE7Vy1FQ/4Q68VwY4wTmg=;
 b=deWQcZNgdP/+9bSbklM+Db1qmg2TTGeY7BF0u29jNJrNPa4ebrNKHvr3kopEycBxzLl7bLhkEBcybkSZCsOepkHnAXr926wX2O/zl151ktgLlliqEpcptCQaTdvFOr+unNAjLoQhpVqlJBZT/WxfEE4m/o3AGZ/yzH1/hAYAmIofezn6fkRy8ZzcQg5k2BRcMNkz5xFddVe7oZFvkA96yq4mk0VR5OU/XAkS6Bat1+6NXX2Wl5Www7j+U6AfhGcMoFNOIdO5itJJz2ocVUVDEAGy1DsM8kezdhuvSeEb4B+pns4AxTvX+QwhQ03Br7bMXp3hRk9vEgM8O2TmicIyPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 15:16:19 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 15:16:19 +0000
Content-Type: multipart/alternative;
 boundary="------------YX4e94FV5Olb0NFS0sthabGI"
Message-ID: <cf1025dd-7579-6564-5ee2-018835e37312@windriver.com>
Date: Thu, 7 Sep 2023 11:16:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 07/09/2023
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
X-ClientProxiedBy: BL0PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:208:2d::29) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|PH7PR11MB7499:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bbe0b8a-3c7e-4952-811e-08dbafb5635a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gzYend/NX20BEZcFO8Qr9lXgapJfbWZsiD6N6Of54oPkw7NJZT5Oi0uBEVLwLBphrpAGXIxwu117KpBcKIGJpQp74xurFGXkSDpH8ezXH5rTIV6qeb8pm+MOl9P6ZiAUQ/CduBM61gYhFy7rBNWgQf2hrobV9ebfvvP26z3w+q8dr4EWwe+4DYmWLpGGp/RDmf4hk9WaVqmN+PDPe1f+FUD1mFOKZzT0vJ5WsOxPJukz+Pu8fJ1L8/gzNio7DAeolZdFEV1O9o5lxSMwo+n2UOAdmHxwR0F+VBeXgS1TcuH+bFaDHj6PKCtabURqFnE9akVY/NkWGR4DOfD3H6UFVSX3tln0nltdDcUWwXsVJYSWmQ6+CxAxWZ9LP8DvuMKRq1G/fPBlD436HSzZzD7lDxS/+tlg8BbS0Ln9klTeqAO4oSaHwHO9/ZbRQjdA4ZkmRXhsUCKM3/VyTkDNBHFDHgxDnNcJOS0iVb8ZFo6We1FKa7hzVP5vzpULmQNxdjcGWmGO3WyVNZXhZ7Zwh2gDQGv4XQLJqphpHlhQEgO96sun7ciilgGhyz6uJ77/dmVDdLL3MSz4wQd1tfUmtij7jRGTU/dV1yH1m/4uQS5OkL+hSjXBbBfvg48GtHcb4I1ebWEZZzBJJU5HxbKBs5RGAA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39850400004)(136003)(376002)(346002)(366004)(451199024)(1800799009)(186009)(6486002)(33964004)(6506007)(6666004)(6512007)(478600001)(966005)(2616005)(26005)(2906002)(316002)(7416002)(6916009)(66556008)(44832011)(54906003)(66946007)(8936002)(8676002)(41300700001)(66476007)(5660300002)(4326008)(31696002)(38100700002)(36756003)(166002)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RW14TEhjeG1UQ0k2UEttSDBYTkFTQ2N2Um1wZ3lEMk9ZZVlqbTlibUkxWXZV?=
 =?utf-8?B?eWNYK2Y0MjExVnJlK0hjZXZVZjcvamFpT1Rxdzg2N2JIV2NEcENKWnBXWFN0?=
 =?utf-8?B?cXpDYllhVGtKWGFOWDl3WHZYMmxjaHdjdzlxcDkvUkNlNDM0NS9OMFl6Nmlu?=
 =?utf-8?B?M1dZdHVXOUhLcnoveEV0VGdqeDlKMTV2b01RUkFDMkErTWI2ZlVTZkhQOE1B?=
 =?utf-8?B?Ti9oc1FZTmNWeW00T2UzYnhPK2dkdkg4S0NBUkNWMm9qMHNnRTNsMFFTMXlO?=
 =?utf-8?B?bmQ2OHB3a3dBUmpOalBuMGdwT1BaU01TMERzL216emNXQVcvdFFwTnpManZx?=
 =?utf-8?B?QmFRU1N3MXgvazVPMDJrNEppKzRxOHFtSlU1STZucDJuUndWOWdERFVORWNL?=
 =?utf-8?B?dnBSQmppcExKZFN2UGlOYVZHd1haYjcxaE04dGxqNmw3cllseEFwZDFZemxX?=
 =?utf-8?B?WjMxZ2ErSG1leFhBU29QWXJLcjhhN05vSktYMHF1bnhERTkyRjFOdFBscUlE?=
 =?utf-8?B?QmMrd1JhQnpkVmVRbFpmR1VSK3JhRDJacWhwVzBvcTk5M2l3VGRKS1pWZ2FB?=
 =?utf-8?B?QWhJaW03OGk3WVA5RklzUGJ6Ym0ra05NVjhWR1VGZitWNGdTeW1mc2UvVEVN?=
 =?utf-8?B?N0lkb3JidWZKeDVwUFU2VzN6N2VhRDlTcGV2NlZyclNvZjlXQ08wRW81T0Q3?=
 =?utf-8?B?UDdaVzV1MWtSSEFsT09SUkZrNWZ6Z2QzaVM3OEdrOFo3VitBR1JFaUV0WHlO?=
 =?utf-8?B?YVhEYnB3Q3A0WkhUSFRUVys4MFd6OXJXR21Sb1ZORi9WTHl4L2g2bEhSY1kr?=
 =?utf-8?B?cVpqcG9yNllxWTRqVmNMcmgxVkxMRVZCNlNXaGdKY1R1NDZKL0UzL096a01j?=
 =?utf-8?B?OEtoWEN0eHd5UmZGN3d6THdSRmJmTHo0MEpReWVjZjR1YWpaT0diRWNna1JH?=
 =?utf-8?B?Y1hYTFZEUVhkQmZwVlFDVVB3N2tqRzZVSFo3alR5RjgxVCtVUmFtdjl1bEpG?=
 =?utf-8?B?cFk2eTVPQ2k2ZEJkMmozMU1VNzdORGN5c21XeDhWK0xZU1NlNkdnWnhFRHIx?=
 =?utf-8?B?YlZRWlZ6ZlpRaDNEenVNRDdSdXpJVTEwckdIYnF6clFMZVlRc294c2FZak01?=
 =?utf-8?B?NmVDSEJoanN6ZG1JVlFSZGRHRXBhWEp3clBzNXJSKzlINWVWMTZ0cVRLNkJ3?=
 =?utf-8?B?TFJneE4veC9NdXNLajdoMFFEellTc2E2aGpoTGNvaU0xTXNtemw3SEFHU3V4?=
 =?utf-8?B?TGpDQ0szNE5PQXVXZ1dSN093T21RWERPTTBYbmdPb1VvZ3pocmcwQVRkdW1o?=
 =?utf-8?B?ZlRYRkNvN2I2OU85eWYxK1VVUmlPY2MyV3hSWUN6Mk5qWlpXZlV2YXBhbUlw?=
 =?utf-8?B?aWdNME5xQTc5ayt2eGNodmVmMXdJd3pSVHpSMUE1aGIxWUJxNk90OWpxeVpP?=
 =?utf-8?B?c3lyamg3N3BETnBCd2JaWFZOclNpRnIwZytKV3czcXVmYWVZTDh5eUkrcGE3?=
 =?utf-8?B?Sk14dWF3aFd6NGo4NDFCOXoyY3ZIQzlzQ3NpNmxFeGIzbm9kb0RIMjdHU05X?=
 =?utf-8?B?dVhla0phUHcvSXBSZjRnVk5XcUUybVZMMzlmOHIvOE9uNnpRcDNDQk1sNWNL?=
 =?utf-8?B?cTgxZ2RxczdhaTNtMUw0SXlkYStSdkRWWDNNa1ltUnpsM2I4UkczdXFiOVZs?=
 =?utf-8?B?SUZFYWJDYWJMdXdFaHZaZmc5M09BNEhYa3pqSTh6QVpONi9TRkFvWU9ZYVNL?=
 =?utf-8?B?SU9BQnRZZS8wZmlWdmZkbnFDK3piZmdVNmJnc1pDUHZYWkJzWTdSNkFZRjMx?=
 =?utf-8?B?a0RBWmMxR3dSTUYyRFZJUFBxWXc5ZWtjUXB4UEp2ekpnaGxJV2RraEhEa1h2?=
 =?utf-8?B?aVhUeEZmajR0WEMwTHJtMWFDVUdRVC9uY1REenFrV2pZOTFIT3V1UGdRakk2?=
 =?utf-8?B?K1NXMjVrL2lkeWE4OFJEQU9tUVUxZk5xRnNBOENINk93Tk81ZUNYTHYvdWQ4?=
 =?utf-8?B?ZDRmaGJ0SThVYjQrckdSM01BL0RZMkpRT25OUytBUmQ3SHNFS2Q3dGJTU2ZB?=
 =?utf-8?B?L2c3NWRHWnBYSVYxdjNGL21rMFhIRlFFcDdTbmRaemU2Y1o0c3VIcXBieXpl?=
 =?utf-8?B?ZTdBOUc5Qmd1dVBOY1BHTUIwQ1NCcVhKaTRyQkovZFVuQnVsajlKOWl3aDcr?=
 =?utf-8?B?SGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bbe0b8a-3c7e-4952-811e-08dbafb5635a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 15:16:19.5347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wVsLdyxR8gqgmzI1TF5IRq0uChGeBxEYbW8ZYcM1uiEvUl/98TNAjP4t85aN/dkq7XHkCJ6XNGwoyalxv8UHp8ZUUIPPQJtvQriatTrt3dc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-Proofpoint-ORIG-GUID: JnVV9cK4y-KghVGhNYZ4DK39NvQEZJ8-
X-Proofpoint-GUID: JnVV9cK4y-KghVGhNYZ4DK39NvQEZJ8-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-07_07,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=832 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309070136
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 15:16:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60933

--------------YX4e94FV5Olb0NFS0sthabGI
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

*Medium+ 4.3 Unassigned Enhancements/Bugs: *68 (Last week 66)

*Medium+ 4.99 Unassigned Enhancements/Bugs: ***42 (Last week 42)

*AB Bugs: * 73 (Last week 76)
--------------YX4e94FV5Olb0NFS0sthabGI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

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
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>68 (Last week
        66) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs:&nbsp;</b><b></b>42 (Last
      week 42)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b> 73 (Last week 76)
  </body>
</html>

--------------YX4e94FV5Olb0NFS0sthabGI--

