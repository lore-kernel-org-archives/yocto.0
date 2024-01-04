Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D4C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 22:05:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.7448.1704405895933869921
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jan 2024 14:04:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=ApwfATdn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=173331bb5b=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 404IpTAA015958;
	Thu, 4 Jan 2024 14:04:50 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=7Hv2xGVPsTx3HfQP7by
	18Ny2SAJX8CWAvCBAA3bldBc=; b=ApwfATdnRTGe564dxsAGuwIpiAhZlGedmkN
	Gyt97LLO4kcugKWVW+4p2gA2xu/eh6cxNZIIKNWX9k/vmlaoYlrMWrfW9yML8TB6
	Ltkasfs6d/r18VQnchossYH4gCniKkUoLeCPnwM7po18J5vqrdHM1qBq71CHOYDE
	Hwro2Nw3oOEDxdrq796lbBbcNpER+NlsdAWb+MoezlOj+U/GO6wmLxBQ0hA2qpUE
	9P5wA+bOC2PFACAAU36iGESXb38hgE5b862eYgFOgx21g8qDYpeOJG4ij/cDfLrq
	2nxcO1KZR39p8KHtoBMCJropHVI/YzaELEabuNMEITTZ1S08Adg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ve12t09f6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jan 2024 14:04:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6iiu3GJ6eTJY7oN2vv+S+jUvStpbKvSzjclnMqsLbd/ruTqyYZxZSVNElG2ctIkV6l0MRuyhdaZ5c/X758xze8K9LoLPpEzCN2wd3x+2r/qozr6G4xF45UDTK6wHmMS5cWPAGDlEPwj+I+qgTN5JHqQ+9Fj/u1yHgkgq7cv20+hvg70LMz9/noOs/oLWlpF2VKNUFHSOQs6XGx/lD756TZAp+ImVT4W78+Fm54z7ioNbA8bWEZ0oyEm6qdvv1NGDBRZJpqpiIuPADafQkdH69791fujuaWLzB5qOmRu9VNahpPr4dh8F+iBfegi2HveASLjV3MuVOvg5A2in3kZow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Hv2xGVPsTx3HfQP7by18Ny2SAJX8CWAvCBAA3bldBc=;
 b=EquO+t7tk5nmXaoYZYYSh/ijeEI31qBSx0k0fgm+z5qxZYftrxZDqKd2EsuBov9jlO1meg3b7DenCPNPqOndS9ywUrf/eAQn/0a8YqHUjkeuG27JjINeoHmpmFjYI94xtZqKghURllspRVnkiFkL+QQdpojPd99Xi6W/CXyvRmYmV5w7Z937PrJXH4oQWQOKb0DxxTGQKtzhiqTW9L72Tg+e8kFgt2xQWvK7A6GGJpLEkzzHtuTkAeH38VKtVPON4VO9WMJKAGBuDE+JLcbUZL7SDp2xh9hFtRdN4QtP8dH1S/ggO5DendmncIgNeKcxpQTd6VCDyZDqR7JVCxux2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2844.namprd11.prod.outlook.com (2603:10b6:5:c0::20) by
 SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Thu, 4 Jan
 2024 22:04:46 +0000
Received: from DM6PR11MB2844.namprd11.prod.outlook.com
 ([fe80::91e2:97ae:53f2:7113]) by DM6PR11MB2844.namprd11.prod.outlook.com
 ([fe80::91e2:97ae:53f2:7113%5]) with mapi id 15.20.7159.015; Thu, 4 Jan 2024
 22:04:45 +0000
Content-Type: multipart/alternative;
 boundary="------------8Zn0e0ayXA6tgmFgvaYILgU3"
Message-ID: <7fb57660-96ea-43d0-9d0d-1fe5af393915@windriver.com>
Date: Thu, 4 Jan 2024 17:04:23 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-tensorflow][PATCH] layer.conf: revert -> add dl
 layer to LAYERRECOMMENDS
Content-Language: en-CA
To: yocto@lists.yoctoproject.org, jiahongxujia@163.com,
        "Jia, Hongxu" <Hongxu.Jia@windriver.com>
References: <17A11513C40AF81C.11381@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <17A11513C40AF81C.11381@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR21CA0008.namprd21.prod.outlook.com
 (2603:10b6:a03:114::18) To DM6PR11MB2844.namprd11.prod.outlook.com
 (2603:10b6:5:c0::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2844:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 7729106b-1f48-4184-2c19-08dc0d711dff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zFU5gyCZnpH/XZ1iMg43dkifxRZ0JrAgTe5YkvIkuufLSyhBO+6WqPpL+XOeZtT9JLjoBsED50zbL1U5anvcbSmENcJfbCTnLX0uYNH3ukyEMpnZV5srJPnQkYSBLHeolUPtVZPYkBV6uMloTtIRtf6wP0QfBmPd+tAzgcDKhHxelSKv13VrCpBydpMIWMsSOjxFTmE9MB3+nbq810FaF76n772RwkkoLK27ils0ngMxBmKhz1jULbncW6npwuMI1VF3kBgSDTXm/feluV5GZA6x1jHdZgdKp2WXTipsZvKbv7gLOI9DOF//quMQtFfChYoPZcbdlH9vrGTw9NAw808Ri4W/n5Qiq/fa1C8WjoyhCUkBpeFzJOsZgpL137e2DkO6MLDgHnZIBb+vYUYJ/9JOqKpn6Tr7C79dASzEmVCLnrNbwO3GETYMBbtn2jUGTbJs/iBZFgogl01mBbJSIlYc4L8rYNZiq3d5BENqfYa5Lf+rttNGTju5Xdgh3RoFxKEgrSDd5zNUJ4wbM8KyaMy4PHBnXwEcVCmJABv0RF1dJSyF+Ozuzfqbd6KQ6MTJHH1DRv0oW1rQwZEwS8xxmTEYUD2Xui02WV6rCweUkkHU1MFuvlhjv6TtJSytyeUvC13DswM74IJ4a0GFoQ2VCw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2844.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(346002)(39850400004)(136003)(396003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(2906002)(2616005)(5660300002)(166002)(38100700002)(4001150100001)(316002)(8676002)(26005)(6636002)(8936002)(37006003)(6862004)(6666004)(478600001)(66556008)(6512007)(6486002)(66476007)(33964004)(66946007)(6506007)(83380400001)(41300700001)(53546011)(966005)(86362001)(31696002)(31686004)(36756003)(66899024)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTFNMEQxb21xeldQT3VzMGZrZmVQMlF1d3hTYUtOK1c2ZVZGdkYxUlBIMTZK?=
 =?utf-8?B?QnFCdXdrV1hZVzBNdi90cy9OMlRkRzdqK25vRXA1d0lYU3g3dkpFSEgzOUM4?=
 =?utf-8?B?SDNKVzhqVVcwOGVaQkFnb0lLMXJZSFQzVHlHL1dlNlRZMDh5REx5c3dCZ1h0?=
 =?utf-8?B?ajlQcFpYR2FibWtaQ013RmRFcm1GYm44eDJoLzlsMU52L2xScS84eU1GTnJ1?=
 =?utf-8?B?N3lIU2QwL3MvT2JtRWlwZXZCekl1SWZldVVycHc2VXlyOHo1UlMyOE5HaTZy?=
 =?utf-8?B?T1RwUTd5OFBFZ1k5eHNwYWVzNU1RNFBaMmZqbnY0QURXV29xQ1lRcEpUSFhR?=
 =?utf-8?B?RlhXSnBhWUcvb0oxU2Z0dU1xSzVuZHRuUXhDalRIaUJBemZMT0ZSRXJtdThq?=
 =?utf-8?B?YmVKZGhyOTBjYUR4S2pVOGpub0hnREYzSGxUWkVtWVdGNmtsdUU0dHl0TVFN?=
 =?utf-8?B?V0JtczRmMURMZXZBMTl1cysvMG9yUUMrSVNxaCtMQkk1RndtZER4UWV5czEx?=
 =?utf-8?B?dXNISXp4RmpGbCtVV2hubHpxZEhZbzBDbHNjczVxa1I0V0MyYjV6U3NTZkV0?=
 =?utf-8?B?QnpkZXFYZWdHZWU1K0ZtZHpPMlFrRkZ6ZHZKYUw1azR4ajJFa0laZTJKNGpG?=
 =?utf-8?B?R1RZN1Rjb0s5OGVUZDhzYkJDd1ozcHBCL0RsQVZCaTBkTmVVSjlGczdaemlo?=
 =?utf-8?B?MFFvS0V3ZWhJVFZYdGlRMXFvTGVwWVRiM3FvUFBPYUpNU0dNa25EcHplazF1?=
 =?utf-8?B?NEdMMTZhQUJiZGhVanV3dGVmWEEzSm1OYWdZc25UdUJPOTZxNmV5bGVmdmlX?=
 =?utf-8?B?ZzYvaVViK0VRMnBFbzlndjFoZVo3QmVFSjFQcGhFaEsxU0VYNWVlcjZQanVZ?=
 =?utf-8?B?d0RZOFJOdi9EbDJ6QURWTVYxNFVaaVlzY2MvSnduUXJseG50TDVybG5lb2dN?=
 =?utf-8?B?TjhleUllRUxYSkhjUXluOFE4Y2RNdEdpSEUrRmJodFBFemF1Vm0vNUhLbHg3?=
 =?utf-8?B?Z1NYbTRkZklseXorWloxaWFSYjF2a3FOMWhzTGg4VTRuUWY4M1NYTHFJUkJH?=
 =?utf-8?B?MyttKzA3eXRHWGwvWFRBR2xuQ3FGejU0NWNrN2w5SVVvKzJXWmxma0ZZbnpt?=
 =?utf-8?B?SHgvUTY2UmZuMGM5Y0pMU0Zhcm1sYnNWbWMvSHh0R3Vpb05uMW0vRE52bTJJ?=
 =?utf-8?B?Q3dCUXVVT1pJMU9WbzI2eWM5Y3kwWkg4VE5FUUM1Nkp2SVhQTWlQb09IZ3FG?=
 =?utf-8?B?NXJZZ1VmbVFpOURhSE5WTHk2RElTbXNlSUFVOGdBV3piVFBtZzlJN2pXcmFT?=
 =?utf-8?B?d2JtRldlV3pCYlo5UDFaM21TVDBkQU5hU3BLTk1nUXNUelkyR0ZGU1BBQ3pC?=
 =?utf-8?B?L1pqZFhGQndHNGRjcFdnclFVa1VCOE42bWpCWnJBVU9tSG5rZTNtaDczeGFZ?=
 =?utf-8?B?OTFFN3R6Uk9uTFUxRWV6ZCtBLzZjTlYrWUd5ME81UmJSTVJPcHRWMiswYzEr?=
 =?utf-8?B?cE1OYW5Eb003N0V0SHIrRUNjM2Zqclp4MVBtcFcyeUYzNWQ0SzI0dXQrZE50?=
 =?utf-8?B?NTN0L3VNOGRRTWFNcUJCbFZyT2tETTMrQXFZbVdwdlNuQVBnWkxVVkRubGRr?=
 =?utf-8?B?cUc2bTFXcTNWZXpBZmVMb28rODJxazJQc2tVS3g3STNPd3A0L0YxR3FiczBR?=
 =?utf-8?B?cjcrME9qbW9qUGllWWNmQzNTUHA0RnlqUEZUUDU0NkNEM1lJVUVMTEpNMWNR?=
 =?utf-8?B?RXlnTTBQUGZRZGNLeHZ5blpEZXNOOTU3NkZ4aVp6dFh2WFEzSjNUNmFoRUo0?=
 =?utf-8?B?UnROM2lpWkNkWGZTMEhMSXZscUlpYyttelNsZUNGV2ZCeDVVOEtERXdhdWIx?=
 =?utf-8?B?UmV3d1R2QUpBU21aWTlWNWlqZ3dBQytGOFdnMDRiNlZlMXlGKzRYQmF4ZHpF?=
 =?utf-8?B?M2VnWHhTZkgyNnhwRGI5dnlTaGNzWE1CU05ONGFwOUR3YmhkRURwVHp2M1A3?=
 =?utf-8?B?bTVmOEY3N1gyTnllQ3JtWHMweEhqV1p2WkdYT3JqaXQ3dWpUTmlDdVc5RGNq?=
 =?utf-8?B?cFdRbkVGNXd5SDl0blQrTllWQlp1Q3gyVitJdmV4ZkZHNzRQZ1hoejRTelpw?=
 =?utf-8?B?eGdoQlV0SEg1c3k3aDJqdFFqUzQ4RXZ3eWtzcTZENnU3VitHbGxuRW53VnVi?=
 =?utf-8?B?Tnc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7729106b-1f48-4184-2c19-08dc0d711dff
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2844.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 22:04:26.6687
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhnpBAfbapSx1pJ22F+wog00ziRI0h0igyJKYW2SPOX0DqBU6OIlZOtYs13ccFoutMm3i9JFratMdkbN0xM+emyN9RQyWxJewwqMJt7Rf9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-Proofpoint-GUID: bG2Ji5-fe13dF_C9UZkXgKh96kNpeETG
X-Proofpoint-ORIG-GUID: bG2Ji5-fe13dF_C9UZkXgKh96kNpeETG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=702
 spamscore=0 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401040171
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 22:05:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62091

--------------8Zn0e0ayXA6tgmFgvaYILgU3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Add WR email and ping.
See also:
https://lists.yoctoproject.org/g/yocto/message/61918

Thanks,
../Randy

On 2023-12-15 1:35 p.m., Randy MacLeod via lists.yoctoproject.org wrote:
> From: Randy MacLeod<Randy.MacLeod@windriver.com>
>
> The -dl (download) layers are not used anywhere but in Wind River products
> so drop the line that was added in:
>     5044996 layer.conf: add dl layer to LAYERRECOMMENDS
>
> Signed-off-by: Randy MacLeod<Randy.MacLeod@windriver.com>
> ---
>   conf/layer.conf | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index ccb6343..60cbd52 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -21,6 +21,4 @@ LAYERDEPENDS_meta-tensorflow = " \
>   
>   LAYER_PATH_meta-tensorflow = "${LAYERDIR}"
>   
> -LAYERRECOMMENDS_meta-tensorflow += "meta-tensorflow-dl (= 4.1)"
> -
>   NON_MULTILIB_RECIPES:append = " tensorflow tensorflow-lite"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61917):https://lists.yoctoproject.org/g/yocto/message/61917
> Mute This Topic:https://lists.yoctoproject.org/mt/103196189/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux

--------------8Zn0e0ayXA6tgmFgvaYILgU3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Add WR email and ping.</div>
    <div class="moz-cite-prefix">See also:<br>
    </div>
    <div class="moz-cite-prefix"><a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/61918">https://lists.yoctoproject.org/g/yocto/message/61918</a></div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Thanks,</div>
    <div class="moz-cite-prefix">../Randy</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 2023-12-15 1:35 p.m., Randy MacLeod
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:17A11513C40AF81C.11381@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Randy MacLeod <a class="moz-txt-link-rfc2396E" href="mailto:Randy.MacLeod@windriver.com">&lt;Randy.MacLeod@windriver.com&gt;</a>

The -dl (download) layers are not used anywhere but in Wind River products
so drop the line that was added in:
   5044996 layer.conf: add dl layer to LAYERRECOMMENDS

Signed-off-by: Randy MacLeod <a class="moz-txt-link-rfc2396E" href="mailto:Randy.MacLeod@windriver.com">&lt;Randy.MacLeod@windriver.com&gt;</a>
---
 conf/layer.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ccb6343..60cbd52 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -21,6 +21,4 @@ LAYERDEPENDS_meta-tensorflow = &quot; \
 
 LAYER_PATH_meta-tensorflow = &quot;${LAYERDIR}&quot;
 
-LAYERRECOMMENDS_meta-tensorflow += &quot;meta-tensorflow-dl (= 4.1)&quot;
-
 NON_MULTILIB_RECIPES:append = &quot; tensorflow tensorflow-lite&quot;
</pre>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#61917): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/61917">https://lists.yoctoproject.org/g/yocto/message/61917</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/103196189/3616765">https://lists.yoctoproject.org/mt/103196189/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------8Zn0e0ayXA6tgmFgvaYILgU3--

