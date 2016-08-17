Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CE5DE009CA; Tue, 16 Aug 2016 17:19:05 -0700 (PDT)
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
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDBF6E009B1
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 17:18:59 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id hh10so5981545pac.1
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 17:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=EmTJy6uR2X0BaQYD+AoHxBXm/KrDqhWmKEGJyhAYIJ4=;
	b=xQeK+MG4/5vbbp1lZffiG7uMrXGir5oJxPb30UG6JWJ5S5FViomfYqCnj+EMY7z/1C
	DP55pjnLN/KlYeuiAOJrFe+6eb6ZFbIYymJdPXr4VnPASPQIQVYJyyZK7J+Lafa9mLDx
	+TXdnXh0Jy8PSJmbmSCso9dYy9deFR/03+e6/QjCWMUH4Zi2Xk7aTltRbymD0ekZfuSr
	3wKLe/Z/58lIZrs8ih/9rktf8pboI4m2aKvRt9VVzcd52hjrL5gbVeSN0bZyDTymT9JI
	sf2HW90yFR8H/hv0haZbnXFVDu9665pDVbiq31sMWZlnSZgL1FPsqwvSjW2UH5zi12g+
	gkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=EmTJy6uR2X0BaQYD+AoHxBXm/KrDqhWmKEGJyhAYIJ4=;
	b=VZx9Wdc4pNNCcsQUgQsTPXfwQTcUEPIV2b7bZoIlsDUlkmMr12JcLjdYlyABQ1Ot+j
	8p/XSDFGwvhYwTlpjRgHYF6SuBOhg3lqKtEtZNcmVqXxMTre27QRBGROBUcxoCcKAmrL
	kShux4avfyCnSsG/Wf61bx8jhEVMeXJcGMe+bbhkvGKQ9Kcvw6guv7dvPRqe9Uz6Wkw3
	pR1mzezF+s2Nm4JXh1fUyRfu8FUff4uTgaQIao5mw/SGWX4svLq/Vb2NK/7nWvNEuvJw
	tDTGQun60Yy+gHFS7uSytC8pVpda59CmLKOzyQaTgOOFJnjNtyyS94jaDAcOB5hik8Y8
	02Lg==
X-Gm-Message-State: AEkoouvhlRkX+IHMbKjeOWO7yKWiqdrxBO7WGURAK4ujh83FLMl40QPljslT9j4fVJmKNw==
X-Received: by 10.66.0.202 with SMTP id 10mr70380491pag.129.1471393139110;
	Tue, 16 Aug 2016 17:18:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:7934:66f:2860:bf87?
	([2601:646:8882:b8c:7934:66f:2860:bf87])
	by smtp.gmail.com with ESMTPSA id
	75sm41983060pfw.92.2016.08.16.17.18.57
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Aug 2016 17:18:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1471389134-55008-1-git-send-email-jianxun.zhang@linux.intel.com>
Date: Tue, 16 Aug 2016 17:18:52 -0700
Message-Id: <4BA368C6-B881-4299-9D28-56D790A70A48@gmail.com>
References: <1471389134-55008-1-git-send-email-jianxun.zhang@linux.intel.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] rmc: fix allocating buffer issue in read_file() (32 bit)
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
X-List-Received-Date: Wed, 17 Aug 2016 00:19:05 -0000
X-Groupsio-MsgNum: 31515
Content-Type: multipart/signed;
	boundary="Apple-Mail=_582C1C39-1249-42D3-8794-06943C8D0EAF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_582C1C39-1249-42D3-8794-06943C8D0EAF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 16, 2016, at 4:12 PM, Jianxun Zhang =
<jianxun.zhang@linux.intel.com> wrote:
>=20
> Runtime test script failed on T100TA (32 bit) machine because
> read_file() function in rmc.c gets a wrong value of st_size from
> the buffer returned by stat(). We include rmc header files prior
> to the rest of standard header files in rmc.c, so standard data
> subsequently defined could be affected by "#pragma pack(1)" in rmc
> header files.


perhaps resetting the pragma would make it independent of positioning =
sequence ?

>=20
> Runtime test passes on T100TA and other two boards with this change.
>=20
> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
> ---
> src/rmc.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/rmc.c b/src/rmc.c
> index 714ae3a..6cf584e 100644
> --- a/src/rmc.c
> +++ b/src/rmc.c
> @@ -10,8 +10,6 @@
> #include <stdio.h>
> #include <unistd.h>
> #include <ctype.h>
> -#include <rmcl.h>
> -#include <rsmp.h>
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> @@ -20,6 +18,8 @@
> #include <sys/stat.h>
> #include <sys/mman.h>
>=20
> +#include <rmcl.h>
> +#include <rsmp.h>
>=20
> #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
>     "NOTE: Most of usages require root permission (sudo)\n" \
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_582C1C39-1249-42D3-8794-06943C8D0EAF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlezrXAACgkQuwUzVZGdMxRc5QCdFfpmals26JVkbKgjcPOw57RZ
9DAAmwRc6ZyubFAfCOieT4dGO4ragoJp
=sn5I
-----END PGP SIGNATURE-----

--Apple-Mail=_582C1C39-1249-42D3-8794-06943C8D0EAF--
