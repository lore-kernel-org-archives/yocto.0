Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A7FE01370
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 13:45:37 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so119807qcs.35
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 13:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=xK1EAFp2D7sfxUkk+vVa1gbRemTyF0yRgN3OSFBnS/c=;
	b=vk7TINoZmYCK1N5lhXFE0BwF8jfC/HE0vCbhsem8H5IDY4Q3w0Wve0GEd1uHqTN8ww
	YtSG/x1ZT0CJl3tQgw5z97/JQzU52zeggezf4FhyLhlWluiGO5WqfsbGeTA1EOCeim0o
	xApYJukl5bHoXAiXtODg/cw3azwte+nOw4dA0=
Received: by 10.224.203.202 with SMTP id fj10mr5506587qab.66.1323812736351;
	Tue, 13 Dec 2011 13:45:36 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.73.200 with HTTP; Tue, 13 Dec 2011 13:45:15 -0800 (PST)
In-Reply-To: <1323812170.25491.23.camel@ted>
References: <4EE7B44D.7000301@linux.intel.com> <1323812170.25491.23.camel@ted>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 13 Dec 2011 14:45:15 -0700
X-Google-Sender-Auth: kNY_tPPvFqjhUK9FmUUJbeM34q8
Message-ID: <CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Tue, 13 Dec 2011 21:45:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 13, 2011 at 2:36 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Not all images can be built with a given distro, our base config is
> rather ride ranging though for obvious reasons. You could "enforce" this
> by adding some anonymous python to the distro which does something like:
>
> if inherits("image") and PN !=3D core-image-minimal:
> =C2=A0 =C2=A0raise SkipPackage("Image PN not compatible with DISTRO=3DXXX=
")

This is a case where one is best 'controlling' this via policy, not
mechanism, in my opinion. This sort of arbitrary technical limitation
tends to be foolish and often bites someone somewhere down the line.
I'm sure you just wanted to note how it could be done, not recommend
that it should be done, but I thought it should be made clear. I
wouldn't recommend that anyone do this unless there is an extremely
good reason for it.
--=20
Christopher Larson

