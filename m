Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8483C4332F
	for <webhook@archiver.kernel.org>; Thu, 15 Dec 2022 16:39:12 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.138156.1671122342953817808
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Dec 2022 08:39:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=e3w17Az8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=934851e415=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BFDKleS023408;
	Thu, 15 Dec 2022 08:38:43 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=eDKAdG+yR0mAub4bg8OL43+DvFpsXMNrN2WqFR2MFPI=;
 b=e3w17Az8mKWlhdS8I+aNr9zIy2LLtZIVMfrIXrU6KYS2mOhJIdKWCms2dKycWjHsz0Oq
 yh0n26RN0i2bEj2l5Hd2ugrgxv6YtQDD043SFzbyZWiWGVP9v0CRVp+lUNXYiGQtnS7X
 uPzJCxS+V+gPfyfzlUhq+lZA0pRe78hyF/VzeV4I4ck5R5neZDEiNAICmgudOqq1+NUH
 DdW7bzbMVRZmZZBsWPB62v73ptt2zQtuxPpSBiMMnTm0NXqa/7Fkelb6RSs8ZLRpQwv5
 pB2Fx0v/eFSV1eK6D8F2v+VL2+2vETJ7LLC/sg46gDj96/ckpjYoeaD7ur+S7F7RJrjC +Q== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2045.outbound.protection.outlook.com [104.47.51.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mf37u9jq2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Dec 2022 08:38:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcMdHkx2O63Vi4fp4Fg5pr5rcM+rKfz4HGSqEkx4Rkx4nFqfbD0eitEJQNdXd21OEi7y8+9J+slBRpG5+mUewfrMpdHtG1UzWuZ2x1EO5aKeSeffcHn3o+CK5lb4sL4C8qgw6GMHot1yybx6S0jv3RWa11XXG3rsMOiY9m6kWTqbOG6+5DNfFrAPwnPRMN9PUgzzwfUtg1OVt6VHt7f20EkLDMIx28TpPSIwVrUM+aEp/8Zbq5GlHfGYwIqFAAJuFaZAaYOdTdvgxr7QBMPFxAOkeSxhYWfw0JjYeFtBaVwNVeGA8N4XwwR6qXdHkhgCGj+TMqDJUagWFAUtnZdPUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDKAdG+yR0mAub4bg8OL43+DvFpsXMNrN2WqFR2MFPI=;
 b=ELGfdo2qtc64VS8zE+j3SwQ96g6PpvH3EN9K9OK9baYzBVDFUK7kq+Z7cfYpU+6BRjf6iXoY5Y9VVDoHBET6m5oDyYDM+C473b/Sbn3kByl26Zz3PE0dXvYgP70QTFMea85vJ14Q5rxRK0zWt/kRT2icPudvcTHSR6q6ENlsG+IuvwN9qUOgrR39sKu46CzrV0eRYs3tB1p+jCtnlHR5PI+5+3DvxesA0tvuX98dFnGn1QslX3AgP17Mu/GDCZdDB3zgLMHr9tUil3fRV1T7PDZCvgwDg631wf4c4HocQMMTgW2xwmIH/HTyGE3pPySvyld/o6YvEznE2QmfSIetXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN0PR11MB6182.namprd11.prod.outlook.com (2603:10b6:208:3c6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 16:38:39 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::fe:f069:565:86dd]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::fe:f069:565:86dd%3]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 16:38:39 +0000
Content-Type: multipart/alternative;
 boundary="------------YHBSEz0jzFBI0LUaGB9k6lRc"
Message-ID: <b4cd5a12-baac-7dca-ae34-87a2b5d03983@windriver.com>
Date: Thu, 15 Dec 2022 11:38:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 12/15/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        Saul Wold <Saul.Wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YT4P288CA0006.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d4::12) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN0PR11MB6182:EE_
X-MS-Office365-Filtering-Correlation-Id: e74862c9-ebcb-4c86-365c-08dadebad1bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+FI0Bg9VlqVa2KUnErKQa2dOkDZUJmjsQzwt+uxhrIdDqpRP4c365PEC4tfP233apYNigiSm/eBmTfmcpVmiaQyoSOk2ptlEy203vo+uMxDRqJRm7HEFkBFw9GTgtakf+U1Bycmey6gsZWkRoj/uDXaGkijOwxX7ahz4yelhS4crXUuFe5tSsiKBieSqz1NKqS8VXm5dzEhM4ZJbRBrKXF6ldlWAt2qdt2WZH6lBTmBHHRgdqSD5Seue910Y5LyXdrAdQ2A32My0/O1jbWncVywNb0Kk59Al21TMwPCF2RRIUaYxLGrkiOkt1Ajy+Ix3puyJXwX7lVHpGOgLF03oLBT03QJ4R7T3NLbYaEIURne0A86uZGETnElm7hKFJ4df9RGO3AOG4sT2A/N7buaUMgsRvaK60rXUJ/HN1UFQ/HqsgfN5m3XHiGFNRinBlJUaHyrdpfDmI1XiOrPx2dO4Vyp71MGv/qFSLX26f8EKWHmOtjxqJBeTMiUEcFw9b1uCvC3rKggorTPuFptBHL+5EItUyMwtNlZB1Ks47YCY1uD0fM6xIE8/G5iqQzcOp+94flPYZJpbcc6Lk5KCDgejgiDtrIER6ubydIutbzbbATgZTx9GHaFNmxoC5TU95ZWzoIXaPvRejCbw00mQxPkVfqJkSjjLAt8YrJ3uVQ0np8gt9QYYV5HC4cYjegERTSYTKE18KMf1YW9SWZfN8zD+YLW29Ao6QwZnwW9kc5xKJz8gT91K2OwYqK0ckraV0RG3
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39830400003)(366004)(376002)(396003)(136003)(346002)(451199015)(36756003)(6512007)(41300700001)(5660300002)(7416002)(66556008)(44832011)(66946007)(8936002)(2616005)(186003)(4326008)(8676002)(66476007)(6486002)(6506007)(33964004)(966005)(86362001)(6666004)(26005)(38100700002)(166002)(54906003)(6916009)(31696002)(316002)(478600001)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K2JsNW1DMXg1bEJRVHJvalVKZVE2eWZrakhobEhkMVFoOHhUZkdibnhkbGVY?=
 =?utf-8?B?TXE2cytudCtYRHZmZGlyZjdRZHJuNGhTUm9WWEFkWUdnc0tMeGIvb1o2S2JG?=
 =?utf-8?B?cXpWOTdiZktUZGFjOUU0SlpYS29XcHY3RW4ydHNmWUVnam9PUnNTSUpFcHhW?=
 =?utf-8?B?aGt3Z0JkellHT1h1eTgyRmFXUFFLd1hsem9zc1l3ak4yanlXZ3A2b290Z201?=
 =?utf-8?B?RVcwdkxtUXJOcytyL2FoeEVVQlRHT1c2MTdMb1BGenQrRjdpbzZ3Z29QaExx?=
 =?utf-8?B?VDYwaGdlWVRQK3dQbDRVTjcrQnVWNEdRL1VrbXZqQWxjSzFySFFDTDV5SEg1?=
 =?utf-8?B?V0R4RXZkUTViY096WWtEdlpVYjVvbTVmMUFlM3JyUW1mVVhISkxPRFBXaDUr?=
 =?utf-8?B?TTZtQ2FPU2RRVlBXcXZGek1BczlhWmwxZCsxNkZpaTdJeS9pNHY4T2FhcGVS?=
 =?utf-8?B?Zi8rU2c1Qndqd2Q4WURheWJYVkhCRHpyM1JERWpxNFEzNTFrT3FzS3Q5WXFP?=
 =?utf-8?B?L1JsZU9uc29BQjRBM2ZEak1GYkh3K3QrWWtiWEcwSUdEZmRrMkhZNDF3VzJw?=
 =?utf-8?B?MjJ5dXJ1ZVE5Q2VrWkgzb1BxNjFsbzFRSXUvRjVDRTFDNDA2bFhWZVNuajc0?=
 =?utf-8?B?eERtSkY1SmM0Y2EwSVhhdVBCb01KTThnWGk2ZlY3a3BzU0gwbnhlMDdveGlR?=
 =?utf-8?B?S1puSzRIS2RTRkQ1WmFLRTZ0YWdvVTJyQ3JnY3VHWFJGQ1I4L3JFak5ocEJV?=
 =?utf-8?B?Q1BBQ0NzVWdtVVFNS2hmL3NkNHljb0tPU3hsNmwxM2V5ZHhSTm9UVW5LSFUx?=
 =?utf-8?B?RGsxOW1PZlJyOGxTbkNnVUMxcWpFMXQreVpvVjk2RHZvM2lXNndmcC90OEhC?=
 =?utf-8?B?b3kvd2thcXNnQ3l3aGpNV2pVdFNQK2VlR004dTJwSEx1Zk02c25RYU5qcW9t?=
 =?utf-8?B?NDdaaGhYZTcxc0M1MHJydTJFMG5WNXdQbStUZS90QVB5dS94NXYzRHkzN05G?=
 =?utf-8?B?Q05sWHdLWU1lTGs0aElSRTFJYzUweEdBQzJYWmZwYXpuWUVBTnhnYXNrYTB1?=
 =?utf-8?B?YmlRYkpKeFpkbmk2cUwrQkVKNGloM2h2UmxCMmZoaVVVYk5pR1pQbkNpZ0JN?=
 =?utf-8?B?UTVWV1I0ZlJBQTREL1ZqVDBhdzdRVjJIK0U5TXdaWkVYUFVUVVQvL3Zya05k?=
 =?utf-8?B?VzRjdkYxRSs1djZkV2xHZzk2bXpkV3g5OWFFMExDeDBEVVlBckFLZGlyazlN?=
 =?utf-8?B?UFdvQVRxQkxaNGpkcnB0VFU3UFJ3Ukt6UW5zaHpHRExvZzVEYzczOElMZWpi?=
 =?utf-8?B?bW5hRFV0V0sydzRBampsRG9rRm11VDNvOW90NlJzMmc5MVErMjBjRzE4YnFQ?=
 =?utf-8?B?Z0Qzc0hJcjc1K0FUYVY5SXh3bHZVZmhVNHpyUFRHb0UzU1FGTlJHQ1RYbWdQ?=
 =?utf-8?B?NWVNeTdSbmlwUEVLTXdTZUt2WjllVkM5MHFHUm9wUnZDa1hoMXY0Wjd3VEVL?=
 =?utf-8?B?QTNNaU1RQmhVQkp2YnBaQzk1SzFPK1J5Zm1Eem5LejVRM3lkMy9QUzQyWStO?=
 =?utf-8?B?djJCeTdxWSt0ZGE0UHc2OFRiV2lGOFZVQ0ZCQnYyR0RNZlltTGZ6N05aWnpz?=
 =?utf-8?B?dCtObXhvc28yY1IwWlNqeEt2QXV5K3FXVS9HMEovbXl2cHBnUjlOVk11R0JE?=
 =?utf-8?B?V3ZsZStKajF6TUhvaUZlbDloWjVxNlBLT2lpTG9tNnhPa1EvbGRjeno4Q3Nh?=
 =?utf-8?B?K2kxSzRjbU44Y09HRXgyc21vRUdzTzlBNUw4MHFPVmhYQ3BWRENRWE10djNr?=
 =?utf-8?B?TElnL2JSTHFUejRuSlNRYWVXL3JkZnljallvbHlvM2EwdmlBQzJsdDJCUGJw?=
 =?utf-8?B?SWlKRjBRRjdWbStWY2dxZEd3QzZjTmd6NklOc0pWcmJwQ3c4cXVHa2VUWi9K?=
 =?utf-8?B?S1VVd3dVL0UwcXMxUStDM2xyVzlvWkx1eDVISXBpcXpGdFQ1djNTdFZKdjZC?=
 =?utf-8?B?YytSV0RsL21TdmltY3NXMjdiT01wejY1QUpqRk1RYVBaRTJpZU1PVmtaTXlp?=
 =?utf-8?B?aTB4QUtiaUs2Tm9CUWRKRE9UZnFXRXVqYTl3V05XQnhYakVFM1V0MEcycTV1?=
 =?utf-8?B?bDdicHlwUlpvelk1QlZ6MkRWUDkzQnBFQk5ZbmIrYVhWWUdQcFpYNURycHZt?=
 =?utf-8?B?NlE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e74862c9-ebcb-4c86-365c-08dadebad1bb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 16:38:39.1274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: prrFeod1kZC4MvcWs4DTIOy22808VCEnPx6tD7LpoL9AxvLXYjYA0m3IzM5bDsQ7gBeBELp46/GZQJr4tRqyn82RkvMjYHxmPqc9Y9hO77Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6182
X-Proofpoint-GUID: XwCuoYC9FPo8zMHUXdXcAif6Gvyi3TsU
X-Proofpoint-ORIG-GUID: XwCuoYC9FPo8zMHUXdXcAif6Gvyi3TsU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-15_10,2022-12-15_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212150137
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Dec 2022 16:39:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58809

--------------YHBSEz0jzFBI0LUaGB9k6lRc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2BFDKleS023408

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling,=20
Michael Opdenacker, Bruce Ashfield, Pavel Zhukov, Ryan Eatmon

*ARs: *email David Reyna and Michael Halstead regarding assigned mediums=20
with milestones.*
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *70 (Last week 70)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 44)

*AB Bugs: *59 (Last week 58)
--------------YHBSEz0jzFBI0LUaGB9k6lRc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Michael Opdenacker, Bruce Ashfield, Pavel
        Zhukov, Ryan Eatmon<br>
      </p>
      <p><b>ARs: </b>email David Reyna and Michael Halstead regarding
        assigned mediums with milestones.<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>70 (Last week
        70) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>59 (Last week 58)
  </body>
</html>

--------------YHBSEz0jzFBI0LUaGB9k6lRc--

