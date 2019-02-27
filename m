Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A839EE00AB0; Wed, 27 Feb 2019 13:35:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6711AE00A0C
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:35:35 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id 10so15199611eds.7
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=pCkhkI5PUD130S0Z8A4YYVUg2t9WdlidNl55DaEnSnk=;
	b=WrL4+niVdDHPH4ni3wxeTbvt1mPPdK/xplUAb7oHJ9FpQS4lnxQqq0qQpF4OzjQhuY
	hdqrhoVi/X3hRlGjXV/cT7rqLQhuDAShFq+4CN2CCtzT4bIP/BlovRf9Mj2eGO1T7UXj
	u5kL5SMj92NrJQYVOf8reIGuU3vPIt2qM2wl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=pCkhkI5PUD130S0Z8A4YYVUg2t9WdlidNl55DaEnSnk=;
	b=rymTwELmAF/KAtCgP89MBj1msjBYj9Hus3Nuu+XWzt/34mE2whRjvG9hqE0qUlrUn5
	Z/DFMerf4MdIa46imTyQOit5UBZ1x20ItJUk3AgnJfa40ETagMpC9mek/kdfWebNp0Xj
	cHK7YrH1rH+UwBNek58rTFF2UrMm+DU7uPDN4s3Psl8HJquGSomNon3y+JDh5amk/hAI
	jx4OKBQwHa44TNentve27FaXVp6FO/Xrvzm5AORl2ik1z7zjXN8BsD8A8lASQWFYhcCw
	KcTyJMPj07dEabLCPJT2ktGvzQJ7SRw8OMB0jQuU21Sv2uyd9E26iyORF5OeQbCpqzIc
	eqAA==
X-Gm-Message-State: AHQUAuZreAYpduuRSV+Fy97A1DyVOeHosV46qLGGrR4pVkV95bcfbHat
	LuPA5dQreXlX8OI1G2ddD1KJPw==
X-Google-Smtp-Source: AHgI3IbNvb9KjfP4iylV8c/QvaT7L4FkZ5xRrW9Tq4SEDxc7sknWUrRZuc2B/fHzPGjSGSPxTcBO9g==
X-Received: by 2002:a50:ba8c:: with SMTP id x12mr4089881ede.230.1551303334336; 
	Wed, 27 Feb 2019 13:35:34 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id
	h26sm2907750ejs.17.2019.02.27.13.35.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 13:35:32 -0800 (PST)
Date: Wed, 27 Feb 2019 16:35:28 -0500
From: Tom Rini <trini@konsulko.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20190227213528.GH12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<2093415.XmvlAEeYP8@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <2093415.XmvlAEeYP8@localhost.localdomain>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 21:35:36 -0000
X-Groupsio-MsgNum: 44256
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xShVoZav8KYWC5Dk"
Content-Disposition: inline

--xShVoZav8KYWC5Dk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 28, 2019 at 10:31:15AM +1300, Paul Eggleton wrote:
> On Thursday, 28 February 2019 9:09:02 AM NZDT Tom Rini wrote:
> > Somewhere on my (and other
> > folks too) TODO list is a packagegroup that includes procps and psmisc
> > and grep and tar and various network packages and less and more and...
>=20
> That is what packagegroup-core-full-cmdline (well, the packagegroup packa=
ges=20
> that it produces) was intended to be, although I guess there might be som=
e=20
> argument about what should and should not be in there.

I'll keep that in mind perhaps if/when I cycle over back over to this.
A packagegroup that says to use busybox isn't what comes to mind when I
want to not have busybox on my image, and so failed out in some of my
earlier local iterations on this when I did a hard blacklist on busybox
and then went off to fixup the fall-out.

I'd also argue that packagegroup both includes "extra" stuff (mc) and
misses other stuff (less).  And I know patches are welcome, so it's on
my TODO list :)

--=20
Tom

--xShVoZav8KYWC5Dk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdwKgAAoJEIf59jXTHXZS8BEP/RIHUCFh5MxNk3lYFy1ldv58
D4RN04zfOfoy8fc5C2eaQHQaGbBv1qpKxjN2oyAmKBDjDRK8v/0zTaAsFmFPEK1y
VCUtkXTyoUbq7lsqMZLpSgYWxJDC7OB8lajy6C7AtsVKzqq9KtO3KP+hW0X29EvF
jCELRuqbJwrRKxa5gF5o7mLTSl9P+wVLvaV2K5sOwI8CvBllSRZAAkHpORK/jTtk
Xo+7kwBjKTmFZkMDJvK/WGG5xoYZJ+GZDVqfBt5ZOac8aeHCjRaR1025rBhbb2vq
PLlrJX5Y91s6MWq4goNvbVYZOFgCsGNGvBjefQOmPfWFJlFuTUxwXHs3a/Xo2ao8
6S9dfUr6TWryWYbimeCyP1O0xAu47s81mL7P8/Ij/RvrYB4BhdBUABoOcqDHtJhC
5uu/v9hPm3zopT5sc9YDZ8qI6yM3oa7Q1hdcByUKUGjQt4RNX9Q2xVsY76dc++77
YrTUNqMjLrcC3qZ4ZhJ1zZxo8B3ri1rdWSejl6m/xULM51g2y0do7LAfVhW8ReBL
x9ppyBOph+wcNEYD4YF7fY1FB189tMzX1gIxWyqDkMpwYfJ1mVuA+mkF3Lc4cgCX
0FI7DEWX1clUcZoU07Sgw/Mrccb7xh1nBZXwmVwqHVdGYo+KvMQEmpFXAphbRDsm
VbVisBERoGduGxpCYwYe
=axDF
-----END PGP SIGNATURE-----

--xShVoZav8KYWC5Dk--
