Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0912E007B9; Fri, 17 Oct 2014 10:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EECFE006EF
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 10:46:31 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id a1so1398448wgh.21
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 10:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=69HyNg1AsXPtM5TdYFAjfZEbgG0fkkJ+kERQd6FELnM=;
	b=NFMtJTdBWdnhUZV0PjmAHT3RCwdcqjxUzzZmLiuPFaZ6Ooba8YusQHDXMAVfOrzZiE
	FwI8DL+aEEXjlPBW0QJOcD81gyQtfEf+trl6DUIc8rg/gfz23e75vYH0UEWgGVHn7l9u
	qre9JhZffZolyhLkF9N8PIkEzV6loi1fInCVGnS/8tHgBJJMpQKDS99U3iGMBSoexZsM
	TzQdteQrQBxhdZPmmqWYoTRaUfN4kYrTe7X3cO+t+K7LoMPVCe1OZnFinvv+6eW/EiAX
	JgW1QTBeJda0IUqSsWhQqp7r7YxnI91TnuRwti1A/KeI8Y07or0EIN+s5gwjHHW62L9Z
	Answ==
X-Received: by 10.194.3.101 with SMTP id b5mr12237872wjb.24.1413567989952;
	Fri, 17 Oct 2014 10:46:29 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	kw2sm2433499wjb.34.2014.10.17.10.46.28 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Oct 2014 10:46:29 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 17 Oct 2014 19:48:24 +0200
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20141017174824.GR3000@jama>
References: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
	<CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Fri, 17 Oct 2014 17:46:36 -0000
X-Groupsio-MsgNum: 21837
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VvnGyWaJ9JuxX38U"
Content-Disposition: inline

--VvnGyWaJ9JuxX38U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 17, 2014 at 09:07:19AM +0100, Paul Barker wrote:
> On 16 October 2014 18:46, Cody P Schafer <dev@codyps.com> wrote:
> > Hi all,
> >
> > I'm working on creating a layer for the rust compiler (which uses
> > llvm) and was wondering if there were any best practices and/or
> > examples people could point me at.

Are you using llvm recipes from meta-oe (or at least starting from
them)?

> I can't really offer much help on the LLVM side, but I can say this
> will be really useful work. I'm slowly learning Rust and researching
> how it can be used for embedded development and it will be excellent
> to have a rust compiler working as part of OpenEmbedded/Yocto.
>=20
> If you need any testing of this layer once it's created, just let me know.

I'm also interested.

I haven't tried it yet, but I've asked Servo developer, how they do
cross-builds and he said that it's really simple with Rust and Cargo,
which support cross-compilation by design.

Now reading:
http://doc.crates.io/faq.html#does-cargo-handle-multi-platform-projects-or-=
cross-compilation?
it doesn't looks so convincing, but I would be happy to test.

Regards,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--VvnGyWaJ9JuxX38U
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRBVmgACgkQN1Ujt2V2gBwXhwCfWfiH0PPQBGbzRbU9CviKUa58
icIAoIigtV32nGNxY3XUSwaWd9qHjNLO
=tYxn
-----END PGP SIGNATURE-----

--VvnGyWaJ9JuxX38U--
