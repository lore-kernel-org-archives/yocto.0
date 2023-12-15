Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13E11C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 04:13:15 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web10.52781.1702613586823990229
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 20:13:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=YVbPyJYP;
 spf=pass (domain: mvista.com, ip: 209.85.210.49, mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d9d209c9bbso304368a34.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 20:13:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1702613586; x=1703218386; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tFHeXXjjIxdBCttS7DLiWYjrYZbb8UWryAOGOCkSMRk=;
        b=YVbPyJYPTPuRBEUeCK4ob/qtNjfXCNE1zjl40KI6sdSgAsoOX9jwfQ2mwCMuOpL6fj
         urkmOEe1kXGOIOx3bDAJuk67p9qxLmHLlgMywTki40ZkUlju2DM5WWZuFokaglzsxos0
         yOg5GRiPeIVkOB2Zk/C4DbB/lDWCyMXLRz/5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702613586; x=1703218386;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tFHeXXjjIxdBCttS7DLiWYjrYZbb8UWryAOGOCkSMRk=;
        b=POdCVjJ7UmMqaVUXmCWdGInI0x3yG2drGr1lVeezDT2Q4jJQfNOA6mDXqJfZW6aeSt
         zvSgagHgmUjmFf8XlmyIqYBF82yTXk3iafu365tKBhhYcxJuFT2lY/+JZqlfANQUm1yF
         dAkKHAbkaQgsQDKcTJoN5lzn6tpXypX4I8z25AjDNqpOggNj6Zp+wp0uMwD+P+ijlyQq
         U4cwNFBD1SpOev0Xy18Tgxk0MHnn95zb/r3uB4r93h96oPoZKs5UOURARBp2EfYH3otX
         RlB9Uk0xrW8OxgA2sYnFCYIhUXBohX0c/eiPI+lailh6BRAD0kepC7BX55PF+2HlBBX7
         7mGw==
X-Gm-Message-State: AOJu0YyqkWiY8SWcJBRm74G3EuhoHSfIa9r/sNZYJKHFCjX8+pyEhWSf
	jr6+44hCX+gzwGzL1vuEatW4Ew==
X-Google-Smtp-Source: AGHT+IFG8BCAtJR17LAqslv1MfrFOQWHuv4Y03bPZL/R02uWIv+TqMgmnNwCmsu5T0655W0j/i0n0w==
X-Received: by 2002:a05:6830:914:b0:6d8:74e2:7cda with SMTP id v20-20020a056830091400b006d874e27cdamr13325712ott.53.1702613586026;
        Thu, 14 Dec 2023 20:13:06 -0800 (PST)
Received: from [10.5.0.2] ([185.211.32.156])
        by smtp.gmail.com with ESMTPSA id p20-20020aa78614000000b006ce924e3926sm12572282pfn.70.2023.12.14.20.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 20:13:05 -0800 (PST)
Message-ID: <303d8592-d55f-4e61-bcd8-4376d364a664@mvista.com>
Date: Thu, 14 Dec 2023 20:13:04 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] libsocket6-perl: Remove useless option
Content-Language: en-US
To: wangmy@fujitsu.com, yocto@lists.yoctoproject.org
References: <1702609881-2917-1-git-send-email-wangmy@fujitsu.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1702609881-2917-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 04:13:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61903

Merged. Thanks!

On 12/14/2023 7:11 PM, wangmy@fujitsu.com wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> Error message:
>   | configure: error: expected an absolute directory name for --oldincludedir:
>
> --oldincludedir is removed by upstream.
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> index 004efe2..a01620c 100644
> --- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> @@ -20,7 +20,7 @@ S = "${WORKDIR}/Socket6-${PV}"
>   do_configure:prepend () {
>   	mkdir -p m4
>   	autoreconf -Wcross --verbose --install --force || oefatal "autoreconf execution failed."
> -	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --oldincludedir=${oldincludedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
> +	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
>   }
>   
>   inherit autotools-brokensep cpan

-- 
Jeremy Puhlman
jpuhlman@mvista.com


