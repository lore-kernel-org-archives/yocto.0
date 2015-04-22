Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 885DDE00932; Tue, 21 Apr 2015 18:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F98E003A8
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:54:32 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so258070012pab.2
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oZLjk7dXL8tsennT1i76bGxs+/8G7oVveRGDg4kNYsc=;
	b=HiFc3eypkJWjqXqTMGrPI1meKMVf9uxPJ3Se+UoFH3QRDusEtcPP7nTGrtFKyYVmbt
	fjEFJG7qFyPWB20qwuXzcF4hjjSYIzmx7eAbIKdswULpojiWtxXd9XEtHKjwlhPuSv53
	XlloSeXF9OjGK7A1jaTXxg/eH3fmWixmRd2EnRAddCpUmV55NDTm+y106c24m4Q8EtM9
	lhVX27FK5qn3TecwZK1+yYsI8Xwo6utn4gbl5dzQ9DoKkX/EnDY5mCxEBiaG7V6ZBRZE
	sbVeyJ9HzLVB15l5wyYZtX/7xDIwHzGAg9Od7xApbaIO/4/faTepGA9dmegkDCLpt050
	u96w==
X-Received: by 10.70.5.101 with SMTP id r5mr42529524pdr.139.1429667671854;
	Tue, 21 Apr 2015 18:54:31 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:d437:6da1:248:2a1a?
	([2601:9:3580:84c:d437:6da1:248:2a1a])
	by mx.google.com with ESMTPSA id sb4sm3258098pbb.5.2015.04.21.18.54.31
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 21 Apr 2015 18:54:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
Date: Tue, 21 Apr 2015 18:54:29 -0700
Message-Id: <E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
To: Chris Morgan <chmorgan@gmail.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 01:54:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Chris

> On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
>=20
> Hello.
>=20
> Based on =
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-cl=
asses-extrausers
> and the .bbclass file I've added this to a .bbappend,
> pulseaudio_%.bbappend actually so root user can use pactl when
> pulseaudio is running in system mode:
>=20
> inherit extrausers
> EXTRA_USERS_PARAMS =3D "\
>        usermod -a -G audio root \
> "
>=20
>=20
> =46rom the .bbappend this isn't working. If instead I add it to our
> custom image file recipe (image-blah.bb) it does work.

its a image level config so thats right behavior.

>=20
> I'm not sure how to debug or why it isn't working from the .bbappend. =
Thoughts?
>=20
>=20
>=20
> Also, the documentation in the .bbclass seems out of date but wanted =
to confirm:
>=20
> =
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers.bb=
class
>=20
> shows:
>=20
> Below is an example showing how to use this functionality.
> # INHERIT +=3D "extrausers"
> # EXTRA_USERS_PARAMS =3D "\
> # useradd -p '' tester; \
> # groupadd developers; \
> # userdel nobody; \
> # groupdel -g video; \
> # groupmod -g 1020 developers; \
> # usermod -s /bin/sh tester; \
> # "
>=20
> This INHERIT vs. inherit seems like it could be something that changed
> in bitbake in the past but was left over in the .bbclass.

its correct because its assuming you are adding it to config metadata =
and not recipe metadata
may be location is not right. Send a patch

>=20
> Chris
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


