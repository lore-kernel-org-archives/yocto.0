Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.321.1611869175151189487
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 13:26:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=I1JyxtGl;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 000A038C046F
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 21:26:13 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id z6so6809233wrq.10
        for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 13:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=EOCPtfSmYL0+3BP7nlp4cFdiTFABbEtbAtwaQeSCSkk=;
        b=I1JyxtGlDwZDKlyiUWfAb0Qa7yLyIviGRK8o702UWx5ER6JGNQM8bjhy0AhKvKZ3xX
         0+JjbSbl/P349jlbeRBPVIQ2xiRpx4Fp4bHFsgCwOAiI5+rFWxJ2uMTt6jeeN2rFYhzG
         h0YCJLIp64VAzx+Ux7B8aPN5uLeDr6MBmS6pQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EOCPtfSmYL0+3BP7nlp4cFdiTFABbEtbAtwaQeSCSkk=;
        b=haPUbUE2I5a/tzlDVSS1JUBt92HGmeQ2E6fAWigi8ra/ZA/gRJes7A3AiPgrPNNHKz
         Re1JUSo5gwTIg14DVQRYb1D18TftXHm2l1Kpv4ju+A3pFhw/tDZUEiKnOoLn+T0xGfz7
         98qLi147kqcVcxFDwIT7fuW18mfmuJX79G9GyV1b85Y6lgEkeE2QbBKQLWxwfQyC/tK3
         oKOb7Nfm8wspLNoP/RG8whU+ZFX5DB+p+FsdIgL3uBHRhj9baypYL5S1umIiy9z0hQaI
         yM5b+mkwWAVdxQhpZqIlx8V+E31YduNJs9vZNaoVYyldgJ0CW7XiP4hVzyPptU4UBCqk
         Mjug==
X-Gm-Message-State: AOAM533x8wzAlPECM9B+TsIC5BNInxRvB/AS26dMvd5MLRkGuvYD5eV3
	ir+kuo5Srle8Oi9PB9PE/UnSng==
X-Google-Smtp-Source: ABdhPJwm82ZgHByacMFS6RMqDFA+uvawWR0cuaO/GN8iIgG1tsqrFeDkD/8iaPzIuOe6bNmagxt/IA==
X-Received: by 2002:a5d:6044:: with SMTP id j4mr1011812wrt.287.1611869172570;
        Thu, 28 Jan 2021 13:26:12 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:93ef:509c:4f16:14ff? ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id l14sm8121012wrq.87.2021.01.28.13.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 13:26:12 -0800 (PST)
Message-ID: <9e728fd4e9959c67cc0cfc8d32571c9aa5a6b7ac.camel@linuxfoundation.org>
Subject: Re: [yocto] Task only for target recipe
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: ayoub.zaki@googlemail.com, Yocto Project <yocto@yoctoproject.org>
Date: Thu, 28 Jan 2021 21:26:11 +0000
In-Reply-To: <CA+-BmJYV8Oh3+pDh3RW=sYrcjX7q4peNV6aH9y6fyZY-ba2nVQ@mail.gmail.com>
References: 
	<CA+-BmJYV8Oh3+pDh3RW=sYrcjX7q4peNV6aH9y6fyZY-ba2nVQ@mail.gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2021-01-28 at 18:53 +0100, Ayoub Zaki via
lists.yoctoproject.org wrote:
> Hello I created a new task that I want to run for every recipe of my
> image but only for target recipes and skip all native, sdk,...
> mytask.bbclass:
>=20
> addtask do_mytask after do_install
>=20
> do_mytask() {
> =C2=A0 =C2=A0 :
> }
>=20
> do_mytask_class-target() {
>=20
> =C2=A0 =C2=A0 bbwarn "mytask"
> =C2=A0 =C2=A0 :
> }
>=20
> I added to local.conf :
>=20
> INHERIT=C2=A0+=3D "mytask"
>=20
> I don't see it running! what is the proper way to achieve this?

How are you running it? You've said you want it to run after do_install
but not what should trigger it.

Adding "before do_build" to the addtask line for example might trigger
it (do_build is the default task).

Cheers,

Richard

