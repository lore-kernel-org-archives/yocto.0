Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.18219.1599313677171391981
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Sep 2020 06:47:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mH8RRwVi;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id t20so6879990qtr.8
        for <yocto@lists.yoctoproject.org>; Sat, 05 Sep 2020 06:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=iTtVxnvmn8y4MK4wktH+R2qnd9VM6Esp/PBQhyJdr30=;
        b=mH8RRwVidA5kKFuTJrguNKJ73b4tvzvBWTFD9jMXm1GsFPgxK0XHf5hZT1a7P2641f
         k7mG9uNiTZFKVknd0o3XmiM2irCKYcsZR38Ev4mfxz+0FCA4MYG6j7IFuzA+1L3DvDaV
         6fHITjRR8rMXQyDbB7jf8GTrI+NQdQa/+9ZSLv9ujjW4atE8I1xig2gBdDRoTMoKEkAY
         dWkJNjxD8OrcrRJ/t7IfxN2h3BLfZz7Y2Pw+Qn4a9vB159HfOhP+vNgDTlxWgIza3zD0
         6Qn5Sla1oQ9AQ8iZEM7eHmP7oajp/MNMxVstlw0vBpUZhHbSSOFMTfuUA9ieYh6HTGm2
         GBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iTtVxnvmn8y4MK4wktH+R2qnd9VM6Esp/PBQhyJdr30=;
        b=H9Rkk6fC2TXxkvGlHgNZSohq6Lwk+KiOBGgcwGMC0nau8Y+TpeMIEhV1T4oOtDfE5/
         SU0L+wc4WRQFbIrgyn0MJhEGCyf9EdNVEjf2qD/000kqLEv2TDYMlx72G+nWzvS0bIkh
         sNU0bamwS+ipOFCQJutSaJ/KBCr7A4R36IwbmyPjXm2HLnyABnGZhOhbnykHGdEAXz8A
         XcbGzcucQAGvOoG5VKnLCOfAmaIYHluH5HvP7IQpbWK0ZdLJEuyHjvkFpsdsdTydM1o7
         SCnNlpyV34kOkozMyVsqdvCQd9mGIeraopFCWaHiwy6P6C/9jtBGDeqWoZFjJnLKn5rZ
         HGRg==
X-Gm-Message-State: AOAM532UuKYhz4zxAs7i2jeLbQ4FHfZ4H2EmDI/zBnXCwyMwFKI/R4zu
	5S1UXlmxHWZyj/x8IIOHj2+ibZg8n5Cs/LwHuEOmPqlR0lM6pw==
X-Google-Smtp-Source: ABdhPJxtE5myudg5ERbzapEg4+VzfK82TZrnBWVQK0lYSwyAn9PCx+r8Hmk8NOIVwp95LTcY8Iexw8bUGrTA6f272wA=
X-Received: by 2002:ac8:2495:: with SMTP id s21mr13223507qts.194.1599313676194;
 Sat, 05 Sep 2020 06:47:56 -0700 (PDT)
MIME-Version: 1.0
References: <1tsx.1599290258303001127.ezGm@lists.yoctoproject.org>
In-Reply-To: <1tsx.1599290258303001127.ezGm@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 5 Sep 2020 06:47:30 -0700
Message-ID: <CAMKF1soOUvdS9scA=1tyxoFcY=r=hgxhU_X9M8dGpKjT+MEVTA@mail.gmail.com>
Subject: Re: [yocto] Build failure due to wic-tools dependency #yocto
To: hariprasath.gujulanelango@wabco-auto.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

it seems you might be missing below commit
https://git.openembedded.org/openembedded-core/commit/?id=3Dd0ebcf62109d6a=
131e02cd4c0f04bba203ed6579

On Sat, Sep 5, 2020 at 12:17 AM
<hariprasath.gujulanelango@wabco-auto.com> wrote:
>
> Hello all
>
> I am trying to build Yocto based distribution for a custom target based =
on I.MX8. While creating the target image, I am facing the below error. The=
 wic-tools recipe file already has 'e2fsprogs-native' in its DEPENDS list. =
Also I am able to the see the e2fsprogs-native binaries generate already un=
der "build/tmp/sysroots-components/x86_64/e2fsprogs-native/sbin/". I have a=
ttached the necessary logs for reference.
>
> Additionally I tried 'bitbake wic-tools' and that builds fine. Any hints=
 whats wrong ?
>
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_image_wic
> | INFO: Creating image(s)...
> |
> | ERROR: A native program mkfs.ext4 required to build the image was not =
found (see details above).
> |
> | Please make sure wic-tools have e2fsprogs-native in its DEPENDS, build=
 it with 'bitbake wic-tools' and try again.
> |
> |
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/hari/projects/tx-nextgen/linux-yocto-bsp/bu=
ild/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/temp/run.do_imag=
e_wic.21626' failed with exit code 1:
> | INFO: Creating image(s)...
> |
> | ERROR: A native program mkfs.ext4 required to build the image was not =
found (see details above).
> |
> | Please make sure wic-tools have e2fsprogs-native in its DEPENDS, build=
 it with 'bitbake wic-tools' and try again.
> |
> |
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (/home/hari/projects/tx-nextgen/linux-yocto-bsp/sources/meta=
-tx-nextgen/recipes-core/images/nextgen-image.bb:do_image_wic) failed with =
exit code '1'
> NOTE: Tasks Summary: Attempted 5390 tasks of which 1 didn't need to be r=
erun and 1 failed.
>
>=20
