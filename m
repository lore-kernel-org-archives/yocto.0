Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D9DAE006BA
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 15:36:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faap19 with SMTP id p19so1500686faa.35
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 15:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Gb+eSIySyB4d8F40qTjYEVNCEeo4ye2b6YLwxJENgBU=;
	b=Pc55Yni7gL4wj6DBjSrycrGLOj/vsLEwO7FDAH94n2K2ALvBzQUjQ+FKQ1/V0GvEHN
	9pM+/+ZOmgkKzQ9yFJXq8P3bsU/HPBU9Mt3Xk/tQCrLfxRBWV4Hy5+igdZOCgY/B/XPZ
	qPC334UQmI1T6ScXBIKyDOp/ywMTEH8TS22qE=
Received: by 10.152.111.1 with SMTP id ie1mr330778lab.7.1322005000103; Tue, 22
	Nov 2011 15:36:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Tue, 22 Nov 2011 15:36:09 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1110301221390.997@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301221390.997@localhost6.localdomain6>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Nov 2011 15:36:09 -0800
Message-ID: <CAMKF1srt7BLwzGJFv7KSOmGDHy4-VAURTiu1X_Sd0uvDXZZQBQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: a couple cleanups at the toolchains download location
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
X-List-Received-Date: Tue, 22 Nov 2011 23:36:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 30, 2011 at 9:25 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
> =C2=A0(yes, i *am* going to be this pedantic all day long. at least until
> football starts.)
>
> over at
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/toolchain/,
> a couple optional fixups:
>
> 1) the toolchain ...i686-x86_64... doesn't appear to belong under the
> x86-64 directory. =C2=A0(it *does* live properly under the i686 directory=
.)
>
> 2) the directory name is "x86-64" while all the toolchain tarball
> names contain "x86_64". =C2=A0any reason why these can't be consistent?
> what's the standard? =C2=A0it just seems confusing to keep bouncing back
> and forth.
>

since x86_64 (which is more familiar) has an 'underscore' in it and
bitbake reserved that
for overrides we had a potential conflict here thats why alternate
name x86-64 is used
actually they both mean the same thing.

> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ottawa, Ontario, CA=
NADA
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0http://crashcourse.ca
>
> Twitter: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 http:=
//twitter.com/rpjday
> LinkedIn: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

