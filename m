Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 144F0CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 15:11:11 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.41248.1697209867449566149
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 08:11:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZcFZPDBX;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1e9d3cc6e7aso706166fac.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 08:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697209867; x=1697814667; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q2eDzT7dzv7vYcojL1eRFR9LuTZ70oQk1NYG1tI9dDU=;
        b=ZcFZPDBXxcWDcAkkv8lJoV+ftn7g7UR8HJQ6fyvQ85NM6cdcdrtyP05fgX/RONQxPf
         jFocFHfcQCcSsefa4Z1MzxvOPse+C1VwqXHX6O6uqiNe345rwy9pMKp6k8Qjh1mGqobi
         nf0LmZquI3jUZuPQ4tmOR9BXaaTkjQ5082lvROmOix/oChGVOogyny4apnTjmqEESm+V
         0vTHNAyhScAAmN7ATQCQIMHwrUjhbY2drfJy//PaNgjuW8wV3vPhAuqTkl7Mar7ok504
         OYAXqZQryyxjdmk3Y9jZtuJOtx4dKtabog4uHh+DSEoKGzZwv5uNR6qGe3nH7ZiQgcfX
         z8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697209867; x=1697814667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2eDzT7dzv7vYcojL1eRFR9LuTZ70oQk1NYG1tI9dDU=;
        b=SX6xGm5wSiCxZWEC1GjDBauiIhr8cBYldt6Mka/EBN4+M9y6b53S/6gUxEAEzEniwu
         y+nzal1KTTlO6hMBeTecs6dpnqZpOuF5bb+FHZRvvC3PwSTLI4c20Fl4W407FgG8biVd
         rMS6Hq05ZQmymDcW0uKIWuP8vBwSpPeXaNSy8Xx461iIwcbCwXkhkFz0t6xrCK+vk9q6
         MEOSE4TgZfQQNUNReNeiJzfPSozj75+IfWgBWZFCRy9QsYq4KiswqJKsvBn2pldXdry7
         5xH4qiGS1geoM7jz1NsSOfe37i4SwrzmBbMMsYhU/wqyxJErZ8zJE1RE8nUakfpCu218
         Jlgg==
X-Gm-Message-State: AOJu0YyTYMd6HIw8N0nitxeQgellSHHgxmCZ9Zfc4N/rSYfBGKudKP6C
	t1N556aqNnLRNA/uzYLMPokDTKoVcw/Cf0w1b/Y=
X-Google-Smtp-Source: AGHT+IFvbGIwbNOlX34Yrq0gkp+YDRc+KrQ5m06Fpwx841mdxKjEn0kszS7Rx71Sjn1ZJiJpga/j8GbZUHtR5TdlK5k=
X-Received: by 2002:a05:6870:1017:b0:1e9:bba3:4902 with SMTP id
 23-20020a056870101700b001e9bba34902mr4797728oai.37.1697209866484; Fri, 13 Oct
 2023 08:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
In-Reply-To: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Oct 2023 08:10:40 -0700
Message-ID: <CAMKF1sp6ooKP0uZqV=U41HW1JnzXD=Twj-+p=7v6AKCTgbZvHw@mail.gmail.com>
Subject: Re: [yocto] any interest in a YP riscv mailing list?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 15:11:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61337

On Fri, Oct 13, 2023 at 7:25=E2=80=AFAM Robert P. J. Day <rpjday@crashcours=
e.ca> wrote:
>
>
>   given that other acrhitectures have their own ML, is it reasonable
> that risc-v have its own mailing list?

We do not have generic architecture specific layers, existing mailing
lists should suffice for that matter.
I think you are referring to BSP layer specific mailing list they also
happen to main proponents of architecture,
these are member maintained layers.

>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61333): https://lists.yoctoproject.org/g/yocto/messag=
e/61333
> Mute This Topic: https://lists.yoctoproject.org/mt/101940855/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

