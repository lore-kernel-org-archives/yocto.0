Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564F0C433FE
	for <webhook@archiver.kernel.org>; Sat,  7 May 2022 06:13:14 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web09.7345.1651903984893061621
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 23:13:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y7ZryGSD;
 spf=pass (domain: gmail.com, ip: 209.85.218.50,
 mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id z2so16352063ejj.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 23:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=14KaCz3QtqN6ZWl7CdiWXhrH/UJwdMeFBODOzl/qqDk=;
        b=Y7ZryGSDKV1jxK18YSQnzco9jJ1ObAePzSZ00Aq45NKNl8fwxawFsQqH9THrYy9yI4
         E50fjOdRbwxHeU0fyAFCOLW6mLtQPU7K4Q4q7u2dyvYer5tDRF4kjg6aSkn9JQEYo00V
         NhlDAbvRLDrlzNsPJuA+Zo61Jj0PbrZ82g4JLWXNM9M06mSKMGwjAjsgjLEtLa0kfjWK
         WXGYHWgxawF0JGyep1DdiNkQLnj797FO7tGXiffzcOGMXDvF/wr76gaP2q6nt8DbEyDk
         j0tPRXnCYF3DYv5bI+LIPFyp83s5ARZK9OBZ4IfKLI7oc3EBXV00RZh6lkiA1vs4N3Pc
         p4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=14KaCz3QtqN6ZWl7CdiWXhrH/UJwdMeFBODOzl/qqDk=;
        b=NnnI0V8Yj9MXRQEOpvZwn9SZiQwUcbbDNpL9TtT/8ZjomRmnsbEJAYvYOF/jXs63s2
         p5UQtIzPS+BEFu70m3uVB0hAEgsRn3EjGmFEdoEmXGeECRRPhOK3tOKWXpM0e1Wivzgp
         HR8kl6kRIZ5Ob6Mjrmq7BozBUBJLz4WpoDrm2f9ogFZBe7eKBIU5qCwT9nmNjIWoohE2
         YYWUsHgfOY3/yoCDTe3Qm+Pccb4XySXxrdAuBx4j6xJ+FUtLPsrg0M111UFVF/yhwJav
         ZfIwssa6gJYKMCttAHT/UpY/NCpSNwsQaVGrI7Q/bMkm+GmP1XaO7xEjcFz2CF1wYRzd
         eRlQ==
X-Gm-Message-State: AOAM5338bwjwhot63FKd7Pwo0hjx5C+VUiQBSViZ0cGthAZXYJfRBpwR
	LX7yEnE4JFThixJXHnpuX2N+j0FWK78vv4xMdf8=
X-Google-Smtp-Source: 
 ABdhPJy3BlKMUYiCOhF5cnxCNySMazGbcMx9Xro/uNMlhub4fZE+Yg47x6Fds56qGRX/sa8DwNcjQsk/a/CBrDBmvMY=
X-Received: by 2002:a17:907:60cf:b0:6f4:4240:849 with SMTP id
 hv15-20020a17090760cf00b006f442400849mr6256930ejc.566.1651903983319; Fri, 06
 May 2022 23:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
In-Reply-To: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sat, 7 May 2022 08:12:51 +0200
Message-ID: 
 <CAGAf8Ly=4BY+H0DCbJ=fA9Hpr_xJNOoJa4spKwKA60BLQ-uwWw@mail.gmail.com>
Subject: Re: [yocto] OE Linux & board-support-package
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 May 2022 06:13:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57021

This is very interesting... How do some people, or system IT
"designers", or System guys, perceive the term: "Board Support
Package"???

Funny, isn't it? Or, at least, pejorative!?

Zee
_______

On Thu, May 5, 2022 at 5:42 AM jchludzinski via lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> OE Linux uses device tree files (*.dts and *.dtsi files), so is there
> any need for a board-support-package?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56996): https://lists.yoctoproject.org/g/yocto/message/56996
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/3618681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

