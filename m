Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC671CD4F5A
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 10:42:40 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.18327.1695379354286199514
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 03:42:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bPWoaUzm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-31c8321c48fso2286602f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 03:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695379352; x=1695984152; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A/8ri9g+yxlUexwGOA2QxjSR20ljRAdlqw3sPSFzzs0=;
        b=bPWoaUzmwLOU2yIOSNe5CKBUyD+U/3MsBtMu20FCqrgn5k6MNBo2AK7wjC6GQ14Sab
         zkPRG3hMyU5cxaG55g89yzH/+7BMQXrDef8+VWfY4rxcar1U9cmznGrwUPcUEn+aVR4O
         grZ5n7cxl1/Ypc5tDbGtkp1YcI4HkYqA6t3fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695379352; x=1695984152;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A/8ri9g+yxlUexwGOA2QxjSR20ljRAdlqw3sPSFzzs0=;
        b=piVJ572onBmCn37iawSof5jp9nANutzLJhMgfJfmHj8AhPLYl9WxY809YjC/UfqI1U
         qPhj57Wmww68+XfVOx9aGM0DGQctHq8EpK1LOMUS0iKBl1Vnszy4Qw+Dk3RnWPUjTx8M
         VWJuawqMfSTLGfqqdwBUriqV9RXVQ8yjWZisrNe8OpxXwoDKVAG5qCJzZiEBzWOQeWip
         GrA2yKYRC7taefvSH2npIh6MlVXmqi/fwWkFjfl+pxMsKFGz/blRbmS4nJkfxYpmqUMB
         By/ZR6RqNZKyfqQrd6pasyyvPi1FStD5FaOAKyk+nmAEN1f49l5sXYQ1n5fD7mUhLdMG
         cqUA==
X-Gm-Message-State: AOJu0YwuqitmjzJ3YoOC/T9k93Yr97uikasA8nHu/wMfXO1LFqaMJRXh
	gvvLO3EmCQYKu4Q4Hyw4L8uPFg==
X-Google-Smtp-Source: AGHT+IFLTcJphmI5cLHOQfRWPu/N+FtTxehPnYnWq0qDBfqVTXcATxM2AxLPDl3u5ILvKQjZi5KZZg==
X-Received: by 2002:adf:ef46:0:b0:315:a235:8aa8 with SMTP id c6-20020adfef46000000b00315a2358aa8mr1661974wrp.2.1695379352411;
        Fri, 22 Sep 2023 03:42:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:f6e4:1bee:736d:f9fd? ([2001:8b0:aba:5f3c:f6e4:1bee:736d:f9fd])
        by smtp.gmail.com with ESMTPSA id y12-20020adffa4c000000b0031f5f0d0be0sm4101996wrr.31.2023.09.22.03.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 03:42:32 -0700 (PDT)
Message-ID: <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "chris.laplante@agilent.com"
	 <chris.laplante@agilent.com>
Cc: openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, ",openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>, Julien STEPHAN
 <jstephan@baylibre.com>
Date: Fri, 22 Sep 2023 11:42:31 +0100
In-Reply-To: <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
References: 
	<CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
	 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
	 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
	 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
	 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
	 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
	 <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
	 <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 10:42:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61078

On Fri, 2023-09-22 at 11:17 +0200, Alexander Kanavin wrote:
> On Thu, 21 Sept 2023 at 16:39, chris.laplante@agilent.com
> <chris.laplante@agilent.com> wrote:
>=20
> > That is very impressive and I'd also love to hear about what heuristics=
 it uses.
>=20
> It's actually rather simple. It uses glob.glob on stamps in tmp/, then
> on local sstate to find possible matches, then sorts them by mtime and
> takes the most recent. It's what would work most of the time, but we
> could add printdiff-all (print difference with all sstate matches) or
> printdiff-N (N most recent). It also could abstain from dumping
> locked-sigs.inc into cwd with both -S none and -S printdiff, unless
> explicitly asked
>=20
> I just discovered there's also scripts/bitbake-whatchanged (that
> hasn't seen activity in years and is neither documented nor tested).
> Unsurprisingly then, it doesn't work in the same scenario:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> alex@Zen2:/srv/storage/alex/yocto/build-sstate$ bitbake-whatchanged
> libsolv-native
> Figuring out the STAMPS_DIR ...
> Generating the new stamps ... (need several minutes)
>=20
> =3D=3D=3D Summary: (0 changed, 0 unchanged)
> Newly added: 0
> PV changed: 0
> PR changed: 0
> Dependencies changed: 0
>=20
> Removing the newly generated stamps dir ...
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Maybe this is what RP was referring to when he said the tools don't
> work properly?

No, I've believed that should probably be removed. I think there was a
recent change to it.

I think we had a major step change in this functionality working when
this was fixed:

https://git.yoctoproject.org/poky/commit/?id=3D84a7485025dd4473403b8da36a0c=
979a3afd5e93

and this test case was added:

https://git.yoctoproject.org/poky/commit/?id=3D1bdcd76d2968c3cc6ec2815afceb=
a1cf98efd6d5

Things which used to be problematic:

a) changes involving changes to gcc-source since it uses a shared
sources stamps which confused the tools (at least used to). That may
have been before gcc-source became a recipe?
b) changes to a very common component (e.g. autoconf-native's
do_configure) which make it hard to understand where the root cause of
the changes came from
c) changes which affect many recipes at once, e.g. the do_configure
function in base.bbclass

It might be helpful to write test cases for the scenario you showed as
working above and some of the ones I mention above, then we can
document they work and have an easier way to add tests for issues
if/as/when we identify the problematic scenarios in future.

As you mention, it also uses mtime so perhaps issues happen if you run
a different build, then try and go back to the other config? I suspect
once you understand the algorithm the code uses, you can pick holes in
it.

Cheers,

Richard




