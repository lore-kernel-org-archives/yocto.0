Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A4DC352A1
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 12:09:33 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.9450.1669810170770342062
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 04:09:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hYLwU08L;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id c1so26597263lfi.7
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 04:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBx6ag0IXp+m3cCxpPt2S182ac5lVDNYySv9BV+jVRU=;
        b=hYLwU08LUSINIyLZvwbijoVWrWTFSgiY/wOGQlq4CUpSjXyRPWyKqn28irDqvSttsA
         FJweu6j5l9VTXmMGa18zHH3R2euzLosqAVAGE05x0m/Io4SsQn7ZMKMGUOZYp/YN/Toz
         h+hz1mTz83uULCReHUmB8pH9AMYOLP2HkWMfjm1uaIbZw9G8ruo/vcHABsbS7+9kIxmr
         +rjyjLeppYxSe9TwGgwAPatlif6ojLoF3LNzk9lR1oEFvyMMDHHFzWvAV5SzMe0aY67n
         4tDLQOhPQshRpKP/gopYBzTzCsE8oQpTa6iByHlK/y/qwVg7xL/2p32LnYFeS8eMFR4u
         BmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBx6ag0IXp+m3cCxpPt2S182ac5lVDNYySv9BV+jVRU=;
        b=pWi2+5SoSz8rKy9O0JsLxn1jWR0vZaMwwO+fZySloxpW8aBmmbCHmtzsf7eIzS5Bon
         5qtAjHG51+FtWIJffUCLbmt2a19vnEZ2+aFQizzq/+qzLJaoWMSCq/mZYOlyBNInBFKe
         NiNnV8NS6fd4/vSgj/4DnLNNkXyZ9cFQ5yFa1yKB57rYWbEoFISX6cf+RrkckSHSyUxk
         2iz0iA4qdsDP9S2tNKsl/sOxzKM25ZFQFyFo949S5zNF32q2tt8C07gwSktHxpMZFQ1c
         myWUmS7FLfkbiAc5sIiWmhk9O2YxTnlkTyv0U3Wn52gPj86zoHCsM87caPNUPmfuR0mG
         43Og==
X-Gm-Message-State: ANoB5pmLxzy22Xj5hharCB1jgiT7KvbidHc6Y5SV5BNXjsbT9aWlp8R4
	GK/4xRhCo/L6LIRi0+mhkGUJNEV+1JubdaJ0mQg=
X-Google-Smtp-Source: AA0mqf4WMFhsI4vJYaefNPmf0FPW9hE5E8+YY7gZSvRJc8RSLGVGm62sNMcwL1HPHZCXI8YkRiiakteWoVwJI8vDadg=
X-Received: by 2002:a05:6512:746:b0:4a2:4f74:f47c with SMTP id
 c6-20020a056512074600b004a24f74f47cmr19758126lfs.367.1669810168975; Wed, 30
 Nov 2022 04:09:28 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com> <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
 <CANnLRdi+naMb9Ga+7AtZaQrTh-FjapUa_0qTdDYHUbHKvakbag@mail.gmail.com>
In-Reply-To: <CANnLRdi+naMb9Ga+7AtZaQrTh-FjapUa_0qTdDYHUbHKvakbag@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Nov 2022 13:09:16 +0100
Message-ID: <CANNYZj-k84jpRRUNuzQg71gxG3+GoqOEBGuKvKE47WVUEX50Lw@mail.gmail.com>
Subject: Re: [yocto] Y2038 proposal
To: Stephen John Smoogen <smooge@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 12:09:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58673

On Wed, 30 Nov 2022 at 11:52, Stephen John Smoogen <smooge@gmail.com> wrote=
:
> Going from various problems I saw with systems with smaller time wraps, s=
etting a time after wrap occurs misses most of the problems which wall occu=
r. Many systems will work fine with either 'negative' or 'smaller dates' bu=
t crash, burn, etc when running when the counter wraps around. I would sugg=
est setting the test date to -N minutes before wrap over to run a first set=
 of tests, and then N minutes after the wrap to run a second set of tests. =
This would hopefully catch programs which are worse off.

Testing the rollover could be done in later stages. I can imagine
we'll have enough just by setting the date in the future and getting
those magic glibc flags to not cause build fails.

Alex

