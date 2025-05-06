Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18539C3ABBC
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 15:28:46 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.78678.1746545320967680681
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 May 2025 08:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H0S2eS3v;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4775ce8a4b0so40371871cf.1
        for <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746545320; x=1747150120; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZeEf/tqhUPzO1s3g9zeFtiTjOkoSIrPAnk6l9PpVlyg=;
        b=H0S2eS3vNn/xBKmRoCyZbIcOIPnd057X6AgH3bZs5O6p9orSuHHnLXZMxAo4PlX17U
         U7snDCuGKLrjLQrFL8B+U62Hm3wbJredwLFkmH0xRsCma2CRsaW3MfDJrFiLN4MwWJMz
         EW4Pc91B64ToxoLqgujuBcBsRlaV1peR0TVoCopQfAhxj0CHRy1MGSy5cwiSj4/pGic1
         X5kUkqDHd+zaM5BhqIVD06lPozT0ZnFF/8zZpEOQlHbFWZWfUU10AXgSyxDdJIOur7yU
         5HQTZYbkfHeX2qXObH7lQbtd/DFKfjE6U/6u62E9f8GdAF8L+PPQ4uAosctSbzKeY3h9
         MQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746545320; x=1747150120;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZeEf/tqhUPzO1s3g9zeFtiTjOkoSIrPAnk6l9PpVlyg=;
        b=ZzMt9AHY3s5C0UREcAhO1dfyfO3YFR/h1RZWi4Rk2FWJvbykvu2WE5ltMwz3jYTkXM
         WrnjqG74qgWzJj+C/9PdPvUzo5w/wnbIvsa65SCpDk8j5GLOj5uysysuWOCAtcEpOZ97
         s81XcHak5780vdKqPdlqHuVpJTEFtCVISrLveHxBbZ6+UTuM7kmPKCU2mdB75pF+Xf2z
         6gAnpRW29bzewimfVinbtNbWyroAl7SfVBMTO7WAlIhM/DOUOBBnQEDACNjUBjZIgjNI
         O4wgDOCXnh3V+yRX6ymQZ0q9tDKuAksZP2sYXUVGDpqUVyGGinETIeUlNbxAjS5efKev
         FDPw==
X-Gm-Message-State: AOJu0YywmbC0vi+vQxRBbJiMHUAvxHmlLkJZtS8eKKt0/HAY3FH/c7zs
	8N3vSSDeQKTU4Mnmt0q0rITb31lkIxUKpfVzvicDK+yenRqgKn2ArOzlnlHxXlWNGO9uuY3F45B
	ZUo3B4HeO2X5l05bv2NWDMU7p8uc=
X-Gm-Gg: ASbGnctX15llB76nG3BNVpjTKdhSEa6MPlQZWxqnOGCk1tDd0cds7eqmiVgjKnKTgPu
	fi9MR+Kg3onU5OsXcm3cOAgvKI8AZh3wX9384BRqZ02MZgqCoy5u+bpB5uUX+f1VWjDD/TCYWeE
	voEWgSnxs49OoyYlvIt6cY66s=
X-Google-Smtp-Source: AGHT+IGA6uNXqY+tkwkhPxl8z1hQ16bbQGeKhZYhqmqWo8bOWGoBAo0QES1zfyWogKJYZ00+vEqVOh2B0mv9aur5LIQ=
X-Received: by 2002:a05:6214:212e:b0:6d4:1ea3:981d with SMTP id
 6a1803df08f44-6f528d1219cmr171815686d6.43.1746545319881; Tue, 06 May 2025
 08:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com> <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
In-Reply-To: <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 May 2025 17:28:28 +0200
X-Gm-Features: ATxdqUEW-wxNqH6xpYUXtPmySm8HeUwQIdOc6SEB_t0S2raG-kG2SZY9FXAk7w8
Message-ID: <CANNYZj9JXZDBWe91SCZhAxujAyWpJgBovMan-pYGoxaRXOQpYA@mail.gmail.com>
Subject: Re: [yocto] Install externally built .ipk packages during image generation
To: Matthias Neubauer <matthias.neubauer@sick.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 15:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65289

On Tue, 6 May 2025 at 16:49, Matthias Neubauer
<matthias.neubauer@sick.de> wrote:
>
> Could you elaborate why this discouraged?
>
> We would like to build software in a modular fashion.
>
> In our preferred scenario, each team which develops an application would also like to release it individually. We all use the same SDK.

Integrating pre-built binaries means it is not possible to produce a
build of the complete product from source code. This, in turn, makes
it very difficult or impossible to independently investigate or fix
issues (perhaps months or years after the original image was made), to
tweak something in deliverables from other teams (for exploratory or
experiment reasons), to produce a build for a different hardware
target or with a different set of distribution-level settings, to
audit the product for vulnerabilities or other metrics, or to hold
application teams to quality standards expected of them.

The problems with 'vendor blobs' are well known; 'internal blobs' have
all the same problems. Then there are logistical issues in producing
and distributing SDK tarballs, and ensuring everyone uses the
'correct' SDK, and tooling issues: everything in yocto is geared
towards building from source code using recipes.

Teams can still individually release their work; they only need to add
a tag to their app repository that indicates there's a new version to
be integrated, and CI will pick that up, update the recipe, and run
the build and the tests and publish the resulting images. They never
even need to 'learn yocto'. Or you can devise a pull request process
where recipes are updated with explicit pull requests to a product
yocto layer, which has the benefit of everyone learning at least a
little bit about how the complete product is assembled from parts.

Alex

