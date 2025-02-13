Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D4CC021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 09:45:30 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.7371.1739439924609861779
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 01:45:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UUzW5bOt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so4375085e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 01:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739439923; x=1740044723; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5Lq+wdJAgy65VtQEVXM0Xp1rH7CuE+rdiJO8OxFNGGA=;
        b=UUzW5bOt5Upul23oqzbSTKxyWyWP4cWsZfne7izV/OTkvx1xYtG+uUyFYRzFZZ4nqG
         F+LH5PAAvh74f4Tpkj0IRecKw1JYylEsc1UxiNAIPHwFz/cVX1ugwFgKrLgY3U5Jfqbd
         SmWSa7Y263ZAzowhoF5KkUwZ4hsPGFaRCG/+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739439923; x=1740044723;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Lq+wdJAgy65VtQEVXM0Xp1rH7CuE+rdiJO8OxFNGGA=;
        b=vCqwSFjOaJ/LlNHF9pqL0VYpQfMVL655wTq4Ax+Vsncp/DlEmo9PofLh5IHQdM8m/z
         owjPX//9v00qjGt4jOnJzjvlRsqFZ2X7E8LjZyDtqhZqZ74Sl+/OvrQJjKMhk1XPb46h
         C/sJpvpMbiEWu+a8NAQv78gr/74EwEhCRZ+sqAjOP9lemDuvJEHmj2CzGtIKvUhw99FQ
         tjuBhkHnpEZiz++zgVaLvc5+tg1CQA2BvS+N6HxGtOo8NCtBbfwqsb1136sKAgSs0XCV
         WyI+Xd3Zfj6Peyn7eD1v7HauK5zkRg7OqMGFjzxYh3wYGCkua2+KrzE/uDlj+SgehFi6
         0neg==
X-Gm-Message-State: AOJu0YyXxB5zc/NhhFvTuV28owg/xIA1g5eBsQlcJDn6orLQ3mOe0bWK
	pRNQ4dqjVL5C7p/nnE2mmzfqAzgnZaNyleYFfg19Bn/ks2B1ewEd+qaj9Hhj/4c=
X-Gm-Gg: ASbGncvaWcxXvYIZ7p6SwuE2FGVPwWNmptVBbh28COx7i4RkLrj6bF8OMpVysLUVm0h
	NcKte4XauEP3Vpajlotq5j9TbfctEgeHQi72DGt5eEXa2W3Gma8J1JhxpTe52QO3FLpdwozn86C
	S1/FQDzZAOAH4vof8xWUOC9D9FpYwZLDeumcF8HJH8UTCAX7L8PTZ1/IwsI9KdK9YR+jQC0tLFa
	5LLcTK+RfZAy2xdzGM7k9hDzm9Cru960U+Z1c0JxCaL9asaCVQErsa2ZnweaBT2tqaa9UZ4tHqJ
	MkaWQyS/zAAqRSYzPArtipM8JPNAGUgMfbXIZbCuYWIPj3dCSlHhbRCYc8HdoZr8EhwUA9+4/ge
	lfiq2
X-Google-Smtp-Source: AGHT+IGbfkmkx4Y0Ysc6m1om3h1jevdOm5Vaebv2OcWWYrRyEX4BU4Re6YvCRWQi5yiC7DW3ovt1XQ==
X-Received: by 2002:a5d:584e:0:b0:38d:d79a:f82a with SMTP id ffacd0b85a97d-38dea256f8emr4987034f8f.7.1739439922847;
        Thu, 13 Feb 2025 01:45:22 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:62a1:585d:a736:8828? ([2001:8b0:aba:5f3c:62a1:585d:a736:8828])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f2591513bsm1385992f8f.55.2025.02.13.01.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 01:45:22 -0800 (PST)
Message-ID: <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yoann Congal
	 <yoann.congal@smile.fr>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>, 
 ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Thu, 13 Feb 2025 09:45:21 +0000
In-Reply-To: <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
References: 
	<CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
	 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
	 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
	 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
	 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
	 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com>
	 <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
	 <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 09:45:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64792

On Thu, 2025-02-13 at 09:48 +0100, Alexander Kanavin wrote:
> On Thu, 13 Feb 2025 at 00:04, Yoann Congal <yoann.congal@smile.fr>
> wrote:
>=20
> > I did not find a magic silver bullet that would solve everything (I
> > discovered that Gitlab is way more flexible on this subject).
> > I guess we need to find a compromise between what a github user
> > sees and the effort we are willing to put into it.
>=20
> So as I understand, there are no 'settings' in github openembedded
> organization we can tweak and everything is through repos?

As I understand it.

> Then here's the plan:
> - someone with rights to manage overall
> https://github.com/openembedded=C2=A0org creates an empty .github repo an=
d
> gives Yoann rights to manage it.
> - Yoann opens pull requests to that repo, and notifies of them here
> - any needed github specific tweaks to individual repos are proposed
> and merged through the standard mailing list process.

I don't think the github repo is going to work for either YP or OE
since there are repositories in both that use pull requests and we
can't have a one size fits all message. I think that means we would
have to do this with a .github directory in the repos themselves.

Also note, the global repos probably need TSC agreement. On a per repo
basis it would fall to the maintainer.

Yoann: Thanks for looking into this!

Cheers,

Richard


