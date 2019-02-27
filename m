Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27FD3E00D00; Wed, 27 Feb 2019 15:54:54 -0800 (PST)
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
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A253E00C1B
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:54:53 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id j36so21486729qta.7
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=pV/AXH6R6hm7QOBWylS1tpN0vurMH3jWDcroA2lbJVI=;
	b=ffKYpnQtHuZfnWtaDf/lDAHTbTA/9gBpAz7lxo1aERWY/qtAvIfC6+xn7AtsxyHi2d
	ZKCc90F3iSsA5fmvRzb0rqOKbnsMgFg6C+yJd5EMrpzXl2kouSOGpseEA5vvlm8b6VN1
	SN7rxipjRkcJqA0rDCe1fVcqs1GknuMF6Eb1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=pV/AXH6R6hm7QOBWylS1tpN0vurMH3jWDcroA2lbJVI=;
	b=r/BWYEzCZC+/bqeJ/5PR7hxJKTdCQ3NcCaRM2eXbj5lITfmJiOz4Kets8igSu7sHfM
	hsRW12uMDaPIT2dB2qvXxqAV1wFrJzdLgkzbkU2SruBXr0szNedo07bcyNR9YTNP9m/k
	3hyKb+/lehBmzkzC1gumlVWkBuQLpvndy9aLH5QyDfpoZvoJmtql9x8y32cBgAmA6hJr
	D1xqOjyOyPmw86STSx28Wz0bBWNvoAVryhfzBnQIfPzIJ1RJpSZardenCCBpXma9FKao
	old3Hoat/ntOdGW6fVj8q+5iWkAxtIZ/5m4rBIDNFAl+NOnU2VcHzGsOhEHD27dPDeXK
	HqSA==
X-Gm-Message-State: AHQUAuZ0gBR6lDMAwFayqJN3P5IhXFojxdUcnleyhvpIGEhZmQoEQmIm
	J+Ldmh2pufHeIF9cLHEC3pmzbg==
X-Google-Smtp-Source: APXvYqx+MVpT0L+fEt1bvuFCRfbvN8S8CewRGQimT9Pza6qFoBmu/COYSuqKKdvWpcCLiLeyCG891w==
X-Received: by 2002:aed:236a:: with SMTP id i39mr3816163qtc.238.1551311692617; 
	Wed, 27 Feb 2019 15:54:52 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id
	q46sm12776527qtf.16.2019.02.27.15.54.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 15:54:51 -0800 (PST)
Date: Wed, 27 Feb 2019 18:54:48 -0500
From: Tom Rini <trini@konsulko.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190227235448.GJ12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Feb 2019 23:54:54 -0000
X-Groupsio-MsgNum: 44263
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KC8G+boRvJEnfJv0"
Content-Disposition: inline

--KC8G+boRvJEnfJv0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 11:02:06PM +0000, Burton, Ross wrote:
> On Wed, 27 Feb 2019 at 22:25, Jean-Christian de Rivaz
> <jean-christian.derivaz@innodelec.ch> wrote:
> > The project I work for need nodejs and chromium (and a >100MB database
> > on some nodes), so space is not an issue. I need to deliver an useful
> > distribution with usual commands, tools and a working console + keyboard
> > for my locale. If  Poky is only maintained to be tested with sysvinit +
> > busybox and US locale, then I wonder if it's the appropriate choice for
> > that project. There nothing wrong in providing a sysvinit + busybox
> > based small distribution, this is simply not the best fit for that proj=
ect.
>=20
> Installing the commands is pretty simple: be sure to install all of
> util-linux core-utils psutils etc.  Yes, this should be a packagegroup
> to make it trivial, but this is practically a few minutes work.

My current incomplete list is:
    bind-utils \
    bridge-utils \
    coreutils \
    dnsmasq \
    e2fsprogs \
    e2fsprogs-resize2fs \
    e2fsprogs-tune2fs \
    findutils \
    gawk \
    grep \
    inetutils-ping \
    inetutils-ping6 \
    inetutils-traceroute \
    iproute2 \
    less \
    net-tools \
    parted \
    pciutils \
    procps \
    sed \
    util-linux \
    vim \
    which \

And it's also incomplete as there's more stuff under inetutils I don't
need (but others may), and I set aside patch/diff/ed and some other
stuff I don't need.  And since some of that stuff comes from
meta-openembedded, it's indeed really not clear how/where a packagegroup
would reside as we need things out of meta-networking.
=20
--=20
Tom

--KC8G+boRvJEnfJv0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdyNIAAoJEIf59jXTHXZS9IIP/1PPisUMSPKCUz30S98jyzSk
VHxaCeQ3Nitf3wbMBbMQAZAGU4liYo+vZyyXDyCzCNqAM3D8yD9HMOz3DYpmMxhe
djkLl/UFi2SMBWCiG1hJMK10RoTsi7DR5IaP66HL6pLTB1F1pvvTreSU3mkgag+M
LvHzvIb0IW5JfZHuCIg0qkKW14JaRDYqC6GYmIUUa/o1BItgZNQOkZXyI/m/hjF1
Yoxh+JpuubK/O/LmasaxDMxK1a+uIvLcBbCi9lpOpLoDjMeKt1Jlny4IsqbZEJUE
Egdt+g1ght3Q3Fi+TcZpnkDG4gWz6FC0vRfemtK7QQ2L9UVCYEDpGGDqRj9wVOey
GSp/KgSvorfYUBR13euNfpI1E+OX3tD6u5qePO49NW6DKeUo2CUsCyQibg1TZJ/v
i4Ncvnf/MoCbcUP8G5n0v2fm4aQc/xI/y0caUXyKAQ73MW+bY0qVOuWSlTNG0tIs
wL6NlAiPjaASw6MRQHLj4X9MVn2R7WdWxfWP2K2dlqmZIBitb//wrecUr56IjeIt
1qcaKfjWpHIl3/FDKBhN/czdZ9pupXsjv64ypVlYHU/TbtJYASOb4FQVgmGhU+/F
uKiCo4gLH/1A33VsvVeUg/mUDt0WcMZJ3ohEYjwE1LIvef5epKAcAKPx7n9QXPc9
iblOBUDOTtB5Mdok2p5l
=tyYw
-----END PGP SIGNATURE-----

--KC8G+boRvJEnfJv0--
