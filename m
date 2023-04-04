Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6336AC761A6
	for <webhook@archiver.kernel.org>; Tue,  4 Apr 2023 11:21:01 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.97950.1680605004189159549
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Apr 2023 03:43:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EUN35u8i;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id m6-20020a05600c3b0600b003ee6e324b19so19769591wms.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Apr 2023 03:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680605002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AuPmtEmLMvMouBPkPqnvY3AM83RmNWIxB00CpcXVmtM=;
        b=EUN35u8iz0yo3jWx6MgKuPGIjSHTmiyHYEmb37++H1eHvcs7Bo6Wk/8mbSLY1aXXLM
         /QoomhmlNC0Puh40k0REOL2HT2hmRTe9XT38UKZEhZT6lDsG2cpceNqA6/uA1Wa7p0bF
         f2ux8aq5ileoRCSjcJ2vUcWx7KgiLUeGqqtxih5vxqF/DDMOarc6Gy0n1cCmKs/ukuDx
         LmQj/qwYdsHH8bDqxLihOcKgKqZFVncUOCF1cVwHBLO1MLMzJjeF171oXfPCkl8Mbwad
         1/XRzSK1gANp/fqbWwZ9VsFo6RLGc7inG9qPFLOXj3IPonjS24YzMweMsYQ5IHS2Ae6x
         TWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680605002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AuPmtEmLMvMouBPkPqnvY3AM83RmNWIxB00CpcXVmtM=;
        b=C2NnIBfduAhpl+Xpc0TrHfX8bBnSeKTZRLomra9CYbGYZujIWzXy00HbDrBviXDchh
         YeHGu8Qqsy2uQrjstTjaq+KRIqeiERzSMrGJs4tPMDlWdKqp7Xwim5+rd0DyqJIRTmK+
         bM6rQxoadxQdIwsVb1eqsd5C/4DDzRWs0Sg6M0dFbWDwQJfwH7uk1pRBWvMPmXNAAL3c
         WLQtCgAJO/1DNW3QWVppl1g+8qXyb9pT1IMburEMUWPWkl7CcApO1a6tA99ICo7KB1j1
         qwPOMX5Uq3xSQurV9EwTZvHIA1z4ctX38uaQkw+IJvPtO3Nf9Kk0M9gU8mX2CSO5wMRo
         RbJg==
X-Gm-Message-State: AAQBX9cF5dvOPBjYr/3cyboezqDAYjYt8NBz5sZFBlgOdCo0WrvCcWM3
	qxRatylFcx9ZSzi9pQEFiA+nca+G0+D+v+Qr+lByoXkb+l8rVg==
X-Google-Smtp-Source: AKy350bgLBU1bn3Qf57diMpWioetPjaiKkecFGwhIdMEHdaGHX6YvtIWIzutLuzsJ/DVnivcSb/XdaGpRuQokVvp91g=
X-Received: by 2002:a05:600c:2305:b0:3ed:779c:4069 with SMTP id
 5-20020a05600c230500b003ed779c4069mr628639wmo.2.1680605002398; Tue, 04 Apr
 2023 03:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <P1NC.1680601106284634963.6O9x@lists.yoctoproject.org> <CAGAf8LyBXj5WZ03ByQsF7MXPW=0GNfLFzHca15Wv+SiiweXjLQ@mail.gmail.com>
In-Reply-To: <CAGAf8LyBXj5WZ03ByQsF7MXPW=0GNfLFzHca15Wv+SiiweXjLQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 4 Apr 2023 12:43:11 +0200
Message-ID: <CAGAf8LwnLQqQ7uPMymMKny-Cac3=ETTnCryr=mXW7S-EXWcpfw@mail.gmail.com>
Subject: Re: [yocto] relabel selinux system at build time: meta-selinux (thud)
To: Kamal Kishor <kamal.kishor@vestel.com.hk>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Apr 2023 11:21:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59612

I am, as we speak (Real Time here and now) working on Android 10 and
12 SELinux...

Has not too much to do with YOCTO. But I can tell you... It is bloody
tough stuff. Especially crossing the domains...

If you have any questions about that, you can ask me. If I can help? If so?

Zee
_______

On Tue, Apr 4, 2023 at 12:33=E2=80=AFPM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> This is a very tough one!
>
> Zee
> _______
>
> On Tue, Apr 4, 2023 at 11:38=E2=80=AFAM Kamal Kishor <kamal.kishor@vestel=
.com.hk> wrote:
> >
> > Hi,
> > I need to relabel the rootfs at build time instead of first boot. Curre=
ntly, I am using thud branch of meta-selinux. I came across the series of p=
atches mentioned below to enable relabelling at build time. Out of these pa=
tches some are already pushed to thud branch and some are not present. So, =
can someone in the community help me to figure out what all patches are req=
uired.
> > Also, I was thinking of using ROOTFS_POSTPROCESS_COMMAND or IMAGE_POSTP=
ROCESS_COMMAND to relabel the filesystem. If this is possible what would be=
 the steps in the postprocess funtion. Do I have to use restorecon command =
or setfiles command to relabel the filesystem.
> > The link to the series of patches is shown below:
> > filesystem relabel at build time
> >
> > Please provide you valuable inputs on this. If you need any more inform=
ation feel free to contact
> >
> > Thanks
> > Kamal Pandey
> >=20
> >

