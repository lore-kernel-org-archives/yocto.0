Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27A46E00DC2; Tue, 19 Dec 2017 02:31:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8941AE00D7E
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 02:31:03 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id k19so23529807qtj.6
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 02:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=geAhr3ZX2a21LDdRtKP+cBcRog5atCOjNvMPCAgaBU8=;
	b=HjlqM+4o2biMPIgpDwBwUtcHg/CfKfqQU/fUmaSXvZzweN/akfXda+aNQsIr8kx6BC
	yjefmg8dmuVmJ5r8HZ0ko4HpJuKaZkmv3g+31M6qOP4OHwg3QjUS1NggCJ3xMJnkfBPz
	8DsKFoMbZDZ5bnmUSPFGKB2kjTkHfQShLPKEG5u9K6NdxRwBXx5KelY1tTD83pRjTBfu
	My3gbpxN7RsbOMq0ySg7aUTEKMNbV/faJzirB4QO7VdJn4fGom1ch7uf+I+nP20pzN6/
	or1UJHjmZ0tAxvYTrxYvIfskSNPlys2BS6ptQWA7KZImPnKNWUF6Ax4gkkcJ3hEqByPE
	48eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=geAhr3ZX2a21LDdRtKP+cBcRog5atCOjNvMPCAgaBU8=;
	b=mgkoDTpLtbM/QJhqvIYPo4VOivGT6QWOmSbrP+Bsz6mq5wM4BD2XIrfaFe1TcusEN5
	ZMe9RQAJC1hW/Bhuc0cDEPYaUF/nbG2YmMGexWuzMmCgxA4SQyG7w+JK9WezX2O9LQ1J
	kUSa5axu4LAh56eEHgnXTfIudt8m40s+Ryy+vKUxh80kYE2ummkOmFXGKKLZM3Cd4X7g
	ZUI3W6MlUWQExfB/gFYhEI3BhvCCV5nqkvDZLDoiw12A1vJQ6owkExHK+JPVkqSCk3on
	/A6R9AKnV0QUhW9y+3+MhRsj4pUaNx6jvw0Xq/tKG9iz18Ij5sxKi1fXRA7FbqCfdT8a
	/1Sw==
X-Gm-Message-State: AKGB3mLFMKEa3laaIcFkHDnNqm/Lzxfh6xx84Jk6cOebN+FLOACdR2VM
	sPuYFobdz71ZeiSKGSBEQIiYSgblv2+iluKGhm0=
X-Google-Smtp-Source: ACJfBotpoyIWrWu6zqluV2ehnYpYDA8U6bWa8eXLfZ6gPd9KdS2lNWjuQ10FgXylYpE2diHBshJQMUmRRy2P0CfT8d8=
X-Received: by 10.200.4.44 with SMTP id v44mr4214728qtg.80.1513679462676; Tue,
	19 Dec 2017 02:31:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Tue, 19 Dec 2017 02:31:02 -0800 (PST)
In-Reply-To: <CAJCDnYafdTDa6NR1hNJrepwcDaTWuwvP6KKLucQ3RZGZnQz8GQ@mail.gmail.com>
References: <CAJCDnYYgN=nFYwOz5inC3W5jZojj1QdAG9ck90rXAiPZ1b0xCg@mail.gmail.com>
	<CALw8SCV2M54g94qCYA2Xa7nVYCTOgzkzNkt6u7qefCdpwvVurw@mail.gmail.com>
	<CAJCDnYafdTDa6NR1hNJrepwcDaTWuwvP6KKLucQ3RZGZnQz8GQ@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Tue, 19 Dec 2017 11:31:02 +0100
Message-ID: <CALw8SCU0ze0LH46R-mSL7tSn=tSZbfUcAvzAxkBNaFZyvTrHsA@mail.gmail.com>
To: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wrong distro name in toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Dec 2017 10:31:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2017-12-19 10:42 GMT+01:00 Marek S=C5=82omiany <marekslomiany@gmail.com>:
> About mixing branches - I have recreated the problem on new location to
> check that the problem persist. Here is new setup:
> BB_VERSION           =3D "1.36.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "am335x-evm"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.4.1"
> TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard"
> TARGET_FPU           =3D "hard"
> meta                 =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"
> meta-oe              =3D "rocko:6e3fc5b8d904d06e3aa77e9ec9968ab37a798188"
> meta-et              =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"
> meta-ti              =3D "master:8fcd2f60720acf46555b45a1a48ad1fa0c52b75a=
"
> meta-qt5             =3D "rocko:d87335a50a9dd35d890786edbd79b8953fdaa11a"
> meta-poky
> meta-yocto-bsp       =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"
>
> meta-poky is in rocko too - I don't know why it didn't show but I have
> double checked it.
> meta-ti does'nt have rocko, so it is in master.
>
> This time, as I am using poky, after deploying and sourcing sdk I had to
> copy ./sysroots/x86_64-pokysdk-linux/ to ./sysroots/x86_64-oesdk-linux/ s=
o
> it's basicly the same and it doesn't make difference if I build it with
> "bitbake <image> -c populate_sdk" or "bitbake meta-toolchain-qt5" - resul=
t
> is the same (not counting that second option doesn't give me additional l=
ibs
> from my image).
> Recipe with our own applications has same issue as on my previous setup.
> As I have written - the problem is not in generated sdk that I use for
> out-of-yocto build, but it is when I build my code within yocto with reci=
pe
> and image.
> To answer your question about image - on my setup I have my own image
> recipe, now on this test setup i used core-image-minimal with additional =
qt
> packages added via local.conf file.
>
> To sum up: There are two problems: first is when using generated sdk - th=
e
> problem is that in sdk subdirectories there is x86_64-pokysdk-linux, but
> cmake is looking for x86_64-oesdk-linux. This can by bypassed copying
> *pokysdk* to *oesdk*.
> second problem is when building from recipe - it looks similar, but I can=
't
> find proper directories to try out solution which I just described in fir=
st
> problem.
>
> I hope it is now clearer what my problem is.

Very much so :).

Can you build other Qt applications without error, e.g "bitbake quitbattery=
".

If above works then you probably have some hardcoded path in your
cmake files of your custom application.

You could also "hack" the SDK name by adjusting the

     SDK_VENDOR

variable, but I believe that there are some assumptions somewhere that
have a hard-coded name of "oesdk" which is wrong to make such
assumptions.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

