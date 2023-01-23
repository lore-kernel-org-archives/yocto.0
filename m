Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3439C05027
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 16:04:10 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.45945.1674489841635569931
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 08:04:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=EhJLDQp2;
 spf=pass (domain: gherzan.ro, ip: 209.85.221.54, mailfrom: andrei@gherzan.ro)
Received: by mail-wr1-f54.google.com with SMTP id h12so7270729wrv.10
        for <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 08:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qB1WmSjVfUbse1HtPJYe5W8iqv0jBz8Y/U/iS28H/os=;
        b=EhJLDQp2fc5yV69fFSSkviiFHEBr4T1or92y83qqkwlsrPvP8bvdqrWej46iyCKRZY
         m+fMnBpFj2r58omWDb9meOwl8AUBL0lUKz6HJh0CyH/AzNEUA4g8yVgVIOTEXaNiTFnq
         w30g0mfUlSSTQeX8vVUTjKKQ667lxaNQFBYcAcwl+mFJW3RSEM2T/6QcWgfvgzrLSiIU
         3dfOpyscQfowCBpe4S60GdqsOEPNUU2VhAREC2eEtd0CT0k2ybc385UlfWqnugpdZJaA
         rR/rAxS4XvOouCT53KwLI3zTgD1WC4gLKqPJyP4SwcxZJ4iQR66/8DMFYnltHP/D1GPE
         rXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qB1WmSjVfUbse1HtPJYe5W8iqv0jBz8Y/U/iS28H/os=;
        b=BqAivNfx0rzCkTAXTD2lNqo9mtQ0blvLGCQ5S7GGFAT2BnSsDTuSAjnhzTA6a5Bp5r
         zHdwjpT9TQmoS/CiROyS/WKdsL97a1aSv9TOSyLqQ64Js0AxsnMEUyJo6EEXvqsR9auP
         hlSpHVkYwvQZpQ+6UU4DmSVhUmWJNAe+QKHZ3BnLE6eQqdOS85VA41IePQIasBdLR3kq
         ds0wo9nUa55XF1pVaS3nZTAl09AXmqhF6o0F+cf9+wYJocoYCK4LgY/LhLFGx6Njcvcg
         1f9a51iNT7E91wTTL7Mdd39ztTB7ECchRjitQR+tbsjvXbBrwWLSpODaUpm1U9bAIEPE
         oLdg==
X-Gm-Message-State: AFqh2kos3+2fZjz/jCrWQ/Jr9JqBQAM/Dayj7AS8pB5WwAXB9Fu10yq0
	rv9XtBvjTSrb1V63TUzvKPkt/Q==
X-Google-Smtp-Source: AMrXdXuBkBUHr/W1yfzTSBGLltDbfgjx4TmjGCOzM2bU2wx/a2FI63rTbM45k4qxq5cBj++6O9eg3A==
X-Received: by 2002:adf:ff90:0:b0:2bd:de40:3a45 with SMTP id j16-20020adfff90000000b002bdde403a45mr21004709wrr.51.1674489839456;
        Mon, 23 Jan 2023 08:03:59 -0800 (PST)
Received: from qwirkle ([2001:67c:1560:8007::aac:c4dd])
        by smtp.gmail.com with ESMTPSA id k22-20020adfd236000000b002be2f18938csm6644766wrh.41.2023.01.23.08.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:03:59 -0800 (PST)
Date: Mon, 23 Jan 2023 16:03:57 +0000
From: Andrei Gherzan <andrei@gherzan.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Carles.SoleMendi@de.bosch.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases? #raspberrypi
Message-ID: <Y86v7Z+p68WpY13k@qwirkle>
References: <o9vf.1674467875781955712.h1Y2@lists.yoctoproject.org>
 <CANNYZj-yRKXP+eyEFavNthO6VmNfTnCbAbV3RnbwZq0iaT2siw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj-yRKXP+eyEFavNthO6VmNfTnCbAbV3RnbwZq0iaT2siw@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 16:04:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59038

On Mon, Jan 23, 2023 at 11:47:59AM +0100, Alexander Kanavin wrote:
> meta-raspberrypi kernel comes from
> https://github.com/raspberrypi/linux and they stopped providing -rt
> options some time ago.
> 
> Your options are to apply the -rt patchset to regular rpi kernel and
> enable needed options via custom .bbappend, or take linux-yocto-rt and
> see how far you get.

That would be correct. There is no support out of the box in the BSP layer and
I am not aware of any layers providing that. If we find a person who wants to
maintain a fork with the RT patches, I'm happy to bring it as an optional
kernel provider in the layer.

-- 
Andrei Gherzan

