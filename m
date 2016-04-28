Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1BC2E00D8F; Thu, 28 Apr 2016 03:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EA89E00D8F
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 03:52:07 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id y84so79593714lfc.0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 03:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=Ts9IoNHabxS89oJHFbaQh2+JChIFJ0AAF/nnxHS1j/w=;
	b=FT/bHl/bQY2gLr9NCKS5EkdctvWwOHicmyh9nYoDfGFZN+jcGp54TvkOnhVUGLoW37
	lGFRIQpyICRYhwNgsj37+3W5w2rSSx9VrfmrV+3y3mgPRw2beulF3Di8Z0LHz+eUIGdO
	CK5avLCtRdouMn/rO7S/UjFIXm2ovNWMECXvx4zTcUQk0fNYm9ypcKkC8k9fcz8PPs2N
	lT6+6yEva1vE6OkFF3XYr3RoKKjThhPg86Nf/lqZGzL8XR4Vyk+Fca8MGwNtQYcy/Tq3
	vZcz9MfO1tmZcNw/sv0HscR5iWI/N+uUqo4cPQPT40N+qpFkWBtha6MDGk3iboR1XJgQ
	DXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=Ts9IoNHabxS89oJHFbaQh2+JChIFJ0AAF/nnxHS1j/w=;
	b=faXyW9OYiliLzzE8T3Hvrcy9XK4q0T5Gr3vf0KEKUlwawtU2ueKlN9JvWTv+0AyygB
	t5sjXBaJNYcsjXTerid6VLtQ6UPveriLBTOk+VLoEg4nIL1jhwpCs7gE3/UBmveeTvBk
	BFL9irIVsR/p2ZSZDjDNH68Z53QTB7gtmgMdtAfACX5Af7XsaB0/i1ueI7ADwzfaMcLc
	1bf93sePvJSaamq6WQUPQCKKcBuMO5ZmOpUm6Z8MFsCV71IkUvuIf82vZ+iPL5eUPoVK
	0WrzAcZl8HIeCeuK+jdw2/BnXCOtuzy9C/wp/LpUA7UsTq7QkwhELnKXybEK+45+a0SB
	LxOg==
X-Gm-Message-State: AOPr4FUQsCqHPShHQNkuVvwCRTYzWQNIRC6x2b9prMCCtTMxYFn37OjYWibSgHn2NYjpsdm57SqbGJObl5H+TQ==
MIME-Version: 1.0
X-Received: by 10.112.78.1 with SMTP id x1mr5674384lbw.64.1461840725501; Thu,
	28 Apr 2016 03:52:05 -0700 (PDT)
Received: by 10.112.124.10 with HTTP; Thu, 28 Apr 2016 03:52:05 -0700 (PDT)
In-Reply-To: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
Date: Thu, 28 Apr 2016 16:22:05 +0530
Message-ID: <CAOorjZSCC5505V81z-SO1xmcM0i+adSHC2cLzswt6PhW3Q3ixg@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 10:52:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If bins/libs are installed in non standard paths other than usr/bin or
/usr/lib in image directory, then you need to add them explicitly in
your recipe like

FILES_${PN} +=3D "/lib/libxxxx.so"

On Thu, Apr 28, 2016 at 3:20 PM,  <S.Jaritz@esa-grimma.de> wrote:
> Hej
>
> I like to include the hiredis library. I created a recipe and modified th=
e
> EXTRA_OEMAKE. The compilation works (in the git directory object, "so" an=
d
> "a" files are generated). But the generated files are not placed into
> packages.
>
> Any ideas?
>
> below there is the "libhiredis.bb" file:
> #########
> SUMMARY =3D "libhiredis"
> SECTION =3D "sek4"
> LICENSE =3D "COPYING"
> LIC_FILES_CHKSUM =3D
> "file://${WORKDIR}/git/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51"
>
> # 0.13.3
> # SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
> SRC_URI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"
>
> S =3D "${WORKDIR}/git/"
>
> # we need to pass the Cxx parameter extra to the make call
> EXTRA_OEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=
=3D${CFLAGS}
> -I${S}/include' 'BUILDDIR=3D${S}'"
> #########
>
> Regards!
> Stefan
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

