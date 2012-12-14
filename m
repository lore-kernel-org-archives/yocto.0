Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0CCE006B4
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 22:36:32 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so1757590eek.35
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 22:36:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent
	:x-gm-message-state;
	bh=cKQm2hAvopUe13/+BnH8NXVxYBihBuji1/AY2EOr6JQ=;
	b=lz1LgHE3vloRbJRnTom3/2c71DDeFFc4DTXKgui5Lh2YHNG1LRpeUDUgz1MBxlMuGc
	vlaVt5sF0lCe7ZiAxxkhASxM1/FvAmfiuvZQ876l/SP+IAS3IfuwyUrkvMuS2C2IbcTB
	GJ7EvcAth9GxEbjniNtqVz2eLu/3JPdEXvelpNTaeB+4SXrwBeGsJmgmeZ3WqQ9PWaBZ
	G84zMyRAOJcrCj/+ldGRoGBQ1dOoGAz0x3AXhvyV8OsbvDPD6b09A80tPF6Sj1oc4say
	BPxhNb4hs1SCN2X7H9uec4BCcncRAY4rWLeRjWKdAhdrKqVa9pSXO5a8B527/8bYpRIV
	HC8g==
Received: by 10.14.2.66 with SMTP id 42mr12480986eee.7.1355466991534;
	Thu, 13 Dec 2012 22:36:31 -0800 (PST)
Received: from gmail.com ([46.196.117.99])
	by mx.google.com with ESMTPS id w44sm7525959eep.6.2012.12.13.22.36.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 13 Dec 2012 22:36:30 -0800 (PST)
Date: Fri, 14 Dec 2012 08:36:20 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20121214063620.GA52818@gmail.com>
References: <20121202174723.GA91088@gmail.com>
	<CAHUNapQYPx3Aq+mPJm3=g+U3HHVO-PMv5hb3-Xw2Wn_NfyWeQw@mail.gmail.com>
	<CAHUNapRXy4OLNLQqVR=a+xpWrsPE1z+stBR9Rq5rP+NQsVTaUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapRXy4OLNLQqVR=a+xpWrsPE1z+stBR9Rq5rP+NQsVTaUA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmWPOZwgAu3b81dFeuE09EpygCuJuH7mqBXfxN0oM5ILvGXAPNsCVtlAjGxSfRN8eFhO0gr
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: [Draft] From Bitbake Hello World To an Image
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
X-List-Received-Date: Fri, 14 Dec 2012 06:36:33 -0000
X-Groupsio-MsgNum: 11099
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline

--liOOAslEiF7prFVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 13, 2012 at 05:26:29PM -0500, Trevor Woerner wrote:
> I'm not sure if there's something about my system that is different
> than what you expect, but I had to delete my 'tmp' folder before
> invoking './bin/bitbake firstrecipe -vDD' after inheriting the
> "autotool" versions in order to get the new, overridden tasks to run
> (since there's no 'clean' tasks).

Thank you for your feedback. I am glad you like it.

You are right that 'tmp' directory needs to be removed after changing
the recipe (adding inherit, or removing it). I guess we are hitting
bitbake cache. Since clean tasks don't exist, 'tmp' needs to be removed
to make changes take effect.

I must have removed 'tmp' and missed adding it while writing. I will add
the explanation.

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQysjkAAoJEOM7bMm6HhcTh48P/0xwp307ksICvHghEa1KUyfO
67Q4aXDE3Ipfpb8SbDI4d9uhfZ3IFg6alFgDTR5/UpBfVwrr8UNapD9tRQhxAfdN
I7qouRXk75murW8M7RYLqgLMlYtjP/+qH0qlr5wA9eEEkMQ1B46rKgoVRMwto6ET
rl9EeAXzOe4fegXTotXH+mATf+2dq9peotoA9/NDGKG12i0Wu3Omy2BfImeEiJY7
z2LZCTV0Goe7yA7nTLD3VhzLYgrpsZRZTfHSRzvJnPajeHRzkpfxCR1eU5/CNwTH
einVREgClEBmkql0EUT8uq1KgG6bLc3ihWirwQFa3cg/WAY/b9cXdTRjx7HPDBeE
UB3KZ9tn//WWcJXcq+N5R4pTgUVOvExuraDVnUobShy7FoAxKvKwF+XH3Y1QXmPx
nBpEu9P0Wxa3KpWYvnBz5Z3txbcuFDgNERHjtBXb0mMfAaT9mFv/6kcL/Ktq0yeQ
ndll/x3LnUrr4hNTUapkjcN8tfVKairAFFwkQsTfmRull5fa1de9t9IhPcjH1S77
5Xj7FAdTKYScdYw5I411F3fTCCUVIl+W9dsJkuC236mrQPUj9znn4/2NAlLgjrWQ
yyPzDJAbI8BjqIRfyYLUSnMNYXVNgGQBlZiV46m3ler2wGgWO7Tn/LxmyzHkvQlT
/jai4xEXod9hdTWizdMi
=v+rf
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--
