Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BBBEC4332F
	for <webhook@archiver.kernel.org>; Mon, 30 Oct 2023 13:21:22 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.148742.1698672074547845650
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Oct 2023 06:21:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lRHNXNey;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-77774120c6eso310779085a.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 06:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698672073; x=1699276873; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFYsmlfSBbFkn5a4RRkKj03IBRL49FeCZeKPx4qK30k=;
        b=lRHNXNeyFhmhyeGyxkEkgIcqardJTE3zmOA2l2IoDbir05Sy098GUlN5azOCyixMrt
         nW5UEWYuIgUCscZboIgJTQSjQW6fO8vVb/0n25b40aPCaFSwPKWlORxB1oQ73D31GtGv
         ST7JJ+CY3Yyzhch5RP5ETTKW2rd92umGIlHZVzJ2SZFcM06dn7z5L697/vatEY4WP0f7
         7+8+KJE6Zxh2lD+tX9RDOn1qFo40tdl7DXplxKIEExx3cGyb4wWi03hFMd8+7yub3f4r
         ZUSL4LjSRcllkKNG925y4pFJnvTkcgUKq7kitbDciQ2lHF28bdAta6M8QLjLZdcyd+s4
         1mrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698672073; x=1699276873;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xFYsmlfSBbFkn5a4RRkKj03IBRL49FeCZeKPx4qK30k=;
        b=dPRK8ciFTXnuKmDJzPCz/jq3PqPS95ne+0XOQVEGn9SxX4a9zDo/wHvpLj6sgqJFR+
         YfHbgIqaM7v4yu6e9aDTOnJMbFL/v7GmZKvA0R7qI21WfGEuY5W7kk+fdIYnE3uDwehb
         0e6SHa62yqI7JKdPhcAcdUt41RA/sPA79ZJ4YkBMZcNRDysotx1OposlkRVnf26vH42a
         ZIhPENDnk3NMTcG97oynYOo4/E9tqwporPiNTDhfKdOJW5qanFLsMlHXUepvDm87Ahh0
         NlkrR8/pCAkvSDWYXaQ6wMNcltGY6kUnWqKz9vwopmfcOV7lx8rQ5nyy/Wn9Bz38oyq2
         Citw==
X-Gm-Message-State: AOJu0YzL7y89oIe/UoSfq85cCtdwoTwVaWqPR0w4J76G6kVquk0OVZUD
	Oj0MbRE6dbD+wEUreY/t2JrE8YxGL0I=
X-Google-Smtp-Source: AGHT+IEt84nL3cD5wNUqSKXc1Kdwmrk+4MldDAhR+j8TF9azuzGI0+niPiQljSZ4J2ZJKdLKy/SOsQ==
X-Received: by 2002:ae9:c202:0:b0:76f:1d96:4eb5 with SMTP id j2-20020ae9c202000000b0076f1d964eb5mr7993642qkg.36.1698672072909;
        Mon, 30 Oct 2023 06:21:12 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id pj36-20020a05620a1da400b00772662b7804sm3294913qkn.100.2023.10.30.06.21.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 06:21:11 -0700 (PDT)
Date: Mon, 30 Oct 2023 09:21:09 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rockchip-rkbin: fail if lacking
 an override
Message-ID: <20231030132109.GA14480@localhost>
References: <179161A449234C9C.20272@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <179161A449234C9C.20272@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 13:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61516

On Wed 2023-10-25 @ 10:57:56 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> Looking forward, rkbin should only be used by specific Rockchip platforms
> for which TF-A support is not (yet?) available. If rkbin gets added by
> accident without an override, add a bbfatal to let the user know an
> override is required.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Added to meta-rockchip, master branch.

