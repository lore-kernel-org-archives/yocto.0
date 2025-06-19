Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33BC7115B
	for <webhook@archiver.kernel.org>; Thu, 19 Jun 2025 17:53:12 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.6023.1750355582518812113
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 10:53:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mR7Bi8AO;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6fad79433bbso9732866d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 10:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750355581; x=1750960381; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6sF2P2iqS54SpCitNC4Sjr5UDHuj6ip9nDki2vdusf4=;
        b=mR7Bi8AOJMx9267Gp/yGrtXk8/qJzZ5xd/iTQshMt84BgoekPvA3mvrcFyTLYzTdMg
         Ak6gQE6RaAflOyriCKKEoj/SHZjTgH17ulY4MIuxDT0edBBKyeIxnk3KpNkCuYurbmmG
         F7tGFkWdZ1owHhTEXDqge/ZVM+ITJBP1NG6gyr4DNTl8Mc7IwoodUodOCy/HYlrPpR0U
         QnoIRomPd3ikkaF84zE8XjF0mEiaomKwAjIhh61iWqC3A9MDTU3CITx9AVo6DEolpScN
         s+2sARAS95+PPve3kR07dn0HcGlwpHqvNrw61lLsYpV0GFiAN0rRvdcyqnbKJfM6U7Ad
         dX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750355581; x=1750960381;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6sF2P2iqS54SpCitNC4Sjr5UDHuj6ip9nDki2vdusf4=;
        b=A7VNtws8TGxDuasuH+4J9Vau5cXan/T1f0vpGRww/X54P6RfL3R2ffp7d6G4h7opgl
         oSZGnviUM+LmCLq+3yeU0IolS//M1X/FrgjK/F+g2hdkZBnUU8pZpSQMUAej75QU3yJ5
         4sE/IbVetwa7+C5CY+kLgEP08KZImQPKIdnB/vAGs5vtmb5DihpGMtH5/ShTKZdxeWsk
         qYrAh8Ayxi9x0LpDjWeFyvhDpKm9mF0Q06LLSIw8MUtknhT07C2AU94pxgHgSDOGrIUf
         Aq8WudCafwHOoiU14MwnEaQ7HVTv84qqhKFsjxQkx4sg7F4idWh7vaeuWXyJoGoJTx+w
         AQrw==
X-Gm-Message-State: AOJu0YzQ/2MVZ1OLMsRjuj84NOZPIKc2kFbG+B11RJesMNXL7RGLNBCI
	T9e833Th256TP+m1mZOX198losC5uV5CsgMfvci/D7A2tpGp5xxIePELqJUvB8kNXzNU6k0+R/n
	YTNK/pKWpyQfU/5Qgi3NeXwBUEMAYJV1OTq9Pc0Q=
X-Gm-Gg: ASbGncuerZnjHMHG4RznQHyphsvMMRIuGXqRZuhb/ZzSauIc2MgpKoffAtEUu/IYsQd
	u3dpPLsSSpp9ToJHLpG67TUVSXvLvsj18z85Mq61IYzIORgcf+pnrCPBiv/HSNyunZ+3yqgjR/v
	2Jhfl/NYfbH5GaoFGxXzrgN70as0ECH8qxCGrCHdWDjxnnAL0mSWi1b6bF3nKckAwtNytnB+gBI
	noLwA==
X-Google-Smtp-Source: AGHT+IFoHv1EeDz/CKw2Z2psgUMXQ0FIPp6c5ny+SSgVFbF3E9iKl8fi97+JqWZ/FOyWNFrMt9wJACjKc+X/XLXVaw0=
X-Received: by 2002:a05:6214:570b:b0:6fa:ce35:1ab4 with SMTP id
 6a1803df08f44-6fd0a46499dmr2672026d6.5.1750355581502; Thu, 19 Jun 2025
 10:53:01 -0700 (PDT)
MIME-Version: 1.0
References: <11DCDA4A-CA9F-4D22-A6BF-D0FD45D75AE6@arm.com> <17942.1750354514825841214@lists.yoctoproject.org>
In-Reply-To: <17942.1750354514825841214@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 19 Jun 2025 19:52:50 +0200
X-Gm-Features: Ac12FXwDm_IyoJGwdLkeH6IbgbC9xk44x-mK3mskL9Zfg698ApxoccxdR4TPrPs
Message-ID: <CANNYZj_Aq_XCa_+QNx3-a=Mih0M-g0XYA6nbQHFr5Pue=dPdMg@mail.gmail.com>
Subject: Re: [yocto] do_unpack:append() with dependencies
To: yocto@lists.yoctoproject.org, H.Wulff@kruss.de
Cc: Ross Burton <ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 17:53:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65527

On Thu, 19 Jun 2025 at 19:35, H. Wulff via lists.yoctoproject.org
<H.Wulff=kruss.de@lists.yoctoproject.org> wrote:

> The neatest thing to do here would be either adding iso unpacking support to bitbake itself
>
> I was thinking about this, but I couldn't find a starting point in the documentation. Do you've a starting point for me? Documentation or file would help.

The file is bitbake/lib/bb/fetch2/__init__.py, look for def unpack.

Alex

