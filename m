Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10200.1600927715560204970
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:08:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=SWBMKhNy;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2050.outbound.protection.outlook.com [40.107.92.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9147638C123F
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TcQqXEuWhDTqF8TvuKsS0MiLkqPZ7iQ5l7QTZyv0g/eRNtHu9DtfIgdURAoA2lxCZ0LpRFtiN0W0pgyNJWgKzg6Q1h7HUiQaCyJronHUn8bFsD9NJd+OSl9GGUyot/tL1U6Nw5Vlmbq8IBiu6kBWM1HxbZBtYoZPkl3cUcwPoicTPEEhwrJQ2+gM9ieMKAdR8nVwz9s0CbQjgApUo5+blcHLjnjbcM/jm7zM//Li4/YGmxQAl6zPpN9Tuad6XcMQD5FEC4wPlOQOfMqt51scQGSOFWGqZyumBJQotRgwHVz+70uDn/NnAOPhhCg3j2zPGQcEFpuP/79kmofj2GmT1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qA+/G8Ho+yHZlMPPJgPGRYdNQ3FgbAM4IZUbvI03PRw=;
 b=K+mmOCFfyVpM6/VrtunnqeCwTVdeN7fo4IYPx62ii6WaI8K9LAyYQKPc6BzKYCngJW0KCYg6StsQKIf5K0h7fCojQXFMkMXrUXXJHp+YCXBYQHf8muoOCG41upbt8fHAoOecIr0j4mPskIzz2OLaV3q7ODjy44rtGjKYkCc4REK14Tbi74Gms2sih671fltOv7OqFDSmXkLyqQMtJXYpfyrAioTon9n2QNP8TZamT7sVOpeW3FA4p7/+XZkgcRbgmrcZgs5pRYufcy5Hc8WFXHn7u/JPPiK7Rx4SeSRFMTulOoOCwfsjZ2U4g+4XMaYWHQjQyBuQSCaway4qCJhiGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qA+/G8Ho+yHZlMPPJgPGRYdNQ3FgbAM4IZUbvI03PRw=;
 b=SWBMKhNyv/pIb8l4z/ifgfVzCO7uIhgbeCC6qNgdPs4g2UU0gUTJ0QXjgfCKABdVPD/moO0UjvvAtKsL5cwovzSyFSs++UaRlv+OxIv4ey+8hVYvQo61Sgzl1r4fZFRSmuQm6/GoyAXgQ+j2lgE41CSID+ZG6kjRyRb3ZUkmFZU=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BY5PR11MB3976.namprd11.prod.outlook.com (2603:10b6:a03:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Thu, 24 Sep
 2020 06:08:33 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 06:08:33 +0000
Subject: Re: [yocto] [meta-cgl][PATCH V2] ucarp: fix build error with gcc-10
To: Khem Raj <raj.khem@gmail.com>
References: <20200924033819.22451-1-Qi.Chen@windriver.com>
 <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <77006c9b-af47-b882-50c4-163706d651e5@windriver.com>
Date: Thu, 24 Sep 2020 14:14:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0061.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::38) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by BYAPR06CA0061.namprd06.prod.outlook.com (2603:10b6:a03:14b::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.20 via Frontend Transport; Thu, 24 Sep 2020 06:08:31 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2aa6ed3-b9b6-40f3-679e-08d8605043d2
X-MS-TrafficTypeDiagnostic: BY5PR11MB3976:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB397625BBB85B5B27907DD2ABED390@BY5PR11MB3976.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	f8tJyWrrcoyXL/K1dJiogByOWlJEnAVo21RXgUhupd3jqfkxYk69p0PGvsRneUNdKng8w9Z7qDDlVSTjqp8g26HO164fakH8FWM5bSLxm18kkoYZq1MP8oDD46/S8KpT2DTdTPaWJWqcSShewrvmwEMLGW01E3OMQ3dfAIyohu3EKctwCu6YVxxD0fTnOeuGLdfEloOHk9Fg3DYYWAhvYYHS5okGZxn6Gtrs1HvF4VJGb89eWraGDpp1GSBXkG2RX6XVmJ6SLzzT8mJwNagv8xuIZcUSAkrAZrR6xDmtXPKD30aOafxD36WgW6lmK5NnPL1Cs/tVkw0TMkLI9rhkWRNozaeug/HANYMBHGB8Z9F01Kl0/vGHIgNTwTYskAsTO2qO3tqvVBFoY5vFybuFw0eyDJubMdLR2PyuSZxZCp0+CfrC7OgrAN7zJIBCRnQBEd+0xXNdr39Q+Frazoxdi/dCfDFLsZc+r1w1sb6v2zsROE3K9SE0h2igrbE1P7C0lcLmyq68Uj5coXmV4VXVgQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(136003)(376002)(346002)(366004)(2906002)(6706004)(53546011)(478600001)(26005)(16576012)(316002)(66556008)(31686004)(6486002)(31696002)(186003)(86362001)(5660300002)(2616005)(8676002)(66476007)(6916009)(36756003)(956004)(16526019)(6666004)(8936002)(52116002)(966005)(66946007)(4326008)(83380400001)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	dJUypLKmgiEBRE6b1ld5/SUuh6NN2QFhZVADu14GG0iCQtbOeSigbgsubF2tELg4qCYlFjwjseMYHCxsnGyYHHjqzt3fhJNV9TjKgDZPf14DeYbTlpOekxsZSibARDbeK7y8qgLeuT1SdueSHUA5Vr33+qwN/IOmba+edpC2S1PDUiANyqkrRYRBpkxwPxwIfPlrBvYo01hpqBE0P0f3PyUw672mUDm7l9Nzu8EXBrIp/nfSxHVtdyN+Qde3Dpn4whoppAZaC0KmCpWhb23WGVLcF6IIKb9lfbm1WTEN0S0Xjkswg38USymJJX0JEfWX+gk+V0vkZ9mdOMl2qbDPQXT4PFWh/QWhb8Q/vxDXkVBv6cYwx4/XF0ulGo85Fv3P9uz0YMZ55HipgkXJ6ra7D6IliDUkpMVXYEIfsZzZxQqJxIhkfmZxCW9ibC7mBUD+6o4Qw2pwoToWJws/6J43R2qzAl+fXPwYIJPWrIsZicglFc4xExbhtCSK6UnVn2CPf5skFzXQMeR6cgGytuakb4XeI8Jo5sM5MvkUPpEBeo8KD5MAtjFHm6yjcVBpW4ph7o6+8IdFazoGnA68rRK5UG/wd3gTyrt/fbBfJ+NxmnKt+mXjf3n8qPgc5WjMN32ngK3u8TOD7XE4l+yNOdeY9w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2aa6ed3-b9b6-40f3-679e-08d8605043d2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 06:08:32.8745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MpYvVMXGSB5UyOLqHl1GdTO7lOWW0H+RvsE58yGyFfjNss8BLl2m+DJLGBDFGL5xF/s77U+3NULpjOLM8HQmkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3976
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2020 01:43 PM, Khem Raj wrote:
> On Wed, Sep 23, 2020 at 8:38 PM Chen Qi <Qi.Chen@windriver.com> wrote:
>> Add a patch to remove the useless '__packed' variable to avoid
>> multiple definition error with gcc10.
>>
> I wonder if the intention is to mark this structure as packed struct
> then it should be replaced with __attribute__((packed))

It's possible, but I didn't look at the logic and I don't want to. 
Anyway, the variable never had any effect. So I figure it's safe to 
remove it, and this will not change any behavior.

Unfortunately, the codes are really old, and I cannot find a place to 
send the patch, not to mention to confirm this with its author :(

Regards,
Chen Qi

>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> ---
>>   ...001-ip_carp.h-remove-unused-__packed.patch | 31 +++++++++++++++++++
>>   .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
>>   2 files changed, 32 insertions(+)
>>   create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>
>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>> new file mode 100644
>> index 0000000..496c20d
>> --- /dev/null
>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>> @@ -0,0 +1,31 @@
>> +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17 00:00:00 2001
>> +From: Chen Qi <Qi.Chen@windriver.com>
>> +Date: Thu, 24 Sep 2020 11:30:08 +0800
>> +Subject: [PATCH] ip_carp.h: remove unused __packed
>> +
>> +This variable is useless and it's causing multiple definition
>> +error with gcc10, thus removing it.
>> +
>> +Upstream-Status: Pending
>> +
>> +Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> +---
>> + src/ip_carp.h | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/src/ip_carp.h b/src/ip_carp.h
>> +index 9504a8e..9dcf8cc 100644
>> +--- a/src/ip_carp.h
>> ++++ b/src/ip_carp.h
>> +@@ -70,7 +70,7 @@ struct carp_header {
>> +         u_int16_t       carp_cksum;
>> +         u_int32_t       carp_counter[2];
>> +         unsigned char   carp_md[20];    /* SHA1 HMAC */
>> +-} __packed;
>> ++};
>> +
>> + #define CARP_DFLTTL             255
>> +
>> +--
>> +2.17.1
>> +
>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> index d17baa0..c6fa901 100644
>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
>>   SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
>>              file://ucarp-configure-sha1.patch \
>>              file://ucarp-configure-snprintf.patch \
>> +           file://0001-ip_carp.h-remove-unused-__packed.patch \
>>              file://ucarp.init \
>>              file://vip-001.conf.example \
>>              file://vip-common.conf \
>> --
>> 2.17.1
>>
>>
>> 
>>

