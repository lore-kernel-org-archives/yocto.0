Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3016C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 08:35:49 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.10682.1716453344210572834
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 01:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BDLfjIWH;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51f174e316eso6924226e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 01:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716453342; x=1717058142; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Y8vYyXPXWWUeY48qDX8keo86HqZX9T8+0brj/mq+Pw=;
        b=BDLfjIWH3hxTm0qpM7pSuICMM0rRvJDxtkrnyBOcznNM1eFgk8BYglB8ynT/Cn/O7T
         YGxzRaVPCZEPU8eJcIJGM5WR5q81l1GVO2MxwtQmnJCzSdp6+yMk1HocTXoNza6xAOA9
         sBZZHt19l4IlDX22AO14qeM+euc3LygKGrO3nDCdxxjROnxMWGuMv4D3Fo2PJvimejgA
         7fwk4l8oPpbk0qtKv7kuoY8hBW8qbW7PmsyZ1cMq2RQ/7QxeQs1e/yVwAi53Hy9OMzGT
         l8eEcfJJRbnlAWDVVTOwJ/TKDm0vbCYJLwxoRGXMO0hBd85C1AmLcCtZosBD9JMsQsF+
         tDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716453342; x=1717058142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Y8vYyXPXWWUeY48qDX8keo86HqZX9T8+0brj/mq+Pw=;
        b=RU4Bp3oHhunOz/AC6jx4I8JJ74G5wtdMM9oIBBNObT/9PH0GNnMh1vy+hPwbx8Cscr
         ereVnY/qpcoLy4eyR2DPHO0rHn+U/qNIMWqZ85LlFPe5/9H1XDI6FiocLasf3igrN507
         DgDreg3MRy3iXoYKmMp9Yr6Vi2FbYi7x4SAUVHmNBfmbFy5UhwkOYa6+Vu7Pfx4sMIee
         lIQbsq7PT4UsoqpNnrUew4z2vSMnXlg/u6I6dyxzgS9sihvodJmZ50Wnh1l1o+QKmKEX
         Ije1MrU5FW7kykSxIb8Q8zQEFho04D/fy0uN3DbhcH4XpKWl42GIlziP7w0et++51bOw
         fOCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5OmdfYQcxbh5v5ipaQC5dEskNeuvfq+WnpPPSMSO2I6LI92Haf59kcU5goaqoeFEIuJoB+B5FGqfFDyfsYyWHUD6Q98Z67leawI+v
X-Gm-Message-State: AOJu0Yz654CjeHdQmNYuanXItn87jLZNTImahVe4xXB04DBg+nqIunF7
	pP4QmaOhNWwXKJoI6Y+elqnKxZyrdgD8AaybbCJg1E2Dytp8dNsmq4w2d3Bd1S9q0lmroCHe+PN
	jtfbkgPHLhgF4KXGX4R6rI0sXPFY=
X-Google-Smtp-Source: AGHT+IFCWgD4oEiWAEF2VLLDhaZbNNklGuMWPrF0S16ZNqm9YFOL5O1WBYdCY3+H/kPP4mJYagD1KBRL1MvxOkMwtAQ=
X-Received: by 2002:ac2:5f69:0:b0:51a:e03a:aa15 with SMTP id
 2adb3069b0e04-526bebb45bamr2309701e87.5.1716453341823; Thu, 23 May 2024
 01:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj84YtfRPXWm7c=DV6mOeQwVJaKLyeOHd7ni6PtZYx88BQ@mail.gmail.com>
 <6a6aaf4acf3baf2406789f7d00f4f07ee2444d95.camel@linuxfoundation.org>
In-Reply-To: <6a6aaf4acf3baf2406789f7d00f4f07ee2444d95.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 May 2024 10:35:29 +0200
Message-ID: <CANNYZj-DL-vo-7kdmij6Rze8J2gy1MYmdfOVGN6F7-73dVdbFw@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: controlled deprecation
 process for oe-core
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 08:35:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63174

On Wed, 22 May 2024 at 10:24, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> So yes, there may well be a long list of things you want to remove from
> core, however, we also have to think about the project's use and why
> people use it. It is often because we're able to support many weird use
> cases and interesting scenarios that people do adopt and use the
> project. I don't want to have a clinical core that is so opinionated
> about how it should be configured, people can't innovate or experiment
> and go and use other tools and systems.

This and the rest of the message presents the project users'
perspective well and the arguments are solid. I don't have any
substantial disagreements.

What it doesn't do, is acknowledge or mention the maintainers'
situation, and the unhealthy dynamic they find themselves in. It's
nothing new to you perhaps, but to make it clear: appreciation rarely
if ever happens, but complaints and demands come steadily; work has
been routine for years; asking for help is met with indifference. All
the ingredients for burnout are present. And we're all left to deal
with it on our own, developing coping strategies privately.

Lately I've been feeling downright *resentful* towards the embedded
"industry" and the amount of freeloading they do. So this original
email was partly born out of that sentiment: try and see if I can do
something that shifts this balance, particularly by being able to say
'no' to some items that are in core but in my view shouldn't be.

Mental health is not a privilege.

Alex

