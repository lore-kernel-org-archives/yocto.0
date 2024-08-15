Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2A6C52D7D
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 09:47:48 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.119390.1723715264655734144
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 02:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nWhOG9l2;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52f04b4abdcso911349e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 02:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723715263; x=1724320063; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sKSaw7Z+W9eUtB3ZuETCIu5kv+GmyxHscImbGk0Qtzc=;
        b=nWhOG9l2S7cBrukzy/6ptaSF2yObfilS5shXNgMDrBsrYvWJiFNJ0RuEEAO0cLksp+
         5r/lB6Asa1+qKsiVrE4UtCgUxv0+KkinD+/Rmi0/jm48StiV7QOIAFUOGTkjsZuof2c8
         t8n28hFC2FmwyAhY/BRMScTrQiFgeLOwC9plfvPXUMdRRS8fAb/LjfR+b5q2k/P+Uhwj
         11nIXKUfhgK/fGDygmca5nyLpskSPokTw326w+lvKdF5i3auh8o9inyzKD1LAnxBT17g
         DmR0q5VztwTzGFkWql8zmECrxMeg+TrZgdqWJPAbr0b4F4GYrsNxv/ESEZ22VlYhAG5w
         UmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723715263; x=1724320063;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sKSaw7Z+W9eUtB3ZuETCIu5kv+GmyxHscImbGk0Qtzc=;
        b=VoQBFeNLEuinfTpDZNGWX3dYYy0KsYpLYSPpjlO9YEVX8AvFFYfvrZlonCJIL0Zb5e
         Lpc3dPMpYrumJmCWRkCL8pDi37Sy68wAmXT6c1MbV/JPmqyAkn+JJxn5sndvEnHWf4bC
         I8V1LOWjnFr0cm//YG8LO/0bhVv1x6g1hT66v3yyVq5BCAzlmlENatsTHn4+3lrmaEOj
         oG19rrtG+mohfSjIN/p72iZkcx6y2eiQpzBk2B/4jx1saSDJ4aebEl8+/yhKpgl0tOPg
         pS43weLP1YikM8dzChJtGHha9CAK+ASBtIfpDTbhIPEeA7gdRi2GGvMz30tsWtmOs7Ev
         KT5w==
X-Gm-Message-State: AOJu0YzzeiFI01J73AxXLl/KUmQscRM3lllilhwAhaV0jKR0ldWHBAVB
	jD6NEGtZCEMKt/iXD43C0muDIOpKRf0prwU0fQnLpJZjJGgMs2Z5GA6tvqR6H29OakJFrVhCqhx
	Wa82UwUO56u8y5Ucks2wvElxXHJxBAA==
X-Google-Smtp-Source: AGHT+IHqRYh0HVuTJWeE+GrLWNYKm+3piomZhBXzsaOoLYcIsjUO50UMz0iHQWeusEFQSaSQHKSY8WmxD+2mkiIQM60=
X-Received: by 2002:a05:6512:1154:b0:52f:cd03:a847 with SMTP id
 2adb3069b0e04-532edbdf494mr3223554e87.61.1723715262251; Thu, 15 Aug 2024
 02:47:42 -0700 (PDT)
MIME-Version: 1.0
References: <54146c89-b783-4cf5-a9d5-cdd52a6e3573@web.de>
In-Reply-To: <54146c89-b783-4cf5-a9d5-cdd52a6e3573@web.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 15 Aug 2024 11:47:30 +0200
Message-ID: <CANNYZj8sQg=5seHyq9UCEXpTGpPrp6+K6vFPGomj-a6bUkqj8g@mail.gmail.com>
Subject: Re: [yocto] new releases for sysvinit
To: yocto@lists.yoctoproject.org, mr.name@web.de
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 09:47:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63706

On Wed, 14 Aug 2024 at 22:34, Sven Reschke via lists.yoctoproject.org
<mr.name=web.de@lists.yoctoproject.org> wrote:
> The sysvinit releases seem to have moved to github:
> https://github.com/slicer69/sysvinit/releases
> (See also official mailing list for the new release:
> https://lists.gnu.org/archive/html/sysvinit-devel/2024-07/msg00016.html)
>
> Is there a plan to integrate the newer versions of sysvinit?

Thanks for noting that the upstream moved. There's no plan because no
one's been aware of the new location with all the new versions. Can
you send a patch to oe-core?

Alex

