Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7BDC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 19:54:41 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web10.42494.1698954874647422870
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 12:54:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TpzysCV7;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: twoerner@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3b2e22f1937so732064b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 12:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698954873; x=1699559673; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=463eFDF3sPMxo6pJW1ZNilLkW3K6uuHgWPZigF7M0wM=;
        b=TpzysCV7pten+D24xMPBfIijmCeQq3+1u347BAk6hjTkfxchSYw115AYMnDw7LN42f
         P6g0pS3lvoBsvOFzIm2Lv9XEm81tsBRrQZloLVi1bWzSJhtOkCiNjDCWolTY0ECt1Htg
         R9XAKBk/LPL8Whg3tPbi2HYJ9JcEG78TBEGqZ2gDcwgS6kpMf6w6GM9M04y9vIRN/drm
         P5r+34IFDeOGQabHJxl0nPLuli50fKZZ7jR6ByIRKPPs9oyzy635CFWX/0jNn/5QOrZ0
         r/wvW27xrshFGIwLZa/8wwtQ5aeMFRQDDH/zEtEQQ7EiBA1DJIZP/eBL+AgH8P1+dwoj
         SEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698954873; x=1699559673;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=463eFDF3sPMxo6pJW1ZNilLkW3K6uuHgWPZigF7M0wM=;
        b=UDCXOyQqba2xwLCqDaSPZ/KqMoqUKUTE8CVF8lQWg+307dtaB08KJC+trZHubjgsTB
         gCA8bgu+fNNy06L3VasGUOQKH/vizRDPNWbuIz+U9obDS9UCs61RwlPtuSQCRV9PT0K0
         qPrOlJW0VMhvgerMRUvbP4KKG+1p/SIa/0Qj3/1YAUvP0yhU5s+BISWuXCRg6RFhGnpb
         /lN+5v6dKpowXp74l+vckLChpT4kZQw+Kx1YJUUfRUBkF+06DlWhahwLjDG5kZs/+yK8
         oX+3jH6P97rK1LMTRgVFF8Cj7k7xWjAEKwWNlOC3waa6+7JHUA/GsO3BlbO3ba5Vs0Cr
         GyLA==
X-Gm-Message-State: AOJu0YztiPpTh9FXXfPRr+vwkU2W8Mpn25NK74hLuVbH7SvOScfyWwex
	0yaEKV8lBDATCQUqy/fTNTdiFbIAhPY=
X-Google-Smtp-Source: AGHT+IE9GsBZzEQ4XS3XkAek4AnVH1j6X10Jdbj25fXqfZxJGkfKyy/TRHVh8vtHX6GUJCvlU4R80Q==
X-Received: by 2002:a05:6358:6f82:b0:168:e87f:1331 with SMTP id s2-20020a0563586f8200b00168e87f1331mr21943046rwn.5.1698954872756;
        Thu, 02 Nov 2023 12:54:32 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m29-20020a05620a215d00b0077411a459a8sm72487qkm.4.2023.11.02.12.54.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 12:54:32 -0700 (PDT)
Date: Thu, 2 Nov 2023 15:54:30 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2 0/1] rock-pi-s: add
Message-ID: <20231102195430.GA12814@localhost>
References: <179332951F38AF26.20486@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <179332951F38AF26.20486@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 19:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61584

On Tue 2023-10-31 @ 08:58:04 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> Add a new MACHINE: rock-pi-s
> 
> changes since v1:
> - while the actual patch to add the rock-pi-s was not merged, all of the
>   cleanup patches that were submitted in advance of the "add" patch (and
>   were part of the original series) were applied, therefore those patches
>   are dropped from this version
> - upstream master now contains a version of u-boot that supports the
>   rock-pi-s, therefore using rk3308-specific overrides in the u-boot
>   bbappend is no longer necessary
> - add a separate rk3308-rkbin recipe instead of loading the rockchip-rkbin
>   recipe with rk3308-specific overrides
> - allow the user to choose whether they want the rkbin and u-boot debug
>   messages to show up on the console (i.e. use an older version of rkbin)
>   or have gibberish until the linux kernel starts (use the latest version
>   of rkbin) by setting (or not) a variable; default is to use an older
>   version
> 
> Trevor Woerner (1):
>   rock-pi-s: add
> 
>  README                                      | 22 +++++++++++
>  conf/machine/include/rk3308.inc             | 18 +++++++++
>  conf/machine/rock-pi-s.conf                 | 11 ++++++
>  recipes-bsp/rkbin/rk3308-rkbin_git.bb       | 41 +++++++++++++++++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 10 +++++
>  recipes-bsp/u-boot/u-boot%.bbappend         |  8 ++++
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  7 files changed, 111 insertions(+)
>  create mode 100644 conf/machine/include/rk3308.inc
>  create mode 100644 conf/machine/rock-pi-s.conf
>  create mode 100644 recipes-bsp/rkbin/rk3308-rkbin_git.bb

Applied to meta-rockchip, master branch.

