Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E3C77B75
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 11:53:29 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.19975.1684842801654659805
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 04:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Q7fwj716;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f3b9755961so3327640e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 04:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684842799; x=1687434799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jYyrq3m0GyEEdYJiUvWlW3iHyH2A9Fwm/l3peU7ggek=;
        b=Q7fwj716PBxhnlIA3d5Or5flY6zIMOqjd7gqWo63hxE23a4P6Sa55Jw8y6W18NGNYa
         Uqd6nWgzl3dFcJXAMhzVdPklhcdy76cRk7yivtewTVRLsShyDuv2p3LiKEfle+tX10bV
         U4nkAGAK/diZqF7Gq0GurRgFCHwenPuL+IE+aX1OkXu9vs7tDxOFp/E9+roxEGJ/KBRo
         PA3txEC3r35zlSMdXQ1f4TE5AFE8k/ADeJoI4JnZDrtfogtQ5OCkdwYu2DTepym5b1Ug
         YPFl3dDONQUqPTK468eaEUMrQFuMbK3JBPpLyfQ31WJJUhTWMXSlNVX4qIQhm/eo2Duh
         gXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684842799; x=1687434799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jYyrq3m0GyEEdYJiUvWlW3iHyH2A9Fwm/l3peU7ggek=;
        b=UtsclNa6t3HShnk/J0/H1T53YCYXacd1g9IaLdo19hfrsGOA0CpcLrskZd2hNIWUVW
         5dYA62s8ECEshejux5Et5kBWQvseNuesDs5P8LzRaMn7n/VCXlQk0yXrUG/CR93n5/Kr
         GvGZddf6SXAciF1BQ52Dag0lAaCf2rqHYwgM7sfrioj3nvNZz9Wgu0sW4lCZ5qQeI1Bp
         AleW0IJI7NxzQ9nN4jEqP9RP/mPz3+SyXqJZA1ws5lTx6DI+FumNEAKIEWUyZKoA7o7S
         jd/GCx8xf1n6fiE8d8RwQWowQOsMLQqC9xkyhxSYAfTFujk/J3A7wIQseEnm0TAdN8En
         hDLQ==
X-Gm-Message-State: AC+VfDx0z5xRWb4CJe2PIv6hfRDG9GqQlw9D9LcQmbBL47zbZuHFSSsm
	mwK6qwtG3r8OGZbsF2G4ZZv/nheGKZ1DClNDhZs=
X-Google-Smtp-Source: ACHHUZ7ZOnLHwy860wjtaxeFB1JDGzjvLdOHqQ5E93pgqc06QCs1CD1tFIZDivhjHxbk+Hd19CMdkZ58Yt9EvTzANrs=
X-Received: by 2002:a2e:3213:0:b0:2af:1eee:84af with SMTP id
 y19-20020a2e3213000000b002af1eee84afmr5287330ljy.26.1684842799235; Tue, 23
 May 2023 04:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
In-Reply-To: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 May 2023 13:53:07 +0200
Message-ID: <CANNYZj9UP1jY-rHExqjPpe0i+KTkFtjbPSzAbQhB1odkKdKhzg@mail.gmail.com>
Subject: Re: [yocto] Inquiry Regarding License Compatibility in OpenEmbedded
 Meta-Security Layer #selinux #yocto #qt5 #kernel #hardknott #bitbake #dunfell
 #gplv3 #imx8 #linux
To: cheerala.rohith@spacelabs.com
Cc: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 11:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60096

On Tue, 23 May 2023 at 13:30, <cheerala.rohith@spacelabs.com> wrote:
>
> I am reaching out to seek clarification regarding the license compatibili=
ty within theOpenEmbedded Meta-Security layer, particularly in relation to =
the presence of LGPL, GPL 2.0 and GPL 3.0 licenses and the ambiguity in the=
 license information of the ClamAV tool and other Security tools in meta-se=
curity layer.
>
> We have noticed that the meta-security layer within the OpenEmbedded proj=
ect contains several components with LGPL, GPL 2.0 and GPL 3.0 licenses. Ad=
ditionally, there is ambiguity regarding the license information for the Cl=
amAV tool, as the OpenEmbedded recipe documentation indicates it is LGPL ( =
https://layers.openembedded.org/layerindex/recipe/32867/ ), while the ClamA=
V documentation specifies GPL 2.0 ( https://github.com/Cisco-Talos/clamav )=
.

I believe this is incorrectly written in the openembedded recipe and
the component is indeed GPL 2.0. CC Armin.

> 1. Please clarify on the ambiguity of license information for recipes and=
 whether these recipes can be integrated into commercial products that nece=
ssitates strict adherence to licensing requirements.
> 2. Which license will apply to the Image that is bitbaked with openembedd=
ed recipes? will the license be MIT as Yocto project.

We do need to fix the clamav recipe to provide correct metadata (it
seems like a simple mistake in an isolated recipe), but otherwise
these are the questions for your company's legal department, not the
open source community. The community does not offer legal advice, but
we do know that a lot of successful products are shipped that are
built using Yocto project, and presumbly companies are able to handle
legal risks and requirements.

The image will contain code under many different licenses coming from
components such as clamav, and if you ship it in a product, you must
fulfil the requirements of all those licenses.

Alex

