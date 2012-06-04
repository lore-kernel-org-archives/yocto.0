Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A50FE0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 09:51:11 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1751392eek.35
	for <yocto@yoctoproject.org>; Mon, 04 Jun 2012 09:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=tNYNZX4iN+RDjwYha0drxLvGpf6in2qhRmMMRB62c9k=;
	b=irTRqPBQdHp5r7akm7XerBHN/5mWtf4dx+qfyXtrNCR/15ADwhCl8krdfSbfesr0D/
	2ecrfB8V9YxGUgcn+rcKbtkr/7AyaVUPrAg7kP3vQi3gPWZaZx8/mbtlhQZG4HIoOzpv
	dmYUeJQx4tBqUINOOPwot82r1AqwYyceY9yeHk0lUuL+9JjOOr9w5C+uEvdVLucmEjts
	ACfsRKlBBLWf6cX4HiBAHQczAzrunrDZhgqTw2h1LyDbWWE1XB5NRIcJGJviJayJyRsw
	SIKidY186/+Z3rctir0bu4Wtxf9eBxv2PSQ7K4Q043QSs3AjLEWI3eatE4tyAu9Y+08K
	fwZw==
Received: by 10.14.188.140 with SMTP id a12mr4967249een.25.1338828670232; Mon,
	04 Jun 2012 09:51:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 4 Jun 2012 09:50:40 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1206040421000.9995@oneiric>
References: <alpine.DEB.2.02.1206040421000.9995@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Jun 2012 09:50:40 -0700
Message-ID: <CAMKF1spG1h_NzENJmboHGZErPBNJ2FE4QeR_EaUi6vTL7uXhaw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should yocto QS guide mention SOURCE_MIRROR_URL?
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
X-List-Received-Date: Mon, 04 Jun 2012 16:51:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 4, 2012 at 1:27 AM, Robert P. J. Day <rpjday@crashcourse.ca> wr=
ote:
>
> =C2=A0in the current QS guide, late section "Configuring the local.conf
> File", is the advice:
>
> "A good deal that goes into a Yocto Project build is simply
> downloading all of the source tarballs. Maybe you have been working
> with another build system (OpenEmbedded, Angstrom, etc) for which
> you've built up a sizable directory of source tarballs. Or perhaps
> someone else has such a directory for which you have read access. If
> so, you can save time by adding the PREMIRRORS statement to your
> configuration file so that local directories are first checked for
> existing tarballs before running out to the net:
>
> =C2=A0 =C2=A0 PREMIRRORS_prepend =3D "\
> =C2=A0 =C2=A0 git://.*/.* file:///home/you/dl/ \n \
> =C2=A0 =C2=A0 svn://.*/.* file:///home/you/dl/ \n \
> =C2=A0 =C2=A0 cvs://.*/.* file:///home/you/dl/ \n \
> =C2=A0 =C2=A0 ftp://.*/.* file:///home/you/dl/ \n \
> =C2=A0 =C2=A0 http://.*/.* file:///home/you/dl/ \n \
> =C2=A0 =C2=A0 https://.*/.* file:///home/you/dl/ \n" =C2=A0"
>
>
> =C2=A0should that be simplified to use SOURCE_MIRROR_URL, which is what i
> use:
>
> SOURCE_MIRROR_URL ?=3D "file:///home/rpjday/dl/"
> INHERIT +=3D "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
> # BB_NO_NETWORK =3D "1"
>
> rday
>
> p.s. =C2=A0does SOURCE_MIRROR_URL accept multiple URLs? =C2=A0i don't see=
 that
> mentioned anywhere, but maybe i just missed it.


I think it will. Since it becomes PREMIRRORS and fetcher code in
bitbake checks for list
of mirrors.
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

