Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD626C48260
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 20:00:23 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.22592.1707595215892502828
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Feb 2024 12:00:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d9z3izou;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-20503dc09adso1362125fac.2
        for <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 12:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707595215; x=1708200015; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWKeiNvqZYerW77A/TcEJiWj+VGDkZ1eRB5CZHIKLOs=;
        b=d9z3izouTW62TQS0/XRP7kDjIFFgyTa9wA34xlQqPPA3KqxelxfT9WOz/YV76EWSXC
         RwE2QsEaZVR7uSHDyGR0+T8uLsDzrlv3t4N25zYJDbb91p15smUDMqAKUA+1ncGOI9N2
         /5bhrXJ4cHpYskl4JxtG0N7+9ck4FTYflCXBKjU0pcCVjBeuk3iImc04DeM1GJ+GN+At
         cMmufDWvyYgeECIgO25xQAEfW2a1n5b+vpGWB/Nghra5ayAzpDd+tYymoKwwfq6KFV7b
         r4Y93B/ROoh80IzJqv9BHmTlF82vPTewQoE3oITV9LfZY/px2tEnLBpOZQg/GJCdyub7
         T5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707595215; x=1708200015;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWKeiNvqZYerW77A/TcEJiWj+VGDkZ1eRB5CZHIKLOs=;
        b=O8DjuBSpGx9Hzvo4qDxYRGqWxX1jspsh1JJmQoFqGTiOobGXCf8RZvYNFMpvbBvXx+
         Is9+cJnbYSLZ5JiGM8l6kBPt4Jp387QGEca3aAEC5yFV4LcSK7/tBnZA6DK7XgWcr/BU
         ZEZeuzof9SmDO3GUmn0xw5DsHdumiGPJJWvk/iLs0FIFay0htoA95H+b+frHh4NlnqRP
         AqQiPBcc4mlDFVuNOiXnNyR/krg1vb5MirHPFNi+ogtceVGSKZoI+RuACxlSlIZPSAWC
         ipOli1+Jv2eghbzWvFeWIyHCkX0QIQ9EKmrVfojLRWm5oLt0uZieHWLiB6BhZ6BFBqWT
         75LQ==
X-Gm-Message-State: AOJu0YzSssVAh17aU31QwMAKZ8xw2d+353UvfFW5gGvoL3uFrJlQkoVz
	K6UK2B3YHLHTxNPXmRAofW8zWEV02X5q6sKWHNtYpaT6AoqUB5zvWG6FxST8EsevvLFXtKu2v97
	qCmALyPHRK2twmCIxs0sDy49LG7mAxX9rFyc=
X-Google-Smtp-Source: AGHT+IF+d5vAVa3+iXomARq2lvudg7CgbFUZvKIVOmWnKXMznHPaaH9GuIyvxs5GELfQ6zicwAnJE0AN9z4pUYVN9Lw=
X-Received: by 2002:a05:6871:413:b0:218:7ca6:ae3d with SMTP id
 d19-20020a056871041300b002187ca6ae3dmr3493146oag.5.1707595214920; Sat, 10 Feb
 2024 12:00:14 -0800 (PST)
MIME-Version: 1.0
References: <oOqR.1707584165907539093.EjWg@lists.yoctoproject.org>
In-Reply-To: <oOqR.1707584165907539093.EjWg@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Feb 2024 11:59:49 -0800
Message-ID: <CAMKF1sp+5UQXsQNvYMUKaRNwq5QsH_GSzJ24VGq+TMJgQF0oAQ@mail.gmail.com>
Subject: Re: [yocto] condition based bbapend compilation
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 20:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62460

On Sat, Feb 10, 2024 at 8:56=E2=80=AFAM <saswatinayak2010@gmail.com> wrote:
>
> Hello All,
>
> Seeking assistance to identify a FLAG that allows the application of a co=
ndition-based bbappend file during the image compilation process. Any guida=
nce or insights would be greatly appreciated.
>
> For example If 1 is set in the flag, it will indicate inclusion, while 0 =
will signify exclusion.
>

Well. bbappends are not conditional, however what you do inside them
could be made conditional using packageconfig or DISTRO_FEATURE checks
or other OVERRIDES values.

> Please anyone help me with an example.
>
>
> Thanks & Regards
> Saswati
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62457): https://lists.yoctoproject.org/g/yocto/messag=
e/62457
> Mute This Topic: https://lists.yoctoproject.org/mt/104280559/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

