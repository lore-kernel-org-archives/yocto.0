Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47642E00294
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 08:35:22 -0800 (PST)
Received: by mail-ee0-f44.google.com with SMTP id b47so479729eek.3
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 08:35:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=GxiexwkYMD+upqQZc7pcJftb9dlP21wwEpC2pDmQ2bU=;
	b=plH72eYPpzvxXdyBQoUekRJ+NBErjQg2j42WDOME4h4eNIKx9LK41gCW40OsMsSVV3
	CZWo0CK8WxluHTZRtd9CyJJnwmc662BxlPiz/p4vnAtxvwg4J8Z2b5bLy9yjWlzyVz6h
	6MbGE0pljEaE1RdKfZro5RxfAn6Pe1Moe0aGUBq8U/Kj/ctRhEweifo98fWwulDT2EPc
	L7aCDdlTpU06rs4XE8QQcL1uMNdpRxzzmfhNRNyym3Cn7qHEUKA5TY67fad+QtUx5mkI
	koAesXYmdZKSMnGL22eM0jjAxaVYq4c13i8OFvthFc+2iqf7UQYYIQW9Ku9MELl/0/TX
	9OOA==
X-Received: by 10.14.173.69 with SMTP id u45mr6983419eel.21.1355848520248;
	Tue, 18 Dec 2012 08:35:20 -0800 (PST)
Received: from gmail.com ([78.180.75.205])
	by mx.google.com with ESMTPS id l3sm4115439eem.14.2012.12.18.08.35.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 18 Dec 2012 08:35:19 -0800 (PST)
Date: Tue, 18 Dec 2012 18:35:13 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Biao <huanmateme@163.com>
Message-ID: <20121218163513.GA43124@gmail.com>
References: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
	<20121217153752.GA5124@gmail.com>
	<42e1516f.20e80.13badfc9db3.Coremail.huanmateme@163.com>
MIME-Version: 1.0
In-Reply-To: <42e1516f.20e80.13badfc9db3.Coremail.huanmateme@163.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQk5kTvbg/C+ISZwSvOLcfMwry1YW+JEGqLjgwA7/yrXaUN/tTNYCO5pROJZSITJmkN0A7Ab
Cc: yocto@yoctoproject.org
Subject: Re: Where does the bitbake get the variable "TOPDIR"
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
X-List-Received-Date: Tue, 18 Dec 2012 16:35:22 -0000
X-Groupsio-MsgNum: 11171
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 18, 2012 at 08:28:32PM +0800, Biao wrote:
> >http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-imag=
e/
> I will try to give some feedback after finishing the reading.
> But for now, there are some silly questions:
> 1. There is a base_do_fetch() {}, I did not find the explanation of the k=
eyword of 'base' in the manual, do i miss something?

I don't know the internals of bitbake on that level but as far as I
understand, bitbake uses the name of the bbclass file as a prefix in the
function names for the sake of abstraction. So, as in autotools.bbclass,
the tasks defined in base.bbclass gets prefixes with "base_" keyword.
Probably, it's related with mapping the function names when 'inherit'
keyword is used.

I'm not clear on this topic either. A hand from an experienced bitbake
guru would be really helpful here. The type of abstraction in bitbake
should be explained in detail as well as how EXPORT_FUNCTION works.

Any volunteers?

> 2. There is 'bb.note' and 'bbnote' in the code example, is it a type-mist=
ake or something else?

No, this is not a mistake. You can use python as well as shell functions
in bitbake recipes and classes. See 'python' keyword in function
definitons where bb.note is used. That's why python function "bb.note()"
is used to print log information. Without python keyword, the bitbake
function is treated as shell.

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--/04w6evG8XlLl3ft
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQ0JtBAAoJEOM7bMm6HhcTBXIP/Rn6GGviK3zkEKzpFe7NgvGR
4PzdD7DBZ9EjseZOjmf0C9PObaAhZDUOi5d07fK7Rhz6kOl5bf2SwOHWSGIIZubk
hUTy8uwJ7Fk+NCsE5SuknTtIx4Vm9YR/qYeyKPrU93uEDimCRS9PHgclvIXVP8He
9/e+k3s2aAkLZYOWDUh4RQ/J2f16/kn9cmxeXsY/kjoI3c8IG+TdF6rFm7S/rBHi
/ou8iy2ozI4gTI6MBaW7tK09Vez09wq8U7xtg76HDy3I0xGzRvHZti2inRiErjkA
li+vWH270cs+su6Qmi7QML4OE3ReFPyH8ymnaH7rL8xwGu08gZT04zbP1ahySx1q
FWPCRsx1Rh4b8hriKi2f/nvaoYJIeBBtnQ7ixor2d27lA/S6ygv1TyBUbZAINc+h
It+tzzjQGtN6eZ6Ogu/+D5nwffz+bsGz1HJUUAHpnZ87r/0zOi1+qffhJBCRwdjq
asBxF0pNOquklDYZulygc3xQRoII6wFr4iActGix3swfQwIXma2J2W1QyLbk0pzZ
auHa8LCy4xEiwPiGEazZpgqmSgWx58eBH6jLWi2n939ck/hMljH4+rAqYJTxpkfT
dRWlE/XSj8kSDWujmS2v7oXtkII8XZ4Zint0lG3Uk4OG3cj2G87Yw4Cx6zo8ofmv
E+AeywQMB9nGp4PfHzET
=nl8R
-----END PGP SIGNATURE-----

--/04w6evG8XlLl3ft--
