Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89BF1C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 10:10:39 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.48662.1737972633709873079
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 02:10:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IBbQVnoB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4363ae65100so45842475e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 02:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1737972631; x=1738577431; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nl6t/oVJK1Z/cHAlvx5Qta/nId9oAFLq2R2hkj+r7lY=;
        b=IBbQVnoBLF4XhNB6iRgNUhk/7fiwKVH02Q7miDUj2248RGcvqEn4BeBPO2uOq4IbmS
         q1mYIiiJVj6ToI1tJ8BxKMjKbx0YADs0Ig5KFFT/QrikQ2SHQi2BvRnS1937qX+QJKE9
         9jXVHEJDtE8xxhjzC8ViOO0rDPztw/tizmCeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737972631; x=1738577431;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nl6t/oVJK1Z/cHAlvx5Qta/nId9oAFLq2R2hkj+r7lY=;
        b=jiCU0AfGVYWG6jvHe25p/lAUY8aS31b5upWlgHYc0lWxqlMGqZchHy6zhEqXy0PjrG
         UulDcPYPJtvfI36CwTka1aPukcgJ7bOeGOfzXPBFT4i42EuuXGyK/vFgwQwTAxNcmlMJ
         Jx1t9kiQL8OTA7W2DuI9iryDn3aLaYd2pW+Lm5EWwnVc1/Z9W1onkE+X3Sk5MGvJCQyk
         bvo9Ix/70kRXgpg2bUM+XWwWNu46noZQr/9IgdzrY8+n+Tzwct2AF+Sgomd8zmm/M8gx
         KRwGEq3zeNL55POr8tkkOUN5F0d50GXuUjfzMf/7rIgyoCh7Y0WZBQ5wCekVkV6Adqgg
         7STg==
X-Gm-Message-State: AOJu0Yy6UH0rSx9pajCLzWH9XfGVTNjQikg4UucoIGaEh5nJen4aRauI
	l5iwIWkjji7zleEGudw49S+m8PUga4H+Qi4zewr2mjk1lNJePyGoVMM81uPSD/1eXeld/TAaX7K
	28B0=
X-Gm-Gg: ASbGnctjtqaQAX3qZ3JbAcb3dst6vwPvfQ+F7swNkJK5a0xhWS2K1cc4ZJHToYtnPdc
	AAtD++Tb7VGV/ljI4/yQAGsg5zZ3zUehkaB2sntW+mbfbOfOacWMJHn3Af8yRhQCF9sgH+Ac4tJ
	5aqSnan2a3PPK+AkxKCs8duvg579txpnBVZtpNvfpn/Uagtg2CKOssb4Yz/taVARkHx8Lgfpxqd
	ok15ApMU7B3RcA+YYWRxTD7+39sSwKdEcTPw4csjDFEx5/YAJrN6ficWaquYAQ+inP28n5MK+4i
	ZEumvH+d6K5uOt0rV6sk1pKBrbYposwTamHL00Qtpcv66BaJUr0aW5auhHbNrF46avQjZA==
X-Google-Smtp-Source: AGHT+IEeGTgp0WcnTwGENewKntQJLWtKFtYWIZP77NQYg+6Y/qqJnnU6F88NZAP3BecaQNb/rFz0Tw==
X-Received: by 2002:a05:600c:4e12:b0:436:2238:97f6 with SMTP id 5b1f17b1804b1-438913c646bmr313563845e9.1.1737972631388;
        Mon, 27 Jan 2025 02:10:31 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:6b69:7652:da8f:36f9? ([2001:8b0:aba:5f3c:6b69:7652:da8f:36f9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4856d8sm126248225e9.11.2025.01.27.02.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 02:10:30 -0800 (PST)
Message-ID: <3f463764236ac8aed78cdd2a5797b8bfde103040.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-poky] python string is marked as deprecated
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, omri.sarig@prevas.dk
Date: Mon, 27 Jan 2025 10:10:30 +0000
In-Reply-To: <1pkm.1737968722388215807.pmdl@lists.yoctoproject.org>
References: <1pkm.1737968722388215807.pmdl@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 10:10:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64634

On Mon, 2025-01-27 at 01:05 -0800, omri.sarig via lists.yoctoproject.org wr=
ote:
> I have a Python code I'd like to add to my Yocto build.
> In this code, I use the string module from Python.
> =C2=A0
> To make my code run on the target, I need to add the dependency of
> "python3-stringold" to my recipe.
> I've looked at the description of this package, and it says: "Python
> string APIs [deprecated]".
> =C2=A0
> My code works as expected on the target, but the naming of the
> package, and its description confuses me.
> As far as I can tell, Python's string module is not currently
> deprecated. In the past, this module did use to contain more
> functionality, which moved to be part of the str object itself, but
> the module still contains other functionality, which is not
> deprecated.
> =C2=A0
> I tried to trace the log of meta-poky to see when the deprecation
> notice was added, and it looks like it is there from the first commit
> adding this python (and this package) to the project:
> =C2=A0
> commit 7defc582e098a099f9056aa4ff18e200361ad512
> Author: Richard Purdie <richard@openedhand.com>
> Date: =C2=A0 Tue May 23 11:07:10 2006 +0000 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
> =C2=A0 =C2=A0 Add python+pyhton-pygtk2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
> =C2=A0 =C2=A0 git-svn-id: https://svn.o-hand.com/repos/poky/trunk@415 311=
d38ba-
> 8fff-0310-9ca6-ca027cbcb966
> =C2=A0
> Is this deprecation message for the package wrong, or am I doing
> something wrong by using it?

That wasn't the commit this came from. The history gets a bit weird
around that time as things were in flux and you can trace it back to
here:

https://git.openembedded.org/openembedded/commit/packages/python/?id=3D22e4=
8b2859280d7dbb51581c8315dc6d6bd0cd38


or older again for the "stringold" package itself:

https://git.openembedded.org/openembedded/commit/packages/python/python-2.4=
.1-manifest.inc?id=3D718607c5dcffb837e0cbe09363c8959a2abe2f3e

or in python 2.3.4 here:

https://git.openembedded.org/openembedded/commit/packages/python?id=3D6579e=
8daf68dd520b702412208bfeae85af6fadc

I can't see anything older.

As you say, the string module is fine and I think this is historical
confusion about the mode of some of the methods to strings themselves.
I'd accept a patch to tweak the description and perhaps the naming
although we have a compatibility issue to think about if we change
that.

Patches need to go to the openembedded-core list.

Cheers,

Richard


