Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1314BC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 03:23:35 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.23285.1698895404763434866
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 20:23:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=dShyJKS4;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.178, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-41cd6e1d4fbso2416821cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 20:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1698895403; x=1699500203; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rhajoh9WlyEZ6AjYzKhJxy/Zboyvh742ydyfEJZfAUY=;
        b=dShyJKS4XXTkZaT6NYVrzwYC3vsLAwzokfkt3HEpsPf+D6boZhr4ClwS8gTJo1FZyR
         JJrmXd54g3K/H3QGeYemeWMORDbryRMAc22eiIdjYGafq/dG7pDJwE/o5/qptl6sONN3
         UYbhDj5uKl68dCTPfWgmvE5RCGo0zO0V6TaSZps+gGE+jj8F/U4SCCiyweog42ij/vl1
         zHdDPd/gopODdMbmBjcoQO4Y7hCIhmU0Hp68KgnNmEmoAuYjSEQLMAybEVM1wNvRQ+Qu
         cw6pEavlYElpA8I09jeKdgxo8FL2XW4djf542GO56g/2xJCnJG2tL1HhNahe4g9Men6x
         /0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698895403; x=1699500203;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rhajoh9WlyEZ6AjYzKhJxy/Zboyvh742ydyfEJZfAUY=;
        b=L9JBGHe0Rsca3M56FlYtY4SpvqFAIheXzRMIIXazMqI2EW2U9yU6gxDf0ea+tfbxC7
         s/ZBZPxVlNjy6kOM0I45stoDlBSNStKv4kG1CWjQthGhJJyxhJU+lQiayAEKzxUA4Zq0
         nvHHnEZsq15p0Ojl9OoXseIrb+jpairanTRml8MB9qfOWbsWj0rfW3v/MB3uS9lPrqqw
         8Os1NCBN4468Q4p9bUZJJj0Jfbqo5GoykHsC92cbQOv7u/17NtzyvMkew28s/ADVPF5s
         XUw+oBj1f8xbBdzi2RHyantMCyGwrsvgX7T5Mg73eSKiz0LsHGc3cNuyN6QuBg0D5UEt
         vhjA==
X-Gm-Message-State: AOJu0YzX5830of8CBJIeQM0eYxBd1kvPpvLk6I7aC4eRoJ8DgMhcemfE
	Gq+aq+Mn8avqd+pEoFDd9spn23iinia7aFSpTIY=
X-Google-Smtp-Source: AGHT+IHnC0xijQa/onRbfc2CWaYU/w1Y1WXSis0U5HE/Besf1NDgUff2GD437iT0mjHU0g7yRRIyow==
X-Received: by 2002:ac8:7c4b:0:b0:41e:1c47:50c4 with SMTP id o11-20020ac87c4b000000b0041e1c4750c4mr19991716qtv.60.1698895403027;
        Wed, 01 Nov 2023 20:23:23 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a684:4100:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id cm25-20020a05622a251900b00418189b689csm1948898qtb.10.2023.11.01.20.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 20:23:22 -0700 (PDT)
Date: Wed, 1 Nov 2023 23:23:15 -0400
From: Jon Mason <jdmason@kudzu.us>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>
Subject: Re: [meta-zephyr][PATCH 1/2] CI: Update to the latest kas version
Message-ID: <ZUMWI5LXGQYb7Tl6@kudzu.us>
References: <20231102030437.3857166-1-jon.mason@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102030437.3857166-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 03:23:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61568

On Wed, Nov 01, 2023 at 11:04:36PM -0400, Jon Mason wrote:
> Signed-off-by: Jon Mason <jon.mason@arm.com>

Here is the CI for this series
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/1058077201

As you can see from the branch history, these 2 patches were applied
on top of the zephyr version update series.

Thanks,
Jon

> ---
>  .gitlab-ci.yml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 2ecf132a6ff5..c94274cdbc2b 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -1,4 +1,4 @@
> -image: ghcr.io/siemens/kas/kas:3.2.3
> +image: ghcr.io/siemens/kas/kas:4.0
>  
>  variables:
>    CPU_REQUEST: ""
> -- 
> 2.30.2
> 
> 

