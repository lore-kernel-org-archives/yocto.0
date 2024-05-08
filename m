Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97360C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 12:14:12 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.10621.1715170447816751013
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 May 2024 05:14:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=g+5+Gj0R;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5206a5854adso3819122e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 05:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715170446; x=1715775246; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRDt3Hlox5pXl+Iid29PtN+tpsYi3SPH4Sa4QEjFoKc=;
        b=g+5+Gj0RoqOm+WWjE1ZV9jL2btG4eb/jNGHkAE+1LD/eyZrLpULtMghkNDVVQEje1t
         TOXkklasBKTp+3Opov+NtWx/77QX6WB+Q/uRnnBSvPYZ84bgwosNZmD1nQlpiC7ZMYQD
         ecJypGXLMN5zTzcK2xaiAu4oX0AWRM/ppgDcLDqhoODc+9s3ZLVQb677RHC/fkBWQwpM
         THJOIx8i8xugAm5QobGqoHGUe/dX8l0YXOMd2JMm3rIsVdi6FfE0B8HsoKvTo/QWebcS
         vtSt7fOZ7J26KjSRrQBUO0BompbUYID3ZqnTrQUUdSm0TnaP3EUmHQFln++K8WdX5uEI
         0NIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715170446; x=1715775246;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRDt3Hlox5pXl+Iid29PtN+tpsYi3SPH4Sa4QEjFoKc=;
        b=nq3AT7NqArgbOp8zoY06GP62WgV14P7z9DW/q7PqVkR/VFhr7r8j7KUuOTYwzQV9sE
         j/unJ30Kd7OGokyrgDFMf1RfRgz6yEiCW7+X7RjOo+OWIKZg6DB3q678qGMGfevPuC/M
         lyRnnRJzYWcFmLiBxZX3OoOrgMskvBOzzBOApL4DteKah54nZHkABNcp4ERLqm/NODeA
         9sL/YcLUFWxm9QIhrVQBC/jfoHU7kgDJF9aOx/SAFNT0//oqiBWzRrhzPJ46tCG3Ww/J
         J3n4dIhSgCApaA4Pf5zj/G7N/staGsO7mu6Y1pw0nNcc0KQbSz09ig+uLa44PlQ0rgCY
         fThA==
X-Gm-Message-State: AOJu0Yxc/UYL1iYPImSew4KB+QSd/9gi0KjWqR5nhST8gu7smzp/qmLp
	qPpF6O8HXPVAf3ObXovuEzbizlLP0Nve0WvoxEyp2H7BHuNT0xc7OHPHnk43EIxa14JX9vvfNRn
	CIln9Tmr+iV3aJnFN9HcOc2osubQ+OA==
X-Google-Smtp-Source: AGHT+IHkk7H5BYWvYAoZqcDA3jDCvv/aKC2qU0CDrfoT3VCLaHCTUa+My7K6U+AX5de3ipLPz6yJjSJIb8NztmzXhZM=
X-Received: by 2002:a05:6512:29a:b0:51f:5872:dd8c with SMTP id
 2adb3069b0e04-5217c667325mr1562390e87.39.1715170445434; Wed, 08 May 2024
 05:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAHGBnuPBiOEEHnnCuPA-1AxTq60qCsMcP3-y=PvkVqguGyAt+w@mail.gmail.com>
In-Reply-To: <CAHGBnuPBiOEEHnnCuPA-1AxTq60qCsMcP3-y=PvkVqguGyAt+w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 May 2024 14:13:53 +0200
Message-ID: <CANNYZj_XecfFUkOfunX=iM1SM8v=K3VjbwcHTQzDm=A6H7zShw@mail.gmail.com>
Subject: Re: [yocto] Generating SPDX documents without actually building anything
To: yocto@lists.yoctoproject.org, sschuberth@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 12:14:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63053

I'm not sure I understand how this would even be possible? You can't
generate SPDX until you have the binary artefacts and they've been
split into packages as far as I understand. The spdx code in yocto
explicitly establishes that relation between tasks.

Alex

On Wed, 8 May 2024 at 13:59, Sebastian Schuberth via
lists.yoctoproject.org <sschuberth=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hi all,
>
> to start with a disclaimer, I'm a total noob when it comes to Open Embedd=
ed / Embedded Linux / Yocto / BitBake stuff. That said, I'm in need of crea=
ting SPDX documents for Yocto projects in the context of [1]. I'm already q=
uite far in that I work with Poky and programmatically run something like
>
> bitbake -r /home/sebastian/Development/GitHub/doubleopen-project/ort/plug=
ins/package-managers/bitbake/src/main/resources/spdx.conf -c create_spdx xm=
lto
>
> However, I continuously run into various build problems on my Fedora 40 m=
achine (one of which has been recently addressed by [2]), let alone the tim=
e it takes to build something from scratch, even something as small as e.g.=
 the "xmlto" target. So, ideally, I would be able to create SPDX documents =
without really building any binaries at all. I probably want all the source=
 download and patching to happen, in order to archive the patched code that=
 goes into the binaries, but skip the actual compiler / linker invocations =
to save time, and just create the SPDX documents.
>
> Is something like this already possible somehow, maybe by setting from co=
mpiler / linker variables to fake scripts that just do nothing?
>
> Thanks for any insights!
>
> [1]: https://github.com/oss-review-toolkit/ort/issues/722
> [2]: https://github.com/openembedded/bitbake/commit/f10e630fd7561746d835a=
4378e8777e78f56e44a
>
> --
> Sebastian Schuberth
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63052): https://lists.yoctoproject.org/g/yocto/messag=
e/63052
> Mute This Topic: https://lists.yoctoproject.org/mt/105979197/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

