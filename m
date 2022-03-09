Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68938C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 02:13:46 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.1216.1646792025352388305
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 18:13:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F+3Cto7s;
 spf=pass (domain: gmail.com, ip: 209.85.160.175,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id a1so771555qta.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 18:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KC3O/hj+o4jnWQGyl5MF6flN5d28j1wtaUbXmC4RYlI=;
        b=F+3Cto7stYILdT6rXht2Df1Aboe1ycUNwphMVDRjAvxmJimNVjfJewNeFpQpKtb6Rx
         /eaxw8OC6MijyEV9jzAzEa+YgC0Crvj25W01Bz9b5G1YmcpajhpD67jEw56R3ohVRBpH
         WdZwRUlGzHQiTaTZzMN9Yq1BGEeC2p31HuYorO1igUOf9KK5d71JCwc5oQCwG3Wc2FHj
         YI/jp3ySunIdlfAfg8sCB4ZCv0eQEAS7ZaKGr96RXW5/d6MYk7liNEFIK9nKKCkys9i/
         6Fpw+WxV8xv17adiWRve7JX0LWEUKyhuV4qciBzvwh387+RL1AJG84qb3Sen1Z6ownij
         zR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KC3O/hj+o4jnWQGyl5MF6flN5d28j1wtaUbXmC4RYlI=;
        b=NBbPNCvnQuMR2DGAip0tDxwUk5WtSAu6VXsaxT/OIpxSZk/hwOKpKLYSc7+hd/BBER
         00feRmeUeUSt2X2xzY23FxtlLieuFVC1n7cENsSZkJIaXbcgZWh1wRPXt4YohVknFh3W
         /YAYjV+Bcy/IMm8nMz9kgurF5bCeTI3QvDaeqzjECt2Fb4Nojd9VTdTdhxCcVf6MkN00
         4JeWeIfif0NPLKszczowBUbQHDp+CpARt4ELdTCUgACReJiWahvSW+3sycfjvSjaQZny
         21W2mgwk6vvyrbsEzY6AdXuNf6qtoLL/BAkgslCu/WOyue1TGexxYC9sdj/uCKjSZsIw
         hF+Q==
X-Gm-Message-State: AOAM5324XL636T7KdMuvvDCM1v8qm30M4BZ1NZqVyGIV5JQjdwYosAwi
	RPvw7tpdXstowfRp3B91+/ncVbK7MZw=
X-Google-Smtp-Source: 
 ABdhPJy4DfJMfYcTJqEv8Z8JZDMhFuqVQJRKAnoxAHQJsGbeTb3XVtVVW1xG7OKR46Fk5HLH5ayMNw==
X-Received: by 2002:a05:622a:1449:b0:2de:2c0d:e3db with SMTP id
 v9-20020a05622a144900b002de2c0de3dbmr15831942qtx.39.1646792024183;
        Tue, 08 Mar 2022 18:13:44 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 l126-20020a37bb84000000b0067b3c2bcc0dsm365765qkf.1.2022.03.08.18.13.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 18:13:43 -0800 (PST)
Date: Tue, 8 Mar 2022 21:13:41 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] wic: add e2fsprogs dependency
Message-ID: <20220309021341.GA6892@localhost>
References: <16DA76A5AEE92D92.8112@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <16DA76A5AEE92D92.8112@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 02:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56397

On Tue 2022-03-08 @ 12:04:15 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Started seeing the following error in my builds:
> 
> 	 ERROR: A native program mkfs.ext4 required to build the image was not found
> 	 Please make sure wic-tools have e2fsprogs-native in its DEPENDS
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-wic.inc | 1 +
>  1 file changed, 1 insertion(+)

Applied to meta-rockchip, master.

