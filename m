Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BCECFA773
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 12:18:34 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.20572.1728044305281800673
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 05:18:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XZF+BhCl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42cc43454d5so16451265e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 05:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728044303; x=1728649103; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HwiRm2L0JqSeqj7KYHAjtlk0gMH7blMZG7g1BIMpeio=;
        b=XZF+BhCloChPVaHeSGlDZpAsPXvBy6ISGFadL2DIkalqkWBFLhJUtfUItZH9So34IM
         qWmXvCXwxtzX7q/JRHTujqmkz3rblD3Lz1vWDCvvchIqFAu2LJ7WWsc4W6kesHpKeyX5
         ASMFrv9WVhsOcr6usEcRfz+aM+L66uV/LHqaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728044303; x=1728649103;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HwiRm2L0JqSeqj7KYHAjtlk0gMH7blMZG7g1BIMpeio=;
        b=wawDzY3EgVm65KYjHKxsdFe8DkhvMEIZsrkdz5sQ7UEjc+Idqb8Rwq/D86/ogVSGaA
         C7JI/heJm+a2Zi6iblNCgBpR/Ie5WJFMUH1JLuaBPSjgXxxsLWy42indBUmu1yYUZSao
         eMXbzjicmvEkh4FZEm7WcUP5shZWfKnXThyX4AbqanjEWPi4rIgvDrfo8zF/1b07OkWE
         ZDpwIN0f/mDztQqdWEu8LmZXNMvq9a5VTmGm75vH1efygeniFrJSRGamF/567qoduYWn
         c5miwr/y/+OD1M+6jgybG9Yb6sVNyosBJckg1Scg3vjLxSuhDpqpfIlXA5CBbQovDTKI
         409g==
X-Forwarded-Encrypted: i=1; AJvYcCXD4tWJCMagnMjTSvvuaGAznQ6Ui/aVzNyftU5zvTbxehZ9flzKSn1zWndiq8CxfblWpAYFJA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzZA1YydT7j0Ur6V2NWsNrfACgeq7eEvi9Sn6gozqlNTJyHkCpx
	H5WRksObAfdXMziW38drf6dnkf773T4RfR8p5RnXlvwj351wZssJUovFOWRj7ZM=
X-Google-Smtp-Source: AGHT+IHiOdshnSXCcxvjUslcNdKDVWBUonFOzLKW6tKqA265XNYvhTHki8eDZS94J9jgMs1J8VH+Pw==
X-Received: by 2002:a05:600c:3b9c:b0:426:593c:935d with SMTP id 5b1f17b1804b1-42f85aa1a32mr18135945e9.5.1728044303260;
        Fri, 04 Oct 2024 05:18:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:25ac:3f31:db63:541d? ([2001:8b0:aba:5f3c:25ac:3f31:db63:541d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b4a38bsm14385575e9.39.2024.10.04.05.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 05:18:22 -0700 (PDT)
Message-ID: <7c92a7e1df2a16f0cddd3bbf4ad6f7f4a335a754.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate cache and task hash changing with constant base
 hash
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: philip.dawson@datapath.co.uk, yocto@lists.yoctoproject.org
Date: Fri, 04 Oct 2024 13:18:21 +0100
In-Reply-To: <26848.1728043172751059785@lists.yoctoproject.org>
References: 
	<11f534bf16d97e405d253d07055447d061679df8.camel@linuxfoundation.org>
	 <26848.1728043172751059785@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 12:18:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63941

On Fri, 2024-10-04 at 04:59 -0700, philip.dawson via Lists.Yoctoproject.Org=
 wrote:
> > Now I think about it, there was a bug recently fixed:
> >=20
> > https://git.yoctoproject.org/poky/commit/bitbake?id=3Dc6b883106bc414312=
e58fe8c682b3ccc1257f114
> >=20
> > it could be that. Do you have that fix in your build?
> >=20
> > That was triggered by differing paths to the layers on disk which could
> > differ between your machine and CI.
> I don't have that fix, but I also don't have the
> clean_checksum_file_path() function at all as having to use Langdale
> due to Vendor tooling.

That is a big clue in itself, that function was added for a reason. The
reason that code was added may be related to the problem.

https://git.openembedded.org/bitbake/commit/?id=3D5293a1b36eeb89f57577cb709=
ec7f293909039a1


> =C2=A0
> > I don't understand how you have two siginfo files with different sigs
> > and the same data.
> It's a mystery to me too at this point! Is there anything I can do to
> get more information on how it's calculating the task hash?
>=20
> I'll try and run across more PCs as well to see if it's just the one
> CI machine that's different.

I'd try adding the above commit as there were bugs in this area that
sound very similar to this.

Cheers,

Richard

