Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C03C0015E
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 11:21:13 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.17889.1690284063708465722
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jul 2023 04:21:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XcALmaov;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4fe04882c66so872387e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 04:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690284062; x=1690888862;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gNUix0Tzp2/YOoQsbYvgH+kIczw4Pum4AZV4P6K+rJQ=;
        b=XcALmaovbBpyI9IzM3nl5vBi7xwwRmEmGu/aOlAg7TROUX2fhkSTYJi/Uy15rA3jc0
         7rVPlWjga1VHDfOG/KidxAk58cBTHwbsuqJklMNvfuby04KFdo9cua5QrlenuKxOddAs
         2Cf9npSm4ru3w3031lvotPnt7AgaYEtCGNXU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690284062; x=1690888862;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gNUix0Tzp2/YOoQsbYvgH+kIczw4Pum4AZV4P6K+rJQ=;
        b=Uk/UQulTdZK82zq766j5Rxv+bPU9XQYBxK2K2W2ym3EjcQ+Iy4/OgmTmNRgJgIjsft
         xe4OgilVNyYLdcvLhdMgQgdoGJ7KopQOOD1xzJVBCeXS2Oh4ke1nHWR28o0qemZgPAlS
         pkTj6bvM8oioiwDOHVCCsA9f+ZRSlkXQcPSgZwATNCxm5wtP8qmLjbutzDmSNhshPBev
         Z0qSDOQCfsBeGsf/boTzCAB0cuiD8QiJ2pLFsjLW1nMWHmwFH8DTsvkLHkIBNLElMU+n
         2rwRoXTJlupdUZcygoieRiC8vABtdWVexHyLVecK6l+NaLxQBu0Hy/GmjStcRsQX0XUa
         6+/Q==
X-Gm-Message-State: ABy/qLZwyXWAjMq+zK9Kpzvf8ZqYkbOU1Poy3W72MTnijF9qQgYTPSpT
	DjxclBUWuG2Dpgwzc2Sd5yGyWg==
X-Google-Smtp-Source: APBJJlGCgoLPRTGLiwiHlJK/Sv3a7tZFs+GULZM99EHv+kInBFKc5t8/ngBOpmesUp3ymycUvZ/+kw==
X-Received: by 2002:a05:6512:3142:b0:4fb:8f81:4fe8 with SMTP id s2-20020a056512314200b004fb8f814fe8mr6328836lfi.46.1690284061691;
        Tue, 25 Jul 2023 04:21:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:42df:c474:f29d:a4f9? ([2001:8b0:aba:5f3c:42df:c474:f29d:a4f9])
        by smtp.gmail.com with ESMTPSA id a12-20020a5d53cc000000b00313f9a0c521sm15967292wrw.107.2023.07.25.04.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 04:21:01 -0700 (PDT)
Message-ID: <1761e9c20ee71e25f1cbe1d613a78a8ff241ec4d.camel@linuxfoundation.org>
Subject: Re: [yocto] File magic/sdk relocation
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, ohnatiuk@cisco.com
Cc: yocto@lists.yoctoproject.org
Date: Tue, 25 Jul 2023 12:21:00 +0100
In-Reply-To: <CANNYZj-8OmyKkM0FJnDf578mFOwt5XqoKRULUOgtSVrLo8Nn-w@mail.gmail.com>
References: 
	<CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
	 <19295.1689959511730394329@lists.yoctoproject.org>
	 <CANNYZj-8OmyKkM0FJnDf578mFOwt5XqoKRULUOgtSVrLo8Nn-w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 11:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60647

On Sun, 2023-07-23 at 14:03 +0200, Alexander Kanavin wrote:
> On Fri, 21 Jul 2023 at 19:11, Oleksandr Hnatiuk via
> lists.yoctoproject.org <ohnatiuk=3Dcisco.com@lists.yoctoproject.org>
> wrote:
> >=20
> > On Mon, Jun 19, 2023 at 08:27 PM, Alexander Kanavin wrote:
> >=20
> > On closer look, it should even say:
> > export MAGIC=3D"\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"
> >=20
> > Hi Alexander,
> >=20
> > We have submitted the patch[1] which fixes the build for our case but d=
oesn't change the contents of file.sh which is a separate issue.
> > You suggested changing MAGIC to "\$OECORE_NATIVE_SYSROOT/usr/share/misc=
/magic.mgc".
> > We can also get the same result with "${datadir}/misc/magic.mgc" which =
is what was used for create_cmdline_wrapper in this recipe.
> > Which one is preferred?
>=20
> I don't have a preference. If both options work, there's clearly more
> sdk relocation magic in various places than I thought was happening,
> so I would pick the option that is less likely to quietly regress, but
> right now I can't say which one that would be.

Personally, I'd really like to patch libmagic to move the path to it's
own section, then we can use the relocation technique we use with gcc
to change the patch and most of these issues go away...

Cheers,

Richard

