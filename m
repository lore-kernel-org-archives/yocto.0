Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D79024C800B2
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 09:46:14 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so4762111pve.35
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 07:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Lp5eLGx1J5dpCCEILcD6Png0u7NAvsYrJraYRdXZFV0=;
	b=OpLGx/z43d3h/KT2TdNbASyhjCKFCwMGympzIjhNnLDbylInpD0mW1DxBYkYkqnL78
	quuKRKiC+Kwv24ZAUeKI1vrFxgAQmrAkYt4jJ6rrOM/G+3q6Ml6mAmDoWCjmJD8s4qoE
	naEE7j5H2s/jmiu4J5TUmfr07F8kOldiettfw=
Received: by 10.68.33.200 with SMTP id t8mr7778278pbi.144.1311000374424; Mon,
	18 Jul 2011 07:46:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 07:45:44 -0700 (PDT)
In-Reply-To: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 07:45:44 -0700
Message-ID: <CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native gcc compiler error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Jul 2011 14:46:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 5:58 AM, Kumar Gala <galak@kernel.crashing.org> wro=
te:
> I've been working on trying to get an e500v2 (linux-gnuspe) compiler work=
ing and seem to have build a native toolchain. =C2=A0However when I try and=
 compile a simple hello world style app I get:
>
> root@p2020-ds:~# gcc float.c
> gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
> compilation terminated.
>
> Wondering if anyone's seen this before and had any ideas.
>

You can try -fno-use-linker-plugin as a workaround. Does
liblto_plugin.so exist on target rfs ?
it might be then gcc driver bug if the library is not there then we
forgot to package it.

> - k

