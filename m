Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E960E00E1D; Sat, 20 Aug 2016 11:36:54 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 475F3E00972
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:36:50 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y134so3387400pfg.3
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=iGsKOLRZopexY1CfCM7NdkNeAyiOAyVWElQOMcUy4Gg=;
	b=ogysmPQPIcn3ByemMmjK/PjR63fDbmLGXbYUqU0jAEesFe0DLqIQFCjLWRgcvF0oAj
	aZjKObr0AtCCUZjThbZoWp1mEMdturH/Zs57fIstc0VzGtQvUEJWNR3BJYerOxk00o1j
	byOB0X/rc26gQAs2zyUCiURxObbUSrfRgMeZzt4/av99m2fB9iAZDX0rpd83oxCJTJ1Y
	EVXl0UiU6DbUcDF++EdV4T+iJis7lRJbr/RuIwOeZyPgqp2nFn5m7ed7AxqHgvPuud+5
	6CsJwwlUThvJ6ZZj/lhCz9j4KAxOKoAqwl6qM0e0zYSThgXKC938Whl8ITytvaVUxLp0
	prvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iGsKOLRZopexY1CfCM7NdkNeAyiOAyVWElQOMcUy4Gg=;
	b=K4an22LPuD3PID7lI8ULgpdCMK6DqCYGUyhZ2DFHj4cyjuKuaCNYnCg8bziniDyD+x
	irisWaGsd+6LQscKD3FOHdEbXcKhaf/KsdZLfRsJhZIjJMnqZyohCxtAvBaHicXM5RVF
	qcEvksLi3/RjLztErEqhW0X4AfHN88X9US0lHxhU+WUr05vF9IT49nDyuC9jwkqM7Zv+
	WfbKS+PD0p/iFOU+SLFSn8k3dC53EhKX0NHewkE7QDbwje6n2cFPRtW8VeJUsGOGkKAV
	SbOfBmkKHQKlfAWsIgGpC6Qb8EfYJmvpLvrrw2En9ExOZrulSfkm3QSyc0DAdSjNI8Qt
	D45Q==
X-Gm-Message-State: AEkoouvAVcwjns7B5WNP/aetIjGC6yfNxVZoGQowNb4K/yRetAWJoCXbtuiMjWXl/BFzLw==
X-Received: by 10.98.18.221 with SMTP id 90mr26542841pfs.3.1471718210201;
	Sat, 20 Aug 2016 11:36:50 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:6946:5275:9a40:9b8e?
	([2601:646:8882:b8c:6946:5275:9a40:9b8e])
	by smtp.gmail.com with ESMTPSA id
	k29sm15688968pfb.2.2016.08.20.11.36.49
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Aug 2016 11:36:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1471713575-19243-1-git-send-email-akuster808@gmail.com>
Date: Sat, 20 Aug 2016 11:36:53 -0700
Message-Id: <43BBF605-B0E6-4821-92FC-AFD74C9C8C26@gmail.com>
References: <1471713575-19243-1-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: fix gcc 6.x build failure.
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
X-List-Received-Date: Sat, 20 Aug 2016 18:36:54 -0000
X-Groupsio-MsgNum: 31574
Content-Type: multipart/signed;
	boundary="Apple-Mail=_363E440E-CAB8-4B5D-9730-A4F9496926DE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_363E440E-CAB8-4B5D-9730-A4F9496926DE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 20, 2016, at 10:19 AM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> ./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected =
unqualified-id before 'alignof'
> static inline unsigned alignof() { return AlignOf<T>::Alignment; }
>                        ^~~~~~~

For this error, perhaps its better to ifdef this function definition =
with

#if __cplusplus <=3D 199711L
#endif

since it has been added to standard after c++98, that patch (if works) =
can be upstreamed too.


>=20
> compile with -std=3Dgnu++98
>=20
> alt in future is to us llvm3X and configure --with-system-llvm =
--with-llvm-linking=3Ddynamic.
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-security/clamav/clamav_0.99.2.bb | 2 ++
> 1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-security/clamav/clamav_0.99.2.bb =
b/recipes-security/clamav/clamav_0.99.2.bb
> index 184d605..73905a7 100644
> --- a/recipes-security/clamav/clamav_0.99.2.bb
> +++ b/recipes-security/clamav/clamav_0.99.2.bb
> @@ -50,6 +50,8 @@ EXTRA_OECONF +=3D " --with-user=3D${UID}  =
--with-group=3D${GID} \
>             --disable-rpath \
>             "
>=20
> +CXXFLAGS +=3D "--std=3Dgnu++98"
> +
> do_configure () {
>     cd ${S}
>     ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_363E440E-CAB8-4B5D-9730-A4F9496926DE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle4o0kACgkQuwUzVZGdMxRIXACeJc+2gzS+KDCC/phOMR2DIkcw
cyYAnR1+e0KTaNwS1qguTuxmx3bk69jf
=xBmg
-----END PGP SIGNATURE-----

--Apple-Mail=_363E440E-CAB8-4B5D-9730-A4F9496926DE--
