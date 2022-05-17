Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08804C433F5
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 02:18:09 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web12.2505.1652753885844572392
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 19:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=hElajMAP;
 spf=pass (domain: mvista.com, ip: 209.85.160.174,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qt1-f174.google.com with SMTP id hh4so13427737qtb.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 19:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=lMn9YRZPF807rLdcn1iUy3AEKHNdM8x9kc23v16weEo=;
        b=hElajMAPInEteoc0tcqf70yfbYuyK7NUijukZHUv/0nvLsETZumZVQgAeGQwi/oSz3
         FimNTOJz0LNmU0wmR7Ba5zhOdrOj9VsQgKLI+8hiO7sudRxOmbAc75rkAYy3YGOcV0t2
         Yi4fGAiedMd+5wpKXnzhw4JQwxg+cWxLWnNfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lMn9YRZPF807rLdcn1iUy3AEKHNdM8x9kc23v16weEo=;
        b=DH1So6hw9EeSVdHdusfcGajCIRwgYFDv7tvbmUWEsPpWJYCaHt0bn+hRE7MzFGXHOL
         +4+qFOXxP17N7Ki1jjYrH/ifooB8oajr4K3yHVoHGKu8Y5R7cFHlxdWVFL9VqnclSV6b
         jgShl29ImkNF32ZFa95F5loSAdfRWlRDG0XRjrmy58iygHc337zfTfDgLI3Z3b/hRUiF
         B4PEkb+TVtDDIkXMa1M32YPxrtsn+Y6fYNUnUGH4sZeUC1+gl9Trz+/3R++x0mKi0k/9
         TrsndSBzDnDfbmTqAHF7KXF2pRnVPzRJytORIayFOcIwwr1JBZy7ESrXZMOXhlJGl1ws
         Mu5A==
X-Gm-Message-State: AOAM530w3gjVyZmEXa8RHRO1ru4XalhxcCcHdTriogmMSol1RjW6rcEG
	IxaKAW5ttrZY5euN5mqaNO0h0lvNpHvhRQ==
X-Google-Smtp-Source: 
 ABdhPJw5kP4GzhGZAHyz3NGbQtJk8pwH923Vv2EQ8UunRUpH3NSTB7pR4XLaetvdJZVa94UQFIRCgA==
X-Received: by 2002:ac8:5715:0:b0:2f3:da22:a99e with SMTP id
 21-20020ac85715000000b002f3da22a99emr18075761qtw.47.1652753884711;
        Mon, 16 May 2022 19:18:04 -0700 (PDT)
Received: from [192.168.1.34] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 c15-20020ac86e8f000000b002f39b99f678sm6837479qtv.18.2022.05.16.19.18.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 19:18:04 -0700 (PDT)
Message-ID: <afe26fea-5b09-9cb5-20c1-ee0ee8d1fcd4@mvista.com>
Date: Mon, 16 May 2022 19:18:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [yocto] [meta-security][PATCH] aide: Add depend on audit when
 audit is enabled.
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <16EFC2DC234E852A.1719@lists.yoctoproject.org>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <16EFC2DC234E852A.1719@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 02:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57115

Needs to go to kirkstone too.

On 5/16/2022 7:17 PM, Jeremy Puhlman via lists.yoctoproject.org wrote:
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
> Mute This Topic: https://lists.yoctoproject.org/mt/91155867/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


