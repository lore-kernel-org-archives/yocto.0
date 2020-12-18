Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.2757.1608323644946656336
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 12:34:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=PDvapMcx;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6114838C070E
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 20:34:04 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id c5so3632365wrp.6
        for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 12:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=k19zZFY3KrWauFNYFgt5QFwf+AiwVG9c5VVE7oJyDo8=;
        b=PDvapMcx7oFywuWBQ4dOG1DPRjoNmmoGyFt+ruF/b6Uq1s3XqqbvIqu8wxfh20eXbZ
         qOBQlhlgr6oCCxXlPFUYLmSPBuIwdz8qXl9K04fC7z76kCI/0hhjNbZMG1l+yXIFqA2s
         edPK2ar6XqzJ6HY0tWoWXtOD1nUwlXxZpM93g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=k19zZFY3KrWauFNYFgt5QFwf+AiwVG9c5VVE7oJyDo8=;
        b=TwMByoMFKKLBr0nJ+vnn1uFZ2kqNm9Q+4gLzEcFQMJRy4mVt8TJ3XkmUjo4UnVVh10
         Wf9tTJqJq0mOJ5+u8Oq0j8zKESjpYnPiXj8M58TOZOGpjSA3Ks8r7hsSnivEPdPzVanD
         4GLVcdpwPYM77FLGw+OI9kmX8m/Zs5oJlakcVdL7BHLlbU0HuALF6STU3YgtSV8DU/mp
         g+NHRvVb95SILjkPONhj+KCY2ks4acta1cCyRPU9abXuWZ5Mxu7R2/+uiLWfHsj0pI+Z
         Ya1aNQzVCbf64Hhsm2sIJlZ025JrWlXsFKXW66yFiiyFA75wG60jQ31Qd4O95CKfZjQj
         Znkw==
X-Gm-Message-State: AOAM531ktHiSbSmcRH3BgQd9OJSl3YqA5lgcr0kxg5UEhRVIAo4TGcyW
	fH+78a3D6B9tTO6/1ml72znbm7aI2JEoJg==
X-Google-Smtp-Source: ABdhPJzFQsAh1gni/vkv3zDuvyShjozV5LYC3PiYZeOQFWKeHhGF0FdCsUZH3EJkHGionCV7wTXnkw==
X-Received: by 2002:a5d:650f:: with SMTP id x15mr6338882wru.332.1608323642766;
        Fri, 18 Dec 2020 12:34:02 -0800 (PST)
Received: from 4.4.0.a.d.7.7.1.7.c.4.b.2.1.9.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.4.0.a.d.7.7.1.7.c.4.b.2.1.9.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:912:b4c7:177d:a044])
        by smtp.gmail.com with ESMTPSA id h5sm15785995wrp.56.2020.12.18.12.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 12:34:02 -0800 (PST)
Message-ID: <5cdacd9801963c76a1c2ea843cc2a2fa288eca8b.camel@linuxfoundation.org>
Subject: Re: Is curated SPDX data sharing a thing?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?J=E9r=F4me?= Carretero <cJ-yocto@zougloub.eu>, 
	yocto@yoctoproject.org, Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 18 Dec 2020 20:34:01 +0000
In-Reply-To: <20201218151534.663a5727@pouet.cJ>
References: <20201218151534.663a5727@pouet.cJ>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, 2020-12-18 at 15:15 -0500, J=C3=A9r=C3=B4me Carretero wrote:
> Please correct me if I'm wrong but as far as I understand it, as of
> today the flow for generating SPDX data to build software BoMs,
> documented eg. in:
>=20
> - https://www.fossology.org/get-started/basic-workflow/
> -=20
> https://elinux.org/images/2/20/License_Compliance_in_Embedded_Linux_wit=
h_the_Yocto_Project.pdf
>=20
> involves building your own database of SPDX files after reviewing all
> the sources, which doesn't look to be something at reach of most
> businesses.

The challenge is that Yocto Project lets you build your own custom
software, which means you also end up in your own BoM situation. We
generally therefore provide tooling that can help you generate the
information you need but there usually isn't "one size fits all".

I would mention the meta-spdxscanner layer as having
support/integration for some of the more recent scanning and document
generation tools.

> I am wondering by extension:
>=20
> - Whether there are businesses selling pre-masticated SPDX data
>   (I can imagine one would be willing to pay a little something to
>   obtain a collection of "certified" (or possibly "insured") SPDX);

I'm sure there are services provided, particularly by some of the
member OSVs but as I mention above, its hard to have a one size fits
all since you can patch or reconfigure the sources at will.

> - Whether there are (plans for having) public, collaborative
>   repositories of SPDX data that could be trusted over automatic
> scans of source.

We are hoping to have better tools integration where the build process
may be able to generation better SBoM and SPDX information directly.
Unfortunately its an area its hard to find people willing to
contribute.

Cheers,

Richard

