Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F427C3DA49
	for <webhook@archiver.kernel.org>; Thu, 18 Jul 2024 14:14:52 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.16113.1721312089737612545
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jul 2024 07:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VJqHP+QU;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-66493332ebfso7258947b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jul 2024 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721312089; x=1721916889; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JS7qBoi05G3lWryW4qMK5KtOq7TPeQ/CEfLlEI14NIQ=;
        b=VJqHP+QUhpRDlVC6PyDC5pTdD91qR7HaEdsgyKm8CDQ3PbgiHUMv4CtiXbcuRy406j
         Y6AU34KpNh0u4qZ/HTlv32zlMCBwwqV0t1ICA+bxk5Aob1rMxR5lu06B91dQVhYXUFOb
         QicrQwhmIgftBnQ7ueeF5tfShgnh339KMhGPe58UP4gJigVjL/3TifYPsJ7jvaxGEtMp
         GOzD9iwRf5nXVzWOGj0NM9/VP0zpPwZRRZCYdKwu2XGxgLvl/9y38gtJFYR4oGna8VqB
         76PQe3YeX/BUle0UmtW+1Lby03uzKYaPZO1AD2Ldpzu4w4HLh08zP5i+IeOvHp5fE7+h
         nD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721312089; x=1721916889;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JS7qBoi05G3lWryW4qMK5KtOq7TPeQ/CEfLlEI14NIQ=;
        b=D4osXQ7+KpfUvY9cHm4hRJGfMaH6TDRzyiblsbLvUWfyHzgykEppDZLfFycuUX/lQ1
         r9RZXnDeKC9o0LwNebL7RoVR9Lm617qLpyQrsAK3MNyNQTKexvkEHOAh6sR6f4fvV/jF
         Rx0xpRg6GwKeEEDH9bnLqAU38I3/Rw5JtnzlNskFtkc5Q4GZhf78AgazHHATIdbXCVF8
         o6AnkM0HHtU4rLphPgfyEYgowz/+Hlq9ISPHdfS9IsfVS3WmDiC+dI0/6VhcwAIpA3fa
         NCTfyhUm2/4tarZHaa06OCE813oycj8DHl4RgBCdo2vGf0lGCCic2vHOCZGXs9dvnggB
         s5Fw==
X-Forwarded-Encrypted: i=1; AJvYcCVFYpLOB0LWHaKOF39oMX22FO8t/X5yNh/FXMjCGACGfzTmsQbjzWFRYvc1DxTdRke6sf6+NdBkySb/J0rXvDKVl6S3hLm3OuN/grvX
X-Gm-Message-State: AOJu0Yw4nrKnv50m03BuEmpQM6Fxre75+zIijt4GG97ke5nUZt1vlnoW
	MX7XEXIrEtDf/zq+kE336wKmOeXMjheZGfy2fsFAssQM5JS31oz6
X-Google-Smtp-Source: AGHT+IETXnKDXkKUWz/88f0DAPHSxh2e3HYAfGd2P3OVCzB7XLA4GFUeuZAhk4pM4iSrVPPM7Y/72g==
X-Received: by 2002:a05:690c:d91:b0:64a:d9a1:db3f with SMTP id 00721157ae682-66603516a87mr39219757b3.7.1721312088759;
        Thu, 18 Jul 2024 07:14:48 -0700 (PDT)
Received: from ?IPV6:2600:1700:45dd:7000:8cb7:cc5a:7aad:a524? ([2600:1700:45dd:7000:8cb7:cc5a:7aad:a524])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-666042bc58asm3394417b3.134.2024.07.18.07.14.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 07:14:48 -0700 (PDT)
Message-ID: <6080b3ef-fd52-43e0-a7a1-17e81c21455f@gmail.com>
Date: Thu, 18 Jul 2024 10:14:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-security][PATCH] fail2ban: update to 1.1.0+
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 yocto@lists.yoctoproject.org
References: <20240708131138.3125264-1-rasmus.villemoes@prevas.dk>
Content-Language: en-US
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <20240708131138.3125264-1-rasmus.villemoes@prevas.dk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jul 2024 14:14:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63530



On 7/8/24 9:11 AM, Rasmus Villemoes wrote:
> From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
>
> Current 1.0.2 version does not work with scarthgap or later releases,
> as the asynchat module has been removed (as scheduled) from python's
> stdlib as of v3.12.
>
> fail2ban 1.1.0 also does not work out-of-the-box, as the distutils
> module which the pyinotify and systemd backends depend has also been
> removed.
>
> So update the recipe to point at commit ac62658c10f4, which fixes
> those two backends to no longer depend on distutils.
>
> Upstream's out-of-the-box ban action now uses the 'nft'
> command. People can still override and customize that in
> jail.conf/jail.local, but to make the recipe useful without
> customizing things back to use iptables, change the dependency
> iptables->nftables.
>
> Since 1.1.0, fail2ban has been python3-only, so the recipe becomes
> somewhat simpler since the whole do_compile preparation step can be
> removed.

I am seeing an install error, see: 
https://errors.yoctoproject.org/Errors/Details/791129/
>
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
>   ...fail2ban_1.0.2.bb => python3-fail2ban_git.bb} | 16 ++++------------
>   1 file changed, 4 insertions(+), 12 deletions(-)
>   rename dynamic-layers/meta-python/recipes-security/fail2ban/{python3-fail2ban_1.0.2.bb => python3-fail2ban_git.bb} (89%)
>
> diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_git.bb
> similarity index 89%
> rename from dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
> rename to dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_git.bb
> index bf5f87d..1d0fb62 100644
> --- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
> +++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_git.bb
> @@ -11,12 +11,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
>   
>   DEPENDS = "python3-native"
>   
> -SRCREV = "e1d3006b0330e9777705a7baafe3989d442ed120"
> +SRCREV = "ac62658c10f492911f8a0037a0bcf97c8521cd78"
>   SRC_URI = "git://github.com/fail2ban/fail2ban.git;branch=master;protocol=https \
>              file://initd \
>              file://run-ptest \
>              "
>   
> +PV = "1.1.0+git"
> +
>   UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
>   
>   inherit update-rc.d ptest setuptools3_legacy
> @@ -26,16 +28,6 @@ SYSTEMD_SERVICE:${PN} = "fail2ban.service"
>   
>   S = "${WORKDIR}/git"
>   
> -do_compile () {
> -    cd ${S}
> -
> -    #remove symlink to python3
> -    # otherwise 2to3 is run against it
> -    rm -f bin/fail2ban-python
> -
> -    ./fail2ban-2to3
> -}
> -
>   do_install:append () {
>       rm  -f ${D}/${bindir}/fail2ban-python
>       install -d ${D}/${sysconfdir}/fail2ban
> @@ -66,7 +58,7 @@ INITSCRIPT_PARAMS = "defaults 25"
>   
>   INSANE_SKIP:${PN}:append = "already-stripped"
>   
> -RDEPENDS:${PN} = "${VIRTUAL-RUNTIME_base-utils-syslog} iptables python3-core python3-pyinotify"
> +RDEPENDS:${PN} = "${VIRTUAL-RUNTIME_base-utils-syslog} nftables python3-core python3-pyinotify"
>   RDEPENDS:${PN} += "python3-sqlite3"
>   RDEPENDS:${PN} += " python3-logging python3-fcntl python3-json"
>   RDEPENDS:${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"


