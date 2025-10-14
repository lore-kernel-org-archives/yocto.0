Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE185CCD194
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 09:21:18 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.10956.1760433672750956916
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Oct 2025 02:21:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XLNqel0L;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46b303f7469so33122995e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 02:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760433671; x=1761038471; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2DqqKfM2swhxKJgWnhl719ZL12TCZfl97bMsHpJnJrM=;
        b=XLNqel0La4JV4qO1bN3U4xQ0zzlU4fDK2HVqRPJzsYJ2frWEWV8mKOJ4JOKAOTG5Tj
         p4xIefcaI1gGJVUWZDKp8o7pnrBXU36tWLjM8vmyJINoBaU8ncKO1oZ64ZNeApYMNRyU
         hvo4Dnj6lg56DWs8kdR1L/lrh2ELsDaoRUcn85ke5v5nmfdAaOo52pMKDtXsNrm3C0hV
         1tvHEUADGsTTUrSlnQF0gV9XTT4RMvJ0CSLJnEdqnM+TMc1w/IxoQgZ8QLg4Tv6jePVx
         3gv9YbbrrXf55vz202x3KJey7fZI8n2vkF1ljzHemQUEQP3uLf3MZVjgRwQlSWMBvXJo
         4eJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760433671; x=1761038471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2DqqKfM2swhxKJgWnhl719ZL12TCZfl97bMsHpJnJrM=;
        b=azxQRqg20ruR+CFIyL8dcrq3cVq/ic9/T1WVzVBCuQ2Iiwaw/yRwrxMIKEEBPXD/Lb
         LeQ/0mT/kE9QV+Hkr44X/Eyg/hqAqZFP+0Jqm1yfZ0rqBoKPgxZxoKjVjG88pxiIXNfP
         1OTTxEstbhpGf/MdXCofZmUKygY5sXPJrRHL9HvbMTolTg0YnQHSkse2F/yfLJEGlBl4
         Tx5ctgXc4xv/TjgW00PDPP21Tg4pHKpJCgk7whJttvtvcZciXgF1xwEptbO8EoOAhI2/
         tB3BxseILk2zg07D8x9a+UfVZyxZidgBOmjq0VPSO9zUVyc+eTakycG4VprOfQNKDAsy
         3NPw==
X-Gm-Message-State: AOJu0YxK/wTkBGyzY9JkvRFljKnOaRrR56aLKS8Y0feZdnIPQNKHqoCB
	MziIIHjI4px+zvNL7thUGZtbvArz8bUOd+vEJOwOs/4zU/9Yk0xZbi5x6513vQ==
X-Gm-Gg: ASbGncttvXiM0dMmsgRva11B0hKkod4Jc/yzH/PvVUqjbpNhAH57kmWz7OvZQekvs7j
	OiaYy3dhv748FrQNL4q9bMWYI54EOLim3CbUPe6wqTqex+qtT19dWMr6YBEYGEEgU1CJ7CrCJj6
	LKTi5nCWcxNauHcgj86hIcsBiuUOHu+YxWlUGHOX7vLBDA8xWb6Z80Yuu9DNmH7roL3U/n5fZhL
	sbi7CxKRd2aNH9TZbuXcawdy5jCJxzIZjNNaAXpzo8LBcQoMDAYdynI0er6LFD1itcZ2Lh3ZrN4
	FghX5bP6tZLW3ccTw3KxFUfKp2fYMaWTrD63ojvpySiI9Ny7IoBHTVa2QqWzwvix432s/d6qVle
	ZY+r3oNCw0rwnptcpvqBsYuI5gG8+62jSk+Kmf3p+VkhUS2k63NdRaOD4jPVg
X-Google-Smtp-Source: AGHT+IHFs5HXOt7KsjCkexI2IujEpgXu0Kbjm40cxIvp+5+F11l+rS1JaWFyRnki9dXd0KL09n7GPQ==
X-Received: by 2002:a05:600c:8487:b0:45b:79fd:cb3d with SMTP id 5b1f17b1804b1-46fa9b13ab7mr168137585e9.36.1760433670899;
        Tue, 14 Oct 2025 02:21:10 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b9absm264269215e9.2.2025.10.14.02.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 02:21:10 -0700 (PDT)
Message-ID: <9b7974b8-a008-4763-b118-fcef94d96170@gmail.com>
Date: Tue, 14 Oct 2025 11:21:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [kirkstone 4.0.30] libpam-1.5.2 do_compile fails due to
 missing headers in pam_namespace.c
To: yocto@lists.yoctoproject.org, phelge@semtech.com
References: <CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAA@CY8PR20MB5618.namprd20.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAA@CY8PR20MB5618.namprd20.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 09:21:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65929

On 10/13/25 20:19, Pushkar Helge via lists.yoctoproject.org wrote:
> Hi Yocto team,
>
> I encountered a compilation failure with libpam-1.5.2-r0 when building
> an image with Yocto kirkstone 4.0.30 on aarch64 target architecture.
> The issue appears to be introduced by the CVE-2025-6020 patches
> backported in the 4.0.29 release.
>
> === ENVIRONMENT ===
> - Yocto Version: 4.0.30 kirkstone
> - Target Architecture: aarch64-poky-linux
> - Host System: Linux 5.15.0-139-generic
> - Package: libpam-1.5.2-r0
> - Recipe: /poky/meta/recipes-extended/pam/libpam_1.5.2.bb
>
> === ERROR LOG ===
>
> ERROR: libpam-1.5.2-r0 do_compile: oe_runmake failed
>
>
> The compilation fails in modules/pam_namespace/pam_namespace.c with:
>
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c: In
> function 'secure_try_rmdir':
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:326:18:
> warning: implicit declaration of function 'dirname'
> [-Wimplicit-function-declaration]
>
>   326 |         parent = dirname(buf);
>
>       |                  ^~~~~~~
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:326:16:
> warning: assignment to 'char *' from 'int' makes pointer from integer
> without a cast [-Wint-conversion]
>
>   326 |         parent = dirname(buf);
>
>       |                ^
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c: In
> function 'parse_config_file':
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:944:17:
> warning: implicit declaration of function 'setlocale'
> [-Wimplicit-function-declaration]
>
>   944 |     oldlocale = setlocale(LC_COLLATE, "C");
>
>       |                 ^~~~~~~~~
>
> ../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:944:27:
> error: 'LC_COLLATE' undeclared (first use in this function)
>
>   944 |     oldlocale = setlocale(LC_COLLATE, "C");
>
>       |                           ^~~~~~~~~~
>
> make[3]: *** [Makefile:795: pam_namespace.lo] Error 1
>
>
> === ROOT CAUSE ===
> The CVE-2025-6020-01.patch (added in 4.0.29) removes <libgen.h> and
> <locale.h> from modules/pam_namespace/pam_namespace.h as part of
> header cleanup:
>
> diff --git a/modules/pam_namespace/pam_namespace.h
> b/modules/pam_namespace/pam_namespace.h
> ...
> -#include <libgen.h>
> ...
> -#include <locale.h>
>
> However, modules/pam_namespace/pam_namespace.c still uses:
>
>  *
>     dirname() function (requires <libgen.h>)
>  *
>     setlocale() function and LC_COLLATE constant (requires <locale.h>)
>     These functions are called but the headers are no longer included
>     anywhere, causing the compilation to fail.
>
>
> === PROPOSED FIX ===
> The fix is to add the missing header includes directly to
> pam_namespace.c. I've attached a patch that resolves this issue.
> This patch should be added to the libpam_1.5.2.bb recipe SRC_URI after
> the CVE-2025-6020 patches.
>
> === PATCH ===
>
> From: Pushkar
>
> Date: Mon, 13 Oct 2025
>
> Subject: [PATCH] libpam: fix missing headers in pam_namespace.c after
> CVE-2025-6020 patches
>
>
> The CVE-2025-6020-01 patch removed libgen.h and locale.h from
>
> pam_namespace.h, but pam_namespace.c still uses dirname(), setlocale(),
>
> and LC_COLLATE from these headers. Add them back to the C file.
>
>
> This fixes compilation errors on aarch64 and potentially other
> architectures.
>
>
> Signed-off-by:
>
>
> ---
>
>  modules/pam_namespace/pam_namespace.c | 2 ++
>
>  1 file changed, 2 insertions(+)
>
>
> diff --git a/modules/pam_namespace/pam_namespace.c
> b/modules/pam_namespace/pam_namespace.c
>
> index 22d8445..1234567 100644
>
> --- a/modules/pam_namespace/pam_namespace.c
>
> +++ b/modules/pam_namespace/pam_namespace.c
>
> @@ -38,6 +38,8 @@
>
>  #include "config.h"
>
>  #include <stdint.h>
>
>  #include "pam_cc_compat.h"
>
> +#include <libgen.h>
>
> +#include <locale.h>
>
>  #include "pam_inline.h"
>
>  #include "pam_namespace.h"
>
>  #include "argv_parse.h"
>
> --
>
> 2.25.1
>
>
> Please let me know if this is a valid issue and or if need any
> additional information or testing results.
>

To me your investigation and findings make sense at the first sight...
would like to add two notes:

1. I didn't manage to reproduce this. This doesn't invalidate the
problem though - but I'm curious if it requires some extra
config/environment. (I tried it in debian12 docker image, for qemuarm64
target, with default toolchain).
2. This seems to be an upstream issue. Could you please send your fix to
the openembedded-core mailing list[1] (so it can be included in the next
release), and to open an issue/PR with libpam also (so they can fix it
too)? My previous point about reproduction touches this point also.

[1]:
https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#sending-the-patches-via-email



