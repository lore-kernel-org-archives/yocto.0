Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74BEEE00D21; Thu, 28 Feb 2019 06:37:25 -0800 (PST)
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
	*      [209.85.208.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E6BE00D20
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:37:24 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id g19so17194201edp.2
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ViiYZAMuvaytlLHCRr2HA96ctkwXBaZRFUISRa2g+GU=;
	b=q3lE3xyo1jLCPTV2NOvBdfFbOIjnnXXA14uNQinoUN1FfbVzxqbNj5yHWFrUlr7DFG
	CcVoy2sr4FJCCTekwJobhCX9cpjLSopSxSpOejVAuGS33/HUM4DlS7EJ6DY0bijKnMPS
	7G5nxs8FlhDNAVcCM0CE88W71+NeLgDP/S184=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ViiYZAMuvaytlLHCRr2HA96ctkwXBaZRFUISRa2g+GU=;
	b=s27344iph8HWjJinmADFco6Z4E9hIZy9MOnadzYaBmqp3UxmOI58sq2HSMg+Y1sS8P
	bz6RsMwLkA8J0EzRugAZoYEh2L+pTOm9bkpp7rEJ4klNlAZnxF78vl7BSRqachz6H0xj
	DwvaQbdBCwiBD2eMC2zZJshbkjHZhVgdEL0RbzoUx+DsnW2xmczVMwfiE5iDmzHdhg/w
	OPiW32PZV0nasJw3QNpIapfiXexEDWHp390aSznmDpMl1OR90MTry4HCw+8QqmbvNBsM
	PplTMczUPBvAAWT7PFazDDneSAFAoY8xwuoXHM6kUPzubcLoulL8qNHxq6VB2Dv0DrOE
	lq/A==
X-Gm-Message-State: AHQUAubIbAx1UwV2/utJgBV8AmIt1q8FoVeR/WL0qSH6jvoBGHd5rBRv
	DJqYTclw03cN36cuv60WfahdVg==
X-Google-Smtp-Source: AHgI3IbT/idrgbCiI7NG1VgeP3FGvqGJ4RnfroZYQWjCu8sc1namVUThsZMKRa9D5Q4oO2h/pKQstA==
X-Received: by 2002:a05:6402:1817:: with SMTP id
	g23mr5670047edy.295.1551364643153; 
	Thu, 28 Feb 2019 06:37:23 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id q46sm4066000edd.0.2019.02.28.06.37.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Feb 2019 06:37:21 -0800 (PST)
Date: Thu, 28 Feb 2019 09:37:17 -0500
From: Tom Rini <trini@konsulko.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20190228143717.GL12046@bill-the-cat>
References: <93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<20190228051945.GB11051@localhost>
	<CAJTo0LY8H_FGXQ9sqHco4jmuiDxpY0bGE3rLZcc8=16UqRgTeQ@mail.gmail.com>
	<29f822dba34962a0220b01ab098281a14fdda2ec.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <29f822dba34962a0220b01ab098281a14fdda2ec.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Adrian Bunk <bunk@stusta.de>
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
X-List-Received-Date: Thu, 28 Feb 2019 14:37:25 -0000
X-Groupsio-MsgNum: 44274
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9Z5hYcGq4mWDMhAr"
Content-Disposition: inline

--9Z5hYcGq4mWDMhAr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 28, 2019 at 02:27:37PM +0000, Richard Purdie wrote:
> On Thu, 2019-02-28 at 12:05 +0000, Burton, Ross wrote:
> > On Thu, 28 Feb 2019 at 05:20, Adrian Bunk <bunk@stusta.de> wrote:
> > > > That's a good start.  For a oe-core packagegroup
> > >=20
> > > I do not think a core-only packagegroup makes sense when the goal
> > > is to
> > > completely replace busybox (and not just most apps while keeping a
> > > few
> > > busybox apps installed).
> >=20
> > But a "close enough" packagegroup in core would be a good starting
> > point.
> >=20
> > > > I'd suggest dropping
> > > > dnsmasq bridgeutils bindutils to keep it lean.
> > >=20
> > > The stated usecases are not "lean" but "replace all busybox
> > > commands
> > > with the full versions".
> > >=20
> > > For that you need bind-utils (in oe-core) for DNS lookup.
> >=20
> > Good point well made.
> > > > Also swap vim for something in core obviously.
> > >=20
> > > It is not obvious how to do that.
> > >=20
> > > What other vi implementation is in core?
> > > Is there even any good non-busybox non-GUI editor in core?
> > > Replacing busybox vi with ed would be a bad fit for the
> > > stated usecases.
> > >=20
> > > There has to be some vi implementation installed,
> > > and the "desktop command" implementation is vim.
> >=20
> > I thought we had some other editor in core, but can't see one.  Worse
> > case we still use busybox for its vi... :)
>=20
> This could be an argument for pulling a small number of things into OE-
> Core too...

Moving the vim recipe (which doesn't have further depends) over and then
putting VIRTUAL-RUNTIME_vim and ?=3D "vim-tiny" in this packagegroup
should be flexible enough, yes?

--=20
Tom

--9Z5hYcGq4mWDMhAr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcd/IcAAoJEIf59jXTHXZSrMcQAJkP+nmiz3Seq326ei9QFVGS
jPm5b4gr8QRNf1aPGUXg4WjUfSXWU4fXWrcwWHaxChqMSL8jxGMSSdArMx58oZHV
raZ6yHzC5QC+x7aoYJMCzbRlBJBGtinu6mSONK80Ld4MfP0QfSrjekgbc6Bzc2yU
7YZlE/Yw3Vj31sd/32Sh3d2JUYHShrDdgidP9fliLOeyjcT+IUHymIA0/r8ulSG+
adna4PKf/z/jSSmqiVh/w25M8hPUWJ/hZmReeL+AkYTUOVE9TbdAT9Y5Rv7oCr13
cYQUlZvy4e4zTiwdCb7AdMnWTC5ejiWsWr1K+Zwg5ApBvxu/CwbihF01ciBPfUM5
0BzJPq9Kzr85ZC2zeLNhSX0Pm3hMLmJMjgev/mt5k0HUbqTLqntZ/JVLnjLxgHxR
mqoXINyWLB9UnfyPVc3S9jSfAj8xNueBE98qDqSigkfq866yuYxV0++O5NLlFybq
qAgvq7aG3/imNb46y6UghHK/zvUVElC8f8mWWPg77SzfHHIxGmMKDdK6x4zxvsM5
1fZxFswHfDpVYOvNN8VWbvjghZctVtxRwK81fh5H1OMeLFJANqyXPHqJc0BtRI2y
j76gfu6s3QPyT41LJAmbxV/LFG2zkvT2fGfYorzx+PDtWopf09K+RGyZd8JQoNTD
6YKw7ZH6Z9p/JlTjfZMF
=/0CF
-----END PGP SIGNATURE-----

--9Z5hYcGq4mWDMhAr--
