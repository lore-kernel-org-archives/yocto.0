Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FA9DC77B7E
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 22:20:44 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.3523.1685053240636329383
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 May 2023 15:20:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=C0vmdrhM;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1ae763f9a94so587925ad.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 15:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685053240; x=1687645240;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SgjghaMA7WLnXCaX/Ad9uPFVesR8SV/aLbdbu2m4yOI=;
        b=C0vmdrhMnJw5tU02TOl+0Q/Ech/ZyWjNQyFP8lTSLiQNdDtbKupW0Rp3cMNhwnuD1y
         xLIaOpXT5r0kTNiuE7cRRwCnftzuQijAl6+7qJtN3XHzN+1KnsjEuCG7DJ+0WXNzdTut
         FquE0zaaFRSZgROKFFnXd+bM8onqNS47kKdwp9a8r3n8qAkCNGl4tQ2AFAO/wicG9DeC
         iFvifxpaiMwNQP9mDqn81fR2HzDoVOolwd86wZqrRwrCZIkJ/hK7OsANci3FubEeIMeY
         zDcAuYw7EetJuGK9BjtYi0pUnUiRZOqPQBOFT9QrhtSJPWXIqQfpIHtZVcG/FuWWgGyj
         lRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685053240; x=1687645240;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SgjghaMA7WLnXCaX/Ad9uPFVesR8SV/aLbdbu2m4yOI=;
        b=R0LyLhm61wwRL7s3ErfDDGmHBwAeyfuQ9ZOLmvXhHUSbY4o8aKX31NAPMjBus8yZOn
         zeV+NbooUmVYaSkQtBP3VL9Iu1BI3lN6/f0HaJvmg+wKrwF9AgV3P/+rTPeyCz125rLr
         pF1IRUBQDaxikS5TbRKlkYN1/4pQQZGVMuGX14lver6glBE6q67eyLpkMW1BoQAkbGC0
         68yk/bLCBJY77Ll2/zdssbmrcJgO8nOOxIdpGpkE/kSEjvVmrwJILznZO6ktofu9FanA
         J/PY5f+IB7vVXkTsBQRxlyuWlRNG9fKKWnDDZyZXC79oHoKO0xidHdfHLD7Q25RBBwXg
         6QMg==
X-Gm-Message-State: AC+VfDyxKT6wZXNlV/mmyt/BFq+KCCnpFq8YYarJw5+a5MGD/66fMHOh
	0yv2aQIdM+79AdgrGvPFqrs=
X-Google-Smtp-Source: ACHHUZ7GhaAVjoQhLemmGbaW7tyA1zfEjCI7pdh2Xg3HlJ80hPfqcMqajGhpHWrvL3jcKJhU+/1CmQ==
X-Received: by 2002:a17:902:ec81:b0:1ae:2b95:7125 with SMTP id x1-20020a170902ec8100b001ae2b957125mr111686plg.63.1685053239924;
        Thu, 25 May 2023 15:20:39 -0700 (PDT)
Received: from ?IPV6:2601:646:8182:b790:46a7:9bd1:4918:dba5? ([2601:646:8182:b790:46a7:9bd1:4918:dba5])
        by smtp.gmail.com with ESMTPSA id y14-20020a17090322ce00b001a800e03cf9sm1860851plg.256.2023.05.25.15.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 15:20:39 -0700 (PDT)
Message-ID: <72f67e8f-5429-c94a-c322-d37773e4574b@gmail.com>
Date: Thu, 25 May 2023 18:20:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: update to
 164-2020-192.1
Content-Language: en-US
To: Andrew Geissler <geissonator@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20230524200307.37451-1-geissonator@yahoo.com>
 <341b950c-b039-6a25-e49f-8c3b77ef507a@gmail.com>
 <CF243CD7-3D9C-4E28-909D-E6E4E2076B9E@gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CF243CD7-3D9C-4E28-909D-E6E4E2076B9E@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 22:20:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60125



On 5/24/23 5:38 PM, Andrew Geissler wrote:
>
>> On May 24, 2023, at 4:38 PM, akuster808 <akuster808@gmail.com> wrote:
>>
>>
>>
>> On 5/24/23 4:03 PM, Andrew Geissler wrote:
>>> This version supports openssl 3.1
>>>
>>> The maintainer changed his tag versions hence the different looking
>>> version.
>>>
>>> The maintainer also has stopped releasing tar files and asked we
>>> directly grab from git.
>> Why did the License file change?
> Good question. I think I got a bit turned around when I moved over to git.

Looking at their changes, it looks like they appended or subtracted 
spaces  to various lines in that License file. Nothing other than noise.

>
> This repo has 2 LICENSE files:
>    https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE
>    https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LICENSE

They look like to different licenses, one has IBM in it the other does not.

Maybe list both and their sha's should address that.

thanks,
Armin
>
> My commit moved to the base LICENSE file in the tree. The original recipe
> pointed to the second LICENSE file under src/.
>
> The original src/LICENSE appears to be a subset of the root LICENSE
> but I can move the recipe back to the original src/LICENSE if that’s the
> expected behavior here.
>
>> -armin
>>> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
>>> ---
>>>   ...ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} | 12 ++++++------
>>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>>   rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} (73%)
>>>
>>> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>> similarity index 73%
>>> rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>>> rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>> index 85fc7e0..fbeb872 100644
>>> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>>> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>> @@ -11,18 +11,18 @@ Advantages of this approach: \
>>>   HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
>>>   LICENSE = "BSD-2-Clause"
>>>   SECTION = "securty/tpm"
>>> -LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
>>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=c75e465155c42c14154bf6a2acb7347b"
>>>     DEPENDS = "openssl"
>>>   -SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
>>> +SRC_URI = "git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=https;branch=master \
>>>              file://tune-makefile.patch \
>>> -           "
>>> -SRC_URI[sha256sum] = "3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
>>> +           ""
>>> +SRCREV = "5452af422edeff70fcae8ea99dd28a0922051d7b"
>>>   -UPSTREAM_CHECK_URI = "https://sourceforge.net/projects/ibmswtpm2/files/"
>>> +UPSTREAM_CHECK_URI = "https://git.code.sf.net/p/ibmswtpm2/tpm2"
>>>   -S = "${WORKDIR}/src"
>>> +S = "${WORKDIR}/git/src"
>>>     CFLAGS += "-Wno-error=maybe-uninitialized -DALG_CAMELLIA=ALG_NO"
>>>   
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#60115): https://lists.yoctoproject.org/g/yocto/message/60115
>>> Mute This Topic: https://lists.yoctoproject.org/mt/99116759/3616698
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-


