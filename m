Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 166C4C47422
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 22:51:43 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.7930.1705618294095747646
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 14:51:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MDSmIz2T;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7834a91b086so21081885a.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 14:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705618292; x=1706223092; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDlZNmycQ7WXrqxQvMFCkrarjF6YvJ2+TOr/ENzFxnI=;
        b=MDSmIz2TsCX9R9yQIu7tSj3GdBpP9jxb5JGe3uIi/lxjFr8gSD0NX55zzGGQlttwtX
         3cSgBWbggHefyysWqKP7ccqQtT25P3A1RlpTda97qsN/gA5/DwRw1tyNBm9klv2T842r
         blmO3E7KIsSkgXOiebYokeF0oVuqYbska1GNVwZWdmDwZ0QX9taOSNwSfwED2ZQOiPI8
         ipSreafwwmZnXZwAxcd3phGN35enqD0QVi4jaSZTt631ZA5+aFrl0O5jbYC+BzFIWi0g
         c78xSkJ8VHsKhusibRkaFhh6OwcsxiBp8Wn+CKrHKMB/W0s4BdNIAEYMtH9rtMMQIcBb
         fOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705618292; x=1706223092;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lDlZNmycQ7WXrqxQvMFCkrarjF6YvJ2+TOr/ENzFxnI=;
        b=wYhnRHrDkr9kTNKzpLQoMsPRsFc7M3oVb9akBHqMCZN+AwVE+sPek5jhUaMUc91ktR
         ry3SmupK70md2RJJbbJXxXjLDYzmZN3s6CaSYuTLYyyLbt7izM2o9hRzibPGVhz0Mu9N
         lW5TsON9U8GQPfewAwmWAAuyuaYvSt0zFIF5GIm2nUYeGjHjy7n0WUhdCmxx/dACzFo1
         5Iv/VN5zqSLYrRsoCSze7sUgutbOIyBKM0o4x7FWT5FCP+1CJYh57TiSRkXW1af9J2TQ
         Hla5dWoqFe00y7UT2IJI/OFTbGPd+eyuAVwspjpHP81cvwFZnQmpBTRVnYlNS2Qd991D
         k0OA==
X-Gm-Message-State: AOJu0YxfTySis2XWX9rXAya540cbh3A6C+EnS8uq+0clGWYpEyF79D2y
	sjTO91ILX9tGgdSPUokDeIuGa+qcT4VP0T+grCbRlKqp2aYbddk8XQvPPnlO
X-Google-Smtp-Source: AGHT+IHl9Z4MY/1Yv4hPrbZO1t2lk1suYuyAvyjr5RS/827w+Zd9nWynczcnKS1DkQXxjhyG3/muoQ==
X-Received: by 2002:a05:620a:4f3:b0:781:5c66:c71d with SMTP id b19-20020a05620a04f300b007815c66c71dmr69956qkh.45.1705618291216;
        Thu, 18 Jan 2024 14:51:31 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l1-20020a05620a28c100b00783484abba5sm5083719qkp.90.2024.01.18.14.51.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 14:51:30 -0800 (PST)
Date: Thu, 18 Jan 2024 17:51:28 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] roc-rk3328-cc: add
Message-ID: <20240118225128.GA15819@localhost>
References: <20240116224254.27274-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240116224254.27274-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 22:51:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62190

On Tue 2024-01-16 @ 05:42:54 PM, Trevor Woerner wrote:
> AKA the "renegade"
> 
> The ROC-RK3328-CC platform is built on the Rockchip RK3328 system-on-chip
> optimized for low cost, low power, and high performance IO. It features a
> high performance native USB 3.0 interface and Gigabit MAC.
> 
> Specs:
> - RaspberryPi 2/3 form factor
> - quad-core ARM Cortex-A53 @ 1.5GHz
> - ARM Mali-450 MP2
> - DDR4 RAM
> - USB 3.0
> - GbE MAC
> 
> https://libre.computer/products/roc-rk3328-cc/
> https://wiki.t-firefly.com/ROC-RK3328-CC/intro.html
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                      |  1 +
>  conf/machine/roc-rk3328-cc.conf             | 11 +++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  3 files changed, 13 insertions(+)
>  create mode 100644 conf/machine/roc-rk3328-cc.conf

Applied to meta-rockchip, master branch.

