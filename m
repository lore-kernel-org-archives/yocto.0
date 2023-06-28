Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D3DEB64D7
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 16:48:38 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.21854.1687970915013089292
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jun 2023 09:48:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=iY0x0MCh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3141316b253so4752f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 09:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687970913; x=1690562913;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOVStzqczFeqqLqltOw0p/0L7Qg16MIL4frIMhUvbB0=;
        b=iY0x0MChgo70Wf3L2BArJK7m2FsarPZNKVtfgHvYNUeIxqFmVJk8rPG4Ql/MjPi5gI
         qVt9zIgkbSLF/XhzzsNV5SbXe+w9C1JBDizoS5xiSZdzBR6Hwa/lCVrchSrbKleYMPMI
         QXq7reA7bZerlDgp2TRM3iehBMMtXjysVzndI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687970913; x=1690562913;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JOVStzqczFeqqLqltOw0p/0L7Qg16MIL4frIMhUvbB0=;
        b=AnvidXYbrUqDZSc3nh07RNfAWNRnsnfYL1T542rlFAM2i8CBQAPMrqiiy6w7cR/7FY
         IwPWGJKszozwTDotJLLfpuuPEyGZEsr5obB2ugn6CaFH634+GcG/Iwmiji9VChBLsBAH
         S9v0Ji+BuVvpn6C52sjVUGdMqebHvl/kOyttHig8dPBQVOchRXVbG0+v906x29hbW46y
         WBO0VKXlrrIZZkGizUxfCPUTFhaZamXCqqHn8PdPH+uLo8zsGCC6RnMUUlLreF6z0O1x
         vGc3uhlZp5c4o8o9TTF7GkG4Re9wUH8MIhDlaOp40bMl8vu6me6dKZH5LVBvMhOSrsjF
         7K8A==
X-Gm-Message-State: AC+VfDxBi5w5NepBguaw26YjJnQKcZHbCHnUIvH7vRnpftCSu7AmB4AE
	7Thg2jDBe3Jaa3vwsfgLXd0nIVEYBx/wybQ6Em8=
X-Google-Smtp-Source: ACHHUZ5CUfhprd7j2WIZT1p6cD1fbyRTTSIDya1eV5rDKSzkOBqT7e+iFp5m6T0sJGtvgH0yP7nFyw==
X-Received: by 2002:adf:d0c8:0:b0:314:4db:e0b1 with SMTP id z8-20020adfd0c8000000b0031404dbe0b1mr2810996wrh.11.1687970913427;
        Wed, 28 Jun 2023 09:48:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a71a:20d6:74fc:9334? ([2001:8b0:aba:5f3c:a71a:20d6:74fc:9334])
        by smtp.gmail.com with ESMTPSA id k5-20020a5d6e85000000b003063a92bbf5sm13847508wrz.70.2023.06.28.09.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 09:48:33 -0700 (PDT)
Message-ID: <8d7206ad63390ac5d3e69b61121a4de947128f50.camel@linuxfoundation.org>
Subject: Re: [yocto] report one objcopy bug and fix
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: cddiao@ambarella.com, yocto@lists.yoctoproject.org
Date: Wed, 28 Jun 2023 17:48:32 +0100
In-Reply-To: <t7pW.1687938930579768136.YiLL@lists.yoctoproject.org>
References: <t7pW.1687938930579768136.YiLL@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 16:48:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60467

On Wed, 2023-06-28 at 00:55 -0700, cddiao@ambarella.com wrote:
> Hi,
> =C2=A0=C2=A0=C2=A0 A bug is triggered when using docker + Ubuntu 20.04.3 =
LTS. The
> bug message is :
>=20
> File: 'xxx/build/poky/meta/classes/kernel-module-split.bbclass',
> lineno: 68, function: extract_modinfo
> =C2=A0=C2=A0=C2=A0=C2=A0 0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise msg
> =C2=A0=C2=A0=C2=A0=C2=A0 0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D "%sobjcopy -j .modinfo -O binary %s %s" %
> (d.getVar("HOST_PREFIX") or "", tmpkofile, tmpfile)
> =C2=A0=C2=A0=C2=A0=C2=A0 0066:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
else:
> =C2=A0=C2=A0=C2=A0=C2=A0 0067:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D "%sobjcopy -j .modinfo -O binary %s %s" %
> (d.getVar("HOST_PREFIX") or "", file, tmpfile)
> =C2=A0*** 0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.chec=
k_call(cmd, shell=3DTrue)
> =C2=A0Exception: subprocess.CalledProcessError: Command 'aarch64-poky-
> linux-objcopy -j .modinfo -O binary ../keymaps/rc-alink-dtu-m.ko=C2=A0=C2=
=A0
> ../tmpwhs5uwlt' returned non-zero exit status 1.
> =C2=A0
> =C2=A0=C2=A0=C2=A0 The=C2=A0 "rc-alink-dtu-m.ko" file is damaged, and can=
't=C2=A0 analysis by
> file command :
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $ file -b rc-alink-dtu-m.ko
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 data
> =C2=A0 =C2=A0 and the damaged is caused by=C2=A0
> build/poky/meta/classes/package.bbclass=C2=A0 perform_packagecopy()
> =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 cmd =3D 'tar --exclude=3D./sysroot-only =
-cf - -C %s -p -S . | tar
> -xf - -C %s' % (dest, dvar)
>=20
> =C2=A0=C2=A0=C2=A0 remove the "-S " can fix the bug.
> =C2=A0=C2=A0=C2=A0 notes: this bug only appears in Ubuntu 20.04.3 LTS, an=
d Ubuntu
> 20.04.6 LTS do not have the issue.

Do you have the tar versions for the two distro versions? Was this a
bug that was fixed in tar?

I'm not sure we can easily work around this, it may be better to error
if a build is attempted with a known broken tar version?

Cheers,

Richard



