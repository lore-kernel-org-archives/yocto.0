Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38B1EC433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:50:35 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web09.28752.1653317433396745610
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:50:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=efxMfKgG;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id a13so2792484plh.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=S1HmTPazSzfM6CjBeYvkS98FHTjKbA+mRDZ2FsN4yR4=;
        b=efxMfKgGlwm0ChKfm5FyrLXuucFHrYhuKlI2Zs3moBWyTrzwD5QzGD+m4yCg3INuNN
         9+hlnA3fpBtYkjh8caMHbm+RmRJVCw+gbNxuYB1rQa0UZ9CTQ3bS+U3lMkC4SATEEXPR
         yh8nC3INwG0anIeAzmNvVG9DwIshF2o/WaGcM9ibXYqQxd5mnF0M3KIeeVYKHJSQ0V2N
         uYMCxWrZByn1SXAeC7vzUG6IoqN4GF/ZUjPsn+DsyLA2a6uNQsQpJ7oQ0HTKvocsMwA0
         II6921w5AqqAVcGZ/G2WWkq1hp4ZPkOr1BENoRrpBatJg9SVf7osQYsg0EQNjK3shUrP
         2cIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=S1HmTPazSzfM6CjBeYvkS98FHTjKbA+mRDZ2FsN4yR4=;
        b=2DSxN/JHS6/g1Sl/iw9waN7Eq/bp67d2Ch8K0x7aipSyy1MwHDLMYr1W74IvWpsq4I
         gF1R2iHtwhlCuQGAaUtl8YSRce+O5DYyTI8C0MAc+5PCsOWzwWlhzkJ8Ma6wRoQOXFJk
         7WUz1tf4QmQ+ZZF0yTe5wLSZYVkMQLH4QBuIAzj5jLKwUEo9uMoEGhMTW9F7IVAqFI6w
         pgSHcFW6e48ELi4WMkcipcb3peLURbNBShpvBuZo3eEoo62aGU7dZ20EOEFVwU3aynlV
         ILVOk4o9txREOR68bdxqZmURW1xTonxVZjDJhXRS7wQH5DcXmP+i/yqwo5rR1xcViTSZ
         7AgA==
X-Gm-Message-State: AOAM533yykbKuO+gNexYrB2CTX9n2PeXtlySvEuGHIOsy7D/Q6+if0ER
	rLytATOMphCpezoaC9pglmdclSqH6/iojg==
X-Google-Smtp-Source: 
 ABdhPJy3Qwh1JB3TpqtjMzn/QhMoGEPd4Rrjouee5U350LakWuiGU7SEkHtQUsS/aLvyukGR8dLImQ==
X-Received: by 2002:a17:902:988a:b0:162:2e00:96d7 with SMTP id
 s10-20020a170902988a00b001622e0096d7mr3250861plp.18.1653317432975;
        Mon, 23 May 2022 07:50:32 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:22e0:d3fa:16:d603?
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 q5-20020a170902c74500b0015e8d4eb20dsm5211910plq.87.2022.05.23.07.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 07:50:32 -0700 (PDT)
Message-ID: <84d12afc-1b4a-1981-9f7d-f3df41f43eeb@gmail.com>
Date: Mon, 23 May 2022 07:50:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] aide: Add depend on audit when
 audit is enabled.
Content-Language: en-US
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
References: <20220517021711.525224-1-jpuhlman@mvista.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220517021711.525224-1-jpuhlman@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:50:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57163

merged

thanks

On 5/16/22 19:17, Jeremy Puhlman wrote:
> | checking for libaudit.h... no
> | configure: error: You don't have libaudit properly installed. Install it if you need it.
> | NOTE: The following config.log files may provide further information.
>
> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> ---
>   recipes-ids/aide/aide_0.17.3.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17.3.bb
> index b1fb58d..fcab504 100644
> --- a/recipes-ids/aide/aide_0.17.3.bb
> +++ b/recipes-ids/aide/aide_0.17.3.bb
> @@ -20,7 +20,7 @@ PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux, libseli
>   PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib "
>   PACKAGECONFIG[xattr] = "--with-xattr, --without-xattr, attr, attr"
>   PACKAGECONFIG[curl] = "--with-curl, --without-curl, curl, libcurl"
> -PACKAGECONFIG[audit] = "--with-audit, --without-audit,"
> +PACKAGECONFIG[audit] = "--with-audit, --without-audit,audit"
>   PACKAGECONFIG[gcrypt] = "--with-gcrypt, --without-gcrypt, libgcrypt, libgcrypt"
>   PACKAGECONFIG[mhash] = "--with-mhash, --without-mhash, libmhash, libmhash"
>   PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2fsprogs"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57114): https://lists.yoctoproject.org/g/yocto/message/57114
> Mute This Topic: https://lists.yoctoproject.org/mt/91155867/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


