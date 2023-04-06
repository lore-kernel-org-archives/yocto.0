Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 755D0C7618D
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 06:06:43 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.152117.1680761200887272355
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 23:06:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=j6ryI26S;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id g19so36369627lfr.9
        for <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 23:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680761199; x=1683353199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioQWQxBTVJUmnIRJGz8UXCaJVSgZPSgF0MFXQd4mfXs=;
        b=j6ryI26S7A4rdwDlEJkhznqoaqCnBW7joRx1Mbx/thIQZ+rk3EGiYcQ1BQFD87Qkfx
         8L7AMAq9WASsxN4tgx049RLDl4fmCyDGwPbJI6TMwe3hw/bshyrqkNThwWfg9zGlkZeW
         w7aZRVoG7xs8LSgeRRbc1Imkg4xEu0HDvAkroFlSvYDWmDLu+KQA/UqyIrRbVlYgEn3z
         Lp8vlI0CHOb53jvf7HBocwk/3xJrCETkMicvCjjmnwYAwanNd6Z2W/I1STSgegVc0pug
         0hloE0igdrzE1AVhcHW3vJXqruefFikybhCXmL/+kVDcV2S1sPaaBIEuzmyupjKzCi3/
         HD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680761199; x=1683353199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioQWQxBTVJUmnIRJGz8UXCaJVSgZPSgF0MFXQd4mfXs=;
        b=6pZaZJqSVOX95PtFWIII4tKMJaIOcwBhKHR0yT5CA3qo2jeRMHdXIy8MX2RumM63sC
         YHo3c0MHEZ+TC9XRiqdo3RJiMlQB3V5IoV0hqG7nzXYtzY0qKij1PIGAfd6BG8VJ+uYC
         LcHdiocV/gAVALvma96hLnW3O/OGC5dY47gJWKhX0PDbyFscznrM+jPcW63v/eTtGW/G
         AlRafDGtAyr6lpXDyRN26/CumBneAbNdpmL7+43OFq5k6MmpUA4iMu/Ilj3IR1hQ1xR/
         A0cbCLdTdqvaSdqF9sBf4bGMFvhwTZ5lRh8aQ08IHTwkHvFzl+6kgPcj3iWxLSzKrK6w
         wTUw==
X-Gm-Message-State: AAQBX9cYHNhRgMX8siFYjXuoL9BAMa1cuK2q1DWow6sHDjdz+sR4NtHN
	Um6n++TAr/kRhE9tmm+rEflqJ9a/ZiwxN0oT2HY=
X-Google-Smtp-Source: AKy350Yo3MTw3+T/nZlSdWe9302u+daR07eeKczGhPPnB3TQQML1JszbDLPMVYg9nm6sTqqRkjCD5w6e+KkvWsZb/DI=
X-Received: by 2002:ac2:4c89:0:b0:4db:1c2a:a96e with SMTP id
 d9-20020ac24c89000000b004db1c2aa96emr2674011lfl.9.1680761198616; Wed, 05 Apr
 2023 23:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnhgf-Lu1ArA7=xDYhN2zD8uCQ149HLBLo+Nyb+6sPgS_A@mail.gmail.com>
In-Reply-To: <CAPJWBnhgf-Lu1ArA7=xDYhN2zD8uCQ149HLBLo+Nyb+6sPgS_A@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 6 Apr 2023 08:06:26 +0200
Message-ID: <CAAfyv37+oy35hvu+HgFHeKu8z1j8FpDma2d+WzFkuKhTpnfQ+w@mail.gmail.com>
Subject: Re: [yocto] Unable to solve the initramfs issues
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 06:06:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59624

Hi MOHAMMED,

On Thu, Apr 6, 2023 at 7:06=E2=80=AFAM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> I really need your help in solving this issue.
> I want to add nodejs to my image and added the line IMAGE_INSTALL_append =
+=3D " nodejs "
> to my local.conf file, but got the error message
> ERROR: core-image-minimal-1.0-r0 do_image_cpio: The initramfs size 171613=
(K) exceeds INITRAMFS_MAXSIZE: 131072(K)
> ERROR: core-image-minimal-1.0-r0 do_image_cpio: You can set INITRAMFS_MAX=
SIZE a larger value. Usually, it should
> ERROR: core-image-minimal-1.0-r0 do_image_cpio: be less than 1/2 of ram s=
ize, or you may fail to boot it.
>
> ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/work/m=
esons4_lib32_ap222-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image_c=
pio.211614
> ERROR: Task (/home/mohan/amlogic/poky/meta/recipes-core/images/core-image=
-minimal.bb:do_image_cpio) failed with exit code '1'
>
> I tried to solve this by adding the line
> INITRAMFS_MAXSIZE =3D "524288000"  to my local.conf file and it compiled =
successfully. But the OS flashing failed.
> I have been stuck with this issue for a very long time and need your supp=
ort in this issue. I have attached all the log files or necessary files for=
 you to refer.
You didn't add log from flashing where it fails. Can you set
INITRAMFS_MAXSIZE to only 200M or so? Also from logs it looks like
you're using amlogic. Can you maybe ask for support from your vendor?
>
> Thanks and regards,
> Hassan
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59623): https://lists.yoctoproject.org/g/yocto/messag=
e/59623
> Mute This Topic: https://lists.yoctoproject.org/mt/98099160/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [marek.belisko@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

