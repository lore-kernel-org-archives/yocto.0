Return-Path: <eren@hambedded.org>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B87E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 08:11:48 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id o1so4029260wic.11
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 08:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent
	:x-gm-message-state;
	bh=zrmlm2eCbOJmFNQSc8I27Lda6jvvVIemnE0cvNAplEY=;
	b=FK+WytzXBxVfieXYwtWI/v3Fb8kpoqPOhiB2n5yXmSot7HQhKr2bIqq/NKG+P/Lb2E
	lOitUuK8yWWZWKCfkV+0+qhRXv1QmyKyVuwwroOOhyjv6wCirak7A9FDxgWESbL5D1iP
	BaohXxm7P+pc47K/x7kBhCyKKTxuxP6eO7eBtLQIvmIowWYNXeIz7fJbZ5TY89N8qVE8
	FINinj6Yv0SgHX1FZW6PrDEjz+6ubf1OfGnVyKtsoWb1/pmgGQ2i8wJ/c7HX9Sv4Gkjk
	mTwCEWjmkRlC/hW1HyQlNNIbuin7nC2oJTZk9SHxbDjk2KkwI1lSvK7ec3H6VettzXSy
	1NKA==
Received: by 10.180.24.193 with SMTP id w1mr27781054wif.22.1354032707754;
	Tue, 27 Nov 2012 08:11:47 -0800 (PST)
Received: from gmail.com ([194.27.149.32])
	by mx.google.com with ESMTPS id eu8sm3119792wib.1.2012.11.27.08.11.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 27 Nov 2012 08:11:45 -0800 (PST)
Date: Tue, 27 Nov 2012 18:11:36 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20121127161136.GA94097@gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
	<CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkS9nj/CFpDfMpaYKtqKk4PTxvdL/3hUS8YnxxPgWWOJsmvIVlDQjNOqBoG6taPVuJ2qAw7
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Tue, 27 Nov 2012 16:11:49 -0000
X-Groupsio-MsgNum: 10679
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 27, 2012 at 08:40:26AM -0500, Trevor Woerner wrote:
> Thank you, Eric, for the confirmation.
>=20
> Just to clarify for anyone following along: the problem isn't with
> bash or trace-cmd themselves. If I perform the same steps but use
> 'bash' first, then 'trace-cmd', adding 'bash' succeeds but later
> adding 'trace-cmd' causes 'trace-cmd' to fail in the same way 'bash'
> did when it was added second.

Since it's confirmed from different people, I think it would be better to r=
eport
it using bugzilla. I guess that it's not an intended behaviour/feature of
bitbake. Please inform the bug number so that anyone who is interested can
follow.

--=20
    . 73! DE TA1AET
      http://erenturkay.com/

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQtOY4AAoJEOM7bMm6HhcTnQcP/0t7AlJsA+0hWGzu8boslHSK
k0b13EOFNoKdllU5OgTF3um/KwwfWWfTVhQISgaID9bk/7ZInjYNB3f6GPHmKz1h
48qaT+VHfGPqIscT/19seMxEYjR+iRtLJxjZDzHKwQpIx5bl2FQ+rPG8IO5etRdY
sgnwIRg49ob+Vm90+EpQEc9JrHzyN8A1DH3oFTOro3TgT/fXUBjSJXiczMuTClb2
CCTVlr+ZAXeex/6meEF0Hh8kh7cjUuY+l6dTAI6YanRPko3JdxWzOnd7uGMi9lDT
wSH2M3EhYLz/TK2LB402sYPzx+y6Aat7lRQ7KgZC7XZGEsF+aeCKImFqlKk5OcNn
lOiQHKqH1EkZS7TVvdiTX7MTsyApQbwFpzRo2BudBXR+PXDpFizMROYj9x5GGM5M
77iCKT/LRPO4r2J3viC+U95SqNY/gQMtTw/+SiphPxingAmBo+05h0zVEfg+iW5Q
DKVZYiuED/rUXiM5JjIb3isOaMDK54thObeNbai10ZtzQfcq+Yf1w/Y9rHAsBHhQ
nEQL5/WEuZt7RMKttNey2GgCmrPkjOnS4jH/nnX7WhLyZr6rhqPHu200i/g28viA
c+oQuYLD7vu2BGyrtZQBgTkM6RxfoE8ZUK4XZvAOU6xEMdqvRdLY4kUWbKl61/dI
TYXzs5MWdi8zTigVuKKU
=j2bu
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
