Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CA09E776C7
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 21:55:59 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.95485.1696283751553510752
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 14:55:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EKOH1i7v;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-77575233636so21501685a.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 14:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696283750; x=1696888550; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vtQ44eS8nqY0336kZIIstH4BNkATCmNpLoUIPhVj1Qk=;
        b=EKOH1i7vyG5zMFW3Rf+rUETpQshq9MZbznMKndovvAC1typn5GNwiDOxW58s1PjL1Q
         QLmcyICBWiRxnE9tmBnAvZGMSmVaZnt2r5uGTVHTf8n9ZhF7QAYq5tKgA0JKBurHaqDx
         hwTc330yLpNc/JuhG/n8/3a2/PFqsH4UDxV0nLlZbKyinZ60lPm+tVuj+Cf2qGJcd5xJ
         AcvIaL8Vpmro2JfdY+dkmCNSjtQuyy6DYkG36n16cibEiXNVzrTS3+UnjXayulmvRqMm
         4GYq4I/9b/bYarZ9FHLxMqzqvsm+1mTvk2RlFPhbfIh5J6SaLBCxaUVIlf6WXU3n+Ha8
         rUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696283750; x=1696888550;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtQ44eS8nqY0336kZIIstH4BNkATCmNpLoUIPhVj1Qk=;
        b=eLNSaenYH4hd/MaexcZFRctBd6211e5Yzo3Iw8PWgwuwsx/48G8MEG3A+VAe0jff3R
         IuatHVhDzhbO6bzVnpLjxPrnfT0thto7Pjx7k1XBnNJ/1uRP/komn8QQW9USAIhZnJog
         MTP6cCJzsmTFBLsZilxVhDRfV/mtdMW8dRc8d63CfHFlUOnvvE9zKjk2ekZ3dK/YA3u4
         uHyfLMb+vV/q20kjxwWycul6D+lOHOyzZMYVViqboFUzvaBRoUpUVN2wEA7QRY5LgAh3
         G4xX7ujPfzs4BQplxJeknLFxzzx0GAjyJ30zgrUV0ShxoynMBWpVkjG5V/95tyr9ThrP
         IldQ==
X-Gm-Message-State: AOJu0YyB4/Y0j8H8L5vthMpd/r18OcAhLtfhCQXkaOEdYgxT1mDE3bcQ
	aUQ449SFqrY/6tHVOCxRT1lb/8KhpgMHkQ==
X-Google-Smtp-Source: AGHT+IGeylJFTbObwzWMirqJDwN/xrMB+4tizvqIKnqgBi7b7SbLHiDUJzQ3PJpPJ3JsuKY7mMGd/A==
X-Received: by 2002:a05:620a:bd5:b0:76d:a93a:1f71 with SMTP id s21-20020a05620a0bd500b0076da93a1f71mr14251222qki.9.1696283749857;
        Mon, 02 Oct 2023 14:55:49 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id j30-20020a05620a001e00b0076d74da4481sm6077410qki.23.2023.10.02.14.55.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 14:55:49 -0700 (PDT)
Date: Mon, 2 Oct 2023 17:55:47 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/3] rock-pi-e.conf: remove redundant
 MACHINEOVERRIDES
Message-ID: <20231002215547.GA2469@localhost>
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-3-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231001130803.18662-3-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 21:55:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61198

On Sun 2023-10-01 @ 09:08:02 AM, Trevor Woerner wrote:
> The MACHINE name is already added to the MACHINEOVERRIDES implicitly, no need
> to add it explicitly.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/rock-pi-e.conf | 2 --
>  1 file changed, 2 deletions(-)

Applied to meta-rockchip, master branch.

