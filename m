Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11201C433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 13:11:39 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web11.5336.1664543491614492934
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 06:11:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Edj4Dma3;
 spf=pass (domain: gmail.com, ip: 209.85.166.46, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id y189so1357201iof.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 06:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=HD/BYfREEfPxEH1O1L9M9Z+dLytxOA+yFzAbkespqwc=;
        b=Edj4Dma3ctfhdYqfL6e5FkaU2EcGXbRBn24LovKb+XjM/gmiRDI4jQXRBJIAbw2DNS
         p8TOXHDFaZyhW+3aEdZ8LENp9Oi59H45dwYzbZRdTMf3JOifSGl94C76Y81HBXmnKQNB
         wa4QBeA+lPdcJ3FizPw/npZsXknNfX4c1XM5v31wuhI3E6KChA4wA5wvUSOb0eKk7wdB
         xAsjcDTzOvrbyMwJiglRA0Rkcz7nXC1z0QsTJYHJ26ROkYx3lRK4VNQXexP5P7ma41Ci
         nwyMl9pAvOnxQ+iwm1eFPbrCc31JGoQ0oHgxM2NtJoB9UPOiQT2Kd3y5UPVLJqfdincx
         Cg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HD/BYfREEfPxEH1O1L9M9Z+dLytxOA+yFzAbkespqwc=;
        b=aJiEyock0LdUI3JpYM6Ljo/26tWrDE1HyDR+pneRW9V8jZsliw0ckcllnoJLxmb7My
         Fyaray/ZPce5+dZ8vjTVIUVqd01FUPm8K49Of4UM+mbZwDHXL2ZUJ9DacTNRPgCyYXs1
         hwwXchwSiIWLmkjNw+o4B4203A1aOTG8iGB2RoFpqfoDbLN7u0FjjIhY9usdmI/ynPyq
         5V2PJDNnnw+dimdExeYCqUTiOhCMhskWPrJrxLrm0Q/k2i4eXLbYruBEKDP3hcA0ixN5
         Gk61KZCvF5mazOI+KgU2NcWCbxb9PlPoJXJfZV3zQwBhAlAd9zZoMNP+siUo+f9pNDkS
         yUzA==
X-Gm-Message-State: ACrzQf3Kgl/abrWHo11tW9I6cC6j1HYt0tFgTfRLZnh5CBYkpKp8NsW5
	0GwwULD3hfbal8Ga05dJr61eNN5taEQ=
X-Google-Smtp-Source: 
 AMsMyM6Txsbqa+HYtOo5V5kYctEBde7b/aVMeSQwEj5POOI+YbcBPvgwTFIyclAycFgUHEqplpzsTA==
X-Received: by 2002:a5e:9e01:0:b0:6a4:f730:624c with SMTP id
 i1-20020a5e9e01000000b006a4f730624cmr3918225ioq.107.1664543490969;
        Fri, 30 Sep 2022 06:11:30 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a92de09000000b002eabb8e0f3bsm945062ilm.56.2022.09.30.06.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 06:11:30 -0700 (PDT)
Date: Fri, 30 Sep 2022 09:11:28 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] layer.conf: update LAYERSERIES_COMPAT for
 langdale
Message-ID: <20220930131128.GA2532@localhost>
References: <20220930115125.906161-1-Martin.Jansa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220930115125.906161-1-Martin.Jansa@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 13:11:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58231

On Fri 2022-09-30 @ 01:51:25 PM, Martin Jansa wrote:
> * the next release 4.2 will be named mickledore
> 
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip master branch, thanks!

