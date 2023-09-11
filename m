Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17EAFEE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 07:36:38 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.53370.1694417794182617266
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 00:36:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CS1EqNAZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2bf5bf33bcdso61581701fa.0;
        Mon, 11 Sep 2023 00:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694417792; x=1695022592; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+MCLekv01MAA7VzmTBEsUvRraBzG9IkZVS/6SVoAq5Q=;
        b=CS1EqNAZS0E9tq/ZBi50jbSvFV8i4O4GIL33f+ex3FLR57NZNc6k4dZkA4eVbQDSLN
         Rnf1zBQegtA9UZ7eoi644U4ZXDsDd/dISdEqE+d/Ax4hbWxQw9Bjb0d6o0OgBERxiyCx
         uPGIJLDG/tK6yG/voLpoWIPcvI8v8Xc2IbHUmHg3kuv9eZrrfLyTD1MNdMPcr6jK1DpO
         jdDIYMUwu4o0ijHUclj3INWCRznkenIfkAls/vdafQJCjtYsqPWM6Ibk8nYUu8UQ3Zc1
         9H+A8KTKcGONYsxlPTpZ1DczfRnYUfY4WY/+v6/9zRKIv+rGI77cBVDQneaclIYI9Q6Q
         +2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694417792; x=1695022592;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+MCLekv01MAA7VzmTBEsUvRraBzG9IkZVS/6SVoAq5Q=;
        b=fWMwzT2vGzvrvEefC2Gb6mk4QiPktrMI0jERypEyZRCsNgqgVxsCLCI3TQ0hxCv9Q2
         YKQ+OISVRdpdoGcvAoBmOFWMOq5nnMEDA2+Hnqds8hA1DkbCM4YEfXzphC4vTasv/T00
         4ge9+rr1QVkXrxYgo+bR3M+ouEWcBRTKlVTm0Huy4C1Gw3vUVQr2ePUm5FMj/MBkqLWQ
         N6xVuX/DGPxclbB9NeJIT2uZcPRq8Bv6dWHdIROigE9KbDwxk2XzBeOuRjNaqjvN8EmB
         1MrcnPMpgKEt5lR/WZiOgXj34ElmnrTuC1XJYraawsOjqlc+fH1OtuYJ0x6RQAUeKLcj
         yZcg==
X-Gm-Message-State: AOJu0YzuW1vQ+1S+GSLgt8VMU86e3YvZRPLr0rektss4gHMj4FxkPA5/
	5gSrfheftWd1oWBOe5JG3vDQ1J0UMbqiUvJ1Bwc=
X-Google-Smtp-Source: AGHT+IE+Gs/N+INLTdvmnWaRYdSCBO6E+kee+4OsohYJI3Cll2bxAw9UN++32RH1t7RjnGf+9f0g0Ci0P+PNyuyQ4js=
X-Received: by 2002:a2e:3803:0:b0:2bc:f739:2eda with SMTP id
 f3-20020a2e3803000000b002bcf7392edamr7477013lja.5.1694417792051; Mon, 11 Sep
 2023 00:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty> <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
In-Reply-To: <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 Sep 2023 09:36:20 +0200
Message-ID: <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
To: Qi.Chen@windriver.com
Cc: me@linux.beauty, yocto <yocto@lists.yoctoproject.org>, 
	yoctohelp <yocto+help@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 07:36:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60965

On Mon, 11 Sept 2023 at 06:22, Chen Qi via lists.yoctoproject.org
<Qi.Chen=windriver.com@lists.yoctoproject.org> wrote:

> SSTATE_DIR and DL_DIR are writable. Sharing them among different builds
> owned/controlled by the same user is OK, but sharing these writable
> directories among different users does not seem to be a good idea.
> You could consider using the PREMIRRORS and SSTATE_MIRRORS.

This is not accurate. SSTATE_DIR is designed to be shared in a
read-write fashion via NFS or other over the network filesystem
(between users on the same machine is also ok), and is heavily used
that way in Yocto CI.

Sharing DL_DIR is less important as it is not that large, and
downloading does not slow down the builds that much compared to the
the actual build (and only needs to happen once).

Li, your understanding is more or less completely correct. The
difficulties are mostly in scaling up, where you might hit the limits
of how many users can be served at the same time.

Alex

