Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BD8CC63797
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 20:16:33 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.149190.1673813782947338361
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 12:16:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=jWYkDs91;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.177, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f177.google.com with SMTP id h21so23105289qta.12
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 12:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3WM+cQPQ/IGjG68E4XK6gktEQJWtp6q2nRm+vJGxuDc=;
        b=jWYkDs910AYhjQ7ncS3kRXB2XJGyCm1fcC2pM6zpDuBCWXeQr7tTzJBueqqRS8xP78
         e/K9MILnnnE4i5ckBCsvU9N3RcrkNoD/P+I1rF/KgY+Dch+Q4WZK2B2YvQJTkJY6B7Ap
         QRWKkNsdNuZKpqlca4oz4EGj1uIb1JTrihIrEWr9mLigb5pELOO9bFAKiLhJwRer2IX9
         648XWNcbgSprNW4TZXkIIRDyRHhKYFcMvjW3+uK4NXyTCt1yMlYJ62nALMNXJEY8HSSo
         n/MGWhDNn1ly82Jz/gFrY6mDrAVJiOKUqZeQ+sEhAu41utOWVZNgZS5PPp5hKlgbvE+s
         hpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WM+cQPQ/IGjG68E4XK6gktEQJWtp6q2nRm+vJGxuDc=;
        b=xu39GIezzcnTqoQWX4HwxHihg77ZDL4TWujrNozvKlD/b8Bv2V0wD6q82NUYAWQBk5
         L11/dh2JQEqmQ83Rh0BY0YSQ8G3JXzK8g4hUxkifyKtTkAX7j1aPP0arSCkIHPXrARXB
         IrP80t3cqfXzwt02Gv+MCE8qFxTPoZ8tBDwXKj4PJJoUkYU/o9Ytj5cy6HhsG9awfWIT
         Pg/4irX6KvyolOFqE1qzvKL97F8IGj9jqJyP9YMTuhbC71uZzkT6coOMem7QrkERg55y
         BeGqePjl+RBbCI7oNrnM5w4F4cGmgCEt1gD+osS05y0eMoEWGnwS9zaUhwKFhhNb8kQr
         mnAQ==
X-Gm-Message-State: AFqh2kodiPsf3pk6BoHiqeDweG2lkcvgy8zdpvxycXrn8EDXmqYhwqPh
	TbI1t6mhwSFkDLxup5xqWu2UTyDOFyDPcLrH
X-Google-Smtp-Source: AMrXdXsHNtSVVZ+CIyg+iXlsMM9B4wD6X7bImDmrNGXNOYJCr+YpGcAiQmkWC1ECJ3osy7FAzUuroQ==
X-Received: by 2002:ac8:67d2:0:b0:3ac:1bd5:b7ad with SMTP id r18-20020ac867d2000000b003ac1bd5b7admr39217109qtp.33.1673813781886;
        Sun, 15 Jan 2023 12:16:21 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000::59])
        by smtp.gmail.com with ESMTPSA id h12-20020ac8744c000000b003a68af60591sm13679523qtr.70.2023.01.15.12.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 12:16:21 -0800 (PST)
Date: Sun, 15 Jan 2023 15:16:19 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][master][langdale][PATCH] zephyr-kernel/3.1: update
 to latest commit
Message-ID: <Y8RfExjWyDtIKDcD@kudzu.us>
References: <20221220080415.2433642-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221220080415.2433642-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 20:16:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58992

On Tue, Dec 20, 2022 at 04:04:15PM +0800, Naveen Saini wrote:
> Recent commits have CVE-2022-2741 fixed.
> 
> Also backported CVE-2022-2993 fix.
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>


For master:
I ran this series (batched with the other patches destined for the
master branch) through CI and it passes (with the known qemu a9 poll
issue).  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747733921

For langdale:
I ran this series (batched with the other patches destined for the
langdale branch) through CI and it passes.  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747805268

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  ...ix-SMP-local-keys-check-when-startin.patch | 51 +++++++++++++++++++
>  .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc |  3 +-
>  2 files changed, 53 insertions(+), 1 deletion(-)
>  create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
> 
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
> new file mode 100644
> index 0000000..68650c3
> --- /dev/null
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
> @@ -0,0 +1,51 @@
> +From 74d26b70f080a5dc60c6a1aa2bfec38043ee30d4 Mon Sep 17 00:00:00 2001
> +From: Joakim Andersson <joakim.andersson@nordicsemi.no>
> +Date: Fri, 5 Aug 2022 10:50:47 +0200
> +Subject: [PATCH] Bluetooth: host: Fix SMP local keys check when starting
> + encryption
> +
> +Fix SMP check of existing local keys when attempting to start security
> +with required security mode 1 level 4. The logic for checking the
> +conditions was wrong, leading to a situation where encryption would be
> +attempted to be started by the central instead of initiating a new
> +pairing procedure. This would fail when the connection was encrypted and
> +the connection would be disconnected.
> +
> +Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/commit/83d5402fe830973f943bde085d80f0d3643e811a]
> +https://github.com/zephyrproject-rtos/zephyr/pull/52947/files
> +CVE: CVE-2022-2993
> +
> +Signed-off-by: Joakim Andersson <joakim.andersson@nordicsemi.no>
> +Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> +---
> + subsys/bluetooth/host/smp.c | 10 +++++-----
> + 1 file changed, 5 insertions(+), 5 deletions(-)
> +
> +diff --git a/subsys/bluetooth/host/smp.c b/subsys/bluetooth/host/smp.c
> +index 02a847f97d..555f09fefd 100644
> +--- a/subsys/bluetooth/host/smp.c
> ++++ b/subsys/bluetooth/host/smp.c
> +@@ -357,15 +357,15 @@ static bool smp_keys_check(struct bt_conn *conn)
> + 		return false;
> + 	}
> + 
> +-	if (conn->required_sec_level > BT_SECURITY_L2 &&
> ++	if (conn->required_sec_level >= BT_SECURITY_L3 &&
> + 	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
> + 		return false;
> + 	}
> + 
> +-	if (conn->required_sec_level > BT_SECURITY_L3 &&
> +-	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
> +-	    !(conn->le.keys->keys & BT_KEYS_LTK_P256) &&
> +-	    !(conn->le.keys->enc_size == BT_SMP_MAX_ENC_KEY_SIZE)) {
> ++	if (conn->required_sec_level >= BT_SECURITY_L4 &&
> ++	    !((conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
> ++	      (conn->le.keys->keys & BT_KEYS_LTK_P256) &&
> ++	      (conn->le.keys->enc_size == BT_SMP_MAX_ENC_KEY_SIZE))) {
> + 		return false;
> + 	}
> + 
> +-- 
> +2.25.1
> +
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
> index 68016e4..b3feb6a 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
> @@ -2,7 +2,7 @@
>  
>  SRCREV_FORMAT = "default"
>  
> -SRCREV_default = "2ddd73feafd3316af2c547c34d6969bea637d5c6"
> +SRCREV_default = "a7d946331f4f9361d1531984524dd8f151ae20b0"
>  SRCREV_canopennode = "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
>  SRCREV_chre = "0edfe2c2ec656afb910cfab8ed59a5ffd59b87c8"
>  SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
> @@ -109,6 +109,7 @@ SRC_URI_ZSCILIB ?= "git://github.com/zephyrproject-rtos/zscilib;protocol=https"
>  SRC_URI_PATCHES ?= "\
>      file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=zephyr \
>      file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
> +    file://0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch;patchdir=zephyr \
>  "
>  
>  SRC_URI = "\
> -- 
> 2.25.1
> 
> 

