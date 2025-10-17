Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 372D5CCD183
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 00:34:36 +0000 (UTC)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
 by mx.groups.io with SMTP id smtpd.web11.5312.1760661270218908003
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 17:34:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hMBWYJ7Q;
 spf=pass (domain: gmail.com, ip: 74.125.224.51, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-63e11347fd9so1126980d50.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 17:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760661269; x=1761266069; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRcES0B5GiIim746Xjx66C9DCcTCg/e7kJzolKVhnvU=;
        b=hMBWYJ7Q5K9LNbaXUtpM7tJD78oSBwRSbNUc+tCS0lVbZpF2hHEJ8COSnYZGkWuCPA
         n3/HKr7DmNZhk94pYmUTVqY8Kq0MpfO/kVYSnbmtZxcTt4KedDZ9qGcYHaHw3kktuR+S
         tlVzna4bHeiXevZ518FBDZYOvB2EzQEPmki1SmUdUCQVzjtOWIpNsNbYbo2IrUPP2QQ9
         dtM+EtQWQdjtDj0nYZ9v1v3aRifMXszD2y5onSh01B5eoMJ6oYFQKk+DgIZl6N5cowpb
         wjcWjCbUiMXwx4x/1/XiTrQ8427eCAUdN6UPwn3iD4gn3MynRgCZI7YX0tku0eULz/ig
         xCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760661269; x=1761266069;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aRcES0B5GiIim746Xjx66C9DCcTCg/e7kJzolKVhnvU=;
        b=OWp9/5ntJO+CCVWbEJySwjMDOiF+aDDduAh/JIw+Ckx3bR/2/oAY7y9WlXZwAMR65h
         c6qSSNIvlghK9oKRqVMuJvZKovoCbZQNFnWVRpHfWCSwHrAe9k/7nnEppSx20k8EVupP
         O7jjHTwOm8UzPUTEACi0nqCBVEQDcb2DwyP+KVYnSDh5HKaVUxAo2ecFYqjHSA4UuWSl
         6Gm6p3ciWld9h2ZC/YxGpbIwKAuHAtd7xqm4wE3lKslvmUHF5YzKkJlfIBkoGi39813t
         OLckbgB0C723sVMVih7UZ/jbYEAQ8jOs66N7fbZ63af39BpFLeFRO+rFmAsSc0GR+dqg
         7+LQ==
X-Gm-Message-State: AOJu0YzD4K6mGG2MLhIN+kRagpjbVroOurmi+KApJBqt3gI0TAkjaQNO
	79zNBBj+KaYdBinnkDOiEeEdgnebSd5iOHNh8msYM4fHunzrOEjPIBlA2f0HNAiuBvlhec64EUg
	g60WTFqc7aVPqQTzUOxf9WN7L6VeFY20Dfoyl
X-Gm-Gg: ASbGncsCj/QrrS3oyaGYiXe7JEIe8M5n9I0auuAotIgV1ckASMx77dwbMkStnYraNQN
	GhJr9E3ACWq+IP33ZGx9n7UmeKS0UKx5q8SzkJJp9yMPElOExLIL1ojnUdY568Lu8QProywLX0V
	1j4Xa6wgNs4cmzla+g0/KgW0noq5X5ZoRqjZKfuGSNyO64bL7AIPakDGy5O1GgaNJu1GtUyMNd9
	TedUpQwD9yMvvxE/Q653DNHe52JtMQXgSg26KTRXthAH9tH5RDv5d618fF9XADPVN6p4eT8u+LL
	iLrX5NjKc5XmjsCAzqCR90pj1kMZ2yZLY2z+NJDXSoLdNiCVJgMJ/VMnutSlQNeHu0yCfdZDWPm
	N8J8=
X-Google-Smtp-Source: AGHT+IGuK2ueddMZqVorcyZf6bAXCa9L95wFykFW07bAtKXpt12PqPMpA05oRgaaVKsjHVu9UDoAygRQOUU1AEoBcn4=
X-Received: by 2002:a05:690e:1558:20b0:63c:e0bb:2e97 with SMTP id
 956f58d0204a3-63e16178279mr1654275d50.10.1760661268882; Thu, 16 Oct 2025
 17:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAH7FQfg7_Eo+B6tDbOPhx99t5hAo=oqh9arxMLZw0y7xWYfbcg@mail.gmail.com>
In-Reply-To: <CAH7FQfg7_Eo+B6tDbOPhx99t5hAo=oqh9arxMLZw0y7xWYfbcg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Oct 2025 17:34:02 -0700
X-Gm-Features: AS18NWCXE0pA6LYplf7tQxrG4FaPnDjHSlt56skZQPx5Ez74NXhjCR1giNpbXTY
Message-ID: <CAMKF1srraguxbAXrVbfJDfv69=TShjSgjKmzpvDw7-3zi0wQpg@mail.gmail.com>
Subject: Re: [yocto] Building u-boot with clang
To: yocto@lists.yoctoproject.org, anirudh@astranis.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 00:34:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65940

On Thu, Oct 16, 2025 at 5:08=E2=80=AFPM Anirudh Mathukumilli via
lists.yoctoproject.org <anirudh=3Dastranis.com@lists.yoctoproject.org>
wrote:
>
> Hey folks,
>
> I'm trying to use Yocto to build a u-boot image using clang. I need to us=
e clang because the system I'm targeting is not supported by GCC. So, I've =
integrated the meta-clang layer and have assigned `TOOLCHAIN =3D "clang"` i=
n my local.conf. This seems to correctly select clang as the correct compil=
er to use when building u-boot; I've verified this by trying to build with =
an arm64 machine and seeing clang work.
>

good.

> However, when I switch my machine to the custom machine I'm targeting (a =
powerpc variant), my yocto build fails trying to build the GCC cross compil=
er for that architecture. Why is Yocto attempting to even build this cross =
compiler? Is there a way for me to tell yocto to not use GCC at all?

we have not yet bootstrapped full system with clang yet. Even though
it can be used to build most of system some components e.g.,  glibc
still need gcc to build, compiler-rt has dependency on gcc-runtime
which
also comes from gcc, so compiling gcc-cross will happen. as far as ppc
is concerned, we do have it nominally supported but its not regularly
tested on master so I wont be. surprised if it does not build. however
if you share more information we might be able to help.

>
> -Anirudh
>
>
>
> ________
> This email and any attachments may contain Astranis confidential and/or p=
roprietary information governed by a non-disclosure agreement, and are inte=
nded solely for the individual or entity specified by the message.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65939): https://lists.yoctoproject.org/g/yocto/messag=
e/65939
> Mute This Topic: https://lists.yoctoproject.org/mt/115800062/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

