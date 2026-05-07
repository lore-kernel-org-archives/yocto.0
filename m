Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88869CD3442
	for <webhook@archiver.kernel.org>; Thu,  7 May 2026 13:20:32 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11716.1778160027753956297
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 06:20:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PmVSWjS0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so12539935e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 06:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1778160026; x=1778764826; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LJsLOmp0qYaii3yyI5rIKD6zXTNR4+QVpujVBDeHxS4=;
        b=PmVSWjS0BnaSqmMsemNbkiYCL1E/9qTMVKq8tpCgTIkXygS0u/Tuc/szyJ3WO+M/QA
         rtz43bAhgaDLHByNtFfvROg+mKzig7Y3Oc2yj1ufCCaU1WFvbHRrUmS/fLZTHUGSpGdH
         8YjoTCQ3rEDYAVcovFEto5Zt9knK0qn/W36/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778160026; x=1778764826;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LJsLOmp0qYaii3yyI5rIKD6zXTNR4+QVpujVBDeHxS4=;
        b=E9SWRy+C9dcElZ4MMwrKQ6DCotHhxkIrh6acYCLljONCgi5nw5vl/EcaeI2/8pdqqk
         t/0W0Qkjpf3mUawkO2Uuy/hT1qlcYyG/HGcYFgUTHuJ3QzUV6PDg/NzKGHhtKCfvynd4
         BIlBtLSKIkoJXoIpZvja0lr9/CcEjOEVcH5tsisoNkVJejQRXXN7QHmXFNOQ83A8Mr4f
         WMmzJ0ZXg1/meX7YinasS8pSeS6695yA/SRmQ5b82LXO6D6KV2k5Quyo2kfB9dfpp8FH
         NlPw0dToEG8rrFb+6Qrt2uPkAJlA47Qflsu3UCdzdBjU0o1LympmSthSPkNzwxzH7+TZ
         u3Jg==
X-Forwarded-Encrypted: i=1; AFNElJ/ph0T2+lsW5v+I9aK/O0dmPdOycsEgVoaPpTocM1L/gGDvwunCEwgw5i40pEFVO5gmVUle7w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yyg++9o3ZQVyU0KslmZQOXw9qEG+4mnvCJKuukqJUkMSAlIISls
	oGFcm8EcctvXzqNlabJcOScknf+h5Um1zXzQ3chBQBBn2IB8uTIzVG2v+qK9TtIzHrg=
X-Gm-Gg: AeBDieu8X7P/e/q2FtPVQnRgqgtpQ2gAXehuMQI/pS2V3xnPt5wzJq5oc6sQ8uaylVL
	aXeM37gt3vlRfJ59umSiLnmzqCt0KJqwIF8z/vKo5pYjEPwnTLQNOnk8RnO5lRxjsaLRUwuW2pM
	0vzbe+GKVekseKs4Rf72gLkiXS41umG9qAqZZhNwZfkVNBcjKTI2yl6TlDpzo4FTMerPQftJJJe
	cstVgGDN9iEc+FRljB5XUmQw8DBTl8gCQqd5SYcMs1VKukPzfGVcpBkZdAABeRHtshuEZI7tdPx
	N08Bb7kbE7PJTyoisgFITTOXDgZrxkN01DjOT6iJZDM8joZ5LGVPE6HUbYtMp4HtGR95gIdNiZ6
	An2pziTkEnWaGdD1ynTXTOjuQAfbkOxWbU8L9vGyDLcy2F4ZnCdgd2idJBPE8uuD+f6t4Pvoi+G
	hX9nFAqFboT/h+2/AlLtilTU1WE7qVSr4ZQaS6e845dzvtcdi471WsrPhMnIE5M0fmFSDUm4o7J
	7V50T12v0rNGNwI2eQvbImUvUU=
X-Received: by 2002:a05:600c:a307:b0:485:4eaf:eb53 with SMTP id 5b1f17b1804b1-48e51f4111fmr101720835e9.19.1778160025796;
        Thu, 07 May 2026 06:20:25 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:44fa:5dbd:b82d:7b00? ([2001:8b0:aba:5f3c:44fa:5dbd:b82d:7b00])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e5313b023sm64535155e9.5.2026.05.07.06.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 06:20:24 -0700 (PDT)
Message-ID: <224b7cb95cda25816f49ce2b036a0c9cca437e1e.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] [bitbake-devel] proposal: build
 pipelines in bitbake-setup
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, Ross Burton <Ross.Burton@arm.com>
Cc: openembedded-architecture
	 <openembedded-architecture@lists.openembedded.org>, bitbake-devel
	 <bitbake-devel@lists.openembedded.org>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>, Zhangfei Gao <zhangfei.gao@linaro.org>
Date: Thu, 07 May 2026 14:20:24 +0100
In-Reply-To: <CANNYZj9YxLpwDe4pTiT5-WMYUG=6AdV1u=dQHCZt45Pk9QF=xQ@mail.gmail.com>
References: 
	<CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
	 <6100A74F-B06F-49D5-9895-DB7D5B563773@arm.com>
	 <CANNYZj9YxLpwDe4pTiT5-WMYUG=6AdV1u=dQHCZt45Pk9QF=xQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 13:20:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66494

On Thu, 2026-05-07 at 15:13 +0200, Alexander Kanavin via lists.openembedded=
.org wrote:
> On Thu, 7 May 2026 at 14:37, Ross Burton <Ross.Burton@arm.com> wrote:
>=20
> > To be honest I think I disagree with you here.=C2=A0 There=E2=80=99s al=
ready a
> > load of =E2=80=9Cbuild pipeline=E2=80=9D tools from sh scripts to Makef=
iles to the
> > multitude of=C2=A0 task runners written in every language under the run
> > (invoke, rake, etc).
> >=20
> > Does the world need another one?
>=20
> The idea is that bitbake-setup should help users do something useful
> with a build they set up, by providing a standard UI. You'd type
> $ bitbake-setup run
> and it will give you a selection of what's possible, and then proceed
> to do it. It's the equivalent of 'kas build', just more flexible :)

The trouble is there are multiple things a user may want to do and
which one is a hard choice to make. If you have some narrow layer with
a specific image and application, that is easy. If you have a general
layer like meta-virtualization, it is unclear which target(s) a given
user may want. nodistro/poky face the same challenge, the thing the
user might want "depends".

> If someone has written their pipeline with make or a shell script,
> then bitbake-setup can simply run that (e.g. a pipeline containing a
> single step), but I think there's also value in having 'native'
> support for multi-step pipelines. They're simple (e.g. executable
> commands are static strings that can't be parametrized), and if that's
> not flexible enough, there's indeed plenty of industrial-grade tools.

I believe if we implement and do something, we need to do it well and
it does need to have a specific target/focus and use. If this
functionality is too hard or inappropriate to use for too many of the
application areas, you have to question whether we should be doing it
at all...

Cheers,

Richard


