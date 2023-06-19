Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D2FCEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 16:55:15 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.12658.1687193713782271744
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 09:55:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rvroJqkh;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4f86a7a5499so2387725e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687193712; x=1689785712;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xJgz5p8ObjWVtssTBWmk+hhj1Pf/tshblkaYlQ7Il3k=;
        b=rvroJqkhN3Fb4bbJyDKt40jSRVWH0wok4fRzLwK7wWaLtLnui6qf7owwqwRT4ijQze
         CgTpnzSEXNobKblLVj+bJwoN6Q2cj5myZSghT+4CF/YCTN7jNJeA6iG9dZar2zPcZxhB
         biOXbK7MsDzi//FQDsnKL3PlWLVbGrZLIXKseA+HQtAdAaseKT/F5eySzAfUPmLXkxt/
         PBZZektrN77e4PsYepzUh2aVD2Lx+BSN5oFnkWXZwS/X0eoY5BfekCOIe23YhFpaMiU5
         e0wpKKnIUV64OBlu1A57GTrbQhS4WzHVLHUJJ0XotXSxZwurFY8fq1AKVCDyyoNXvw1i
         /o2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687193712; x=1689785712;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJgz5p8ObjWVtssTBWmk+hhj1Pf/tshblkaYlQ7Il3k=;
        b=RKTMDRhxn6XaIJZUVazsIr+0Dx1wg98pF2jL0mlUAqITkXRHvH9j6Ip0koeCEfH8Km
         rzxDk0xfszo7FhWODrsFux7R47s6g3gbON15/MRLKpyUKpjvue5/aGyNGZonOW96qXZY
         Tk36Y9jhKQc2pSWMMGKB8FITJtMod/+bTo0a4CjG0RNxCZjs3Gdta+ITH5Zb58Mm9KH7
         wsCeUgH4DhxDc/jRGB1YWedRtKWq8fGahI0sJfPSpNMCosk51FX4tW3AioNNm43lhbhz
         CYNEgN+QZ2nyhpZygOpBN839jvr+HimRQgBtj9oV9U615zPoWnAb667XHES+Q5qazsqQ
         N75A==
X-Gm-Message-State: AC+VfDyYngr95LGXXRvZ6gijL+yxbr7rqEbeUdWymogoPrXj0YHy5kOo
	BDUCG7hNe4CfJ2RPRJ7ToOaTnONUZCLWZ9DhvAc=
X-Google-Smtp-Source: ACHHUZ5Nohkr2gfpKkPcQLQeVrD/BsUPu1F7zBe2X9rva41vhkvAwRE7ZMmYkPCh7ODsH1CplyKR0Kdyj279nF4nSvk=
X-Received: by 2002:a05:6512:68:b0:4f7:4098:9905 with SMTP id
 i8-20020a056512006800b004f740989905mr5509166lfo.65.1687193711832; Mon, 19 Jun
 2023 09:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR11MB49021AEB3FDB7ED00B7CE733D75FA@PH0PR11MB4902.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB49021AEB3FDB7ED00B7CE733D75FA@PH0PR11MB4902.namprd11.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Jun 2023 18:55:00 +0200
Message-ID: <CANNYZj-RB=jsT5ROToGnZGdLUsqfnmOg6r4EXZ9TtjZYfZszBA@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: oobitots@cisco.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 16:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60350

I think there is a mistake in the file recipe (and rpm has the problem too):

        cat <<- EOF > ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh
                export MAGIC="$OECORE_NATIVE_SYSROOT${datadir}/misc/magic.mgc"
        EOF

$OECORE_NATIVE_SYSROOT should be prefixed with a \ to prevent shell
variable expansion at build time.

Can you check that the problem is then fixed?

Alex

On Mon, 19 Jun 2023 at 17:50, Oleksiy Obitotskyy via
lists.yoctoproject.org <oobitots=cisco.com@lists.yoctoproject.org>
wrote:
>
> Hi,
>
> I'm working on master oe core master branch and run into problem with file for nativesdk (buildtools tarball).
> File started to use MAGIC variable initialized from .../environment-setup.d/file.sh, like
>
> /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux/usr/share/misc/magic.mgc
>
> This path relocation does not covered by relocate_sdk.sh script.
>
> Commit that change behavior from wrapper that use relative path to environment variable with absolute path is:
>
> commit 47db876d09d9a4394048579c21d0b394450ce681
> Author: Chen Qi <Qi.Chen@windriver.com>
> Date:   Tue Jan 17 12:06:30 2023 +0800
>
>     file: export MAGIC in SDK
>
>     Previously, a wrapper is used for file, which adds '--magic-file'
>     option to it. But other components might use libmagic and in such
>     case, if there's no MAGIC environent variable set correctly, things
>     do not work. For example, rpmbuild makes use of libmagic and it
>     requries MAGIC to be set correctly.
>
>     Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>     Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>
> I would like to ask if anybody else has such an issue. Any propositions other than reverting commit?
>
> Regards,
> Oleksiy
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60348): https://lists.yoctoproject.org/g/yocto/message/60348
> Mute This Topic: https://lists.yoctoproject.org/mt/99626082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

