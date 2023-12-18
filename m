Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01C3EC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 17:17:37 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.49029.1702919856074380445
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 09:17:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BZnQ5oiW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3365b5d6f0eso1968547f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 09:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1702919854; x=1703524654; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=v2I26s+VPtQf7uRs5B13p6x1sFX662xvGGAlLvif4Mk=;
        b=BZnQ5oiW3WWbOglel286++tcfWsM6s/+PuWa2gLOREybBZuXnUQxqm/Lvt+SEqcvwD
         TXKeWRFHYxKArxEO9gVrdhCIYAd3/WlsgyWbR6TT41hsxqUYE0Ux8lvJzwzhVljBbAxy
         ZSvq+BKIW83BSOGvNL/zcda9sHA/wf8sU+AlQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702919854; x=1703524654;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2I26s+VPtQf7uRs5B13p6x1sFX662xvGGAlLvif4Mk=;
        b=gETlX8svx4bPMU0aG4IeA//DVLIaSuGUS6TlBvnStsEGZg6jDNrSnmS6th+iLky86z
         dFbd2qVWrkhsbi52BIpdP7C3ew/ZxSKqKLdlz6aqCEmvR5nUBI5COHhVObcXabI4pm5q
         1R5Fi6DDosaiRslJ/XqGyCUHYdrf9W+bLLbglr+38JWnl/kY8Qeo3uGD1A1/MjuuP8vd
         xPHk86PMRJnXrZYBvr6DoC3z0b+o21054QDY7i9gFBIjRNFe000fq/LVZxhqPYKWGiTi
         7vC5n4E0HBfRe3JakJOpylbF/dnBAzIzS0hJ3CyVyPg+zcDpewsT/hZbNGoZ9N6VFmh4
         zJWw==
X-Gm-Message-State: AOJu0YwpJbkTw5+MCxHVXER5a8gKmO7y7ld2zscpmbPntAPwgb9vtMU4
	z7rtXL1V1vpU2FnlpbVSTw4VJg==
X-Google-Smtp-Source: AGHT+IGN738XtUZyDNpVQ83/Sxrz4WULgJeMWAsDlm6pzpm8k0dxAAjmkAE3sggchQTJOAqMAKERAQ==
X-Received: by 2002:a5d:47a9:0:b0:336:6803:56ab with SMTP id 9-20020a5d47a9000000b00336680356abmr1577087wrb.22.1702919854458;
        Mon, 18 Dec 2023 09:17:34 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a720:6e27:acc4:d591? ([2001:8b0:aba:5f3c:a720:6e27:acc4:d591])
        by smtp.gmail.com with ESMTPSA id h7-20020adff187000000b003366d79edbfsm1530547wro.67.2023.12.18.09.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 09:17:34 -0800 (PST)
Message-ID: <a84dfcc33bceed3883ab4c92c6da764f235c9a54.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0_M1.rc3)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: "alexis.lothore" <alexis.lothore@bootlin.com>
Date: Mon, 18 Dec 2023 17:17:33 +0000
In-Reply-To: <0101018c7d619dc0-ba8b9b23-ffab-4656-ae64-fadc60b755dd-000000@us-west-2.amazonses.com>
References: 
	<0101018c7d619dc0-ba8b9b23-ffab-4656-ae64-fadc60b755dd-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 17:17:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61968

On Mon, 2023-12-18 at 14:43 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-5.0_M1.rc3) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-5.0_M1.rc3
>=20
>=20
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6345
>=20
>     Build hash information:=20
>=20
>     bitbake: 8295ac1b6672c25bee595cff6e000b2af817f904
> meta-agl: 266ac5373b4458d7fcb78b1e8948eb2b33f18b5d
> meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
> meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
> meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
> meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
> meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
> meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
> oecore: 6b729088dce302eb3a967cb6839f00488025be0e
> poky: 33112178d164ddd9ef0b1115c254ad4341ec3ad1
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20

There was one autobuilder failure against this build in qemux86 but it
is a known issue where we're waiting for upstream to merge a kernel fix
for alternatives handling. I believe we can proceed for QA and it does
not block release.

I'd also note the regression report generation was successful :)

Cheers,

Richard

