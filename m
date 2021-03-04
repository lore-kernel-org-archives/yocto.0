Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2532.1614891868278261422
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 13:04:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFCYI+0s;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 609FE38C0845
	for <yocto@yoctoproject.org>; Thu,  4 Mar 2021 21:04:26 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id b8so28660980oti.7
        for <yocto@yoctoproject.org>; Thu, 04 Mar 2021 13:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=xR/Bcfx6GXuNOuqPIrlI8x2pB3qtKvfp+wo3w46c9fA=;
        b=OFCYI+0sKUZVS68cex+wOkGL02ZyG/F/ZiSpalafuTJpamrbj4G7Y6Q21P+K+HkjEL
         iMp5kHjWPJWX51ObC66mtzjbbzllRa2OpdKjEEDWvNiMHfJpE9GHMhsfPSYygAxIlTMc
         FwQtkvcH65b7Zr1nyidApuTXsxGRkpEbXDHezcM+oPVA08CZUNukS4j2GPnwedQwB7FC
         H8PcIB1ioS5TUem1th5+0vRxfD1TVAnDjbxCoJHBtI7k0Obb+2rConX16eMdYrS+2fQD
         G++j3Jiqx6TdcWuu3pQl2jgggTj15RlkpvJf+0owNeAb+LyIYlEJFvIlB7l6JewLvav5
         E8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=xR/Bcfx6GXuNOuqPIrlI8x2pB3qtKvfp+wo3w46c9fA=;
        b=HO0BQOqeWZf2hfs193lsX8iKEYtZZc+VDoQhgctPP8QGU28LxzFBsfsmGZWiGqpP1L
         eJCJmX/p5Igi8273IvFyVFUYei/G6Xc8ztQdBt7M71Q8QK1fL9qMXTYjmulO+90p11AM
         UUUb8yZ3jaZ9JblamSLXmckfIz905radvfI38X4ff2Gy7rf0ryhP8rvn32MEREVyLhkD
         PdLCg4fV5mPVairIN4Jf0Ig3pQIZaTRl49tRtYeOe2skTcMpbB0Pp3ZVpJ2hjP3uDJkJ
         vFlhgKWALKeLym3Zy2jJd8EmDSd17kbHDcHSiYpONpJLl6PkutdESawJfTPCNY8/Dks5
         +Gfw==
X-Gm-Message-State: AOAM532a7JqFkyzETd1gqQ7JjU++Zwc55BoIuZLLh0tu37SKH8lgOz95
	dfO+2/B5pBWT+aPbz0BIVyc=
X-Google-Smtp-Source: ABdhPJw6AslatKRPvHwsA1fwmDXNyEqwboyrQhYiwcqM7hKTdz96L1iiLkMDEASEc6OtHgyYS/Zhrw==
X-Received: by 2002:a9d:6481:: with SMTP id g1mr4888300otl.303.1614891865333;
        Thu, 04 Mar 2021 13:04:25 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:819c:344d:6859:4a23? ([2601:202:4180:a5c0:819c:344d:6859:4a23])
        by smtp.gmail.com with ESMTPSA id z5sm145897ote.55.2021.03.04.13.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 13:04:24 -0800 (PST)
Subject: Re: [meta-security][PATCH] ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com
References: <20210301123558.7989-1-liu.ming50@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <45049dc8-c771-109d-10c9-038790ffea66@gmail.com>
Date: Thu, 4 Mar 2021 13:04:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210301123558.7989-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.
Thanks,
Armin

On 3/1/21 4:35 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> This fixes following systemd boot issues:
> [    7.455580] systemd[1]: Failed to create /init.scope control group: Permission denied
> [    7.457677] systemd[1]: Failed to allocate manager object: Permission denied
> [!!!!!!] Failed to allocate manager object.
> [    7.459270] systemd[1]: Freezing execution.
>
> Signed-off-by: Ming Liu <liu.ming50@gmail.com>
> ---
>  .../recipes-security/ima_policy_hashed/files/ima_policy_hashed | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed b/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
> index 7f89c8d..4d9e4ca 100644
> --- a/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
> +++ b/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
> @@ -53,6 +53,9 @@ dont_measure fsmagic=0x43415d53
>  # CGROUP_SUPER_MAGIC
>  dont_appraise fsmagic=0x27e0eb
>  dont_measure fsmagic=0x27e0eb
> +# CGROUP2_SUPER_MAGIC
> +dont_appraise fsmagic=0x63677270
> +dont_measure fsmagic=0x63677270
>  # EFIVARFS_MAGIC
>  dont_appraise fsmagic=0xde5e81e4
>  dont_measure fsmagic=0xde5e81e4

