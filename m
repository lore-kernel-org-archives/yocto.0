Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA01E00AAB; Fri, 16 Oct 2015 09:47:50 -0700 (PDT)
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
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E3EE0048C
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:47:48 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so27469842pac.3
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Xasi7mnPU+h+3v5GKmw4kdQPuz1Hfv7W07LOq04mQOo=;
	b=QtKU680bDP0IQ7rCN318qrw2eFjW3XvJDtE1dlbZnP01/RLnFUBOhr4+GuRJDFzL7y
	ZkH5qBoFM9jRGC+3TU0IRnh4dNu7MYwTo9FKsLhEkhFkibUGQh97u5S6o0+gx10mcrjb
	FoLnIFYgJspwDBSziAy0/tZYqi3RuSf6y/PrAZFxLXD8gHHggCmcJBXk4BtjAGLsCMd9
	uA7Q9uyqcHw+xorMued578A5V4V6XSJH4YhD11CuU6MsKZTjlzVSvRY6Jmn7KA3pR9Ub
	BtGsBnm9P6eCQy70d3jti8EA1wY14sKXSASG+mweTfBRcLmAcmBtyGGcvZWhLiKkc7se
	7ZLg==
X-Received: by 10.68.185.132 with SMTP id fc4mr17478898pbc.96.1445014068023;
	Fri, 16 Oct 2015 09:47:48 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:2ca8:8b52:662d:520c?
	([2601:646:8601:4580:2ca8:8b52:662d:520c])
	by smtp.gmail.com with ESMTPSA id
	xs2sm3455383pbb.75.2015.10.16.09.47.47
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 09:47:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.4\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAAm4naA+NwGmhvX=PJMP+JMK4ahWjNdh2XW70bNgveE_mpwxTw@mail.gmail.com>
Date: Fri, 16 Oct 2015 09:47:43 -0700
Message-Id: <46B8A2A4-93A4-4136-A76E-310D2CE71108@gmail.com>
References: <CAAm4naA+NwGmhvX=PJMP+JMK4ahWjNdh2XW70bNgveE_mpwxTw@mail.gmail.com>
To: Debasmita Lohar <dlohar2009@gmail.com>
X-Mailer: Apple Mail (2.3096.4)
Cc: yocto@yoctoproject.org
Subject: Re: Queries regarding yocto dual booting
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
X-List-Received-Date: Fri, 16 Oct 2015 16:47:50 -0000
X-Groupsio-MsgNum: 26880
Content-Type: multipart/signed;
	boundary="Apple-Mail=_20B555B7-E286-4414-8134-75CC5C91F7EC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_20B555B7-E286-4414-8134-75CC5C91F7EC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 16, 2015, at 12:22 AM, Debasmita Lohar <dlohar2009@gmail.com> =
wrote:
>=20
> Hello,
> I am using De2i-150 board which provides a yocto iso. I have installed =
puppy linux before yocto and now I want to install yocto in the =
unallocated portion. Basically I want dual booting. But when I tried to =
install yocto, it just started from the live cd and did not show me any =
install option. Please help me regarding this issue.

there are few seconds when the syslinux prompt appears. You need to type =
in "install"

> Thank you.
>=20
> Debasmita Lohar
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_20B555B7-E286-4414-8134-75CC5C91F7EC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYhKjIACgkQuwUzVZGdMxRjGgCffrtvmZnHVu5esFwBtHh/WW4k
Fg8Anjsbnw7Hu5MHyNK9KF/iUzJGN1fL
=fKww
-----END PGP SIGNATURE-----

--Apple-Mail=_20B555B7-E286-4414-8134-75CC5C91F7EC--
