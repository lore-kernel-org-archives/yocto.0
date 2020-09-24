Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7551.1600915629681748810
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 19:47:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=gCR2EdNq;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2072.outbound.protection.outlook.com [40.107.243.72])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F274F38C14CD
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 19:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gz4KoPqvnahuX5BHAKqjnBjsMvmg+6AatCk2F8S7Ox57D1m2Ira0BtQjQayv6yNc12adEk0CBYutoHHtPoq3Q+TErxfXvXQoXcsX+NCZIw5DulhjYyYxmKXK2A5Q+YYvEgtI8hcce9D1LkIDdeso4Acmu9+8587Jo8JwteEbofitOYvo9A6P1OjntxbaGnuU4CDd6BaU9cldRjR1ygPA/Kax+ffQipmL9/ZWGXBdcqOm/eD8v+XBHCehBalM3KFvWapdWVJuP0pAO9Ixzg1s/nf+XDX0XiApsKe3l2GU5qgfHK4vAmVLHFee/m7fUDJZ13LpE+VcUIwYz35JXT0/8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihOtimFfU4p6cqi75R8Q0c35XqhixP5Yc0ZkDaDcQXA=;
 b=CWx9xMQCQuSd+3LwB3iz5O7gfZZFc7/InPB0otg8vYme88mkDTn//Vft5+fUZcIU4/LHbwaxIaFWS9goTnNbRrwKxhGH53Hzp0JxsZDf4XWlwlXiLxNj+HyOU/aosKTdCru1kDnc7dfXtKacKgxhEhM0wlthv50MV+i17LePP8Fs+ii6le9YbmycKipAViByXpJHjDpNWB3yF1yvrQJ1oyFZcVA17TW/Q5+RL6sIitYCwPxFhItfUzcOgTiffpo9/kxSk0gRW5EBzFAaXVC4mpmkjMEce+V+WH3GhPJI3As6Ogy8yid3ObJBhy0JcXS4eU20iWatPCh3/64qdKXG1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihOtimFfU4p6cqi75R8Q0c35XqhixP5Yc0ZkDaDcQXA=;
 b=gCR2EdNqaIbAAEpX8mOBBrxTkNOkTJWVuvW+/nQFoS+eCLdghcGrgKC9PJYR4MTxmmhCUbpNallJkg/aNq7lbJQl/cyT7MvoEfej+H0ElSn5smNoKRnWHqjg1qwRG5W2sqo7Bc/epIyfzPrMa87w+6sLzLMFslqP6XAZkKKQ3Bc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB2951.namprd11.prod.outlook.com (2603:10b6:a03:90::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Thu, 24 Sep
 2020 02:47:06 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 02:47:06 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] meta-cgl-common: depend on meta-python2 layer
To: yocto@yoctoproject.org
References: <16375ADE52FE3495.15058@lists.yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <a124702e-a288-29bd-e50c-afd213198199@windriver.com>
Date: Thu, 24 Sep 2020 10:52:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <16375ADE52FE3495.15058@lists.yoctoproject.org>
X-ClientProxiedBy: HK2PR04CA0068.apcprd04.prod.outlook.com
 (2603:1096:202:15::12) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR04CA0068.apcprd04.prod.outlook.com (2603:1096:202:15::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.21 via Frontend Transport; Thu, 24 Sep 2020 02:47:05 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5daa912-89f9-4a72-0616-08d860341fd4
X-MS-TrafficTypeDiagnostic: BYAPR11MB2951:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB29512F6A9145DADDD38945DCED390@BYAPR11MB2951.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vd9AVfDzd0m8h+DG0k+9E4GD+3JAeh3LiEwIOsQGD/6EUW1A7/0vbpmtKhj8VYQuMIvWPkzWMN+rPD9hNHpMZH0y6zq7wdVoLw12VUY0HIcxsi8ollYnFHW+mcC2z1OqnrSHB0onVWozHJsFdMYCcyjhOo2RzMMZSEzgpkqoxjbSzBPbkAKdVSMLSdLOVhnx/8LlPcg2gd0B2u7vz/A5QLtccd8Q3ihyUxXIYT6/5W6GdYvQZKhB7392RJbo1bBzM5ffYSZHoVPlc91RA3AbvvjdZBy9uw6SG7dh6Ad7ALnnthlvvDNVyABR0o96cmEd9YJeW1LY+hIq6HWwIolRaHemaTvzZd4w6ucwqBvKvwqkZ8JNLUXn6a0cpMA1SQba1eDL55Vw3JVkXksQPx+OWXzw63ar9DjIvhKI8xTXx3qFZz2BLaGcpvsSIOr2a1V4/nipS47emcSRMDBXXSiTHvmQq+EnE9FBxC5gLDCO2Jo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(376002)(366004)(346002)(396003)(26005)(86362001)(6486002)(83380400001)(16576012)(31686004)(316002)(2616005)(66946007)(16526019)(166002)(956004)(66476007)(66556008)(53546011)(5660300002)(52116002)(8676002)(966005)(6706004)(36756003)(2906002)(31696002)(6666004)(478600001)(186003)(33964004)(6916009)(8936002)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	r7hpnLxzF0UNZPFFRbNzbh6n+YjZwnEJnIuqM71PfUgAOeq6RmU8FGV/gCbWgaWNB6YP1D1uWtCTTBlNQH9MG1NVRKTUIOWTqffs5dYBBxcikp8q8Os71pzXXmojwYAn89N0dkY3K0m9A0qP0i6mZcL4s22dLYO8HoZruzKniNxUuLnkLalvjrDvxSm8+gYo+2eeRwxGOUc25wIoA/cTdZiqSca42DRLiBkXGWqZ8XlOeBy9V1neiEfpH6uCCREkXFeFP3LyxIdGpoFP5P/qTuokoHgcbebo0WNp4F3EcKWNCdgv+e/UdbW1J7kB2nRvSxuanYbnkl52fWW2qo7Bp45NJlL1NIgJZCRCPSw3hyUH5vbPBK3bin70KoEcsAaSEW7+a3wv2+zGRsAdwOiXOZ7KuEPISCeG+TmltsZPBV4SYNWYd7HQpE2GYXrEeIaZKP4FuNYyu80zrvOH05TU0kxyqxx15h99W3gKr+7j7W+0dpaBb9ejHvj6v2/eilVqHqBzIElgKzzgW9NLhfKs2ZI1VqQEkqBnfZI+Ng5gxwilWmdzOPCh13ahMEAI7hEbTiPue+vwxzqAV+p2dG7op/zirWqYGIOW+Xn+vv/rMA1Em3Gc0o/i+Cmk5Ds1F1hjpJCOCsOYi9Thu0L12eV3+A==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5daa912-89f9-4a72-0616-08d860341fd4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 02:47:06.4358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fomKnza5zCLhxDo1IcZDd2GGegvPglB76RDfILJQY872KYB1n3dTmBpHywHBYuLEbOB2l7v3AhWl6vvjS79yqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2951
Content-Type: multipart/alternative;
 boundary="------------AC48F3DE38A5CC790717F973"

--------------AC48F3DE38A5CC790717F973
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Just like Randy points out, please ignore this patch.
I've sent out a new patch to remove 'python-setuptools-native' from 
crmsh's DEPENDS.

On 09/23/2020 04:01 PM, Chen Qi wrote:
> It requires meta-python2 to be there at the moment.
> More specifically, the crmsh recipe needs python-setuptools-native.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   meta-cgl-common/conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
> index 6035b4b..6b689ea 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "cgl-common"
>   BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
>   BBFILE_PRIORITY_cgl-common = "7"
>   
> -LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
> +LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux meta-python2"
>   
>   LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell"
>   
>
>
> 
>


--------------AC48F3DE38A5CC790717F973
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Just like Randy points out, please
      ignore this patch.<br>
      I've sent out a new patch to remove 'python-setuptools-native'
      from crmsh's DEPENDS.<br>
      <br>
      On 09/23/2020 04:01 PM, Chen Qi wrote:<br>
    </div>
    <blockquote cite="mid:16375ADE52FE3495.15058@lists.yoctoproject.org" type="cite">
      <pre wrap="">It requires meta-python2 to be there at the moment.
More specifically, the crmsh recipe needs python-setuptools-native.

Signed-off-by: Chen Qi <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 6035b4b..6b689ea 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += &quot;cgl-common&quot;
 BBFILE_PATTERN_cgl-common = &quot;^${LAYERDIR}/&quot;
 BBFILE_PRIORITY_cgl-common = &quot;7&quot;
 
-LAYERDEPENDS_cgl-common = &quot;core openembedded-layer networking-layer perl-layer filesystems-layer security selinux&quot;
+LAYERDEPENDS_cgl-common = &quot;core openembedded-layer networking-layer perl-layer filesystems-layer security selinux meta-python2&quot;
 
 LAYERSERIES_COMPAT_cgl-common = &quot;warrior zeus dunfell&quot;
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------AC48F3DE38A5CC790717F973--
