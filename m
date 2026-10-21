Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11447.1792589014049735965
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 06:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=mJlxAzQj;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4980fe6b3beso12320175e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 06:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1792589012; x=1793193812; darn=lists.yoctoproject.org;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1qfTJmgPoXYBIoeweDpUrhuFVi0brp8g3X1o9RgLK70=;
        b=mJlxAzQjAaSaTbvG6/rBdHKM2K+7wOOgtug5gRcWMM3Vp8l31b/QLLcUkcYKn9+aQj
         o2spQLVvNIT9+/A73sUp5i52WAPxk9oIhmqWphfemyXm0oK9wGC0ZAFAFCO+l/WGvF4Q
         S8A2XMk6aqBZx1xwXdsGXW5LtLZXjpxCpj/tNOEqKJmEWjhocUs4eWvZCjlCXpnr0uFn
         ecWHjRKuKTvyAC6KHilgy3Pe36Blo2XUXz4kLT3fwY5UFlSEmbM/I+Jp5xXxXoIEh8XX
         sSlnGlmEIgqKp16N8wrf6/tt/WqAFyvBFsY0Ker5SZaudRVGXVroWA0utUFSFOWad7F2
         ZyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792589012; x=1793193812;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1qfTJmgPoXYBIoeweDpUrhuFVi0brp8g3X1o9RgLK70=;
        b=D2Y8t5BJZq7harAQIBNgLjY7SYszc9pwbeTYJ666dWvbp9K/lnCD/CTFjx7Mc9gVZQ
         wAFhNdDPDXfmv9Xkr+U4Ur925uq+gfRSp4aqqEysZWTD5uGtqGDuBqMwPVgMGjRK6l77
         NnSGapqBVeTa5wu6sDzPiYbY/C+YNNW5KpzTfQn9ueUKWoSmIMGQqy2QG83I5OMekFU+
         XmgwKGQi19kEYCDi4YLP4CRZh12Y6Xal3rrbjf1nGvWgWiq49owsvVa1u7EuNkL65HGP
         9prMOGhOi7NR0vKdSqYxG6lStDS8wfH1djPJXBjab+Dw9z15RfOqB5SDV9cTDepOESdu
         ZjDw==
X-Gm-Message-State: AFq9FYLAaAPzTpuYhifyswkFIvv9AyrJ3rvGip5nVsQ69h5sitz2XY8t
	6S9yEUTKhAcvvr5hkzn5qLxNEsm3VgLbddb56v1x7Q2MCKH63vWIlyuITtwobMQ4z7e7NPDQ2+p
	oX1uil5U=
X-Gm-Gg: AYBFou3+B8jMLqKcRQu1TJWpBCkUuPtgt5IlGnZVDCA4wgrDtIiPxJgC5VeGea/8WIa
	0opNsNZcfo8ny5uR3T9vxknGoEVdSrwCpvL3/WcK5+2uFnmgRxNG2ilayMc/DO+2+I8zSiz9pV/
	wdLRot4Q+IMGxU1mYzM3Jm8NO1aRDL+6Ie7xUmv9JF47vNqI1MI3r0x2WGk6c/gRKZoMcuhbvdr
	/gdYtJDWIdzuuQRx21XW3w9LU23JFbsH7/qImFV/gdMVWtLlri2TmiJ8xFjr/264Ds4jQFLjvnz
	8f6bjN4rnxBu+qwv2ycAqIRuLEvqqvlCrszw1w/B43C46ajOk2Lh8oq3Xcn62mh7H+LHHPoMyHf
	po7gr/DVlQdt30OcP76W5eEILDOC3S2FLo0s0ncRKjvgglj4mo416xwtRVrRmzQ+2Eam9MiFccv
	ZXncHgkNAZyNV12fFtRiG3o4hCanu2thCJuqeoUeM2lJaPni/b2BZ8W+QlLc1VqxYxaHfrekbcV
	kFqu7A3ZkL9VzPvSnevZkLZ5KLWsBtw11E/6JJ3v6WIMQCSoMfjRhvm3YNGd9y5yB6bkis3ABJO
	uEtZLizlO//hEZSxWb1qfHmlui9QA0OwktQoF34uuh6d
X-Received: by 2002:a05:600c:1d0f:b0:4a1:de8a:6046 with SMTP id 5b1f17b1804b1-4a1fdb167f8mr42626005e9.3.1792589012051;
        Wed, 21 Oct 2026 06:23:32 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1f2ca3666sm166822015e9.1.2026.10.21.06.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 06:23:31 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 21 Oct 2026 15:23:31 +0200
Message-Id: <DMAJRR6BI0FD.3B80P4GKCPQVI@smile.fr>
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <yocto@lists.yoctoproject.org>, <Anders.Montonen@iki.fi>
Subject: Re: [yocto] SPDX 3 generation broken in Scarthgap?
X-Mailer: aerc 0.20.0
References: <C31FFA20-728D-442B-9229-10914FD47639@iki.fi>
 <DM9VF9OJMDIB.1KZKR8SY4Q9NP@smile.fr>
 <2EEE7A6A-9A4F-40D4-983B-911F65FD959C@iki.fi>
In-Reply-To: <2EEE7A6A-9A4F-40D4-983B-911F65FD959C@iki.fi>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 13:23:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66775

On Wed Oct 21, 2026 at 2:01 PM CEST, Anders Montonen via lists.yoctoproject=
.org wrote:
> Hi,
>
>> On 20. Oct 2026, at 21.18, Yoann Congal <yoann.congal@smile.fr> wrote:
>>=20
>> Hello,
>>=20
>> On Tue Oct 20, 2026 at 7:08 PM CEST, Anders Montonen via lists.yoctoproj=
ect.org <http://lists.yoctoproject.org/> wrote:
>>> 1. Clone the scarthgap branch of the poky repository (HEAD and 5.0.20 s=
eems to work identically)
>>> 2. Run "source oe-init-build-env"
>>> 3. Add the lines listed in the documentation to local.conf:
>>> 	INHERIT_DISTRO:remove =3D "create-spdx"
>>> 	INHERIT_DISTRO:append =3D " create-spdx-3.0=E2=80=9D
>>> 4. Run =E2=80=9Cbitbake -k core-image-minimal=E2=80=9D
>>=20
>> This is the SPDX30Check.test_core_image_minimal testcase that runs as
>> part of the regular oe-selftest builds: eg:
>> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/builds/4875=
/steps/18/logs/stdio (line 1764)
>>=20
>> But the test does not use INHERIT_DISTRO but :
>> INHERIT:remove =3D "create-spdx"
>> INHERIT +=3D "create-spdx-3.0"
>>=20
>> I think this is an issue because the poky DISTRO adds create-spdx to
>> INHERIT (not INHERIT_DISTRO) in poky.conf. This means that in your
>> config you have both create-spdx and create-spdx-3.0 in INHERIT, and
>> that would explain the below issue.
>>=20
>> Does changing to INHERIT modification fixes you issue?
>
> That did the trick, thank you.

Good news!

> I see that there=E2=80=99s a difference in the
> documentation between the =E2=80=9CCreating a Software Bill of Materials=
=E2=80=9D
> chapter in the development tasks manual, and the documentation for the
> create-spdx class. The development tasks manual uses =E2=80=9CINHERIT_DIS=
TRO=E2=80=9D,
> while the class documentation just uses =E2=80=9CINHERIT=E2=80=9D.

Could you contribute the yocto-docs patch to fix that?

Thanks!
--=20
Yoann Congal
Smile ECS

