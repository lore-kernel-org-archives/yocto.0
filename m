Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2F09CFB440
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 11:32:02 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.50814.1728300717888166754
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 04:31:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZwN7Us+p;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2facf481587so35478761fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 04:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728300716; x=1728905516; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IgW0RuO/VEpB7GVd0aYfQCPYiZ5SPMtpweK4YFtn6pM=;
        b=ZwN7Us+p4pQkkojNxhwQjzZRSeXp4dECtNXzwEkY/yZvTqBCCkkRxpkjlnTn2dcwjV
         vMjtX7P1CqpGISbpMa0gGzNVavXEfkrI18EJLoUFS2LwMY3aPWTyNZMAuWVw7xA9iRb5
         WPWy2b+ufG9tEcQRe/xvCut1Snk25ACVEQb76vjIbAs++qyM9Oj5r+AgmgI0P+5QALG6
         sJZej1TmmidYwS1nC5g5Nd+LkOgxZTXtqw1VOzdEuiXqplsWkaijBvurV0ghIqqAPsIU
         N7h0Sq1auiImXR6rvsvOxqvAGKV1bPkl5WyIgwkpRnpVuM30ql6P04UL4eO9VjNEaV+p
         Fqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728300716; x=1728905516;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IgW0RuO/VEpB7GVd0aYfQCPYiZ5SPMtpweK4YFtn6pM=;
        b=A82/3lYsIQ2ARsWBWp+cwViEg1Xl+brnMLN5KjVhy+lyokp0uSTIqiFUd2r/bm0b15
         GnYUPX2hWWUbuZgr6ETa5QnJQInRXu7/AmkC1wuA8Li2uOC133QlWWM9E/MQdSIeSUEB
         VKyThJmfNR+oR7a0zJSFfB/HvHjP4OGJgjGjyMSFqTkadNkvPK3TogWJ7xzUr9l8id9h
         cTd9B31kuCXvk8+UAdCYozyZVZ1LZHzEJdaYX0y3HLbr3rfpzIesCEnGOxga9GLzHEdc
         Rud6wIUA8101TmdgTjbJoqe8nO7EfGQ+IhlQ6sk8jMSq2SQ97wcvl/PYblOgG2MiwMwE
         MPZg==
X-Gm-Message-State: AOJu0Yw5rt5HgUfn/UghpBVngwO1gc9HRq9UIPHUpbwHBqaIbH8DtvYO
	HibzM5lGpuf3lAUSvEv78lnOUwOaUAyQjhY1syRF0pYzrvlLFTO53ieIQBvzpcI2DGPvmNVcj8I
	wTjtkgAEUIR0GgTnqNsEFSSjjqXhISZb1
X-Google-Smtp-Source: AGHT+IE2sMTUfb5txkxOv/loiU0WOxQ2DL3JEA9JRgO7UNSd/Mxk9ykuM9i38/mIAh7QfSH7Vfro+Ozm9yCyiXIj4PE=
X-Received: by 2002:a2e:be1b:0:b0:2fa:d354:1435 with SMTP id
 38308e7fff4ca-2faf3b55fcfmr38104041fa.0.1728300715597; Mon, 07 Oct 2024
 04:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org>
In-Reply-To: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Oct 2024 13:31:43 +0200
Message-ID: <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 11:32:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63945

On Mon, 7 Oct 2024 at 07:06, Aleksandar Nikolic via
lists.yoctoproject.org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
> 1) When I build a recipe previously not installed in my image and want to=
 install it during runtime, the dnf install command fails, saying that the =
package's dependencies are not met (see [2] for more info). This is fine, a=
s I can see that the tmp/deploy/rpm directory does not contain all of the p=
ackage's dependencies nor the dependencies' WORKDIRs contain the deploy-rpm=
s directory. Is this behavior correct? Shouldn't building a recipe also lea=
d that all of its dependencies are not just built but also packaged and put=
 into the tpm/deploy/rpm directory (the same as with building the image con=
taining the package in question)?

The default behavior is that bitbake runs the absolute minimum of
tasks needed to complete the task you specify (in this case, producing
the rpm). Making a vim rpm requires only do_package of its
dependencies, but not their do_package_write_rpm.

If you want all dependent rpms too, this is easily done with:
bitbake --runall package_write_rpm vim

> 2) Is there an official, stable, and not some hacky way to install alread=
y pre-built packages during the build and not later during runtime? So inst=
ead of building from source or from the sstate-cache, to provide a URL to a=
 webserver holding packages, which would then be pulled and installed (if I=
 am not wrong Isar does this)?

If you ask me, pulling pre-built packages into a yocto image is in
itself a horrible hack that goes against yocto philosophy, and I would
not want yocto to help that or support it in any way.

We build from source. Isar can do what it wants, but I don't have to
like or support that.

There's a separate question of pulling pre-built *binaries* that
sometimes come in .rpm archives and repackaging them with recipes,
which is sort of supported if you list the rpm in SRC_URI (bitbake
will then fetch/unpack/repackage), but I don't like that either for
different reasons (vendor blobs are evil).

> 3) Is enabling and using the package runtime management recommended and e=
ncouraged when it comes to Yocto running on actual devices and not during a=
 development phase? IMHO we are talking about embedded devices here, with l=
ittle or no user interaction, with secure boot enabled, atomic updates, etc=
. and having a package management system such as dnf or apt is cool, but is=
 also kind of brittle (a simple power off during apt update can break the s=
ystem).

That's exactly correct. Classic package management (rpm/dpkg) was
created for the 'Unix workstation' use case where you want to provide
as much available disk space as possible to users (so A/B partitioning
is a non-starter), and users can easily add things they want to their
system. Nobody ever claimed that such mass-upgrade transactions can be
safely interrupted by a power outage, and in all likelihood you'll
have a half-updated system with an undefined behaviour on the next
boot.

Alex

