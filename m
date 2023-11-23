Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E900C61D85
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 10:33:16 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.88359.1700735591662525900
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 02:33:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=GWL1mbFN;
 spf=pass (domain: baylibre.com, ip: 209.85.218.47, mailfrom: jstephan@baylibre.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a00c200782dso92985866b.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 02:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700735590; x=1701340390; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Gh6yDJhneaT/h3+7muL+Vdi5fD0j/jW73or4X29/pg=;
        b=GWL1mbFNSTp59lo/A11fTuI4LgstxkIKg5050/pzba3qiEobW1m3wuP81jHuzWjDhc
         U1sc6p0J1qcyhuZIvHW+4hf9mhvdwA29F6bu9kY5OOkATMjVdvv72lH/aVcY/tKO/I9H
         ICc0oC44zTEwrZVrlaFO8CdAAHp6h3hN7it35yJ2mNoRIC/MyfHQXTdKMT6bk0ZWszjo
         hhbnLlRCwRydmSxv4cJs5IGEyjyLy8J32hC4lZmCebxx5nr3Nce2J1tfU1t2ieCX9EnD
         p4hsBqVNL+6utrqd+ecX5VKFLBjkX9uiSe3TJlhIC5+sW9QUkgYmMU1wuftYxodUkrz2
         4UZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700735590; x=1701340390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Gh6yDJhneaT/h3+7muL+Vdi5fD0j/jW73or4X29/pg=;
        b=QKuDbpXu60X9OFDJTcvh1UU8XISMbG5oEayn5KQAjOmVqKvDY7dc+/ygVonsydS1yk
         s1pNI5s0ZER+KUOsGXSbf1fhjmVJN6qbLRmhb6ARtCNbmjzubPtux4u1purcHtvkQNqN
         6E81dX3jD1g3KnQEox5BqEXV+soAMYGyo716Xc9OY1ungcCnTagm9bj+arVZ6KvngFEv
         /ovtnh0VRRpZCASBYmawJ3seJRFMO8no5BiQmKL1QGnKA+Dzme4py7yyJF1l4TXBFITH
         Ipf0DQf5Vhr9ZwMEUrYnVrtsg1CWXRweanv1Okvauu4sba5NmTtQEau8Ax6lbNfFiAt2
         bXwA==
X-Gm-Message-State: AOJu0Yxd8f3zWC3lf+hPYop0TSgwLE6qHQx9yFfqWR9pSiW2ePPGGZSD
	Q1eAmPaLn+vPGowH16wK71rNy7COINrCPlP7plj0wg==
X-Google-Smtp-Source: AGHT+IFIpYTA+kxJfWPz4//h/iYwidZlc/AKqb6ZGoZpzJgz8qmea5t5VTsdDNXhW+IsRhNxtQJUCPUbruumr1Ctx/Y=
X-Received: by 2002:a17:906:10d8:b0:9de:cfa1:f077 with SMTP id
 v24-20020a17090610d800b009decfa1f077mr2756422ejv.14.1700735589838; Thu, 23
 Nov 2023 02:33:09 -0800 (PST)
MIME-Version: 1.0
References: <CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
 <CANNYZj85qmQp=UPpTCd08n+VKq_06xOur2bEtDQ7yVi8CR8_8A@mail.gmail.com>
 <CAEHHSvb9dajTiP358fEJzqcbRZcpuJd74jmkg168qiS-tN_jOw@mail.gmail.com> <6230b0b766c8ae81ab7a0337bf8f54ce9f15e7a9.camel@linuxfoundation.org>
In-Reply-To: <6230b0b766c8ae81ab7a0337bf8f54ce9f15e7a9.camel@linuxfoundation.org>
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 23 Nov 2023 11:32:55 +0100
Message-ID: <CAEHHSvYtAr6w8M1oPzXAn3r-hOKf=L3YZjPTgHrV1LeWM2VUJw@mail.gmail.com>
Subject: Re: [yocto] [RFC] devtool: support multiple sources
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, jon.mason@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 10:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61733

Le jeu. 23 nov. 2023 =C3=A0 00:36, Richard Purdie
<richard.purdie@linuxfoundation.org> a =C3=A9crit :
>
> On Wed, 2023-11-22 at 13:53 +0100, Julien Stephan wrote:
> > Le mar. 14 nov. 2023 =C3=A0 12:21, Alexander Kanavin
> > <alex.kanavin@gmail.com> a =C3=A9crit :
> > >
> > > I think no one actually anticipated all these corner cases when
> > > devtool was written. In general it's simply not designed to handle
> > > multiple sources in SRC_URI, it can do (tarball or git)+patches, and
> > > not any of the other options. No one is expecting a fix for all of
> > > them, perhaps it's best to keep the scope to plain gitsm://.
> > >
> >
> > Hi Alex,
> >
> > I sent a series to add submodule support. As you suggested I focused
> > myself on gitsm recipes, but I had to handle the situation of a git
> > tree extracted into S because it was throwing an error now with my
> > submodule implementation (while it was not working but not throwing
> > any error on master).
> >
> > > I don't have specific advice for the broader issue; if you have ideas=
,
> > > it would be good to at least document them.
> > >
> > > Alex
> >
> >
> > For the other cases,  I was thinking of using the newly merged API
> > "unpack tracer"
> > (https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c=
4c18b501525c65695)
> > (suggested  by RP in this thread
> > https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c4=
c18b501525c65695).
> > I really think that we could leverage this new api to create a devtool
> > unpack tracer, so we can have a better idea of what is unpacked and
> > where. This could help to solve the corner cases I described
> > previously but also the bug 15162
> > (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15162). I think it
> > may also help to simplify devtool code in various places.
> > Where should I document this?
> > Should I open a new ticket?
>
> Yes please, it would be good to at least document the idea as I do
> think it could help devtool with a number of the corner cases. A
> bugzilla bug for it is the place to do it.
>

Hi Richard and Alexander,

FYI, here is the bugzilla bug
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15294

Cheers
Julien

> Cheers,
>
> Richard

