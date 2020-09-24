Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10342.1600928366225351981
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:19:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=To/Hqsf+;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2081.outbound.protection.outlook.com [40.107.243.81])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7E32B38C123F
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uf0SWCXSCYku22y67KCONA/kA2xe8I/Uck/H8/GJhzxCCNzFlKhiqAbvko8XUkCL2MNjRsfdnAZO71LUJ++UVPUng6SH/BbtuHhnvJvHQlToXIYGzzt0c5JAofUlYnYuSA33qrTRvnXmUHBEp4n+CfpyEHxLwXYz+HdauUmErkl/pQZa64vp0TtPYQGDAReZFlWob//6UCHErzAOLlS4KB6RIBEBWgWNyFJGRzlYYOMqJmUzOmr2fZ7jV7FuPT8yUp7skSVyQg+XF8OyQx6+SJfR8xCur3uwxAUjDw/8K8CQaSDXUXd0WJQ6bRkPd/L/ut12YTAuIN3zdIW2oNLneg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wC0Kd7e9keTaBMRyoWpS7j2K9RsaZXOzv1ZGe+SNvo=;
 b=n2YidLqLaKZMMQYuGiJDetIyJN1s9qUj7Bmv0Q73X96zT8scAjV/57q7jNPhJ0oNkoUr11I4AW0IZdLhsILfKGVWROpM75Z90bqNHcHvb55uBCM5AtwPMBu1ZL924rEZ+hGS7HFAyvADTRowdj1KALfvNX6NCx2hfdTx/erLhexxzRHaN/rw9q9DKUtfCv1Xy9e3Gl3EsMa2IMVk9RKuHVqrwn+Xy7az20r43Bm2PYPjPo2ZS+bH4PPalpokkuP/JMa7ejPPziQYQM36dCuhJZSFCnepfFLIaxgRtJIMlGCZ1ZJWy1NM9PW5CsyzNeDBjbqBVaon5oaUOJd/BCcWAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wC0Kd7e9keTaBMRyoWpS7j2K9RsaZXOzv1ZGe+SNvo=;
 b=To/Hqsf+qa6C4aDrE9TYI6fB/JrJuXLq8T00Yid/w5q+M5Mi3e1EZw2SSH8GnstPJuZ8OjO8mqUXg18NR8zakpOgmoFXD0+4PFd9AWkZtC8TcCBEdbub7UslTr/RODxkfAM0eTQ2/vIe86X8RFVtaix6In6IYoDscCAmeUmtcX0=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB3029.namprd11.prod.outlook.com (2603:10b6:a03:8e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.22; Thu, 24 Sep
 2020 06:19:24 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 06:19:24 +0000
Subject: Re: [yocto] [meta-cgl][PATCH V2] ucarp: fix build error with gcc-10
To: Khem Raj <raj.khem@gmail.com>
References: <20200924033819.22451-1-Qi.Chen@windriver.com>
 <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
 <77006c9b-af47-b882-50c4-163706d651e5@windriver.com>
 <CAMKF1sqtu=UO9AY_n2hiCgO+a5yPndhE6wi5N2zf_25Wqn=EXA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <b464ec15-1271-cf1a-11cc-2c84f5c9c5b7@windriver.com>
Date: Thu, 24 Sep 2020 14:25:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <CAMKF1sqtu=UO9AY_n2hiCgO+a5yPndhE6wi5N2zf_25Wqn=EXA@mail.gmail.com>
X-ClientProxiedBy: HKAPR03CA0017.apcprd03.prod.outlook.com
 (2603:1096:203:c8::22) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HKAPR03CA0017.apcprd03.prod.outlook.com (2603:1096:203:c8::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.19 via Frontend Transport; Thu, 24 Sep 2020 06:19:22 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 903d3b34-0471-4e53-2179-08d86051c7f4
X-MS-TrafficTypeDiagnostic: BYAPR11MB3029:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB30299E57EB14FAB7C7959E3DED390@BYAPR11MB3029.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DbkGb8eCtwwdvqcaZNKSZoGgWvVGW9DR7nXSy4Pn90RJGACGaZpl+YYKOpDT9iseBv4tucGnL0d3UzdNmUMK5AIykWVNQmKQ/QVFworEKmBBNZRo5KH3DE1fwhdWYL7nJXUyrWQcajP+Oa7Q75O0KLKH2zQLT5cC0WUwXvj2liA5LODVAdAiydUPbZqeCcXFK2oII9BuTpw/0ylpL/mrqkqb9ItJmO1JDzNXmawRSKfKsh6kwD3VhVSNG57AB75bCKrJNMo15TcXJTM9cqy3X08Vy2v7KevZpkw5A0Xjjl5YGksPxDCILctYzDpgYL7oBH44be4gHlZsOw1WVGiLhr3t9s7V8YL1nux90GS1/g+BTFQ+qPotSMNCgea67ETdYjhKs1VODxDUiFaECCySUnZiC2t/suq4beO3l8n4kYmfElWc5aJgd9oz1+yVwKhMAJqhvy9C0gTje0lJmJYRcMHHS9NyYhcxNFQGAovPDnI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39850400004)(956004)(478600001)(186003)(966005)(6486002)(6666004)(2616005)(86362001)(31696002)(31686004)(53546011)(4326008)(16576012)(316002)(5660300002)(26005)(16526019)(66476007)(66556008)(2906002)(6916009)(66946007)(83380400001)(8936002)(36756003)(52116002)(6706004)(8676002)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	SrxJkOasw/avf91aKz8MYIBES/K/YjehtD4PmOplxdOv6FuHgbqkVg05ie/W2wWzUCe/2YdGzHHytpQI4F+87uHXCe8i5yb0hoCXTqjcapukdvPs616a/zl1q5jI9qvA08Fp7GrVhDuTbRwXH0W3gcGTRJPmd28Z+OMdhpcqnLHp8zqvWgdk8Hi5jQll7wx0SCN0ti9CvxWTpU0e72UyvHbJRwYuqXwIC1UnIStTj6/HhD9gEsWD88UX8MtWlYRlb1H5LfCuHYXS0E6tcLH84s0xTHTNlu47zqLeyRcCpVPcUw/2BdTm6DvZnNe5/NYF/JNixbGGzJmN9WRveXed4XjSuhtMQAle5U6/AmGMEFTs6hC9xMA+41FPSRZO/aeo1914yArCeRjSKHLKrS+U9RSbrYG0UwAcTrcRdiTneF5VLZMri4j/GMfBd2zaWavvhHskQMGgQlUnNfg8ANduNpX74822yQjVu/9VPHmL4lyYQM7nehcv9fBWFnqzap6dVTneKJ2Aw1mRGDyEei75vebCBcm0R5Oj+mOhrEfLMBFJQp2BSlXP39MWLgVwtFNEkGum4Yyq6YfuhwwK/kx7uFpgjZuHvZZr/9lU8TVIRn6EqyngjykNwFhoj4D2oOQ/oBawoak5NdUZ9wYUnkBs/g==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 903d3b34-0471-4e53-2179-08d86051c7f4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 06:19:23.9146
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: naVSXbuOFh/Usw+zai4p7KtSy9SxsdW7jFqyc5F70vZTqEnckUfEX+JB/C+i03PHGAB368AaJYZcyLMZw8Ofzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3029
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2020 02:13 PM, Khem Raj wrote:
> On Wed, Sep 23, 2020 at 11:08 PM ChenQi <Qi.Chen@windriver.com> wrote:
>> On 09/24/2020 01:43 PM, Khem Raj wrote:
>>> On Wed, Sep 23, 2020 at 8:38 PM Chen Qi <Qi.Chen@windriver.com> wrote:
>>>> Add a patch to remove the useless '__packed' variable to avoid
>>>> multiple definition error with gcc10.
>>>>
>>> I wonder if the intention is to mark this structure as packed struct
>>> then it should be replaced with __attribute__((packed))
>> It's possible, but I didn't look at the logic and I don't want to.
>> Anyway, the variable never had any effect. So I figure it's safe to
>> remove it, and this will not change any behavior.
>>
> certain compilers do allow __packed keyword and it might be
> intentional too. If its removed then
> the bug will become even more subtler, therefore. if we want to change
> the code then its perhaps
> better to confirm it with upstream before applying patch. Otherwise
> apply usual -fcommon workaround.

Thanks for this info.
I'll send out V3 to use '__attribute__((packed))__'.

Best Regards,
Chen Qi

>
>> Unfortunately, the codes are really old, and I cannot find a place to
>> send the patch, not to mention to confirm this with its author :(
>>
>> Regards,
>> Chen Qi
>>
>>>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>>> ---
>>>>    ...001-ip_carp.h-remove-unused-__packed.patch | 31 +++++++++++++++++++
>>>>    .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
>>>>    2 files changed, 32 insertions(+)
>>>>    create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>>>
>>>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>>> new file mode 100644
>>>> index 0000000..496c20d
>>>> --- /dev/null
>>>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>>> @@ -0,0 +1,31 @@
>>>> +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17 00:00:00 2001
>>>> +From: Chen Qi <Qi.Chen@windriver.com>
>>>> +Date: Thu, 24 Sep 2020 11:30:08 +0800
>>>> +Subject: [PATCH] ip_carp.h: remove unused __packed
>>>> +
>>>> +This variable is useless and it's causing multiple definition
>>>> +error with gcc10, thus removing it.
>>>> +
>>>> +Upstream-Status: Pending
>>>> +
>>>> +Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>>> +---
>>>> + src/ip_carp.h | 2 +-
>>>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>>>> +
>>>> +diff --git a/src/ip_carp.h b/src/ip_carp.h
>>>> +index 9504a8e..9dcf8cc 100644
>>>> +--- a/src/ip_carp.h
>>>> ++++ b/src/ip_carp.h
>>>> +@@ -70,7 +70,7 @@ struct carp_header {
>>>> +         u_int16_t       carp_cksum;
>>>> +         u_int32_t       carp_counter[2];
>>>> +         unsigned char   carp_md[20];    /* SHA1 HMAC */
>>>> +-} __packed;
>>>> ++};
>>>> +
>>>> + #define CARP_DFLTTL             255
>>>> +
>>>> +--
>>>> +2.17.1
>>>> +
>>>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>>> index d17baa0..c6fa901 100644
>>>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>>> @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
>>>>    SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
>>>>               file://ucarp-configure-sha1.patch \
>>>>               file://ucarp-configure-snprintf.patch \
>>>> +           file://0001-ip_carp.h-remove-unused-__packed.patch \
>>>>               file://ucarp.init \
>>>>               file://vip-001.conf.example \
>>>>               file://vip-common.conf \
>>>> --
>>>> 2.17.1
>>>>
>>>>
>>>> 
>>>>

