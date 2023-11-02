Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D4C9C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 14:04:08 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.31989.1698933840309167502
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 07:04:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=GMMeq0Fd;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.179, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-77897c4ac1fso51194385a.3
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 07:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1698933839; x=1699538639; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2fDRRg2pM/RmiKuNZHAn2UeVugTqF+XYohe08s86W9w=;
        b=GMMeq0FdR3QsPTb3Wg1/M9p38HIMpPHwfwETQU/BWc0Y8ORSKmwJaQjxR671gM2pm4
         8/aSlwF1FU0FpcKjFEtV0sEOfKV+VcHv7KFGdqHaeihp08bUN6IlF/gi9bBByBGF/1m+
         7tiagNOm/PRkoCx/AP4DX876V4zPuyLxqPJDvBpK1CxXh49pnTvvXG5HL0eWhhalXb1U
         gxOWNquQcktMvZWcN2/eBJBzU9xeGvjhwCmVBjBNJKPydREAhpPRary/lp4lAiRg7A47
         YUmXVnrTWUOmz8YiHsJjik7CVgsncF3GrJ/5OvUyH6BJg298Bo89bEUzOFUVLkuKYD5Z
         7kPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698933839; x=1699538639;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2fDRRg2pM/RmiKuNZHAn2UeVugTqF+XYohe08s86W9w=;
        b=QmDS781jmR1nJZOUiCBwXj+VK6N3Jp667KxDLsZhJMkj+NHlhMPhF3hTGeiG+jCk16
         FnTQGgclPPlN8+mkTHv0GnqTzVbQ7UIsutNx/iErrFFscoML9+zJ9ak/AdL+paE5t4P5
         GuyAVsz/I+HpXlqimGj9lQ7szJjixkSfkza5egh1bh6v4ghynQE0SnOQshbd5f6xloum
         /KssBNt2PBvBkDyPkfrmCsBnCHQx886dv6vVM3FZfu/v0SIbhTbmKHDhED8kwuIXO9AM
         AOSELE/mKC2C8WtWOsTA6kvz0OTuBJLn4BaERZDYFjne2Eijt/qmOqYE7Rj/LE0Hls3R
         B+Dg==
X-Gm-Message-State: AOJu0YxlbkzwsTtHjCzXHNjS672S8omqcdj42Tn5lR430qAIaMcvMJKM
	ssdiMcpeXUf36E4SX25wzgEl3g==
X-Google-Smtp-Source: AGHT+IEPlzFsKGvc8s4/bSTsA70kKcxtPJBQoU2jL4cn4HSBqyAcyfigo4HqYKg+l7zalpDs5zx6sw==
X-Received: by 2002:a05:620a:2a04:b0:778:9888:c750 with SMTP id o4-20020a05620a2a0400b007789888c750mr22359948qkp.11.1698933839292;
        Thu, 02 Nov 2023 07:03:59 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a688:2c00:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id u29-20020a05620a085d00b00775afce4235sm2321964qku.131.2023.11.02.07.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 07:03:58 -0700 (PDT)
Date: Thu, 2 Nov 2023 10:03:51 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] intel-x86-64.conf: add intel_ prefix to x86
 board names
Message-ID: <ZUOsRwQq3z0GEiMH@kudzu.us>
References: <20231102064138.3020088-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102064138.3020088-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 14:04:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61578

On Thu, Nov 02, 2023 at 02:41:38PM +0800, Naveen Saini wrote:
> Use newly added naming convention (intel_).
> 
> https://github.com/zephyrproject-rtos/zephyr/commit/03905f7e55d24788e0a38d1641dcadf529fce85d
> https://github.com/zephyrproject-rtos/zephyr/commit/2b757f1eca3e27f2405362a99d77fc9fc2b17619
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>

This resolves the intel-x86-64 build issue.  See
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/1058925479

> ---
>  meta-zephyr-bsp/conf/machine/intel-x86-64.conf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-zephyr-bsp/conf/machine/intel-x86-64.conf b/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
> index 74e8f6e..5112f28 100644
> --- a/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
> +++ b/meta-zephyr-bsp/conf/machine/intel-x86-64.conf
> @@ -1,6 +1,6 @@
>  #@TYPE: Machine
>  #@NAME: intel-x86-64
> -#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'ech_crb' board.
> +#@DESCRIPTION: common MACHINE for 64-bit x86 boards. User must set ${ZEPHYR_BOARD}. By default is set to 'intel_ehl_crb' board.
>  
>  require conf/machine/include/tune-corei7-common.inc
>  
> @@ -10,5 +10,5 @@ ARCH:intel-x86-64 = "x86"
>  # ZEPHYR_BOARD ?= "acrn"
>  # ZEPHYR_BOARD ?= "acrn_ehl_crb"
>  # ZEPHYR_BOARD ?= "up_squared"
> -# ZEPHYR_BOARD ?= "ehl_crb_sbl"
> -ZEPHYR_BOARD ?= "ehl_crb"
> +# ZEPHYR_BOARD ?= "intel_ehl_crb_sbl"
> +ZEPHYR_BOARD ?= "intel_ehl_crb"
> -- 
> 2.34.1
> 
> 

