Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.1660.1603824470743854416
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 11:47:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WHdHd45Z;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id r8so1778521qtp.13
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 11:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vnEgF4Gwo26iWQxq1bsvAdA1kPl5XUkKpqxg0rNmXiY=;
        b=WHdHd45ZwOsd6DbZ5KEylDCmj2atmIgaRorwP2WYWFh9fGBvQGeDs+MG0JwzAfbe5w
         rQmJ+4aVvKSYx0Y7Rd3+ElL+FaN/mKYD0XtmbdfeultWZzWbpigTslR5zOTvHVTN2167
         vomDi/AYD1cDfvg4ZpEcdhWXhKdKKG349SDtwzioZayY0H8CdR4e3glAIwBIcZdlXqzb
         wzOZ//EIdesYXqAWJT2KY5re45G14E8w80tX1AIBvF2sYRaiuMjdQTyMvir0NvRSZtjM
         q6fPLMNioBeLZXcfn+9e4UA071c6sDYTT7xp6JF8XXw18omGehXgxEvMa6/ch7ehLo2y
         0nKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vnEgF4Gwo26iWQxq1bsvAdA1kPl5XUkKpqxg0rNmXiY=;
        b=RxSXBBRZfAt7k+v+wLcZ6oJjqoPW8baqetnpuFfOUjmU+CyE3x9jHi6X9mxnWNQN0T
         doCvL7al9tAd7PmOI90KRL+1KKQjEFmJ8Jp6TvHgrIL2rgZTUv2J8Q4RoZtY7WXyNNNd
         xk/ZmLwbHEhQHGJ/YeX8uz/PQCbyTKf5qqa/N4fPwprUGdlVUIbzi5ZID28IoKajvLQu
         G87rOK5I2XPMulmOPSJxbcx7/QhiP1wRnWFDfMo5FXBqJvEmFNcxSTk5g1Dev3b+0Jt4
         zf78FCl1OyM0N9t4/xtzqnGjxCRR01NuG6WC3xAyepJ0s5Z+9u3ub8YtYBiPClkgdJWJ
         qC5Q==
X-Gm-Message-State: AOAM532LeAxWF1lqGT32qSXXwyzdu9y/cUYcpJuf/4U4CDSheza0f3Zi
	a+9/Yf6OiLSfxTMQJnfgCtJAISpfxQi/D33XKzY=
X-Google-Smtp-Source: ABdhPJzqjS05kpoOaMhFKow2S9lciZCRw6gY1GmnBc+W7kYbGEIe9tQybOUxYNL5Sr62N0VeD0UNmdymS7tHXKxb2V0=
X-Received: by 2002:ac8:5a82:: with SMTP id c2mr3680458qtc.378.1603824469565;
 Tue, 27 Oct 2020 11:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <vd2P.1603821894021570632.tZcu@lists.yoctoproject.org>
In-Reply-To: <vd2P.1603821894021570632.tZcu@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Oct 2020 11:47:23 -0700
Message-ID: <CAMKF1so-4dhrQ6nUa7mVXG4Z7Z0r-GQpFicgEK--DAQm-Fjdrg@mail.gmail.com>
Subject: Re: [yocto] Recent issues with BB_DONT_CACHE?
To: Andrew Geissler <geissonator@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 27, 2020 at 11:05 AM Andrew Geissler <geissonator@gmail.com> wr=
ote:
>
> Over in the OpenBMC project, we rebased on yocto master (https://gerrit.=
openbmc-project.xyz/c/openbmc/openbmc/+/37488). After this we started seein=
g intermittent issues with our os-release.bb recipe. We have a .bbappend in=
 our meta-phosphor layer (https://github.com/openbmc/openbmc/blob/583147ea4=
5f94ee363e9ae30ccb65b9ed1561b54/meta-phosphor/recipes-core/os-release/os-re=
lease.bbappend) that issues git commands to use the git hash to fill in our=
 os-release.
>
> After updating to the latest poky, sometimes the build works fine, other=
 times we run into https://github.com/openbmc/openbmc/issues/3720
>
> ERROR=EF=BF=BD[0m: =EF=BF=BD[31mWhen reparsing /var/lib/jenkins-slave/wo=
rkspace/ci-meta/distro/ubuntu/label/docker-builder/target/witherspoon/openb=
mc/meta/recipes-core/os-release/os-release.bb:do_compile, the basehash valu=
e changed from 5da39bb75d4e4256ff7e589f6204c0ee79f16031e54aa78a23d630633bec=
ceac to c266b6051c26e27a7f5585d632b703511a7a9657fa2960515b570d3ef54a8ef2. T=
he metadata is not deterministic and this needs to be fixed.=EF=BF=BD[0m
>
> After some debug, it appears as if occasionally, bitbake is using the ss=
tate cached os-release initially, and then during the build process it move=
s to using the correct hash id. This then causes the above error. We had is=
sues with this way back in the day when we first introduced this bbappend a=
nd the solution was to add this to that recipe:
>
> BB_DONT_CACHE =3D "1"
>
> I don't see anything in that commit list from poky that looks suspicious=
 but it definitely started happening when we brought that in. I tried modif=
ying our os-release.bbappend to only run once during the compile phase but =
that caused issues where sometimes the os-release field in our flash image =
was incorrect (https://gerrit.openbmc-project.xyz/c/openbmc/meta-phosphor/+=
/37705 is the revert of that try)

You can add a function and use nostamp on it so it gets executed every
time, something like
https://github.com/YoeDistro/yoe-distro/blob/dunfell/sources/meta-yoe/reci=
pes-core/images/updater.inc#L27-L47
for ideas

secondly, https://github.com/openbmc/openbmc/blob/583147ea45f94ee363e9ae30=
ccb65b9ed1561b54/meta-phosphor/recipes-core/os-release/os-release.bbappend#=
L38
seems to be
interesting what is the intention here ?

I think it would be better to have this data extraction added to
bitbake so it can be run at the beginning when layers are parsed, it
already is dumping build configuration so latch on
to it would get you what you want.

>
>
>=20
>
