Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9924C433F5
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 15:09:11 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web08.7940.1632582551026560858
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 08:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mXTY9ot3;
 spf=pass (domain: gmail.com, ip: 209.85.160.172,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id x9so12474843qtv.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 08:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dazbAihhUxuP+679rrq8AZdfjbeZe/IwnSwJmF2j+1s=;
        b=mXTY9ot36DjCUHp/bILTALrCC5dZByV1xFY4UMWjzz0tlFWn4sAPA9sHHKRYeVGoJn
         tqPmuY+gX6ztkkSPj8ijpVLNr4q/bWdopSICLQrEH3ByYWpdACu4ALEIJLgomZtuktkJ
         5JtTKktB7lcHrgKuTkEC6o7atwabu7KThxdeX1rf54wdpUb3liMzPirT7HJ/ZqI4r3i+
         RPUKa/SKIfS0IUPSiFJMhXeWglryZ86ec4HIstFZzFesIrAVgRkNV8ShnJ18SCUxYJ//
         IEGYKdDy84T3YbAv2xXJayeCztCic1/JslriCagMUnnppTby01QR8dSYrR5yOsVHb2yw
         3lQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dazbAihhUxuP+679rrq8AZdfjbeZe/IwnSwJmF2j+1s=;
        b=li9JkSw04TxajQ5JT7NZkq/W2K6JEo3mDpMgL+onyp9Y5G+jpogmvqwlRkuUrYX0KD
         iBwsuScqkVUIIt1nVpynBuivc3AGilToGVjug3KseWxmgNSrvh87YvF35YC9+qgx331v
         THcTo9gQjPQeDpOkhcw/mx36STsB+KM5PDYuK557lheDmsqhCY0TF3b5TSrR/UhreEDr
         Zjfx7wpvBjgP0hy4lp7i4TvqqDPp2xNVDwFOpMVMH+NNhICTqCvwAQebLLHyY/oTpxQY
         abXp9lD7UrIpQMFxCaiufHeczALNeYW6d6tb0bpBwf527I0NcrTaKSqviEJedv08MQQy
         8/jA==
X-Gm-Message-State: AOAM531fBqMrZqghjHEV97cIIb0YAa4Q7n6J5Udk1dUjQnqXwzXTpz8O
	0gwqlMg6IzJBOs0GgAoaJos=
X-Google-Smtp-Source: 
 ABdhPJxzknwPX3ta3bF+O/ZCCVcbsWGTWO+KWDxJudgVJS/1gli0Q0NiCLVz5bK3dRL/Zj0sHLQTOw==
X-Received: by 2002:ac8:4243:: with SMTP id r3mr10210338qtm.187.1632582550181;
        Sat, 25 Sep 2021 08:09:10 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 u189sm8561014qkh.14.2021.09.25.08.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 08:09:09 -0700 (PDT)
Date: Sat, 25 Sep 2021 11:09:07 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
Message-ID: <20210925150907.GB13525@localhost>
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
 <4960bca2-905e-9fbf-3ccc-93483c838655@t-online.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4960bca2-905e-9fbf-3ccc-93483c838655@t-online.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 15:09:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54851

On Sat 2021-09-25 @ 09:56:21 AM, Markus Volk wrote:
> 
> Am 23.09.21 um 22:55 schrieb Trevor Woerner:
> > We can add the --use-uuid line to the /boot entry if you really think it
> > should be mounted on boot, but we shouldn't use it on the others and cause wic
> > to generate a bad fstab. There are examples of other boards that don't mount
> > /boot by default (raspi for sure, and I think bbb too).
> 
> Could the solution be as simple as this?

Probably.

You'll need to re-send this with a better subject line and commit
message so the right people will notice it. Otherwise they'll think it's
meta-rockchip-specific.

> 
> From b8ba56d84fbac53901e5b7ca122498320e51fbf4 Mon Sep 17 00:00:00 2001
> From: MarkusVolk <f_l_k@t-online.de>
> Date: Sat, 25 Sep 2021 09:21:15 +0200
> Subject: [PATCH] wic:direct.py: improve filter for fstab update
> 
> Signed-off-by: MarkusVolk <f_l_k@t-online.de>
> ---
>  scripts/lib/wic/plugins/imager/direct.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/wic/plugins/imager/direct.py b/scripts/lib/wic/plugins/imager/direct.py
> index 9d10ec01d0..15fa47356f 100644
> --- a/scripts/lib/wic/plugins/imager/direct.py
> +++ b/scripts/lib/wic/plugins/imager/direct.py
> @@ -117,7 +117,7 @@ class DirectPlugin(ImagerPlugin):
>          updated = False
>          for part in self.parts:
>              if not part.realnum or not part.mountpoint \
> -               or part.mountpoint == "/":
> +               or part.mountpoint == "/" or not part.mountpoint.startswith('/'):
>                  continue
>              if part.use_uuid:
> -- 
> 2.25.1
> 
> With this patch wic only adds the /boot mountpoint. The invalid entries get filtered out.
> We would then only need to set --use-uuid for /boot to avoid the system from crashing if
> 'no-fstab-update' isn't expicitly given as an argument

If (when) this patch gets applied upstream, then we can remove our
work-around.

This is a fantastic find, I'm guessing other BSP layers might find it useful.
I was thinking of investigating adding a per-line "--no-fstab" option to wic
to indicate specific lines not desired in the fstab, but this looks much
nicer.

