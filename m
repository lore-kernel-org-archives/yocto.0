Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D9DD3B7C1
	for <webhook@archiver.kernel.org>; Sat,  6 Dec 2025 08:41:00 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2533.1765010454239583142
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Dec 2025 00:40:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HjAUH/4U;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-88677f91e9dso27051876d6.1
        for <yocto@lists.yoctoproject.org>; Sat, 06 Dec 2025 00:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765010453; x=1765615253; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5JyRh9D/1rkGIXnF+qVeNqIRMSI/V5YSr67cqwHoN7o=;
        b=HjAUH/4UXJL/nDqc7LqtU5cyi/iernFjqEiUJqXx86HymLJOB6R0FnofMAkQ7L2GFY
         UBUUAzd4WfQEG2/LaE4M6edBrlZXh+hE5OQU44tEIbDFMMTAH0Pikpr83xRyrOqScZut
         QAZNbrC+SbkXMlpGZxuZXtc8Uxd67g1lOWpoV3k0f/eEgsN0DP3lqccgrkR0y3yJdrrS
         KVigaeLQIjm4uWCB2LdyQTt/qCxrse4VzWZNhqwm0jNDj6t7KCW1amomhfoelsm9TUgF
         q0hRojfQB1KZPCyz0yvXKb44t1mPen9e0HGMxAT/yZ8tQsh9pHyfEjH8H2PLV+EVTifp
         aDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765010453; x=1765615253;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5JyRh9D/1rkGIXnF+qVeNqIRMSI/V5YSr67cqwHoN7o=;
        b=W0Us+SkV8O9pU2jBUZVlSapzYZt94FuvgvkHRJCgvrNSzlK01usKGhpBeezy9wU3tG
         fSKA8AV5EtBxJNqWipVgrf/P8oREbf7UzCAiMwL8caCgPrgYJER03PH0EFc21TGpyglI
         zNJRZLI8w9reC3GZeVEgdyuPJhTqg2RonBOv0d3kBLpNt1D3a1LFP8RTUZUIfjTPiRv/
         nye1QT1QoZo+QkEa3g7BaEjYKEubhIgz4oQV9C34ePb1tMcUDHV2Lg4JixUdCvvJfhGS
         8GTlIRBRU6JnPC0NaqkT93pbyK0GtyX4MDLcZbTrDVbc659w/JPI60Qk+TV1fUqV17vy
         cVGA==
X-Forwarded-Encrypted: i=1; AJvYcCUT7f8YpyNHkp9DWs4Mps3a3z7n1Wfw8Xiv6MRDP6xxIpYxaehY8xXWmgw0ZN6m108kbN/huQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx02cg2Vd/rIebWUaNUoyKV5fkE0YaDe57Hg+TTcfmbrTAJ0e/H
	EotBWjjHj3rMylWD/ctlf72YDKGI/W+r9Yozvnpe1gnRyo+PnvarVukO8PSAX6m6qoRcKZxGWY2
	Afl2iF29almNe5cAwPPA9bw3v1J70y2E=
X-Gm-Gg: ASbGncur88XNF3EBQTP95q3QYjJnp60hSYRX6Ccxrd+JMPiHzNxYa47NfZsXWDtPfpA
	mN3Gt6DHvB8JjTZz54ViBy+nYUPcdSoBNxSgs4v1lXntyJK9Fx+PhJ2MsmxFdzo6YckdVgvhKFK
	8vlfn6uvsRg+k2IJQ9hJWkJLXiush4E1rw+6u1WgYWRvWjIZZFPfKNR31lbfgCMvii9igBdYLfK
	l7soNDTYYc4AaVoFD8sBqbmbecaHaBnrsfK9+zL3iylW9htubUu2Q6tjOgktRUt1kfJdenK7JQU
	/OtYdLvFhIP+JrOy/0RpgjtUC27G3A==
X-Google-Smtp-Source: AGHT+IGchlBt9l+pJSIoz5zt6mU5ZuF+SJRYH3u4NRqOahbAAEWwDjKSEHnDBlcON1N5jNmQwxSaG4Q7ftqTydFO2ks=
X-Received: by 2002:a05:6214:ca7:b0:882:4580:a86f with SMTP id
 6a1803df08f44-888244f33bfmr169245946d6.6.1765010453153; Sat, 06 Dec 2025
 00:40:53 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
 <187B446507D0D6B0.100836@lists.yoctoproject.org> <CANNYZj_QRWSTZMne1B0PO8rdo19Ltb=QqQGVmSRk7ZpnaY2MAQ@mail.gmail.com>
 <7cefc9025cec54cc835cd3b065aa653f95a38634.camel@linuxfoundation.org>
 <CANNYZj8bbNnMYWsJb0oz0a3F_gr=zTYkbj8YLKoRYGdF+XbmBQ@mail.gmail.com> <CANDCFSy8dJjVm2qbAgxGDeH3_ywUGLpq=eknCo6n-tgt_7_nsA@mail.gmail.com>
In-Reply-To: <CANDCFSy8dJjVm2qbAgxGDeH3_ywUGLpq=eknCo6n-tgt_7_nsA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 6 Dec 2025 09:40:42 +0100
X-Gm-Features: AQt7F2ohvYCMf6kdC7IeTewp2no4jK561v8mFJZcbTvr1Cdlgq9E1Ep_9MZ3dGQ
Message-ID: <CANNYZj8ff3=tVXJt3rxa3fE0_m9OmDsyBP6A5rrw0b-M7EiUsQ@mail.gmail.com>
Subject: Re: [OE-core] sharing sstate in bitbake-setup
To: Daniel Chaves <dchvs11@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Dec 2025 08:41:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66097

On Sat, 6 Dec 2025 at 04:31, Daniel Chaves <dchvs11@gmail.com> wrote:
> Hi, Alexander, I saw your question about integrating the hash equivalence=
 server setup into Bitbake Setup. I've have actually tinkered with the basi=
c hash equivalence setup, and after diving into the documentation for the h=
ash equivalence looks like we could share hash equivalence data through fol=
lowing the "Hash Equivalence Server Setup" instructions here:
> https://docs.yoctoproject.org/dev/_sources/dev-manual/hashequivserver.rst=
.txt.
>
> Look at the `bind` and `database` options used when starting `bitbake-has=
hserv`. Then, on the client side, the configuration would look something li=
ke this:
>
> ```
> BB_HASHSERVE =3D "<bind address of the running BitBake hash server>"
> BB_SIGNATURE_HANDLER =3D "OEEquivHash"
> ```
>
> So, in that scenario the site.conf for Bitbake Setup could enable a bind =
address of `unix://${TOPDIR}/../hashserv.sock` to the BB_HASHSERVE.
>
> And the server can be started with something like:
>
> `bitbake-hashserv --bind unix://${TOPDIR}/../hashserv.sock --database ${T=
OPDIR}/../hashserv.db`

Hello Daniel,

the mechanics of configuring and starting the server are not the
problem. The problem is how to do it in bitbake-setup workflows such
that users don't need to know or care: no separate configuration,
separate commands or leftover background processes. It should just
work, quietly and without fuss. I have some ideas (around sharing the
database between servers started privately by bitbake invocations (if
BB_HASHSERVE is "auto")), just need to sit down and write patches.

Alex

