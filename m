Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0F42C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 05:45:30 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.5401.1715147126353692510
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 22:45:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dl3GVi7u;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-23f0d7d2ce6so2301753fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 22:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715147125; x=1715751925; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AV6yUwIUjBA4L+Q/XIWM+6MMWb48phHS7/niaHkSGnE=;
        b=dl3GVi7uwrFY3mtybqlrxCFACKMCZ7hcz9ziZM6RyndMXkK6L+vh/EF3jAMPJSplSN
         CMl5Sc10+M5XvDNtVpbFv7fmtv3G7Ax03olxSMICQzDZa82pbXEH8uDOk7el8p+S/afE
         Bddsq6f/nf+FXteQNBw9jwyWjjm4c0Mw/FQPxj9utmqtODSa1r4PdtA+gxTSacM3lkNR
         CKaL+6PGfSCM078JiC406Dd9oVbtAOiGB7VO5wqKoWUbNr8ABVHb8aomX5ZVBN4b9SYb
         6vrnIRlfOWQOFI8BU+YRmR8mtqmagklk877xAPaYhfEFcqpPC0FVhNm8XyveulYLGcRJ
         ET2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715147125; x=1715751925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AV6yUwIUjBA4L+Q/XIWM+6MMWb48phHS7/niaHkSGnE=;
        b=OpKkh5bHBxNhNRyaVjnm2CZp+b5bQ6oeVhvCNz3zwhJUAjHSlV98EmNqzwSnD++Hp3
         KjXDg63Oj8OXSJmI6XUBHzp1RQheMQos3a8PmmWcp4UyLUjY8R/ONxe5xGCF8p9oWHq3
         hjILah72I2hBph5MFR+Ri2CfcLZXe32DHsmhWydGg+4S0dxdKeggUOT7clYsDIApsCVZ
         3q7vqhM6hPWyIYagiT8/4SWPCyh1I3P6cmsPVPjWvdV+eoAE4GC2/nY4NCxBJQQP4wjq
         VTVEPIUWXb3zjbgdAovI8zxThgIu0+N9PAhgZc67TdOYe6+7eg1YeTQonHudQZHmjCF6
         QC4A==
X-Gm-Message-State: AOJu0Yz/pqawadSqjrH51HxFtqrkyRdN4YFbLbmHz+YcZlJ1PbeVH7EC
	q9XbXUY4EnX1fnkYw1MkHHW55qHU5MQ9FwRB1VOcQD35u1G+3OgBt+gEC6DALIjibxIzmOlV765
	wlltUhtevcXYDnCZP6Luq3XD1ifY=
X-Google-Smtp-Source: AGHT+IFBkuzLJ0OMcc+R3Jz5/FprFWc2VTKjV2wMAlSLQG7sNu+IMYlppPl2XzZe9yFulm38KJwD/G2DiB03N0MpIEg=
X-Received: by 2002:a05:6870:b690:b0:22e:c434:ec with SMTP id
 586e51a60fabf-24098c7f5e5mr1823186fac.56.1715147125527; Tue, 07 May 2024
 22:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
 <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com> <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
In-Reply-To: <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 May 2024 22:44:59 -0700
Message-ID: <CAMKF1sokVhLK2muYkdM==d-OCQ66PDgcc2TcMZeK8pCa0xxbPg@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: Worik Stanton <worik.stanton@tirotech.co.nz>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 05:45:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63050

On Tue, May 7, 2024 at 8:38=E2=80=AFPM Worik Stanton
<worik.stanton@tirotech.co.nz> wrote:
>>>
>>>
>>>> fudged unto single repository. AFAICT
>>>> gstreamer1.0-plugins-base_1.20.0.imx.bb should be
>>>> coming from meta-freescale or meta-imx and if you have a unified
>>>> metadata tree then this bb file should be somewhere, if not, that
>>>
>>>
>>> Which "bb"?   "gstreamer1.0-plugins-base_1.20.0.imx.bb"?
>>>
>>> I have: layers/openembedded-core/meta/recipes-multimedia/gstreamer/gstr=
eamer1.0-plugins-base_1.20.5.bb
>>>
>>> The suffix is different. (1.20.5.bb V. 1.20.0.bb)
>>>
>>> That looks like the problem.  Should I rename this file?
>>
>>
>> No, that won=E2=80=99t help whoever has put this together for you would =
be the person to help and regenerate it for you including right dependencie=
s
>>>
>>>
>
>
> The "whomever" has gone away, and I am on my own!
>
> Where do I start resolving a dependency like this?

It's hard to help you with the information you have shared so far.
Maybe you can describe in detail about your
setup and what release you are using and machines being targeted etc.

>
> Worik
>
>>>
>>> Worik
>>>
>>>
>>>> means the project missed adding this layer
>>>> to your build system.
>>>>
>>>> if you dont need this recipe then you can ignore failing on bbappends =
by adding
>>>>
>>>> BB_DANGLINGAPPENDS_WARNONLY =3D "1" to yout local.conf
>>>>
>>>> > ```
>>>> >
>>>> > The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappen=
d) contains:
>>>> >
>>>> > ```
>>>> > FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>>>> >
>>>> > SRC_URI:append =3D " file://0001-glupload-don-t-reject-non-RGBA-outp=
ut-format-in-_dir.patch"
>>>> > ```
>>>> >
>>>> > And the file: "layers/meta-thisbuild-nxp/recipes-multimedia/gstreame=
r/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-form=
at-in-_dir.patch"  exists.
>>>> >
>>>> > What can I do about this?
>>>> >
>>>> > Worik
>>>> >
>>>> >
>>>> >
>>>
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> You automatically follow any topics you start or reply to.
>>> View/Reply Online (#63047): https://lists.yoctoproject.org/g/yocto/mess=
age/63047
>>> Unfollow This Topic: https://lists.yoctoproject.org/unft/105973256/1997=
914
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>

