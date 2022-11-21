Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22BA9C4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 19:32:28 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.3713.1669059138020595005
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 11:32:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NHldheGK;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id c7so9342171iof.13
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 11:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zkenk5JQ+I5hOINo6Mi+Er2ZHBJ4Wo1MILUfIQtlf84=;
        b=NHldheGKwdp5Yj/BV78Muyj9KcNYBQN8SiOlSj4Clf/HI4uTZdnQIkFX10Jc6Drsjk
         khG+p5v0FtnL3q+Tmf5Q0CBU5JRHp52pzf3Run1kAwm24JTBwqQKhF+v6kn/+PId+w1a
         1wWzLw80ZhKwe1Ojot5ExRknWL2gXUZuOLPGKt5RMdjLYUH8fdL9WCrr5bm+QQfdYkUi
         bQmuTef+OsA5pmTqwTOsKyVZ6PqMolFFW4+UoXa67LYxuZzUqHekI6ni7br6hcdmUSlc
         /wbGZscZZam4bvehVGbFPfDc8O8dNPXlOoQTJN16lhHTqm6kfjLCY6+RFbJlwgXDwmnR
         1EBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zkenk5JQ+I5hOINo6Mi+Er2ZHBJ4Wo1MILUfIQtlf84=;
        b=PyHk70lkmWHpw3RGEdMzx7iUhBoKhS3X1q31D0VedXzKp5prJPEG5nonplsu3bY3bm
         VkF9c08KLlKucwr5f7yeE64Cjs1Ibv2vPrawZnAWeN1Qzm+f0To9sGdCkLHVjbsenOTg
         YhemIDOJjG1rzHejbplgd4BueoH2kW0nYg9Ujta5/hJ0WuVdoyBtYpf2Fcie4kULLgvA
         Tl0LzfwSJ5sOX9BIgn9TaFwvUQW1d6q7Fx5AqAChvh8Sb7yrveq42X4r4uKIv59whuhX
         13HP/VsvsKwVt7xBfN+WiYzmc2jpl08AoVjYVjt0eGaQZnjZOf7cZS682XGWvwH13bm+
         NWVw==
X-Gm-Message-State: ANoB5plGecY/U4C1v/fh22GvGXwM29toLr0YyxsrtfIAE5Hck7JDuHxF
	oEzoBIvHTP6IpWRQuCHgFMMvCCu8IE8=
X-Google-Smtp-Source: AA0mqf6RgvBPutzsu73zQe+c2BQsfbPAD+hatj8k+dPWRUOOLQXL1bEnLQrKTqRN3dR4vq1oXSbfew==
X-Received: by 2002:a5d:980d:0:b0:6a0:ee21:53fb with SMTP id a13-20020a5d980d000000b006a0ee2153fbmr289395iol.190.1669059137239;
        Mon, 21 Nov 2022 11:32:17 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q23-20020a02b057000000b0034c12270863sm4598121jah.80.2022.11.21.11.32.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 11:32:16 -0800 (PST)
Date: Mon, 21 Nov 2022 14:32:15 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rockchip-defaults: remove
 xf86-input-keyboard
Message-ID: <20221121193215.GB7443@localhost>
References: <1729005C5E956077.29986@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1729005C5E956077.29986@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 19:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58609

On Sat 2022-11-19 @ 08:45:18 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> xf86-input-keyboard was removed from openembedded-core at its commit:
> f1d7c33b64 (xf86-input-keyboard: remove the recipe, 2022-07-20). Therefore
> remove it from the XSERVER definition.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-defaults.inc | 1 -
>  1 file changed, 1 deletion(-)

Applied to meta-rockchip master (with Quentin's Reviewed-by).
Thanks!

