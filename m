Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694F0C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 20:23:11 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web08.2205.1633465390388201716
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:23:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IuIcPpYT;
 spf=pass (domain: gmail.com, ip: 209.85.160.178,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id e16so366948qts.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ceTO6Zp50G9GFXSfh/FCjE3hpXIiMo7W0Q84lGdvapM=;
        b=IuIcPpYTPz+FyVl4FSyPTq1W+E/SYtmK6v35kfV9fV8EQh7gJc/NY+Z0IrOWIv2Twq
         SX/JX3eRSd/XdScmrt2FhcHoOpYGAUSG9OUSXSm8/hgjm3AKl0kk53J8zEdEjmCTelSD
         OK3B+ZKxkMq+RsNK6SGnzQ/eER3+hkrNu1y1QA6wjaYs1XvF11SF9n9cbQTvxA5gcINm
         Mq583C/muMEXjClh7/87inOu91lOlZ5vAjC6qiXJ6rD0pKK99vrq6okxKR6smIjiVTl9
         6huDOis+vsEaW6G30cYysdh4rVN/kE7/dlqDLv1IvQ1UOp6b1wLI0TjOqlJEIvgHUTAY
         VFBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ceTO6Zp50G9GFXSfh/FCjE3hpXIiMo7W0Q84lGdvapM=;
        b=rLO76MDyW/Ki9x3+X6+++qj1tmcM0wPu/KBmjvpXakpsim71zHdHqV8y66g3L+m28I
         L68ezRQLdIAtlyXEs/Lmu1dmzQPpScgOGSJfJjrPufRCOxa+mwQIPMyyhLXtq8TtzXrX
         foF2DSlhR7P/qez2GCdkixMp1eK5lk7AL/CcbEu4pTeKYxByPric4LEKFhWlT/VNBdKz
         N5C0xqQMN2g7umkzcjWD/XNtUhDHl+9CyvvsFhvh7s/7Ko+h+qpj5C1YwhwoYykO94ap
         btIeRdKg+Q9xm/xP4xcnR5IZpHFs2+b6/ZliGRFTEkePzEyIPtHIsyULQRbQ+R6m9DZJ
         OEHw==
X-Gm-Message-State: AOAM532fA0kOOsuT3VraEY6JBR7LPJU1s/HMsiUzu43qE4fb33BXJ5Jb
	oOP/FoBvTDuIiexVDjmA7nYCEo7BIhE=
X-Google-Smtp-Source: 
 ABdhPJzvWeDdeHcjpDPx3yY/mNveoXrFNX8M/pvoq4YHJwlQNtOyy/Yd2KqMMyYvVcPPNGj5Fglkzg==
X-Received: by 2002:ac8:d3:: with SMTP id d19mr21993317qtg.409.1633465389249;
        Tue, 05 Oct 2021 13:23:09 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 g21sm10959669qtq.53.2021.10.05.13.23.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 13:23:08 -0700 (PDT)
Date: Tue, 5 Oct 2021 16:23:06 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 1/3] linux-yocto: remove mmc aliases
Message-ID: <20211005202306.GA25572@localhost>
References: <20210929052938.36819-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210929052938.36819-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 20:23:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54965

On Wed 2021-09-29 @ 01:29:36 AM, Trevor Woerner wrote:
> Now that we're booting via UUID, we no longer need these aliases in the DT.
> Personally I wasn't able to prove to myself that they actually worked (at
> least not with 5.13.y) and fiddling with these aliases didn't seem to affect
> the mmc probe order on boot. Additionally it looks like some of these aliases
> will be landing upstream shortly.
> 
> Build (core-image-base) and run tested (both systemd and sysvinit) on:
> - rock64
> - rock-pi-e
> 
> (i.e. the two rk3328 MACHINEs)
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 -------------------
>  recipes-kernel/linux/linux-yocto%.bbappend    |  3 ---
>  2 files changed, 30 deletions(-)
>  delete mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch

Applied to meta-rockchip, master.

