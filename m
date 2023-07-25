Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5A91EB64DD
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 04:54:41 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web11.13982.1690260879017960793
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jul 2023 21:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=oAqr+Kmu;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-63d058b9cafso9529096d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Jul 2023 21:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690260878; x=1690865678;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZLBLuDsu87E+fiqTVqcVCT/UT9QWyaqF0AdJl3JopcY=;
        b=oAqr+KmukRw+Wb9Y6WsZJfXGJmUyGW8ndWDi/T7Jhm486/xYncdt63sj4qj/72YMTu
         7dLY1ngynAE4yt6Ymdec0CkIaGWIIfV1ZEQKjkW8i5entu4md9nGzIMJSQl6zJzmtBRi
         Sm9sfq88FrdHOpPR90npMIW3Apn/CedaMYjP5X2mQHLeUTchP42NtMY4VmK6PbMQlONM
         MNUCpNiSeonuV3ofVh20+63oBMyGCHde9uBQTl4WRlagHtz0Dx9HNFaIZawUkTEKjQKj
         bZ2SYGXrTaWmDiMkUyt49nXLLKKnhJbywNYJx3yAK7qWA0DFwJVs4UwVDCROn/siemyO
         QikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690260878; x=1690865678;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLBLuDsu87E+fiqTVqcVCT/UT9QWyaqF0AdJl3JopcY=;
        b=aD/C7agllkEiiaYmBNX1Iksjl72AYbufNmG2LrVMWKSdnWxsfgBn9cmewN5SS9ILl4
         ESb5iYJnnM3G99wDFkjwnjnzZcyLg95ZNjwwTE4E9IytqLKZsU0+XyIWIwin12UOk3vP
         1UgP3CqM3hDH+W/UsQpglgA8wczX114lW9pmdcW2bbMulXIEO1mI4paD2XGnkXjjHnzR
         s30QgRm0t94JyFQYLe6UZKrWOJNiTwYwdWpMzJIO7qDd830bZERtBo1xhnCasjaMzrPC
         01LBz71qzDGXf8orQBiRQmYDNmJT+lniV3nd4MwEoFwR6JvHVu9IZSCDSF5atT79y/S/
         SCgA==
X-Gm-Message-State: ABy/qLaBNyEJkkcgCPrLMDbAZ0hQNfwVLUVIdsigc7zeGGqEPI30coAq
	IJxTZhj9jkKcE1o7r6j/6cw=
X-Google-Smtp-Source: APBJJlE5C3psqGzoWordfxUf5EUpk3Ug0RyYoI3va6e+NGG0+hqszUo50cO06SGs7Hg3DuplzzFskQ==
X-Received: by 2002:a05:6214:11ae:b0:634:d868:f0d5 with SMTP id u14-20020a05621411ae00b00634d868f0d5mr1744992qvv.9.1690260878002;
        Mon, 24 Jul 2023 21:54:38 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id k11-20020a0cf28b000000b00636bde318bcsm1624873qvl.61.2023.07.24.21.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 21:54:37 -0700 (PDT)
Date: Tue, 25 Jul 2023 00:54:35 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Leon Anavi <leon.anavi@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a_%.bbappend:
 gcc-arm-none-eabi
Message-ID: <20230725045435.GA28694@localhost>
References: <20230723132450.61725-1-leon.anavi@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230723132450.61725-1-leon.anavi@konsulko.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 04:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60643

On Sun 2023-07-23 @ 04:24:50 PM, Leon Anavi wrote:
> Change virtual/arm-none-eabi-gcc-native to gcc-arm-none-eabi-native
> following the recent modification in layer meta-arm (git commit
> a64fb4a40d707795d9adb7736920fcbeaa7ce5e2) to remove provides.
> 
> Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>

Applied to meta-rockchip master, thanks!

