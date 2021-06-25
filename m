Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6326.1624621387689249137
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 04:43:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=Q8Imrott;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 29E4E38C052B
	for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 11:43:07 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id h11so10236843wrx.5
        for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 04:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ORxV+HAzR/vEAGnZgfTeTpfdbH/2crRBSQ16LP9clak=;
        b=Q8Imrottdl4+bM8b9aGnNfsqFEJNxqnA2MdYUqHc2lR7Rs6SFBUba6R+q3+m7mU4Ns
         fSW26hxX2w9X8CV3zULnZHR87I6mOPFOT7j9hiRfHPkk2oQi7A01uViTE8crX+hxzK3X
         ycXbU8s06y+m2hfgDrwubfrQfIzSbPUq1cZmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ORxV+HAzR/vEAGnZgfTeTpfdbH/2crRBSQ16LP9clak=;
        b=H+RY5aBD8Sedk5uQGya6eLDvkjGvPM+uaT2UOY4CAoExdC2Hnu1RXPawncUmovUr9e
         Pl6kkSIcGWl+JGXLbyBgHfK969koTv3qc67H8rBH+K/ec5nCEnfqxm9QJCYY72wbVQ4Y
         k/V7yh5hSXt98H54fzySUUaPb8vf8/dNFxxpiAPUs6nivV1tpYp8GXfvDUz24AAtUCVE
         DCRWrTyUeU4VKDZbm84zawgWXYXUr8wKWCwvx1lwRZb6qFx2ePvvOVd4Xv646zXOgxlc
         393HuYvIBTZG2Tr9apxW6a8MxCEE9gkysGzfUMfQWE9KXeHKog+pUuowXbETrXNWZpdf
         lEsA==
X-Gm-Message-State: AOAM533uk5/6UsTpOOOhvbghX2cgmmxQDvst3fwKXJcNljg2QmhGNRY7
	mESeZ1mQcVC7r+n21B8pynVdZEB6KUi9wQ==
X-Google-Smtp-Source: ABdhPJymWP2E4FVgyv1GWUoQdsh2jd4W5ekPMJSJTkzWk4k2ThNb/YzhWSrXfBIeR5tmQe1Cq79D8w==
X-Received: by 2002:a5d:4d01:: with SMTP id z1mr8251027wrt.288.1624621385760;
        Fri, 25 Jun 2021 04:43:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:628a:47d1:4c03:7e6d? ([2001:8b0:aba:5f3c:628a:47d1:4c03:7e6d])
        by smtp.gmail.com with ESMTPSA id p8sm11627142wmi.46.2021.06.25.04.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 04:43:05 -0700 (PDT)
Message-ID: <b83aaff909c4b8db568efebc24364778abf5b0f4.camel@linuxfoundation.org>
Subject: Re: [yocto] what's the state of things with pushing the bounds on ASSUME_PROVIDED?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Fri, 25 Jun 2021 12:43:04 +0100
In-Reply-To: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca>
References: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2021-06-24 at 07:50 -0400, Robert P. J. Day wrote:
> =C2=A0=C2=A0i asked about this once upon a time, so i thought i'd follo=
w up ...
> given the fairly stable state of recent linux distros, is there any
> standard for taking advantage of what *should* be robust native tools
> rather than building them? (i'm ignoring taking advantage of sstate
> and building SDKs and other clever speedups for now.)
>=20
> =C2=A0=C2=A0from scratch, i did a wind river (LINCD) build of
> wrlinux-image-small (and i assume it would be much the same under
> current oe-core), and i notice that numerous native tools were
> compiled, including such standards as cmake, curl, elfutils ... the
> list goes on and on.
>=20
> =C2=A0=C2=A0so other than the tools that are *required* to be installed=
, if i
> mention that i am currently running ubuntu 20.04, is there any
> indication as to which tools i'm relatively safe to take advantage
> using ASSUME_PROVIDED and HOSTTOOLS? i realize that the versions built
> will probably differ from the host versions, but it seems that if
> there is an incompatibility, that would be fairly obvious in short
> order.
>=20
> =C2=A0=C2=A0thoughts?

Quite often things aren't as simple as they first seem:

Elfutils has=C2=A0a history of interesting changes between versions so ha=
ving=C2=A0
our builds use a consistent version is good.

Some recipes build libs as well as binaries, e.g. the compression tools.
Its relatively easy to check a binary is present, it is harder to check
the right -devel headers are present. That is a solvable problem but agai=
n,=C2=A0
version consistency is good. If you require a HOSTTOOLS bin but our own
lib, you can get version mismatches.

We do patch some utilities for 'reasons' and having those patches missing
can be a pain and cause weird errors.

Reproducibility is also a concern, particularly if different versions of=C2=
=A0
tools like flex/bison generated different code.

I also wonder who is going to support testing all these different options
and handle the resulting build failures and bugs being raised?

This list isn't definitive.


In summary, I see a lot of problems for what amounts to not much speed
gain. Particularly when we have a mechanism like sstate available
which allows binary reuse.

Cheers,

Richard






