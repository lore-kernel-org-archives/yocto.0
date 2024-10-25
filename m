Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D886BD0C5EC
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 09:03:46 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.7794.1729847019523111305
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 02:03:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IV0BoANA;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539ee1acb86so2000546e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 02:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729847018; x=1730451818; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VbQN0VDksWOvhr28MO8G9OsdX/WBgqvQ1wF8pL/ToAk=;
        b=IV0BoANAf40m+Ig+ttmXvg2hIlcZ75qCws/RH+CkuuAKVnHqvBf3hOZHDP7tSaMVZb
         ez7JXyOxgB+HXwfNgXOL5/6GRKYwEqBtRuya5gYh0NxtUxuJccs/zm0XPxcVmY4NfOYV
         hvlyE84iyw5pgy4rJgY7s9g5Nd0m1Lky0V2Cm7KISbUY9NEgjEYt+qLYt7kRimH0IlzY
         nIqixN3Rx4KJdxNbWGx39tqT4SYTIY6BJvbikACz7iREuJlmr8FEJqkSnrxJOXs/Y4WN
         rHanXyb3VZ23kT9Um61Xw4W22ei6iWdVnjOWYgErQ9iEn+UkGXQoGbDA8BQEMWouRpXa
         TE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729847018; x=1730451818;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VbQN0VDksWOvhr28MO8G9OsdX/WBgqvQ1wF8pL/ToAk=;
        b=lU3gfdozu/nKl8+TVsCJkO1N10hiN5RQvUpyvrXDKiE3oKzVKYSBe0dIUOSodrUumr
         ZyPe3BHIE5CoHCibC8fJM1LZhmF7gHiPNOuHKeDJQrsk/1oc3kMcvGUAjd6uo3w/XMlz
         BwwvyJVM+yenmnIpqLgZmk/f4TKxK3Ijt5kIwqZyn7TSmIG8YVAF0wVM/nPR5iWmaUAy
         tC7vz5/omCeeURPOqYyG1eNY/s78OgJGo61gst/5bK+Y6FCZNbySxqgx1t8UMCeTLnP8
         lqr8WmVyrayfHqRe602Clt4OErdUNbW55A/TnImundY/k6lle0NXq16OFe6s9rg/9SDx
         q6yA==
X-Gm-Message-State: AOJu0YwQz5BCqrCHB89fGc3zE3cfu+LLf88m1KHYmEUzxYrx/8ZSS11C
	8cAUxmHUML7/TeiPT+tfas9xDKhMHNbdUGKWWFJCDtBpCP6hCDTkDPly3HwxL93UUWK3S2NG+7+
	PMlSKJJcq3hs2rZfmBE73+2SPJ4RiOA==
X-Google-Smtp-Source: AGHT+IGYf8up8Tl7xbZh2q0LhiGAG/dJvdAUCJOE0DbYKVT5PyVaNSiW0WfNWE7n7Z61G2Qz1XMzwlRyYeSHH1tTUGk=
X-Received: by 2002:a05:6512:3512:b0:53b:1f77:e974 with SMTP id
 2adb3069b0e04-53b1f77eb1emr3612154e87.34.1729847017274; Fri, 25 Oct 2024
 02:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <kVOb.1729841188070222169.SXfR@lists.yoctoproject.org>
In-Reply-To: <kVOb.1729841188070222169.SXfR@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 11:03:25 +0200
Message-ID: <CANNYZj9dtt5=JcPTS9ye_D5zqEEiBL7CBGY1O8nVE7xo7cePWw@mail.gmail.com>
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: yocto@lists.yoctoproject.org, hchanuy@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:03:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64119

You need to install and package the scripts as 'regular' scripts on
target, and then write postinst() recipe snippets that call the
scripts.

Alex

On Fri, 25 Oct 2024 at 09:26, hchanuy via lists.yoctoproject.org
<hchanuy=gmail.com@lists.yoctoproject.org> wrote:
>
> I have a package that has postinst and prerm scripts that are embedded when packaging as a DEB file. Now I want to write a recipe for that package, but I cannot figure out how to add the postinst and prerm scripts in the final packaging.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64118): https://lists.yoctoproject.org/g/yocto/message/64118
> Mute This Topic: https://lists.yoctoproject.org/mt/109204322/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

