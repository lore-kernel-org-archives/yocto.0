Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.8446.1625820828617185225
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 01:53:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=UQO67y6p;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5E1C638C02B9
	for <yocto@yoctoproject.org>; Fri,  9 Jul 2021 08:53:47 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id r11so5860129wro.9
        for <yocto@yoctoproject.org>; Fri, 09 Jul 2021 01:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=3Rv91ywH+ja0zWytBFQqHMmp0Tj+6LYRvgxy8EJTyqI=;
        b=UQO67y6pRRi8CmFAEptnR4XvhEWhTHxTTeoVht8fWMfBjsQL82ShvxMUrS1zaq3flp
         cC++0fEbMjnpk9Bc0/0OU3tezW6JsLfCm0z3OMmbbQ2FmSX3bTODAikE3+a7eqxRX5Uy
         gDTbQr+cFlHxptrPJl6romG8DkeTxNH8z/ZQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=3Rv91ywH+ja0zWytBFQqHMmp0Tj+6LYRvgxy8EJTyqI=;
        b=DovADhDPQcmgGxfEgxsSktKOtstmWlxBQ9M7lUOXt9GKgZVdgGCjDYJKStcN6JelU4
         ZJ6mm3PzZPPKOpd4zb+fFyYDdeSNL4Vp7ViiCIxvkTO1d3VeucOoXESH0JiOMfir8YZZ
         ED5LVujHR575eSHarRSTkdIPCyAML33VNMGxhSt6EETqVTB+bhcVjuORgQF8e886lAuZ
         gC93U2ZhHraM5jJKvCp47vRJwqWV6jjzWQG7H/175LKrMRHnIqFLLS5w7pnXt4LKIJNu
         bme0nH7rGdqCUtuzCGeaZgbfqr2C7yTuu0PrXF73mOa2uZbT6lJjw+JMa2UYA7gK624H
         zd6g==
X-Gm-Message-State: AOAM5322PUZIYK0DXPrf1wLfAolaMkPCJfeR5xCnPIGplToXDjGT8wHm
	fcdx+qIaRnNrOOy0STg3LE7pfw==
X-Google-Smtp-Source: ABdhPJzJEdLD1Xk89l5jzI12xrDiFvXcugQKJLoE7zaWyzskzYJMTwQE+9z7wkXqlfqFL9OdOD9hlw==
X-Received: by 2002:a5d:464b:: with SMTP id j11mr40164632wrs.356.1625820825896;
        Fri, 09 Jul 2021 01:53:45 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8784:9f68:1c6d:5aac? ([2001:8b0:aba:5f3c:8784:9f68:1c6d:5aac])
        by smtp.gmail.com with ESMTPSA id b16sm1441233wrw.46.2021.07.09.01.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 01:53:45 -0700 (PDT)
Message-ID: <2f192033ffa0404be7a26fd6577ddced4d566ee5.camel@linuxfoundation.org>
Subject: Re: [yocto] [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Milan Shah <mshah@mvista.com>
Cc: yocto@yoctoproject.org, Paul Barker <pbarker@konsulko.com>, Armin Kuster
	 <akuster@mvista.com>
Date: Fri, 09 Jul 2021 09:53:44 +0100
In-Reply-To: <CA+=qD9Ph2-HR=iKmf6FZFC5+Xks2B7YN1FUq_-CjxcBmSXPh1Q@mail.gmail.com>
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
	 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
	 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
	 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
	 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
	 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
	 <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
	 <166FE1E7B1DE5E9C.21604@lists.yoctoproject.org>
	 <CA+=qD9N42rg5_Vdj6H5SV-YKYV=NPREG-6yA0yGAJHTP47+sZA@mail.gmail.com>
	 <31be281c79720bda006e4c6bc5746aabb1a3e2ab.camel@linuxfoundation.org>
	 <CA+=qD9Ph2-HR=iKmf6FZFC5+Xks2B7YN1FUq_-CjxcBmSXPh1Q@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2021-07-09 at 14:07 +0530, Milan Shah wrote:
> Well, there was no update on the bug as well as on the patch so I was=C2=
=A0
> not aware of it.
>=20
> Thanks, Richard for responding. I'll definitely follow your suggestion=C2=
=A0
> next time.

We'd normally expect the bug owner to update the status of the bug since =
it
isn't really possible for me or the triage team to track and update them =
all.
We can close this one with a link to the commit:

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/report-erro=
r.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def7231b7

Happy for you to, or I can...

Cheers,

Richard


