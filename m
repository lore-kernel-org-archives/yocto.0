Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F4E7D0C1
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 02:47:54 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.13646.1695350868523102663
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 19:47:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RsH0XgED;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-417ab9cb14cso10713211cf.2
        for <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 19:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695350867; x=1695955667; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1pfIHemlYs/lzllDZiXZp5Fqph9ow6dZBjOhqQ7K58=;
        b=RsH0XgEDRkZXnoNktd2+ETa1+qru5s5cA/CU/mP5QwO/OVXpzcGwTyNeVuUOoeDn4B
         0G3qBNgUT0VVD0tccWg6BgdjC3nz2ixj8LivelFTF2mDLuK1vrkdXt1iC20HBadH1PWO
         gGM7K3jJBYejqwX7k9IEE5EHbeb3NFc8OdHP8CMYarQr0liemdoY89EV+I3LxmuJ/H2v
         uTitjGyImYaq8JfccdAFFlZbURE2N4e4Hws+/1zwkviGieEjogxApcDObLvJ3sGhus/9
         ANa56u2ybdiuqw2Vdbq2VEjYguMWuK0JvQr4ahlLhNlCK1nKMYyN0SbsUN/teKvw2N5m
         P5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695350867; x=1695955667;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1pfIHemlYs/lzllDZiXZp5Fqph9ow6dZBjOhqQ7K58=;
        b=RKGk9HSXBhce7wBKPk467UW9PnDoVbLb3JGb4jgKOui20QNse6/vMQmyLD8QmMOTp1
         87Y2FsIidOJ9RTM1IH0GfI23k7Yafw9ne5v/3COZYHXuZ9IQC11HwoqRPWyg/7N6N4O1
         dwPkbxUFQrXMl7dQcFZojH3SXy7P3kUDfmAozrMSY1nKM+hO4m6YlJsezeNAdQR3JqN9
         IAfySgThvQo5jBpHZaBCwJCvolktMdKbQbO2GW1ogsWPqcKismu7iwuVMi1T5naEfbHl
         DA4RLXXFdprhmFhwhR+FZwHJK6olI8Mq67Fc1L1+LshIpWBhFrVxeSXSH5tFZVuHcqeM
         KcJQ==
X-Gm-Message-State: AOJu0Ywb1me3idKYoSKGLajkOzou4uNlQXD9ZV8NQMj89OmhL3ZHqota
	zAmIkBDtLVFk1JPU32oOR/RTwJr6LH7W0g==
X-Google-Smtp-Source: AGHT+IEmyrlQZaL+cDe5nAhxXkR3CiDcD362eJC5LmiEYivMgTpmsELKlOAQSHPXIIoI7cirQADsWA==
X-Received: by 2002:a05:622a:1cd:b0:417:a209:c258 with SMTP id t13-20020a05622a01cd00b00417a209c258mr7572912qtw.41.1695350866713;
        Thu, 21 Sep 2023 19:47:46 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g7-20020ac85807000000b00400a99b8b38sm1117583qtg.78.2023.09.21.19.47.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 19:47:45 -0700 (PDT)
Date: Thu, 21 Sep 2023 22:47:43 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2] nanopi-r4s: add
Message-ID: <20230922024743.GA17905@localhost>
References: <20230919130115.17484-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230919130115.17484-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:47:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61073

On Tue 2023-09-19 @ 09:01:15 AM, Trevor Woerner wrote:
> Add a MACHINE definition for the FriendlyElec NanoPi R4S
> https://www.friendlyelec.com/index.php?route=product/product&product_id=284
> 
> Include a device-tree patch to enable the 2nd PCIe ethernet.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> v2:
> - rebase on top of master
> - s/r2s/r4s/g
> - include DT patch to enable PCIe ethernet
> ---
>  README                                        |  1 +
>  conf/machine/nanopi-r4s.conf                  | 13 ++++++
>  .../linux/linux-yocto/nanopi-r4s.scc          |  6 +++
>  ...anopi-r4s.dts-enable-second-ethernet.patch | 41 +++++++++++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend   |  2 +
>  5 files changed, 63 insertions(+)
>  create mode 100644 conf/machine/nanopi-r4s.conf
>  create mode 100644 recipes-kernel/linux/linux-yocto/nanopi-r4s.scc
>  create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch

Applied to meta-rockchip, master branch.

