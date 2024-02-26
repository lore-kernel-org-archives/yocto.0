Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEECCC48BF6
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:32:20 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.23035.1708961533334511975
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:32:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OC/jsGNJ;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7810827e54eso260510585a.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 07:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708961531; x=1709566331; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=krbH6V6NHymjL0ldOFszOmxkMw2K7HSnw4p+ZN3YqA8=;
        b=OC/jsGNJdXl2Ot3JPm3+B1Ai9O+zDS0VToAOV7ErprmIuJFOMEWk3YqcOI5Z0Yggzl
         gAlb0NIAnM1oZm47sREIND4H/izymk3h4cQZ01/+7Xj4IRFwu45uTrZgAKMKHAPYCMW5
         qvgoAWxub9yEpIHFIYuabU02Ue0NeliRBVOcettF+EX6RVL8/aaai3y5pqvTly3MKSfb
         23px66BNlmETVecCKdlS1msHV23/8gN0738QMfUVi5NqmhMh2jE2HvM4juRc6f6cVGW1
         TLVPiYfOgWSlzNJbmFrWTEiMXi/vQwEQhH7EyGzWtEA4vV6lWwljx6Ga7xT8q7vz7q/p
         TI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708961531; x=1709566331;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=krbH6V6NHymjL0ldOFszOmxkMw2K7HSnw4p+ZN3YqA8=;
        b=exgIW8hBy3BPc533gkEBxB5YXukpYxj3xi3OcjAiJnhf7fczIHKfkRVEz/Or3gjPrI
         fDZzi3J9RiUDhiSIL1VSfCxvFkyatk+iWKh3lga0FQfa6um80ehhRG/o7VKCoVjAvcCI
         9i/vL6sNcr6gAe68lm7IMHN0kPD4LhQ78nMqZWcUayLXuQOK+GMpl6o/35q0Zl79z3x1
         RUNhZzQNdRw1HEq9bdCH6EcGJllMT22Cwl7GiYdFaCtLFaOhrR85iE/Y08bzTVId1MBS
         yDhT1xMwDn83Z3Oy7qMRzGDb909mrwcT4A04t6pe7mEgTZdFlblsYdpv8DkXmTssk1n/
         xfZw==
X-Gm-Message-State: AOJu0Yw267tmh9VWFjJPOOf77PIecfuhhx+KQseDNjFBS3n+z1nylA17
	QXnP0VanvoS50AoO3aYAYGum8HyMkWisV7pCUmDHAC5+o26kIH7gDttguyvb
X-Google-Smtp-Source: AGHT+IFlSzQhApzm1EKNImqm4lZydLIa9auqt57/85IH9msnO3yTo1pOmAlArKSRBeE2qxuwZpYRig==
X-Received: by 2002:a05:620a:4588:b0:787:a692:9824 with SMTP id bp8-20020a05620a458800b00787a6929824mr11421413qkb.9.1708961531228;
        Mon, 26 Feb 2024 07:32:11 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id i25-20020a05620a0a1900b007878610d4d0sm2551988qka.66.2024.02.26.07.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:32:10 -0800 (PST)
Date: Mon, 26 Feb 2024 10:32:08 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH v4 5/5] rockchip.wks: wks file
 cleanup
Message-ID: <20240226153208.GE32880@localhost>
References: <20240222170415.7061-1-twoerner@gmail.com>
 <17B63E2E80BDA052.14827@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17B63E2E80BDA052.14827@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:32:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62612

On Thu 2024-02-22 @ 12:04:15 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Cleanup the elements of the wic/rockchip.wks file so that they take up less
> horizontal space.
> 
> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v4:
> - updated for latest rockchip.wks
> 
> changes in v3:
> - tweaks to accommodate the existing changes
> 
> changes in v2:
> - add Quentin's tag
> ---
>  wic/rockchip.wks | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Applied to meta-rockchip, master branch.

