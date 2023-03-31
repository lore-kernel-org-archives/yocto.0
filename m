Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF319C76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 17:49:22 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.1545.1680284957149479374
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 10:49:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mbraCNlr;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id g19so16812244lfr.9
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 10:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680284955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A67EKx+qCfKxwuMAHh7t3UCEVvm8fFr7ODiC1D3mUiA=;
        b=mbraCNlrgRSnVjt3fyxS7tDGroo8s3yVmZy+wB31pO9ZuGcteLSrsDskZYHUPi/wYj
         X24x0Kw2gAVuQcRyxtWNVB5zaKQq+AD1eK4pg3ZcCFXxX+1b2K0vgwf5p98eksICuTfy
         ahqJBjsMte+5P89JHTdu2FlQR47dsUEytfJ7JL15bDrMzftv7mz+/Pg7dPN5ahSkBDen
         fDuvdLvTnibrm9M2bSm8Y+ySr7eNzhI87khUPR9cOGkrqZkvG3Vkluiwe26M9QUrH+SF
         4QQnHLZvRm0mB9XldBpx0Pa/+nHPUw4JbRZx8URba+PN1h5LtnV9lVpLKPfccQYVW+X3
         JUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680284955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A67EKx+qCfKxwuMAHh7t3UCEVvm8fFr7ODiC1D3mUiA=;
        b=WJpAyRbAzgwutG8KXk542km3F8JnVHoN2JE7RlbIIH7/Jy8NOqwhq3k76Fc7vinyCw
         uPonvr4jyossa/7KSY/1uQrvts2yfKUu4lvZ2beHaqjVPb7yJAINdmLkgiiHVfoctvZw
         TaCrLrOg16NPr+r0TZomlAHxInnAyeYMGUDwPkGhnD/If/m2X10WAD2A+ekb7LiG43cp
         CljSfmpdWeCnyC9I4bRoJeGWT8BxHSdiVqusA8BdKzp+xwQps75uRRRTrzG50DhZVuJ4
         j7Xe2gL2fZyIHmNq61lExhnQGz4hUjRcLfoAhQfByPQ70kdlZJp5dNu+VphCNHJW3PQH
         mWcw==
X-Gm-Message-State: AAQBX9d/gsC4OLDpkb20Ns+dUCPEQReZFg9Ku2RsBbKahhkFIW1/1DVm
	INMcki56caihJyqeRJnecfm1DQo7IgwDNqBwVdw=
X-Google-Smtp-Source: AKy350byPMlv3S/aKEGHYfV9m1Cg0UHkfb51U8QnaYo/uW7ircqqbvZwZgB5EzuwXbPh8l110zYM3jw1DJ9ToAY42vM=
X-Received: by 2002:ac2:5ddb:0:b0:4e8:c8f1:a010 with SMTP id
 x27-20020ac25ddb000000b004e8c8f1a010mr8132898lfq.11.1680284954981; Fri, 31
 Mar 2023 10:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com> <CANPvuRm2Pwuq8WjFjzQL-cvQo1Ger=yAHHKn1Zhx+y_B1wWcog@mail.gmail.com>
In-Reply-To: <CANPvuRm2Pwuq8WjFjzQL-cvQo1Ger=yAHHKn1Zhx+y_B1wWcog@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 31 Mar 2023 19:49:03 +0200
Message-ID: <CANNYZj8KX1W6fzBShSa9S0=onE7mp9xTJuLM8cG32vX0nrN2_A@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Jose Quaresma <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 17:49:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59587

You need to send your public ssh key to Michael (cc) and explain what
access should be granted with that (which repo, which branch(es)).

In this case,
https://git.yoctoproject.org/meta-lts-mixins/
kirkstone/go

Alex

On Fri, 31 Mar 2023 at 18:15, Jose Quaresma <quaresma.jose@gmail.com> wrote=
:
>
> Hi Alex,
>
> I don't have any account/keys that allow me to push directly git.yoctopro=
ject.org
> maybe I need to setup my keys somewhere like with poky-contrib [1]
>
> I will send all the patches to the yocto mailing list as recommended.
>
> [1] https://wiki.yoctoproject.org/wiki/Poky_Contributions
>
> Jose
>
> Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta, 30/03/=
2023 =C3=A0(s) 11:08:
>>
>> I think I pushed the work directly to the respecitve branches in
>> meta-lts-mixins. I'd suggest you send the patches here, and we'll sort
>> out the technicalities (I can publish the branch on
>> git.yoctoproject.org, or maybe you'll be able to push directly as
>> well, provided you also send the patches here). There's no autobuilder
>> testing; for mixin items the contributors are trusted :)
>>
>> Alex
>>
>>
>> On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com> wr=
ote:
>> >
>> > Hi,
>> >
>> > The golang version in kirkstone is the 1.17 and because of this is not=
 possible to use some recent version of other projects like docker that req=
uires a more recent version of the language.
>> >
>> > I have a kirkstone branch [1] available at Foundries.io with the golan=
g backported from the oe-core master that I liked to submit to the meta-lts=
-mixins [2].
>> > Alex is the maintainer of the dunfell golang backport and this kirksto=
ne branch is based on that version.
>> >
>> > Would that be interesting for the project? How should I proceed?
>> >
>> > [1] https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
>> > [2] https://git.yoctoproject.org/meta-lts-mixins
>> >
>> > Jose
>> >
>> > --
>> > Best regards,
>> >
>> > Jos=C3=A9 Quaresma
>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma

