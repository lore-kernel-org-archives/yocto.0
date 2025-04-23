Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76CDC369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 14:52:27 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.10776.1745419944063402895
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 07:52:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=aFJtZJei;
 spf=pass (domain: snapchat.com, ip: 209.85.218.43, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-acb5ec407b1so875658466b.1
        for <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 07:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1745419942; x=1746024742; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bwPpH4Yfm9NCW/SBWocv42p9SjnNjqQqc6mMLDgBpFY=;
        b=aFJtZJeiU4/SbSGUhBjUe8x9eaEQdVW0KDFw0pviz0WaHJIiQMj+jBiNRVhSIKK46H
         0uawSHAO+a5yiFs9FKW9cZQZRYzzZLA3v1lzYoPtu+sqwp25WdQ98ayTkn+JpvIiA7UA
         5ra3OinkMjxog8PFvnzIa+MGXro8b3JllfAAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745419942; x=1746024742;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bwPpH4Yfm9NCW/SBWocv42p9SjnNjqQqc6mMLDgBpFY=;
        b=WV663RoP+sJhZxe+lPEm8Omb5ZW+/BTQeBGhA4+g5cis+ZtuOHu2zb3EI4xwP39QPt
         Odm+a7rL0GJ7t4bIJMxdBEDUFRckVBNsJVxCAt15eJwAcxmQVkes8b+MYCVUM7MeOV8Y
         R5ROkqSJRNREbFI2jpz43BelQ+RnwQESO+ls7sTEk0gR+0QzBIOBDCHuq9w8IeoTx+ma
         eoNbjjcvcGPRWw81PyZXKAAUR8Tqa1BE6sHT+F7JGeAlvrnFw+hutb6nh6ccSmb05RVM
         vVhYOkMaRQBJvL7lDpUsshOFgvI/VvsbujgoSyn1icoa8ytFAgUWh3zbjxnHXKkaf5oJ
         ebug==
X-Gm-Message-State: AOJu0YxJGiVFlgAlDBAfpnJjC9t5qafapj78X3Y8JrkKsvLEydAJSkkd
	JhXMhV/C8Z+VN62BCegvEf9GZwZbYzqpxcrNHsqXihBuBl4+ioQolR68IQTeMLQid0BcbsLQAnE
	wiTScR2Iwk0dfSnRWiE6QFkKe2hgsroF8MKqFwYCxyGUBZnVG3Z0=
X-Gm-Gg: ASbGncs5ZcRV1GsXRlmj0Pcx4PatcPdCLecIvR+664qzaSTQM1+qf3sEdTv7ilflQr9
	Id3HsT+VUrsvCuyFNfRz7jFSaM6vurbDhCTIL4RhkD32QqfdWwh74EUs/qza+AsOr8J69YXOu8C
	oI42paI5LMU8/aZmzi3SoclRE=
X-Google-Smtp-Source: AGHT+IHYQw8fWrxzN+DhNjwzPjjVHeIl0RWRY7KJqC9o4m/0KKzwXyhHEajry9jXRCvHitIvCOKFHFtCWSmkxAOi5XY=
X-Received: by 2002:a17:907:84a:b0:ac7:391b:e686 with SMTP id
 a640c23a62f3a-acb74e91922mr1624341866b.60.1745419941338; Wed, 23 Apr 2025
 07:52:21 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Wed, 23 Apr 2025 16:52:09 +0200
X-Gm-Features: ATxdqUGpiUQM0FqSzvIBzYiMsk4ttcRrY1uwU_rO1h4IVqOtCa24l_5hOaa0wmE
Message-ID: <CAHUKmYYBZaAF1vrRV_L1CUn_J6Dcr7tkeCeCFB11Nn13PoW9Yw@mail.gmail.com>
Subject: PREFERRED_PROVIDER with sdk?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000968c0a0633733fd5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 14:52:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65234

--000000000000968c0a0633733fd5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a use-case where two recipes can provide libfoobar.so, one recipe
libfoobar.bb is the real implementation of the library (with many big
dependencies), and one recipe libfoobar-stubbed.bb provides a small stubbed
version of the library.

TOOLCHAIN_TARGET_TASK is current set to a recipe much higher in the chain
of dependencies, which has many dependencies, among which libfoobar.

Is there a way for me to use foobar.bb when building a normal image, and
foobar-stubbed.bb when building the normal sdk? (bitbake -c populate_sdk
my-image). I think this kind of things is normally done with
PREFERRED_PROVIDER, but not sure whether there is a way to express "if sdk,
then PREFERRED_PROVIDER =3D libfoobar-stubbed"

Can this be done only by listing every single recipe individually in
TOOLCHAIN_TARGET_TASK, so that I can include libfoobar-stubbed.bb and omit
libfoobar.bb?

Thanks
=C3=89tienne

--000000000000968c0a0633733fd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>I have a use-case where two recipes can provide lib=
foobar.so, one recipe <a href=3D"http://libfoobar.bb">libfoobar.bb</a> is t=
he real implementation of the library (with many big dependencies), and one=
 recipe <a href=3D"http://libfoobar-stubbed.bb">libfoobar-stubbed.bb</a> pr=
ovides a small stubbed version of the library.<br><br>TOOLCHAIN_TARGET_TASK=
 is current set to a recipe much=C2=A0higher in the chain of dependencies, =
which has many dependencies, among which libfoobar.<br><br>Is there a way f=
or me to use <a href=3D"http://foobar.bb">foobar.bb</a> when building a nor=
mal image, and <a href=3D"http://foobar-stubbed.bb">foobar-stubbed.bb</a> w=
hen building the normal sdk? (bitbake -c populate_sdk my-image). I think th=
is kind of things is normally done with PREFERRED_PROVIDER, but not sure wh=
ether there is a way to express &quot;if sdk, then PREFERRED_PROVIDER =3D l=
ibfoobar-stubbed&quot;<br><br>Can this be done only by listing every single=
 recipe individually in TOOLCHAIN_TARGET_TASK, so that I can include <a hre=
f=3D"http://libfoobar-stubbed.bb">libfoobar-stubbed.bb</a> and omit <a href=
=3D"http://libfoobar.bb">libfoobar.bb</a>?<br><br>Thanks<br>=C3=89tienne</d=
iv>

--000000000000968c0a0633733fd5--

