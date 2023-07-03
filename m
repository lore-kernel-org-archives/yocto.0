Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 046AEC001B3
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 19:42:14 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.42311.1688413326144886889
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 12:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=l2jn2Hm6;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so7837979e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 12:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688413324; x=1691005324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fzs45/PNqyHyX9497ng4eYVhTNk0jBw5796mRUJl254=;
        b=l2jn2Hm6L1mmlZDQke1kgY7UREPeXbA8QymVMmzrFJ39oJ+hTNQdwReAKK5k49AiuN
         afETDD6R783FPiIn+dGwN9rXsbswWZgjFgTfe019YQ9GyTFNKgGHTy9RC0DI3obqW98r
         3Q4gMiirI1uG8qNBZV2uyuv1ZS4Iv6Ij0RDcS1crNwg/cmvZ1brg9q/OV4sEhfaG7oHO
         rn38TV3jWBB9R0k26aNAq2C+dqFClQ/RR9lDeZ0kXzBVenpnWR5xsIwJYl2MIbqBBkX8
         vbkXWM45mDoj0xnm+plZ91oj6Ni79JQFDA1Iio8XFYYJhmx7bu+VskEPVx2Fr0+G8rvp
         G8dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688413324; x=1691005324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fzs45/PNqyHyX9497ng4eYVhTNk0jBw5796mRUJl254=;
        b=N7UbuvyW7I1DFXCRhUFnUHDIcugIQrJwk0nKqTlNpiiS1+1cmSkEyCUCYD1wt4Txq2
         nNeDKTeIll0RndK5/5naaJPlAnNjSpL049t4UgIoVsytqtujwihMEWO9++8a4F/HUQYU
         h746mU9+ZESMGHncBb8w9ZVh5zl6Xi1qAQZwDOTuYOg6Y/fQcfMrI0kWcwcVE8N1lNTI
         wGmx3I8UnKAug/BXq8djpYOM456OQK3xUUVkuE5G90KYBY7wN8w2C41y+j9B7Foi7sjh
         x7YmBMTLGBO50c7bib4wQA6EJveTin81Ofude9SBecvxZ8r+tDd54WS8GGT0zuSO3vN+
         pAWQ==
X-Gm-Message-State: ABy/qLYmacdriGoTurVtw8sxqh8MMB/3vg+5zcsnWf64bf2NbqzTLpju
	hzREyLEVWJSfDvoGHz75V9Smc5Li/Is/9tW2qHw=
X-Google-Smtp-Source: APBJJlFpAi7QN8BHbeyU/wvVi4RiO0iscMp1meqy3pGGVQeI/GuwhefMs45TBS0i73gedRUo59qDGavCekNX6PaEDUw=
X-Received: by 2002:ac2:5e29:0:b0:4fa:d194:36be with SMTP id
 o9-20020ac25e29000000b004fad19436bemr6538744lfg.65.1688413324123; Mon, 03 Jul
 2023 12:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
 <25445.1687882175160054772@lists.yoctoproject.org> <CANNYZj9ceErJf27HmT9pKHcJh4Yoyy_iMVkkYK8-ucMwhJKZRQ@mail.gmail.com>
 <SA1PR11MB5828870BACD7E2A9FB1F34D4CB29A@SA1PR11MB5828.namprd11.prod.outlook.com>
In-Reply-To: <SA1PR11MB5828870BACD7E2A9FB1F34D4CB29A@SA1PR11MB5828.namprd11.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 3 Jul 2023 21:41:52 +0200
Message-ID: <CANNYZj_afvzRhqwtS5axmkffaBKRvaOZKYSdCgO76F6G8jKX1A@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: "Oleksandr Hnatiuk -X (ohnatiuk - GLOBALLOGIC INC at Cisco)" <ohnatiuk@cisco.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 19:42:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60506

I think you might want to use create_wrapper helper, similar to how
createrepo_c recipe does it:

do_install:append:class-nativesdk() {
        create_wrapper ${D}/${bindir}/createrepo_c \
                RPM_CONFIGDIR=3D${SDKPATHNATIVE}${libdir_nativesdk}/rpm \
                MAGIC=3D${datadir}/misc/magic.mgc
        create_wrapper ${D}/${bindir}/modifyrepo_c \
                MAGIC=3D${datadir}/misc/magic.mgc

}

I also just checked that MAGIC is relocated and exported correctly,
e.g. running file from the buildtools tarball works fine on the
'plain' command line after installing and setting up the tarball.

Alex

On Mon, 3 Jul 2023 at 14:53, Oleksandr Hnatiuk -X (ohnatiuk -
GLOBALLOGIC INC at Cisco) <ohnatiuk@cisco.com> wrote:
>
> I think it hasn=E2=80=99t been noticed because openembedded-core doesn't =
build `file` in buildtools-tarball.
>
> To reproduce the error, you need to do the following:
> 1. Download openembedded-core and bitbake, source init script
> 2. Add nativesdk-file to TOOLCHAIN_HOST_TASK, e.g. add the following line=
 to conf/local.conf:
> TOOLCHAIN_HOST_TASK:append =3D " nativesdk-file"
> 3. Run `bitbake buildtools-tarball`
> 4. Install buildtools: `tmp-glibc/deploy/sdk/x86_64-buildtools-nativesdk-=
standalone-nodistro.0.sh -y -d $buildtools_install_dir`
> 5. Same as (1) but in a different empty directory (first one built the bu=
ildtools, this one will use them)
> 6. Source the script provided by buildtools, e.g.: `source $buildtools_in=
stall_dir/environment-setup-x86_64-oesdk-linux`
> 7. Run `bitbake quilt-native`
>
> You should get the following error:
>
> ERROR: quilt-native-0.67-r0 do_populate_sysroot: Fatal errors occurred in=
 subprocesses:
> Command '['file', '-b', '/path/to/openembedded-core/build/tmp-glibc/work/=
x86_64-linux/quilt-native/0.67-r0/sysroot-destdir/path/to/openembedded-core=
/build/tmp-glibc/work/x86_64-linux/quilt-native/0.67-r0/recipe-sysroot-nati=
ve/usr/bin/quilt']' returned non-zero exit status 1.
>
> The same error is repeated for each invocation of `file` in do_populate_s=
ysroot
>
> Regards,
> Oleksandr
>
>
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Tuesday, June 27, 2023 7:46 PM
> To: Oleksandr Hnatiuk -X (ohnatiuk - GLOBALLOGIC INC at Cisco) <ohnatiuk@=
cisco.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] File magic/sdk relocation
>
> Before we think of a solution, can you provide steps or a test case where=
 the issue can be seen? It=E2=80=99s in one of the most important tasks, so=
 I=E2=80=99d like to know why it hasn=E2=80=99t been a problem and what is =
the scenario where it is.
>
> Alex

