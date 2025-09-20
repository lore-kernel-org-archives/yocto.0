Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D144CAC5A7
	for <webhook@archiver.kernel.org>; Sat, 20 Sep 2025 13:27:33 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.9740.1758374848942070421
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Sep 2025 06:27:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=KGehKXEa;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.179, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-71d60150590so20218857b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 20 Sep 2025 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1758374848; x=1758979648; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aLnrA2yB6uPkwXM/E+4Sz+JXO4AAf3zzXeReKKNT1Gg=;
        b=KGehKXEaihK9GykInokZHnsA9e/07Njct8/oxmzzHHWQ4+E/4WIvpuM+rmMm0NrylH
         jVPpDgTzXo+uU+za+9/Tzd8ViJXq25jYidTmAZZTxWVpMNgseh1TFaZQVeo7McOlpsvG
         33zfq2zLS5CL35i586cMJO5zKt6K4H12AbLQDinJ0sEpQ7Ec42hLJ4htzW71XuAF4/ak
         ZlJqintv0Kw7tCpuV5WsFAofJw8WtwDs8Q8A+bDf3M7SqzR3YeC/JBaZA1uPQYepmgAe
         N3+9D2gyu3Ut6bdGhSHBipv/vvzSDOZKrYdnDV9PVPCzccMmH0qmwklkwba5A70++FAG
         ASRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758374848; x=1758979648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aLnrA2yB6uPkwXM/E+4Sz+JXO4AAf3zzXeReKKNT1Gg=;
        b=n57xSXJg9HmrMboWAdNBIZaKzPpabpo57PcxCIP4JJ8w1Huo4+UdaNPRrcETe4bzOJ
         EL5PUsNdXHAsVGiXe61Nnd8mQEQMTie+SeJfBgawRzD3haV4lgdbtzxJw0V4YbPTPPZO
         JyTwxYNr/s/zxem9jik9IbBOm1I+cGKcXJaXImNfvl3C9jQGB4AhncKa7Tzzcz2exYsj
         qNiGfHVHc0Fpm3D8TmOb8sB5D2Q+K+iLeBMN+8SYd++B7EL5Fr+caTn2Vr3DUsc0gr88
         RP5oRO9+TGukPUPW2aCjPyLVl0wfFrWp6J29viFdM54PJlOY3HjqXoTiqdaNbtSeTd66
         mYpg==
X-Gm-Message-State: AOJu0YzlWs7QDjyF/ewlh44+MSHpA4B0Kv0OZna1EpXqrK34+CPcNJZU
	zeM746fpaUtEPAWq4CFc2GRdCoacsTXzmfRmK2DC+apGACUiiH5vVOykFEbuByCJWvkO7wDPJhC
	BINOsBJWPhuS4jCSp+pAK5KuwGe7n0pQg6UjEi9bgZWIExoh77IcQ
X-Gm-Gg: ASbGncuOyL4P+Kpbc098Fr1IT2jbYkPiO20AaRGyFDwKJW6gh2zW+ulq5pXau55UfZF
	EP4OWNXDbfivsw7iKYI6fKFu9VA9gx0zvHpWyktcyhwdpkZnG7PptsqMuQ1FL0c6wQDjTq7iPUw
	+2sesxqN5JJ+wbtpKKxNNZWAGtc8Rn7B9mybj5NcZs553q79YfK16ls6DU2lkKWuIuvkfzTtj48
	sFfS9Eynp2zZjbekfrGYZhOBNLeAztW/3rkVyA=
X-Google-Smtp-Source: AGHT+IG3aXN0RUypuT6kjH2nJBqsnCRWS0Sj1s4Idu+JHFuLOya7bu4Pdt9U6HdQXJ4ja1jWchdiQ/T9R9xZaJuUyPo=
X-Received: by 2002:a81:b048:0:b0:702:52af:7168 with SMTP id
 00721157ae682-73d32a338e5mr47189647b3.2.1758374847925; Sat, 20 Sep 2025
 06:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <0101019964d4d762-b79f194a-8ed1-4579-9c27-90439b076fb2-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019964d4d762-b79f194a-8ed1-4579-9c27-90439b076fb2-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 20 Sep 2025 06:27:17 -0700
X-Gm-Features: AS18NWDB9xqz55CxmdCwnaT19UHMxRuycjCKWJYXhtB2WqsavEh3AlwWnL8_p_w
Message-ID: <CAOSpxdb4hsyOtkNxj5dOzgQ9w+Ar-zH7yk-B8YWNeGNtm+GOMw@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.30.rc2)
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Sep 2025 13:27:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65862

This was an "all green" build, so OK to proceed with QA.

Steve

On Fri, Sep 19, 2025 at 6:54=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.30.rc2) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.30.rc2
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/2410
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 8ea88240e6ff89b006da04923171736fa07bb84e
> meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
> meta-aws: 66cc5b4b07a1d4aaab5eea0fbfe1e311ec674fbe
> meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 5c138125018fef4b240e62b664a809d19f4b26a5
> meta-virtualization: 5429fc0f5c2ebd7187e54913220f579417fcbaed
> oecore: d381eeb5e70bd0ce9e78032c909e4a23564f4dd7
> poky: 51dc9c464de0703bfbc6f1ee71ac9bea20933a45
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65861): https://lists.yoctoproject.org/g/yocto/messag=
e/65861
> Mute This Topic: https://lists.yoctoproject.org/mt/115338849/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

