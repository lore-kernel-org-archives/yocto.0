Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6224.1622800116616143052
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 02:48:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RZNe4xqO;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17897079a3=kai.kang@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8DBEE38C1131
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 09:48:35 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1549mYOd027604;
	Fri, 4 Jun 2021 02:48:34 -0700
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2041.outbound.protection.outlook.com [104.47.56.41])
	by mx0a-0064b401.pphosted.com with ESMTP id 38ya82ga4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 04 Jun 2021 02:48:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abIaGbsjTSNjMlhHUwhOtR04zpUtsY4DdyGPT+kXu4ZbY5V4ktIu2b636uWC7TypwzQ7lbP84bEYkqT9Ik4XeLYlmFcJSv1QJtzr3chRPmWz6jq1i1oSihNCR4imf/xPjsLtCinr89iVOjwj/0FHAIfC+a2zKIYyQErz0EMLeBIajVuyyolpexX3U7vNFj10tgaACgC8M2dIBh9agfh3af9P8d3EriID59Y2fyh0Z0qgm0nBs5yPoxg+L+mxqoOJKgSdGpk/AfGeYWLBy6DPUqd/7GjJDJTEN7kHIubrIJRvHpWaeHMVLoLF9nX+qqiAYKYqegcxd1O1339jDO7Jow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jd8y6gUZ+hJN6C/sANfP95ni3hVLxHZIYFbhIWV4DOg=;
 b=C9wAH4h5LWRgd81QQtBfXp+MX4jk/g/Qpry6EWxr5km8ZQLwOriIqaIwukg1HmsBGGlQdY4LkPsjZ8ftV9QKTHLbAY9S4guAZ11QM9WLSzNag+h4Nsadbnsnm6JyvwP+54mq2fKDzqGmnH7QGAD5u+n/1beOacX5ult8eM+g1TkctG5S2hQLHZFvpoDD2AE5l8nqzxTf8XUiPZO+GpuUY/hIk2tezUj7AftLXMTgNKLx7eMbz38MqeKp5ThmOobrIIABXyhybvswiAv6Rkt8VeZVwtpaDrQhY1iTcynbWKN+eGOrjeR32877BgmH8mGT1M7BE8YgNuOYqHEocA3OOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jd8y6gUZ+hJN6C/sANfP95ni3hVLxHZIYFbhIWV4DOg=;
 b=RZNe4xqOxmxm0B8ge5a1r3xu8H1zEQBdoQ4S4oE+sfuINXk7bV7I0O3RTZLUPYS0eVr08Q2yGDZsPCAo7ZQVGw9jauUkoC6XfDU+JGbxrBdaQJ0owL6QmUwFw//ky2498NkoZPd7nIq8WpbDQlRWD6v1eUXKW3aFXE3c1v/Xjeg=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CY4PR11MB1432.namprd11.prod.outlook.com (2603:10b6:910:5::22)
 by CY4PR1101MB2070.namprd11.prod.outlook.com (2603:10b6:910:1c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.29; Fri, 4 Jun
 2021 09:48:32 +0000
Received: from CY4PR11MB1432.namprd11.prod.outlook.com
 ([fe80::7943:e41c:5fd7:a130]) by CY4PR11MB1432.namprd11.prod.outlook.com
 ([fe80::7943:e41c:5fd7:a130%11]) with mapi id 15.20.4173.030; Fri, 4 Jun 2021
 09:48:31 +0000
Subject: Re: [yocto] [meta-gplv2][PATCH] layer.conf: set honister in LAYERSERIES_COMPAT
From: "kai" <kai.kang@windriver.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@yoctoproject.org
References: <16854E52FE31886C.23333@lists.yoctoproject.org>
Message-ID: <402dde0b-a508-0d09-7196-e8c7016aaac8@windriver.com>
Date: Fri, 4 Jun 2021 17:48:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <16854E52FE31886C.23333@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR02CA0005.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::18) To CY4PR11MB1432.namprd11.prod.outlook.com
 (2603:10b6:910:5::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.151] (60.247.85.82) by BYAPR02CA0005.namprd02.prod.outlook.com (2603:10b6:a02:ee::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.15 via Frontend Transport; Fri, 4 Jun 2021 09:48:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 989cae7f-5415-4720-0646-08d9273de995
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2070:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<CY4PR1101MB2070EA1FB29FD7913185F4E4953B9@CY4PR1101MB2070.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:873;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rrrVMqXpoLQ6wqNpy0lPSslUH7S4L6Znur8sHponJL90JxXCkHfeFGest0fIw89JuX8vT3gC2GLGOaiiMMO3aWC3njMU7XYkZeCsnEhETeT2SSk6sD4wOk3G2O7FvhfKTb1hLt3cT3a5n3b7Wr0B5j/0CMSphElsAYYLeGJiKL+fLvjLHBjkUUuYDVE4qJW8xzT/qfMrdVmpcOHMj+mdgz7x3AF65txQYMjW5ubd1zPwcq9ISQfbwq/gmT4F00+0E9GNjdbHsdyuXC9oCiwhz04IvgRz/2sVDZvdSGhx/nVTIhfkBRKwocdEOjvnIE2WpNFVFaUBp1eZEOReEtimZGp/kuOz/uzHbH4ko19IDc0BGDGJm9V2BnX1QtqL5/sdtYjVZJBommxspGm/UTKB4R5NP5woiKnzI7RUd471yYcdRk+/UoPtccVTz9arO+D2BfcvOIX6j1nA9AKZMirP0zAvBqgfz1PU+9CFN2NRsB4YrwhpjODu6EM1isF/h4sP9qjp2XokxIB1ygQEN6mmsEKgl2Eq8JuUg/r4wBDWLl2fvuXdcG7l3hCdqvGiYROTD+My5+d8/zcWw90DTceIA6HY17OqHx26f94PBfda0fh/UYR4kft0X3gDTov7wL6fUElRtU1ewXJMXupGbwlyzphM2LMhI65Y6zdaCAkixMQWrFMJIJQ1sM3joFvn1dt01rRXU3L4aak+20Si0MKeWYmPTdKJa1VjjtbdZswhvNiV9RFi36xjjZU0IFMZ/Yky84WNPiuUClk1kbqYVsDuJbkVzKk9BBWuu+yvRgcZrHa0TkUmeZFBd+3klx3Xt88O83AHFmQNGRYhOH0Ka3p6jBTB62OS8oWiQWyEjW5pGnjyp9eAF3XxbkmCiJs5IwE7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1432.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(39850400004)(136003)(6706004)(53546011)(83380400001)(31696002)(16576012)(33964004)(6916009)(38100700002)(36756003)(31686004)(8936002)(186003)(16526019)(38350700002)(6666004)(52116002)(956004)(2616005)(316002)(5660300002)(166002)(66476007)(2906002)(66946007)(26005)(966005)(6486002)(8676002)(4326008)(478600001)(86362001)(66556008)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Uk5XODRzdSs0b2FXT01Xcng0ekdCdzJES2pLK21aWCtSWUpsYkhkcTJwbVNT?=
 =?utf-8?B?YVd3WlZZcjRyemI4TVdaMCtCZWYwZG4zWUlXWkJ1R0NzTmd6NCs2OUhWcjNE?=
 =?utf-8?B?VWNUU1pRY0kwbDFzWGUxeVJIMU9DalJtL0Q3YTNzV0NTemF3VFRrWE1kRTdr?=
 =?utf-8?B?Q1YxbU4ySVhWeHRodlNtbVNoOU1MQnA2bUJQZWFaMXNKMUluVEZYby8xbUlH?=
 =?utf-8?B?R1VrRURGM3plS0xhVFh5YXB5d0RXMVY2djZXV0RrVW1NaGFTYi82bi8xRko4?=
 =?utf-8?B?NUhudnM4T1dwczh3V250T3ZzVVVnSGpCUmN5U2czZDRIS0RmbU9XMXB4blRC?=
 =?utf-8?B?c2NrZUpxeHh4a3l3Y0QxZTRTTFBnN1AxSy9SdU5KN24xa3dXV1lVZGNHOW9E?=
 =?utf-8?B?MS91YnpoZ1pydFRIcWZTRHc1Z2taQm5qaDVRTTdtVDVEbklQS3pPY3pFek1S?=
 =?utf-8?B?VUZ3RTVweWNuMnU0NXJFalBXWVJsR2RuTHM1WVhFY0EzUFhwd00xK1FRT1VU?=
 =?utf-8?B?YUdNRTdkbkRFNGQ1RnpNSXRvRVpVNENVY2lNalpCTFhHa0lYQVVNQlNmM09D?=
 =?utf-8?B?MUVBZTBHNDFsd3UrVzZpRXlKZEZrU09ubjM3bFBiblVRa204Q0VLSE1NYmc0?=
 =?utf-8?B?eURTVURLQUw2OVNLR0toZ2xGaTJVNm1RcTZBbC9kcFBMQ05QdXNVeVBtMDZ1?=
 =?utf-8?B?Yy9GV2l4QTNJdDkyVHNoejlLb1VOZ3FKUFd3b0NSdFcwRkR0eDI1emhPcHpW?=
 =?utf-8?B?K1Jia21ZMy8xaWRTWExXOGlPV2tDYWdYUTFCSUJPNlg0NEVyNVlCd0U1a3RC?=
 =?utf-8?B?YzFOQkJXcU1sRDNYMlM3a1pxQ3dzc1l1MkJ5NXY3bURNcFFJSkRPKzNyY3Vy?=
 =?utf-8?B?eWlOWDZCSzhGK0xlQmJxNWhJZkpYemI2V1JTK2hhNjNhWEhyUlFpU1E5ZG14?=
 =?utf-8?B?SlI3WHNVSU5yZktwcDliRnEzdEJPZ1I2UlpualpDTFl2VmdXK1phZGt1c2dK?=
 =?utf-8?B?WlFqMWdTYW5RajdRWGNSK25FOTkvMWI2azBtcDZ4elJMalk2WjNwcHYyTEo3?=
 =?utf-8?B?eVk5TlVJSGNlbEEvTHQwV2dzVEE0RkpsRWNFY1FieXFzeU96WGx4YXNmUjNj?=
 =?utf-8?B?NHFIY2lrZmJOVFZSaHlGVC9XV0w1azlhNjRYNno0V2o0c0hqMzg3M3lMMU5s?=
 =?utf-8?B?R2FxOHVvY3VZWmxWK3ZWNmh2L2tIenZ4WjJheXpRQmhvWjFyeGZWVXVIREV6?=
 =?utf-8?B?blpoZmd4dlZSSzNpZ3lSd3A2dWZxMGtaNWE1SVJoYUFtNmlNdGFBYjRpb1Iy?=
 =?utf-8?B?VkdFUndHY0sxRVBpZG9QaXk3a3R0NlJwUEhnOWY0THRqc3FRcnFVTDUyZ3hz?=
 =?utf-8?B?NlIzN3ZmZmZrYjg5Vkl2L3FRR0YyUEtXQjF2eHBlaVJYK1NMSm5wZTArWjR6?=
 =?utf-8?B?NzB3RFM5MVMzRC9lWnJRMStNTWFSb1dVMTQ2cmJKZGZhdUZ3RklqL3J2ZHAw?=
 =?utf-8?B?T2hSaitRdXZzV1lDR3BBaEphWG1iZ3I0SVExcVZmSWlEMFdiWkNTM0Jhdysx?=
 =?utf-8?B?RldEVm5YWEpIL2pFTWpMTWJhZVZyK0srVTQzdG5FTE5LUXBtMU9RemZCV3Rw?=
 =?utf-8?B?YVdPM21Pc3YyZHZPN2krTm15azVua292Z09iVEl4RTdqR2I3ekd1MjFXTUU0?=
 =?utf-8?B?cEplMW5BbmlqdnhiRG8yQnZiSFJGZEM3Y29xZjUrWE9QRzdOZitOcWI3UGZ2?=
 =?utf-8?Q?IbsPl+N0KtknCid+MEkKEyqbgFXSlI5vQw2irjd?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 989cae7f-5415-4720-0646-08d9273de995
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1432.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2021 09:48:31.6931
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G+uA/vJ48s4SYmiu4mUAZJvKEcABPEgVqchZfkWF4NN6/UqmGFN4N97oGEhBWR6dgvUx4VTr3ricxKUmT/OHmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2070
X-Proofpoint-ORIG-GUID: YuPKs1TWj_x00rnmYkNV2SoWDQPRYEXd
X-Proofpoint-GUID: YuPKs1TWj_x00rnmYkNV2SoWDQPRYEXd
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-04_05:2021-06-04,2021-06-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106040078
Content-Type: multipart/alternative;
 boundary="------------F33A55EEE6B5558A69582FD3"
Content-Language: en-US

--------------F33A55EEE6B5558A69582FD3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/4/21 2:49 PM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Replace hardknott with honister in layer.conf which aligns with
> oe-core.

Please ignore it according to Martin's comment in oe-devel list.

Regards,
Kai

>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 9fc797a..3abe6b5 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,7 +14,7 @@ LAYERVERSION_gplv2 = "1"
>   
>   LAYERDEPENDS_gplv2 = "core"
>   
> -LAYERSERIES_COMPAT_gplv2 = "hardknott"
> +LAYERSERIES_COMPAT_gplv2 = "honister"
>   
>   LICENSE_PATH += "${LAYERDIR}/licenses"
>   
>
> 
>

-- 
Kai Kang
Wind River Linux


--------------F33A55EEE6B5558A69582FD3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 6/4/21 2:49 PM, kai wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:16854E52FE31886C.23333@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>

Replace hardknott with honister in layer.conf which aligns with
oe-core.</pre>
    </blockquote>
    <p>Please ignore it according to Martin's comment in oe-devel list.</p>
    <p>Regards,<br>
      Kai<br>
    </p>
    <blockquote type="cite" cite="mid:16854E52FE31886C.23333@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9fc797a..3abe6b5 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ LAYERVERSION_gplv2 = &quot;1&quot;
 
 LAYERDEPENDS_gplv2 = &quot;core&quot;
 
-LAYERSERIES_COMPAT_gplv2 = &quot;hardknott&quot;
+LAYERSERIES_COMPAT_gplv2 = &quot;honister&quot;
 
 LICENSE_PATH += &quot;${LAYERDIR}/licenses&quot;
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Kai Kang
Wind River Linux</pre>
  </body>
</html>

--------------F33A55EEE6B5558A69582FD3--
