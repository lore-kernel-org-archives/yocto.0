Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D6B8C433FE
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 20:24:01 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.2311.1633465440483461266
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:24:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=owCx12Yi;
 spf=pass (domain: gmail.com, ip: 209.85.160.180,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id x9so471221qtv.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/C/5e1nJV6ZhYMz4Hckz+TXXYYKqg7lkq5tTRCHmVCU=;
        b=owCx12YiXdKKPxr/nb8alJ3VO+8ttAzZ/7W0IDer8qKZ7raU81gFodI4l4NJtN4eYP
         LYo5uWJAPLtekJZhuTbslVpJoq4oydSflALmm2Cyd/C47xY1OhBWUAcx+0e+CG3PlJV/
         kGdgYXHFoz6fKH2i6GasH6f/C/2rWLfyYeaeU8fnbHiT5vPwTxttC1wj4GIYt4Xsi5Kd
         jbNgsNSu/PQhoqWvkaKjykaRXJJ/yATifV52MjOxZxgsZPKQFI5RHTtfKUe0YvTcWMWb
         KjeEzkdiEMuoFqkw/Qijgia6DS8RXgZltV494t0Gi0SeUkMhSjtdFzdTMc9lZFIaVRM7
         g8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/C/5e1nJV6ZhYMz4Hckz+TXXYYKqg7lkq5tTRCHmVCU=;
        b=CORHARg0ruTDzRzZBPFanXkLM0crh2crGYwilFyDEKvT/jaKKUvnq/aH0RK0QheY6O
         mJzZEP8ll5+bUdWN2W+3PrMm/I1Yv8hqzZpsrwz06nP8B5EJla8P5bmN4Wv3kgqFkfjh
         6TbWTIyMQwC79PJjYFV+dTn7sROpK47cCTUTfYrHmhb+DBfM7yOIl7xZbb0Ad8gudOeI
         DilYWTmw6k8ln/2k9sDZ1jd/dzGxBngIkZMlnMwkCKD547kmCGF6LXiWJGQnk/qQktmR
         e9NtEalwvKxhEIdXelGtkqcEyPlCtxpsCUtCSNeKoPUV+3E+CQ62dpFCtn29jmKqdIdU
         9m7g==
X-Gm-Message-State: AOAM531VjA6QiIcSAs76KN4UeksQ7AEKBmsWCyakzDdW0gvgxSqc9L/W
	YM/QABgiPGcKeOlhhLNhcaYJ5VnrLLo=
X-Google-Smtp-Source: 
 ABdhPJwpzUOgBcHd7TfCbci8X2u63uo68sYyPRaycKSJwOsblAtiDDCRNGEqM0msArtybpXeZd7lfg==
X-Received: by 2002:ac8:4312:: with SMTP id z18mr21682305qtm.20.1633465439168;
        Tue, 05 Oct 2021 13:23:59 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 f24sm11065153qtq.25.2021.10.05.13.23.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 13:23:58 -0700 (PDT)
Date: Tue, 5 Oct 2021 16:23:56 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 3/3] nanopi-m4: add common override
Message-ID: <20211005202356.GC25572@localhost>
References: <20210929052938.36819-1-twoerner@gmail.com>
 <20210929052938.36819-3-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210929052938.36819-3-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 20:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54967

On Wed 2021-09-29 @ 01:29:38 AM, Trevor Woerner wrote:
> Add a common override for both nanopi-m4 MACHINEs.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/nanopi-m4.inc | 3 +++
>  1 file changed, 3 insertions(+)

Applied to meta-rockchip, master.

