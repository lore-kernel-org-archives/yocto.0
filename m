Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFF5E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 16:17:13 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so9547751qcs.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 16:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=prfQp6HcrPSoNT2jSEyCxcHD2FXSnOerDsgiIwYaCBE=;
	b=QhPKyoSNXkw64dja4u9C0s+/CTProuaLpbzWHKPjpfX1k7G0Sn4JVI7zYgiRytJNHo
	+NioO4/yHRpzoDz344K5UutQ0KzeNP0ukLFoNrUmMn1nDFLgtj6J8CarUtGDbLmP1l4u
	osv3nnjxFEaIBWaVNSqYyBjChFLl6OELmzvZU=
Received: by 10.229.77.69 with SMTP id f5mr12421807qck.107.1325117832262; Wed,
	28 Dec 2011 16:17:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 28 Dec 2011 16:16:51 -0800 (PST)
In-Reply-To: <cover.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 28 Dec 2011 17:16:51 -0700
Message-ID: <CABcZANmKUO=fihCORY-itAPiEuUqCdRAE6yLZX-vStmcrFZr4A@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Thu, 29 Dec 2011 00:17:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2011 at 4:45 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> V3:
> =C2=A0 =C2=A0o Rebase on master
> =C2=A0 =C2=A0o Dependent on oe-core series "Fixes for tiny distros and li=
nux-yocto-tiny"
>
> RFC V2:
> =C2=A0 =C2=A0o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
> =C2=A0 =C2=A0o Drop poky-common abstraction as suggested by Richard Purdi=
e in
> =C2=A0 =C2=A0 =C2=A0favor of POKY_DEFAULT_EXTRA_R* variables.
>
> Poky-tiny defines a new distro policy for building tiny Linux images. =C2=
=A0Rather
> than create new image tasks and recipes, it reuses existing ones, modifyi=
ng them
> as necessary. See the poky-tiny commit log for details on the policy goal=
s.
>
> In its current form, poky-tiny builds a qemux86 core-image-minimal image
> and kernel in 2.6 MB (compressed):

I haven't had a chance to do much review of this work, though I'm sure
others have done so and commented. I just wanted to say nice work on
this, it's looking quite nice, and the various fixes should make some
lives easier for folks who either do or want to base on the poky
distro configuration.
--=20
Christopher Larson

