Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA0C9E009F4; Thu, 10 May 2018 16:32:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5CDE00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:32:34 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id l1-v6so66010wmb.2
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SUv6gfzlZXLw7SNUV+S3EK7CICyIgMbxGSxtkAb7/no=;
	b=U9JT4EjrAjLhj4BRvuDIfYzHwfM9B6l6orbe98LA2lXxKpW5/aXIVyDQpNRN9htf+C
	gl8nigYOs3IaMgpUg9TiU4aXScCgXs5H63DfOtKK3g+tmq7JxdNE5DoRUuHvKisu+1Ys
	DZh5YUA3Xy2Er4eIs3lXOwVP/d8fKt+51g9yJj5vY16jzLK+YhBb9KoNlATahDM+ertR
	HGZhaeQYmkqMs4rRUA6LIafSPV/6ID/Bse72WS9ivv91O3mqxxRHsOLovT/OM54Ch03Y
	3FXZCJ4xh9UfbtGhrFueIbn3RUS6e5D6UJap9ijKQlnPCMaHvIlcmVpVscXGucN/CwOv
	YR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SUv6gfzlZXLw7SNUV+S3EK7CICyIgMbxGSxtkAb7/no=;
	b=bsGtPEODRZunmIKC9D8l/YN5n/0XGrnOqb01CNVZ2iQndHI8FIRLrjyo3Ba3cfGPDG
	hCVQKR77+7CKZPh1BFG7SOtIyYcDHOaASxAskMdECluRcB9GpENucgzYSyvolb9awDVB
	taoFNCF1sZ0jjnP/6ehzU2r/I63+heJiG/RZfGDGjow+4CTm834YILdg2VQ055S8xYgu
	b/I2gKUTXnaUBbYuLiXhFtaLbZNv4a0PQ13HhG1/QLB8WvkXuB4BEI7frph67rzNlgNL
	tyuf4x1Om2FnjPv0p9yS+PGhyz28bqxAkEtPSRF+T8426g/Zg4TK4cuZr0d1eJ0RNa1J
	hgCA==
X-Gm-Message-State: ALKqPwfdxXb7depUEK9I++ngM15o7VW5G6fX7jZrQBJpFRXaPTKFoEK8
	C3FUEngs1TaR8640bfazjdw=
X-Google-Smtp-Source: AB8JxZoGPBWg/PbdoZttyNh890XRNFdwUl9wY6GXa9cjBC8sdQNe7e2G7QJACy4x70Yh//GeHjD68w==
X-Received: by 2002:a1c:d546:: with SMTP id
	m67-v6mr515417wmg.117.1525995153793; 
	Thu, 10 May 2018 16:32:33 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	o53-v6sm3634166wrc.96.2018.05.10.16.32.32
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 10 May 2018 16:32:32 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 11 May 2018 01:32:33 +0200
To: Andre McCurdy <armccurdy@gmail.com>
Message-ID: <20180510233233.GF1954@jama>
References: <8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
	<20180510225017.GE1954@jama>
	<CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
User-Agent: Mutt/1.9.5 (2018-04-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 23:32:35 -0000
X-Groupsio-MsgNum: 41107
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ChQOR20MqfxkMJg9"
Content-Disposition: inline

--ChQOR20MqfxkMJg9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2018 at 04:11:00PM -0700, Andre McCurdy wrote:
> On Thu, May 10, 2018 at 3:50 PM, Martin Jansa <martin.jansa@gmail.com> wr=
ote:
> > On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
> >> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com>=
 wrote:
> >> > see
> >> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/1=
50654.html
> >>
> >> Removing -fno-omit-frame-pointer isn't the same as adding
> >> -fomit-frame-pointer. Frame pointers may get enabled depending on the
> >> optimisation level etc (ie not only by -fno-omit-frame-pointer).
> >
> > Should I send v2 adding -fomit-frame-pointer instead of removing
> > -fno-omit-frame-pointer?
> >
> > The v1 fixes the issue for me with default config + DEBUG_BUILD.
>=20
> The v1 patch isn't wrong, it's just incomplete (the problem could come
> back if someone changes optimisation level or switches gcc to clang,
> etc).
>=20
> My choice would be a v2 patch which adds -fomit-frame-pointer to
> CFLAGS unconditionally for all ARM builds when Thumb is enabled. That
> should fix the problem for all optimisation levels etc and avoids
> building the main strace binary differently depending on whether or
> not ptest is enabled.

Only for thumb? makes me a bit sad that thumb override was dropped by
you in
351443d71eb246a946b41f12b54d57b36fe1574e

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ChQOR20MqfxkMJg9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWvTWkAAKCRA3VSO3ZXaA
HC08AKCCfUOfJAkV1zpQiqU+6nzj611K2QCfd+7YnuLZzHs/BFtbN3kq4P7ewj0=
=C5GB
-----END PGP SIGNATURE-----

--ChQOR20MqfxkMJg9--
