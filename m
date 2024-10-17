Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0986D2125E
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 08:51:53 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.44720.1729155104471916850
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 01:51:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z3ZQlB1k;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso7403641fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 01:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729155102; x=1729759902; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=py4c6FRq6zXOeN2atv71tSaAPfFyZDnHcXpQJtWdvBI=;
        b=Z3ZQlB1k6rafOztGB5Rg6kFNOSJPZhfWdNKmuV1kkWBV3HcEkat//fU8JQTGiEZZf+
         dsRhCwuOiK0f6lUuGFLc/AgPuADLVuN30E1MCVEp3+qinyzUNR9Eb0wXoJ4JUqBGUXND
         RsG8+B42FdX8bYpzWaeFHutYdvGS+TFFpWMN824rifnVRj2fcLNI0K25JAjE915bW3sd
         cYrwRumlhPJU6LM4hWUsUUNbNfJ6IZj4CEsAWfUD2ZYO9dJ05gtT2OzMK856t5bIpXIF
         4Eaqz8omAeAHhYS5L9EyQsNiLWgMmLDfXJFRLmkogynDERoj8Q1Pds7LuXMm3CSwBgxs
         eDOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729155103; x=1729759903;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=py4c6FRq6zXOeN2atv71tSaAPfFyZDnHcXpQJtWdvBI=;
        b=lZU3odOsFhFJCxjoYsMwgEucph910bZ+2xvJ1K/xzlbftbW2wwoWIvC6J7MbL2HQtg
         99xC/7iOFtoWW3txDVA3FFu9XnUxLtuDm0ZZ1VOgqQKbg94audG62JpE5K9QsJ4zHphb
         YSz44MtI7lOJJlQL/yGj7eT/B/rdoNREnw6Jk+7nkWul6E0uwtIucsr9dgNyTO89+yox
         +S/dJ+V+0vsdqtVcZ9jJCkzgvRYSttCWlz47UmizvvpzDbtI3cqL1Sx1Ted1oL+b1RmK
         CTAunpYOqbqtOZ6MI86Lv4dd2tYgvPlT+LU060FlyShibFTd8A4ZZZKF2s9afhLg7/MV
         lhvQ==
X-Gm-Message-State: AOJu0Yy4pKD4En1Nq8XGUPVnE4eiX2JV2qCv1vxhh2MJMgwlo629Dx2F
	r/SjzKX7FaU3gYkd97PbJyZPK6kfVPG79iZv8MK1RSGmln7WO4F+xGEFxyyYRXZn7t2baKhxRJ2
	cIwUDAZky4K+WVlcsvAYxFu2PfdcZgw==
X-Google-Smtp-Source: AGHT+IHImGCYh3WE/t7aG8P6XO4Dbeml6S9fTTurnh1bI8sqRpC4dMwnbMWz4rdSxHbVD1hoM7PJ6FzCDuYt0e1fM8I=
X-Received: by 2002:a2e:b8c5:0:b0:2fb:6027:7c18 with SMTP id
 38308e7fff4ca-2fb602780c5mr41087321fa.22.1729155102402; Thu, 17 Oct 2024
 01:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <jdVA.1729154854975604187.EQeq@lists.yoctoproject.org>
In-Reply-To: <jdVA.1729154854975604187.EQeq@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Oct 2024 10:51:31 +0200
Message-ID: <CANNYZj93_hwUFyshedbBsX6LhBVv8k_-anA+X-wvTdQ01KCg0g@mail.gmail.com>
Subject: Re: [yocto] How to create Tool to update commit hash in yocto recipe
 files #bitbake #yocto
To: yocto@lists.yoctoproject.org, Shilpakumar476@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 08:51:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64037

'devtool upgrade' is what you're looking for?

Alex

On Thu, 17 Oct 2024 at 10:47, Shilpa via lists.yoctoproject.org
<Shilpakumar476=gmail.com@lists.yoctoproject.org> wrote:
>
> There is one existing Tool for reference that is auto upgrade helper
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64036): https://lists.yoctoproject.org/g/yocto/message/64036
> Mute This Topic: https://lists.yoctoproject.org/mt/109060442/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

