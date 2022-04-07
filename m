Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0315DC352B6
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 20:36:09 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.1502.1649352792903208629
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 10:33:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Xtpu1R/4;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id kw18so6209855pjb.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 10:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=x/hPn2J4tLRjo+5o5LBkl/dpofmYtH9gIXWl4fs35Og=;
        b=Xtpu1R/49AXmky5tIgHWYnRCXROTe8sjC1G44yj3EyFYfpftRhKXtYhZ5hgOQ/EO40
         n5Fk3srO3w0ym3HE+k9ZVT5z0NySbbxg6C8lbHaGf6PJkrCululi23SN2ij1aH/HJM3A
         DdbuQmaKARlaPTJP4vvGo8sgyFHTI07dxxGLgdrVGzu3BrzsTiTuPz/hNjts89a/pWAK
         nfXCufGzEbbYakGqwuGjkqvitKC2w9YtCAqUuXeqDA6r0fn+UG1Z+MxvBVosfnnKMmVn
         zFN8SSXz0A1UjV1ge1ZWJfGIiM7e6+cwRdItDQzoIvkn98SvN+AzN0a22zc9Gwh1/yD0
         96Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x/hPn2J4tLRjo+5o5LBkl/dpofmYtH9gIXWl4fs35Og=;
        b=ebDUgNs2B1Y0aewNYyIYR7Yd5XLOgUn+zIh8a3otCt2ixeAcnNHQ8cjhcPwpOsouNF
         MhSJShVR38JCmilhWV5Xe3RZPGfimcAT3Z7g/cMHQu7apA7oRiVOAqpBcqEKyv5mZGly
         n2B1V37xAo9nO9WsBngMlRQCi42ED4DLp4W8ZxkMYbN8PEomi+1LecEMfrmWs+jSMGUK
         dg8Rq8ZuLI5wjuCiJ61Xq5yp+iQYqXQSsK+rDhRMh76Sf90cs8IR5us5sisNwxEJBFUk
         h+DcYWgMaP/bPrX8z6c2WVrdZz+g+YkYXjxngpEO4a3DH9VhsA5JLr4af+o99di+E9Ak
         tUWg==
X-Gm-Message-State: AOAM531KG0+sgtZnGZq9mB/BTX1Wfy+6a8bnsQ1S1EH6Lp9klnf6kGKM
	1MWRFLRhC1jl3yNZtYSuaVA=
X-Google-Smtp-Source: 
 ABdhPJxTon1p12Y8kQosTGxQkZCnhSCRdRLrzIG4bQ9/xG+nBgMOtVNHsX4/ZKQQwMvFQpGlD7JGcg==
X-Received: by 2002:a17:903:1251:b0:156:9d8e:1077 with SMTP id
 u17-20020a170903125100b001569d8e1077mr14758852plh.116.1649352792350;
        Thu, 07 Apr 2022 10:33:12 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:ed6e:b8f7:8d66:39f9?
 ([2601:202:4180:a5c0:ed6e:b8f7:8d66:39f9])
        by smtp.gmail.com with ESMTPSA id
 o197-20020a62cdce000000b005057336554bsm848074pfg.128.2022.04.07.10.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 10:33:11 -0700 (PDT)
Message-ID: <c38d8531-e5da-e6cb-2035-79d456c5bd1b@gmail.com>
Date: Thu, 7 Apr 2022 10:33:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH] fscrypt: update dependecy from
 go-dep-native to go-native
Content-Language: en-US
To: Davide Gardenal <davidegarde2000@gmail.com>, yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
References: <20220404125753.43887-1-davide.gardenal@huawei.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220404125753.43887-1-davide.gardenal@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 20:36:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56686

merged

thanks,
-armin

On 4/4/22 05:57, Davide Gardenal wrote:
> Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
> ---
>   recipes-security/fscrypt/fscrypt_1.0.0.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.0.0.bb
> index 66bf429..663d8e2 100644
> --- a/recipes-security/fscrypt/fscrypt_1.0.0.bb
> +++ b/recipes-security/fscrypt/fscrypt_1.0.0.bb
> @@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854dd
>   BBCLASSEXTEND = "native nativesdk"
>   
>   # fscrypt depends on go and libpam
> -DEPENDS += "go-dep-native libpam"
> +DEPENDS += "go-native libpam"
>   
>   SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
>   SRC_URI = "git://github.com/google/fscrypt.git;branch=master;protocol=https"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56658): https://lists.yoctoproject.org/g/yocto/message/56658
> Mute This Topic: https://lists.yoctoproject.org/mt/90240814/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


