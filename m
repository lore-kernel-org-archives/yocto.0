Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FAAC07545
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 13:42:58 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.173723.1698241375955773756
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 06:42:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dNrvAJch;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-777745f1541so425581885a.0
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 06:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698241375; x=1698846175; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfGYQMk/1i1KLzhpB72sAQ/tc07XUwpBB4etLiZNA9Q=;
        b=dNrvAJchl2omrAlZY7+SGxtwJLmUzML+8c3WgT3BlEd/SLiv4nTa7x8kEnne8ulv0Z
         chkLQgebE/vMShPt/j2Td77lpq38Ca41uP+att/w7Yk7WYwLGlpfyZYDpDsKO9KWq8QV
         M5Y1QV63j/Ukwz95AT9OWcinrjHab6ZSuE835Id47545wEXRD59++aSOQWpzkC/h3dpB
         tYQX5Co258JTua8E9/W9V9jD0nNjh2WdodCvNjVQDepbjiWN4hqu7557g/9IUl+ISjue
         f2Wwyib+cih4Kt/2Q+1p9FHXfAfGT2ClUIvzyFLeqHQ1fvj9wl9BhiNYVhSTHPzNheKH
         m8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698241375; x=1698846175;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfGYQMk/1i1KLzhpB72sAQ/tc07XUwpBB4etLiZNA9Q=;
        b=wILEc41E6KMpoIrA63x6uh0M5i6kvW4XYoCsNdbuBqMZ+WLyIUgJl6CZt+uJaYG1hV
         48kLucuceUMd+iU3IA9vTsFoZ7ywQUf5KnjrcC4KfJV9qYDynfIUcb8XI/mxHGA/0i9H
         /p/NqpTmenoCSeqHCj+3o459SYZx5aV3Q1a2rnZ6tzwqaHshtOmBrNwtf1/y82gpA4FQ
         igE+m8HLqoSFYPrn97KCaYEfVVXgWqZc9gAHe3ohCLXX1maigdVvjjRoXCFGHg/ZyA/3
         dueerIB5aBj66J8cw+UGqsQXEhv5iIkO2uENk2Vy1mFpE00YhWzOWefPUZCavYKfMW2w
         O82w==
X-Gm-Message-State: AOJu0YxvLt216DOUqRJHkBZGxZoOPZXt/15UcKnvH2X5dKgasmZc07lF
	nabcj0tycHd/fF8V39cosQ8=
X-Google-Smtp-Source: AGHT+IEQtROvhjdiInp5Btvns+Ca4jtdElsdqc2JP2XYsgeZ/xiei5t9EfgCGOlwLj3guEciKBzv9A==
X-Received: by 2002:ad4:5bcd:0:b0:65b:896:a5bb with SMTP id t13-20020ad45bcd000000b0065b0896a5bbmr18652055qvt.34.1698241374955;
        Wed, 25 Oct 2023 06:42:54 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id pe1-20020a056214494100b0066d1d860cd1sm4418144qvb.19.2023.10.25.06.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 06:42:54 -0700 (PDT)
Date: Wed, 25 Oct 2023 09:42:52 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH] bsp: rkbin: fix default
 COMPATIBLE_MACHINE matching all
Message-ID: <20231025134252.GA9170@localhost>
References: <20231016112110.220599-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231016112110.220599-1-foss+yocto@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 13:42:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61479

On Mon 2023-10-16 @ 01:21:10 PM, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The goal of the default COMPATIBLE_MACHINE was to not allow
> rockchip-rkbin to be even parsed if a MACHINE isn't part of the
> COMPATIBLE_MACHINE.
> 
> However, COMPATIBLE_MACHINE is a regexp checked using Python's re module
> approximately like:
> """
> if re.match(COMPATIBLE_MACHINE, MACHINE):
> 	return True
> """
> 
> and re.match() returns a match whatever MACHINE is if COMPATIBLE_MACHINE
> is the empty string.
> 
> Therefore, let's change it to `^$` which only matches the empty string,
> which shouldn't be possible for anything in MACHINEOVERRIDES, and if it
> is there are probably bigger problems than parsing rockchip-rkbin.
> 
> Fixes: f8af59dd7cd7 ("rock-5b: add")
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip, master branch. Thanks!

