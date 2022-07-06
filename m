Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77133C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 16:09:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.8130.1657123744287032993
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 09:09:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VrJ1f9V/;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=4186cb4863=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 266FoNXk012055;
	Wed, 6 Jul 2022 09:08:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=NPLjMJPdBlCZr3ekSgU9pNlB5XY1HXk6ROZW1WSmyjs=;
 b=VrJ1f9V/5w/zWAnBZ3oVow1/aGN3E/6oQZbc4gaFKeYIeMPONOSfPyOqTuguEmxkqgov
 IMkTsZ7+MPqhzQVnRP6zuPCtXqWwzOoDfTbzDva+xRiCCYiXCk31cOmekWiTD8pJ68OV
 VA7c0TajnoNneLqukTuXHnJojSKzbX30Bx0Nbavj+rx4gtTADlpYQuw2nkuVDUQ0gU+k
 aIH1RyXfl/H9QKagblocxI/nUkVLVsyNvTiG6y+7KSRJILecnGCq7fYMWitKp2NztWYJ
 soJTZ10qYrCh3AqLeFvoB0GAG7veUj7ikt+nZhkhmv2Ix0DnvwQ4m7EsYtvwYtriQ0uX pQ==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2048.outbound.protection.outlook.com [104.47.74.48])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3h4uy0rpnd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Jul 2022 09:08:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eyG9Hyxmgw/L9PpAPmtlkND4FpUdVvL6NIMMG0rdFugKXpO53rZyhWYWmiHve9sdYJis4Jj8EdC+GHykUIVQ8MetPbWd7nKBmfE0akVjmObrFTvrjNkfy68g2L7LYfXwJyTsx4EnyFNrftxR3C61K3U606re/1EYyVkvJ10DZsunSCTTfY4d6lcX5w8a5oqxdY4YoAeqJ0snBYoPVQmrJNJk44Fh36S8rVNGk90290chAblhkWDI9KnGQ/TndYKU07GeyFiguS1+Oxu2U/QWFkJcYfWIsRBgZ6WP1ps08P5Zub6mVDE2S/KktC8OyvIYnqsgCez2tGLR8oDPq1GArA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NPLjMJPdBlCZr3ekSgU9pNlB5XY1HXk6ROZW1WSmyjs=;
 b=VIFgqrxwU2H8P6IsMow/nk7Zj4QkwzlNVKwc8+xz4Cklgc3QfHziUW/f40c93ekhqFBxCQVCUkPqYO4t7xuWstOwKbM/6lbF1sKqA5KG+39NGBbJ0Hp+6x4bDCwRbTvqq9bD1rUmUTcXREGC3Kgt2TlNsABpuTqyi2BOEn5H2y+4XzvaK3qV69tkb8MdM5puevorEaBL0Bdmj4dEKRHBLTC2kvN5HlbzBdwbPvZI3yxy/fqEnN5KD39WppYQLF/v8fXIu1vHvu/vy1EKCCvxitYi0zHDv5L5qGWCnjNR+wBom4g4sb51TH9/afTfzEdEiG4G+ID0ubOpoEbpMQg85g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by IA1PR11MB6195.namprd11.prod.outlook.com (2603:10b6:208:3e9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.15; Wed, 6 Jul
 2022 16:08:31 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::d84b:7432:aca3:bbff]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::d84b:7432:aca3:bbff%7]) with mapi id 15.20.5395.021; Wed, 6 Jul 2022
 16:08:30 +0000
Content-Type: multipart/alternative;
 boundary="------------3MVupasNKYIQ2mDk2OKGa6XY"
Message-ID: <6bb23362-7639-5403-328f-47737b47cbc2@windriver.com>
Date: Wed, 6 Jul 2022 12:08:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/30/2022
Content-Language: en-CA
To: Sakib Sajal <sakib.sajal@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        akuster808 <akuster808@gmail.com>, ross@burtonini.com,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
References: <a067b69b-9ca6-a559-ac98-c3b0d9b2442d@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <a067b69b-9ca6-a559-ac98-c3b0d9b2442d@windriver.com>
X-ClientProxiedBy: BY3PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::30) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f467ec7c-3b22-4d74-49f8-08da5f69c4d2
X-MS-TrafficTypeDiagnostic: IA1PR11MB6195:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+xpZIuKlsTvzudUbSUW/kTK9xxWgMjxzwGr3cCGW/5RwTO91mHfCP4luatAsdLpBnWdamPq8Lz4FxWaFUdnnZzUBUMoCP1nwshLdfcCLDu/mJxYXycSDbncEaM5koK4E3IMde7z3QNljEJJg3Mt8t1Nl8CfGBMJn1iBONcNtjPybZPY2Z3HyCBxF98jeV8RMvvZvc7908DQj+oKJD+hhA1w1uKLFEUP/x0iGEIphwotQHhDgUGp9/cd5MBzjym1SBA5SktBscV+AOoFq9M4s5z02R2rcFxRYo6/Idl7ZhW8VoO54ziz7JuiO+2Bjhs40GrMKU7+zJ2fKtfrCc90OcFSJKMUq8kCgBXFhpWkZeKKBwdO6yRKzUAGoh/4veC5p3DkWOihhSM/hoS8QNoREwtPkmhpPcfbiZC+tZoFLe1Zk3ESW25ZDN2hWKqEAsANWG9sz8oXqbyzLG96i4/N5L0clCFijaurp9aoR7N5naROLFcwmVNi5OkGvOpnaNc0wU/5aeAfyQuLMN1cGWfMg6KpzoDHN91UgXazVucbjgL453FhEsBvrruTxM73fUL8JaUotPiEGElbrAPnEulH4369XzLY5+q4hYlglY0s3YYG4EqNQ3lX33GwbTn0IXouy1zp8Um3raUyzx1SQodtpJLLmFODae7vv8ZXpwhNKWWCaQWOnRJzkFkj6OgrEaTz4mdxQu48NDhx+lOnV/EvGe2sGs2D0BI871Ag/tIjwFGPvUAvnNoUTFYceWwFnrmVA3PcnaD2Nt18KZa/SHLdDCvCUhnmx+KsUe592t5eElsviObD/CTEwiGl54YZvlP/yE2Ucwz2bVL64pV+QdnzZbYqsL4eQLM/Vp2aUDCxMBEu3r83booeMEXK3EJAn/6OAuoW0SbhPIETTLQ8haugGGA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(376002)(39850400004)(366004)(396003)(36756003)(6486002)(26005)(33964004)(6506007)(6512007)(2616005)(186003)(83380400001)(107886003)(52116002)(53546011)(2906002)(31686004)(38100700002)(38350700002)(966005)(478600001)(66476007)(66556008)(66946007)(86362001)(8676002)(54906003)(166002)(41300700001)(8936002)(7416002)(5660300002)(6666004)(31696002)(316002)(4326008)(110136005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VjAyVUdjMERNbTE1dGNJVHc4T1pYaHozUUEzMzR5U0dYbzlPeTg4MEZEbUVN?=
 =?utf-8?B?VjB6VjlLYVhtOVY4NEwzU0FzYXNoemwxdDRVRTFSZkd0WFlubnFKdXFOWHpz?=
 =?utf-8?B?L2ZHUTM1WXBZOWszeFVPZjNNVGZzUWU5cjQ5VEtGMko0Tno5UURISFNkV0tV?=
 =?utf-8?B?U2NVazFpN25oNlBWN3ROZHJvd0ZDSjhHSkYrUC90VHRjQ3diT3dJMFU0RDdk?=
 =?utf-8?B?R0FuUU5QcmhZNnkwbUdjRlpsc0JaQ0syeFNmejBxNm9DTFczcUpqU2JTblJL?=
 =?utf-8?B?WVVlU0VhOUIvWmFrdk0yRW1CRkxUTG1YMG5sbXd0dXVHY1UvNDhhVTE2TXNB?=
 =?utf-8?B?U01JQzlXcG5wQXdKY05YUkxaYWVkUTJrV2IyS2hwYzh2RG8zUGN5TW5abDNO?=
 =?utf-8?B?R21nSG9Yek44MzVSTjJCYWNPa244cm5aRC9VWVFaZEJqNmozcm12alcraUxH?=
 =?utf-8?B?YU9TYnBaZ253Q0k1UkVuekg1RThVOVRDNWFObFRtdEN3Z3gzdjJHeFM3RXA3?=
 =?utf-8?B?VGw4NkV2aDk4V1JSQitRaThlcElqam5VNlByejYrRlU4TXZidUxseGdjRjdq?=
 =?utf-8?B?WTJlZkJSRzBNTitHUnpRM2VPS01BWmMzNXgyMEhPdUZ1U21CT0oycndXZlFX?=
 =?utf-8?B?WTRYOWV2eHF1Mk84MGlacktyeFlVbVRteEw3clZPc1Z1RjRwNXNOL0VSRlpD?=
 =?utf-8?B?cVR6WHkwMjNOcW1hR0N5U0s2UmdCVE02SWpMSWFCVUVQOWFvKys0dFlhOG5W?=
 =?utf-8?B?Z2hwd2RrcXp6WjlSTk95SlhaZEJ2WGlpZmhxSUFRc3paWkFJM1hZQ0Y4c25j?=
 =?utf-8?B?OHBJVUxWSVdYWG5EQ3ZIeDJoT0poRXE2ZUZVNXhubkl3ZS9KRERsWGFiZDZ4?=
 =?utf-8?B?WGpoL09HeElBUTFjZVBUVGdLU0cybDlpUXYrOFpoMGdTT2FrYmJzMksyQzBR?=
 =?utf-8?B?ZGkrZkpTK1F4dER2eWdaL0JCdnpNR05yeHBINzVsVTAvYTNlcUhKeGFSWThX?=
 =?utf-8?B?TTViYjUvaWZXTEFaY1dmL2RQODZCUkpOUDBBYVZQRE5BcDZldGYyZ1RYSy9X?=
 =?utf-8?B?cExlcnVQNHYrMElIc3ZOK3o3N3Z6VUFlMityY2gvZ0gvMlFCRGlHMmpGbzhZ?=
 =?utf-8?B?cm1aU1hhWFNTUmtSbU1LelVqNzlNL0wvRzlJbjlybHpua2tNK3lxQmp5ck0y?=
 =?utf-8?B?UWtWSDVncENXQkQxSWd4OU5TaE9UcEIzUzQ4bnNRakFqK3R2RSsxYUVRTGE2?=
 =?utf-8?B?ZUJScEw0VjV5SHNkSzBYek0xZGd0Vk40L2lZQ1BrUDhpdWF0aG1vRWtWcXNN?=
 =?utf-8?B?YU1mT1NEWGhVWFlFZ3F2MUtlL1BSZS9kUm1FeldKMjNkZVBROWlKSXlxQWhl?=
 =?utf-8?B?SDloaTFvMDRqSWhlYitheUY5eWI3WGRHS2NzNnBGM1djUEkvbWZDeW50MU5I?=
 =?utf-8?B?QXhEY0pJVmIxTE4vY1lTY1U1cnBsZlM0L1RMVVhXWG8xdDhyRndGc3RJY29Z?=
 =?utf-8?B?Zi9DdUhRaWQ2cndTTnBSK2piRFlac0Ribll1eUpQOENoUEdEdVNvRTc1eXFh?=
 =?utf-8?B?WlkvZXp0S1hhaVVMQWlYeW1SZ2hCRzFISzgwWm9XWHc3WXdVcEFXRVhJQnpU?=
 =?utf-8?B?T3NoVUdDaFQvdks3ZFcrcFkwc3dmUkNFTWlpK2MwZk1nM3J5WHhzMm14eVBr?=
 =?utf-8?B?bDU0WnRyR1huWkJNdUErZnBieXp5eHNWb3NzV2VFQXJFTjJnZEMxM3JLSUZT?=
 =?utf-8?B?dHRMcEdDY3NuS2l3MktXMjB1eU5LRkhNVGxTdjNNQ2oyaTlqZzZZbGFrZnhI?=
 =?utf-8?B?MThnZUJEY2xiVmNMcUlSSG9ibEtNb0JnUjFTZkRvVHFCMVRpbWRsalFYekhQ?=
 =?utf-8?B?dmNJcVY3OVAxeW1SL2VVMm0zb2hpUHlLNkQzYmJHV3RZYnVkdFpGQ0VsaG41?=
 =?utf-8?B?OWFmaG5aSWFucDYwTlhQQXkrR3BBU1hGZTBiRXRucER2emgwVGpzeGg4UXVv?=
 =?utf-8?B?eWI4VWE5UmxnT0xlcGlGK01xakFUajhtZm5jcUhWVFIxV2ZuRXUvMmREZTIw?=
 =?utf-8?B?cXZ3NUlrSGNzbXBPUXE3aHRoM3ZRR2c0SCtIWk5lMUdMazZHaHY0Z0FZOHFt?=
 =?utf-8?B?b1FjYTRHRUZvVVZlay9kWXorWlJ2dGRuWmhyeWJXMHlKNmxoRXRiRndOUDhM?=
 =?utf-8?B?VUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f467ec7c-3b22-4d74-49f8-08da5f69c4d2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 16:08:30.7479
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 skzON3du+A3zqitIdh3q85Q9zwSezeJ/CZaNON9pE36xPGAmqzUeJXbmrRV00vuqaKlH94WL3cqQWdbKm4mcK2UDGqOLbqbP/AijltSzUp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6195
X-Proofpoint-GUID: 4n9-0YDe5rCfQR_EhKwqOEk2kt22ASOr
X-Proofpoint-ORIG-GUID: 4n9-0YDe5rCfQR_EhKwqOEk2kt22ASOr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-06_09,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1011
 priorityscore=1501 malwarescore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207060064
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 16:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57466

--------------3MVupasNKYIQ2mDk2OKGa6XY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-06-30 11:21, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Stephen Jolley, Steve Sakoman, Joshua Watt, Saul Wold, 
> Alexandre Belloni, Michael Opdenacker, Pavel Zhukov, Richard Purdie, 
> Aryaman Gupta, Randy Macleod, Mahdi Shourabi.
>
> *ARs:*
>
> Randy: asssign bug 14829
>
This issue is understood, documented and resolved so
I closed the defect with a short explanation.

../Randy


> *Notes:*
> N/A*
> *
> **
>
> *Medium+ 4.1 Unassigned Enhancements/Bugs: *73 (Last week 74)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 45)
>
> *AB Bugs: *46 (Last week 47)


-- 
# Randy MacLeod
# Wind River Linux

--------------3MVupasNKYIQ2mDk2OKGa6XY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-06-30 11:21, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:a067b69b-9ca6-a559-ac98-c3b0d9b2442d@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Stephen Jolley, Steve Sakoman, Joshua
          Watt, Saul Wold, Alexandre Belloni, Michael Opdenacker, Pavel
          Zhukov, Richard Purdie, Aryaman Gupta, Randy Macleod, Mahdi
          Shourabi.<br>
        </p>
        <p><b>ARs:</b></p>
        <p>Randy: asssign bug 14829<br>
        </p>
      </div>
    </blockquote>
    <p>This issue is understood, documented and resolved so <br>
      I closed the defect with a short explanation.</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:a067b69b-9ca6-a559-ac98-c3b0d9b2442d@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p> </p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <div class="moz-text-html" lang="x-unicode">N/A<b><br>
        </b></div>
      <b> </b>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>73 (Last
          week 74)<br>
        </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
        week 45)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>46
        (Last week 47)<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------3MVupasNKYIQ2mDk2OKGa6XY--

