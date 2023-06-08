Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AFD5C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 15:30:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12368.1686238206417724514
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 08:30:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=le9RDQFR;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=55231e6dab=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 358BPF6m021021;
	Thu, 8 Jun 2023 08:29:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=n46dVV/QmGPnEdKtXF0XU2KkgYkTdFk/IhqPCpEVe5s=;
 b=le9RDQFROaHu93ofDb4axAKicTv2Zm5OP331mn1kQpM94Bnubo3/9ZUidHQuJy2fKS5v
 LIOSixXx+O+aujaFDRFSlLhyXCqW40DBxDgyIkxhyuNb2dIhc0M2RqorsCArORWuku0r
 SAmTSC4qU6CY+ZW30EaNi8gMKv9jomt8PTCy5kzsI7CIonA8UNQbzTljx5vUtd+lqnPK
 MoIiTKtcdZUnc+yUH7CojTySQXszSQZWD/7oZeydRu79G+ulD6OLwNpOySNQWR+HpPbx
 aZ3dS3UfAm0xAO6Lcoco/tKjEf4In1yxRYU24fNyVOmGz1rCCxghNxv+CXyQZxJ5gXjN Nw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r2a80str4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Jun 2023 08:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1XzB+4zwwgwujho6C0TPc5YZHWEe6nxIAbo2R+iEryn8+VHiplUCLoruus2XfvWKQPaR66LS7uwwegnUcCMmGrGcKNQ5eGYw6B6dBKEnQgaaZ+Gu/KCO71Ya/m32i2vHvelOuL4m4gvqZOz5r/eXiDgHZG+Od9vr59SHuu+T6PvigDqnhouVPu4QUVuoJFjw77okMD0aii8T7vr04fdvX8UsvpefcQpwVMHt5m5IqJBRHH5eYYXH1SJYaBWgcBpAaqCMP6hbByzHVe1uGxKKV9gKmA044YHljtZFj9AgZ/+PqOOjsYcLFj1Pq/cuOdlbspVnWPjDLeY7+vAJBsejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n46dVV/QmGPnEdKtXF0XU2KkgYkTdFk/IhqPCpEVe5s=;
 b=AzLTPNaXzpB8TRCbgCsf7Tz7XCpqcOfczYLVbHryHN4FMfSLkvlPWYMCk3OuqeZN0vms2RwAdnN1IAIf+iwh2n89GnIrSheozm+xywZ3vE+1IbEhZ9J5GUAkAXnSmOagp9WD5OoGuHY7QnaXmfVogHGazwru/4rUtYTVLe1XL74vyb21Q1ePWCcToDFlYFlDV3tA/8IHBCi00/EmqPi+48izOwjqfkv1Dn/M3WSHEJZ7pWbBZ+LqWYXksykLc+cId3CdMTgS4QLG7vb+YO7FdsIHb21aXdGVf2TRwu6nnvXw5cWGNZpUwMMLYLJgmuCkCh8YEvVHk0nhGIE/NGbv7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DS0PR11MB7530.namprd11.prod.outlook.com (2603:10b6:8:146::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.31; Thu, 8 Jun 2023 15:29:44 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41%4]) with mapi id 15.20.6455.037; Thu, 8 Jun 2023
 15:29:43 +0000
Content-Type: multipart/alternative;
 boundary="------------x3Q1nzfcv0H9sZ0ydh7veTyY"
Message-ID: <3d52edd1-78d6-da69-1bb3-c65b5273a3a0@windriver.com>
Date: Thu, 8 Jun 2023 11:29:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 08/06/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: MN2PR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:208:fc::42) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|DS0PR11MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: bf79ea68-6722-47db-1103-08db68352f29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jDfwub0+z4BrJU79Mp0+zGkZTxl0GrB8PHYWglcwq5RVCDJmCwV7NlIA6i5WTHwQzIc8IiKCTyh5Xnd0vDWiefDJYRKhP0v3feWM/clCbAKgkjyiZOQxGjJDHYExhnzLMW/zgZBrvCuUo+zqdDqNBamKMbYkuJMwj8+pwSZfYqyCRRE25DUO5+3KJd8GDzM2kP7F20BzlnAvYlHtiT+nSgoSWVTgLcfaCeBmrOaVswJ3VbqJfAEVtoJ0QC19Nb/pFMmtH8jYIG1nKxZ2XvbyIDDq16J4Bz6ZKOkB40P2H7WxsVDSEV5whKUPpeq4qSarWsGtV4XqGOwYcRyI+HggqeiZ1Oo5PZuFh+9tuFz0OrHunG0vVsL/SIDTXENI2l6gmXCHlhnQWGWOgHH/WJ1u/IPlGxNtZ1XmyssQkkLfoP6bPN7+N6F9Z5avkrQU88XxRJW60x6ioxflZuy/ML4jTCZiguEEwSh/eAk3isT5wPbdSoWNnqt0R6eUKLLcopQclDXwvpczQuoLgkje9hLxp/TVWdaMeTHnUdokKBcuMpHphWReviXfiyGi1ppkOQY5zw403IjseuEL9hv8UapknCPaua6Cw3E33ItbEGQp+s8n/5KvSf+YuCYiTsGkmqRZNlTlPsa8azbNpfL1MFg5fw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(376002)(39850400004)(346002)(136003)(451199021)(54906003)(186003)(8676002)(41300700001)(6486002)(8936002)(966005)(316002)(6666004)(5660300002)(33964004)(66476007)(7416002)(6916009)(4326008)(66946007)(6512007)(6506007)(26005)(31686004)(478600001)(44832011)(66556008)(2616005)(2906002)(38100700002)(31696002)(36756003)(86362001)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T1pKZDVXWHRyT3NvbWZqVlZiZEJpK1B0YmorWEk4VXc3UVNnSkJ6eWFsZys3?=
 =?utf-8?B?WEpwbVROWmRhNWRZbE0zdTIzTDhqaVVDdFB2MVBRaFlvaDlpWG8zNGpTSVpt?=
 =?utf-8?B?dCtrem1FMGtGK2xzMDU0bWJGNHR2UXFYdjEzZ1JseWxmY0hVdEhKY0lPZUpI?=
 =?utf-8?B?WExXSWtKc3VPd2NUYkdjWFF5c2NlNkpBQUxDZ0trNktpdkViZlYvdkNTZS9s?=
 =?utf-8?B?WHNtM09HMlI1UlQ4TnNCNmJIZTdmL2oyeXRaM1BFMUNDYU84N25KZDl1UlA3?=
 =?utf-8?B?WXVYWWRRbkphbC9OcWJrZjdKZkRqOGUzZmVrSlVGNnd1YXlGTjRudVVKL1B4?=
 =?utf-8?B?NTh1MjE0dHFjZGh4Znc4MEpYUVhwcjdBMFdGcmdsaCtVcTdrTnRhNU10TlF5?=
 =?utf-8?B?QkdIWkY2dVB0UUNkbEZxY0VsdXBoS1FmZ0JaQ25PMFBaL2ViMVBBRDhyWXBh?=
 =?utf-8?B?elk0aUpEWmNFb2o3TWNDQlNhMUovUVl4MzZ1VnIxUVFnT3ZTREVRT0pwZGxS?=
 =?utf-8?B?dFUzY05FeVZtN3kwTzBoZ1p5Z0dVMU5SUnNxTmdneHhVZ0FQMXl1NG52YzBN?=
 =?utf-8?B?S1lnTFNRT2w1MndGeUJGRVdTQzBpMjlzV1Q1emRoUVJZU2JYU0J4S0lDMVV4?=
 =?utf-8?B?Y2wyMUZGaElUWjdVMDdnVHNjc09CQ2ljYU9KelBBdW01S0VJWFU2RjlmQWRE?=
 =?utf-8?B?dTVFNzduYk9tNWZBTi9kK3VsbkdCNWpRTnpxRkl2ZlROaHE4RmFDN0EvNW4r?=
 =?utf-8?B?RUdyTHRjUVEzbDRxTG1lekRpdTlJQXJpUktXRld2bkdtSDdkZ2hKbDBUWkJY?=
 =?utf-8?B?cnl1SDIwQ0dJVCtvbyszSjcyOWtsRVBHYmRUTnpManQ4QjJpU1FnanpuYWhO?=
 =?utf-8?B?WmJuVUQwZklFWmdSeVhaNFQveDFDUDc1SmZDMGpuaFlvY25IVlBObGtRcStt?=
 =?utf-8?B?ODlsZFl0L0FIdTZINkI0N3NzdnBqOUc1LzhuMDVrWVZNdEc2MzI3V21uNldR?=
 =?utf-8?B?QTRlaXd2OW5wTVFjV2hTSXh6bTZoSzZNUFdwM00zL3pnNGYyZ2tsYUJSVTU3?=
 =?utf-8?B?SEpwSTJLWXdOZlJVcFV2ODk1ZHBSNFFtN1ZhNlcya2k4MEhKZ1ExZ0FpSGow?=
 =?utf-8?B?TGRRaTJQaW50ZERFeDl6TEZaaWxJUWYxa0hUa1ZUaDV4SEZKWjhOMStBUEpQ?=
 =?utf-8?B?ZkhSa2JUV1F4cTBDRkRSZzhJNWsvM2p1UFZ5TnVzRTVlejZpWDgvRWJyN0NI?=
 =?utf-8?B?Y3gvN3IvbHozaFVmdlhrKy9pcjh5NWpyenRxLzA2NmM2aUJQUWk5NlF6RVA3?=
 =?utf-8?B?a0FaUjV4TFJGOXRWME4raFM5MUdzVDA5a1hoUnV0bDhTaU5HT0ZlNFlWbEww?=
 =?utf-8?B?ZkRjeFE5UjMzN0hoclNCeU5Id3ZxQWxJNDdjc3Q2Tm9TUlo5dnRYRjQreTNG?=
 =?utf-8?B?U1YrWUdNQUIxSEM5UE9UUFRkSjF6R2hXRjZLMktUYUV2czlocE1jNnliTFJx?=
 =?utf-8?B?OWV0UnhHT1RrUk1OcHM0aHpyNDQ0RUQ0SHZIL0VOaGJVbEJSMk5NbkQ5eU1G?=
 =?utf-8?B?WW84S3h5ZnZ1ZVU3amdnanBuSDNGaXNUalRGYlR1eWlpMnMzYzhsRUNUZ0Jj?=
 =?utf-8?B?YzkzRjAxZ0hBSXVYcUpXOFF6TWRYeFhLWnY5Qnp3RDNpYVlybkw0LzhiQ2dR?=
 =?utf-8?B?MGtLbHhYWllVdlA5VUxIbEdmdmk4L3VObzk0QnRvYnU2Q3k5MG9hT0I1WUVx?=
 =?utf-8?B?SVU5Y0M4ZFNNZG5UTm5iQ1lQdnlMUXJnbU5xdTFxWGlpSmRROUVtN3NjOFRo?=
 =?utf-8?B?ZzR2TGI4WmtTb3FzU2I3cFoxZ2hGUnhLWkRGNTdkNEZvQm02VWdQUUpFc3JG?=
 =?utf-8?B?M3FLZjkwTEFHbUwzNDNwMHA4ZENrU25Obkp5ajJCOGNleUJGVTJUOEt6YkpH?=
 =?utf-8?B?RFlvRjlYWGRyeFNlRUlHU1FSWUNvV3pjekJMZjZQQ0xUalZvUm9zNGJYVE0w?=
 =?utf-8?B?aWJRMHBQZlZWWHVoRVBwNmZYMGxKTnNTSVFhQXlxK3hPdEpwQjkyRTA2YUFR?=
 =?utf-8?B?SUVEYVRQS3dOVHNGb3Vic1ZnSUdicndHRGtBNW1kQ2ZpWDVPQ2JhUjNmOG9r?=
 =?utf-8?B?RWRyTjRWTm1rVGtSYTE0NjlBd0Z1YVEvQ21yT3Q3SkJCaTZBK1ZZTFI2YVUw?=
 =?utf-8?B?MFE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf79ea68-6722-47db-1103-08db68352f29
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 15:29:43.8180
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qbm3Djk5rQENDxycW8OPq9MfqCynRfD21xHM4oKy17ixnbv0PJ1HULMPLMWAjxwohRRDe8oqttvrUTQTNnuwSm0zWOVgdxE5CgVCSnkddoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7530
X-Proofpoint-GUID: iV8Ghs-m1QKWPnZ0MC2weu1PD6IWH1Qg
X-Proofpoint-ORIG-GUID: iV8Ghs-m1QKWPnZ0MC2weu1PD6IWH1Qg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-08_11,2023-06-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=946 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306080135
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 15:30:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60233

--------------x3Q1nzfcv0H9sZ0ydh7veTyY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
Alexandre Belloni, Tim Orling, Thomas Roos, Yoann Congal, Michael 
Opdenacker, Ryan Eatmon

*ARs:**
*

- Randy: Move bugs from M1 to M2 for autobuilder intermittent issues.

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *73 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *74 (Last week 70)
--------------x3Q1nzfcv0H9sZ0ydh7veTyY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
        Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Thomas
        Roos, Yoann Congal, Michael Opdenacker, Ryan Eatmon<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
      <p>- Randy: Move bugs from M1 to M2 for autobuilder intermittent
        issues.<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>73 (Last week
        72) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>74 (Last week 70)
  </body>
</html>

--------------x3Q1nzfcv0H9sZ0ydh7veTyY--

