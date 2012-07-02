Return-Path: <manuel.bessler@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01903E006AD
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 13:01:41 -0700 (PDT)
Received: by were53 with SMTP id e53so2145227wer.35
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2012 13:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=1k8M6nIO558MnrW4B1qq2DgwmwF2oZ2wRvAL55p90q4=;
	b=sYA7220MgVXuyWRT+3ZQipSJAu8qSqteuFSqmEgXDXorY2YUOPvrLhPxCN7/bOKk4Z
	ZUWsqAqtez2clZwQowuW1QteDg70xREtJUqMJUN8py2NdGv2oHrg1ZSwpRZ5HvnUjQ5A
	JlgYrcvITCOo4fAOx4SxLH6FCnI5YxDMngdMrQYGOMFe7uqCgYoaI2lntkZ3hSX8CAb6
	xwekQRz2nqcFIkZ6XvmtYoInhGvK37PnQpI5el6nr1HExL3Af9LkTGFr+jrvnHqGYMW6
	LQQ+VM79yf/dhRg3BV0hHwPlMGg/vFVomdr46Fs9A5wr2B92RQAsrW9AJ5QQhMzvc4JX
	PDEw==
MIME-Version: 1.0
Received: by 10.180.98.138 with SMTP id ei10mr9904208wib.1.1341259300009; Mon,
	02 Jul 2012 13:01:40 -0700 (PDT)
Received: by 10.223.165.202 with HTTP; Mon, 2 Jul 2012 13:01:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1206260424590.22400@oneiric>
References: <alpine.DEB.2.02.1206260424590.22400@oneiric>
Date: Mon, 2 Jul 2012 16:01:39 -0400
Message-ID: <CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
From: Manuel Bessler <manuel.bessler@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how does one use a prebuilt toolchain from the toolchain/ directory?
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
X-List-Received-Date: Mon, 02 Jul 2012 20:01:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I'm in a similar situation and have been wondering about the same
questions Robert is raising...

I'd love to see others chime in with any insight they might have.

Thanks,
Manuel

On Tue, Jun 26, 2012 at 4:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
> =A0 it sounds like a trivial question whose answer should be easy to
> find, but surprisingly, it isn't. =A0if a user wants to save all that
> toolchain-building time and take advantage of an existing toolchain,
> what to do?
>
> =A0 the ADT user's guide *sort of* addresses that, but in a somewhat
> confusing way:
>
> http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html
>
> =A0 first, the ADT guide, in section 2.1.2, talks about how to do this,
> but only after the more complicated and involved recipe for using the
> ADT installer. =A0this strikes me as backwards -- a set of alternatives
> would make sense going from simplest to most complicated. =A0using a
> prebuilt toolchain would seem to be the *first* thing that should be
> explained.
>
> =A0 next, that section 2.1.2 in the ADT guide opens reasonably by
> explaining how to find and download the appropriate toolchain and
> then, for no apparent reason, takes this massive sidestep in a "Note"
> to ask the reader to consider using bitbake to build it instead. =A0um
> ... no. =A0in the midst of explaining something really simple, it's
> totally counter-productive to suddenly ask the reader to consider
> something noticeably more complex and unnecessary in the context of
> the current explanation.
>
> =A0 finally, after the Note is over, the instructions return to point
> 3., correctly telling the reader to unload the tarball at the root
> directory, then vaguely referring to some "environment setup files"
> without explaining what to do with them or when to run them or what
> effect they'll have on the build process from then on. should one run
> the appropriate env setup file *before* invoking oe-init-build-env?
> after? =A0does it matter?
>
> =A0 so to clarify this issue, here's a set of questions to which i know
> *some* of the answers and would like to know the rest.
>
> 1) i want to save buckets of time in my builds by using a pre-built
> toolchain appropriate for my architecture. =A0can i always use one of
> the toolchains at
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/toolchain/?
> is there any downside to doing that? =A0if so, what?
>
> 2) do those pre-built toolchains always need to be installed under
> /opt/poky? =A0it seems pretty obvious that they do, given that the
> environment setup scripts hardcode references to /opt/poky.
>
> 3) can i install multiple toolchains at the same time? =A0it seems so --
> the common native content in the toolchains seems identical so i don't
> see any issue with having two or more toolchains installed at the same
> time.
>
> 4) once i install a toolchain, how do i use it? =A0say i install the arm
> toolchain, and want to build a beagleboard image. =A0at what point do i
> source the arm toolchain environment setup file? =A0is that all it
> takes? =A0will the bitbake build process automatically recognize what
> i've done and use that toolchain?
>
> =A0 and so on, and so on. =A0thoughts?
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://crashcourse.ca
>
> Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 http://twitter.com/rpjday
> LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 htt=
p://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

