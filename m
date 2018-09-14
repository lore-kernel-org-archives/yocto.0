Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23020E009E7; Fri, 14 Sep 2018 05:52:01 -0700 (PDT)
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
	*      [209.85.221.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01412E006AF
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 05:51:59 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id v17-v6so10457318wrr.9
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 05:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=70pVpU4wvz8pvPFOSPRajMvuPkrUyBREEG6DaLuKGt4=;
	b=RE9gpLPH51fi0gLg0uvxWcEFTr7caLEaJ9ND+b/4gKE+79+ERSBaOu38lcdDVBAWDp
	lr96zgM8Q7BpcZw5dF1GgwiGyrRUaeVL5LUEPF6EQYzjKc0/UtZ/5mzRWVORtY6/OiMR
	cegkD6dzhHRBaSqOCk9htyfoPgfNeouRwqoQkWkAbkFOhe5I5M4NRRFhrH65bn1L3r50
	wSgGzIdM8Z1UpIPXXM9r5bA+DJwJ2K6jMq3iX/RUrfZHGCfqNKYqxzvjuJbpTOHoccUg
	Y5yu10OkZxN/XcCA8sQScTvuGwZtwz8RtMYbJ7YfmQ9G0Od8UVXmm161mxWKj7llp8mJ
	WfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=70pVpU4wvz8pvPFOSPRajMvuPkrUyBREEG6DaLuKGt4=;
	b=lHtdMg9pUAGhCBY7sQH46M3/ITF391Y1S7HIaa31uNMJVW4u9EwwgpDywmlYWLk78r
	DoTCW6Gnh+yc4NQ3EqGIwkQMppB1tyTpWeSmQ5Zbc+IeN3L5XcaoloexAx/S0uSP8O5Z
	u6mao43vRN8bRrCVHrSSeU/4JomYnjF+Ye6qjV5bVICOoBGtSJ13eXrJ16f35T2VBjuL
	e+raRfW6hfGgJEZ2fdLKwilit9eNZOQslKeCYK/aclv4J7kVG8gggAWpOFoX3w84Lai6
	4Ps2nwos5jLLiHfvIWH253j0IyXhE4ADpUPJle+DYAIboL1CPOoks/YLEAqNJmxeo8Fb
	sQ3w==
X-Gm-Message-State: APzg51CyG0onNLfwERB06xbM7u6cqTFcmf5EcPVfRQYjPSPZB73oaMsX
	0c9k59NbBKBoWsBPQWcjjLA=
X-Google-Smtp-Source: ANB0VdZDpEQsDVsRut1uN0oCeNrfH5svSbE0dt2Hg283FgHx7iM3xZgWKWDAjtSAy+MPU8yPA9XTUw==
X-Received: by 2002:adf:a602:: with SMTP id
	k2-v6mr9010801wrc.181.1536929518939; 
	Fri, 14 Sep 2018 05:51:58 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	b74-v6sm2303134wma.8.2018.09.14.05.51.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 14 Sep 2018 05:51:57 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 14 Sep 2018 14:51:59 +0200
To: Seth Bollinger <seth.boll@gmail.com>
Message-ID: <20180914125159.GB1369@jama>
References: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
	<CA+JN8xO6UDubtnF_yCuK4sHCji1EnsZLK=XcyUz07Ow6rY2PrQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+JN8xO6UDubtnF_yCuK4sHCji1EnsZLK=XcyUz07Ow6rY2PrQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: coreutils postinstall warning
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
X-List-Received-Date: Fri, 14 Sep 2018 12:52:01 -0000
X-Groupsio-MsgNum: 42471
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ftEhullJWpWg/VHq"
Content-Disposition: inline

--ftEhullJWpWg/VHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 14, 2018 at 07:38:49AM -0500, Seth Bollinger wrote:
> On Mon, Aug 20, 2018 at 8:16 AM Seth Bollinger <seth.boll@gmail.com> wrot=
e:
>=20
> > Hello All,
> >
> > We've been seeing the following warning for a while now.  Is this expec=
ted?
> >
> > WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinstall
> > scriptlets of ['coreutils'] to defer them to first boot is deprecated.
> > Please place them into pkg_postinst_ontarget_${PN} ().
> >
> > From what I can see, it's being caused by update-alternatives.  Is ther=
e a
> > workaround for this?
> >
>=20
> I'll answer my own question since it may be of value to someone else.
>=20
> coreutils, util-linux and busybox all provide overlapping utilities.  Most
> are covered by update alternatives, some are not.  If you have enabled one
> of those in busybox, then update alternatives will fail trying to make the
> symbolic link.  As I understand it (from the warning message) is that
> failing the postinst step used to be a way to ask to be executed at target
> runtime.  The solution is to have only one package provide the conflicting
> utility (or add alternatives to all packages that provide the utility).

Using u-a for all conflicting binaries is the preferred option.

For example there was fix for nice provided by coreutils merged
recently:
http://git.openembedded.org/openembedded-core/commit/?id=3D57b1b20abca7d682=
1e99802147b93f4f577cfad0
or setfattr in attr:
http://git.openembedded.org/openembedded-core/commit/?id=3Dd633633f3d83467f=
e1f946c57e2e75e0e774ec7e

busybox have a lot of available applets and people tend to
enable/disable them in their own defconfigs quite often, removing
something from util-linux or coreutils would break it for people who
disabled the same in busybox defconfig and vice versa, u-a on the other
hand will work reasonably for everybody.

If you have conflict with unshare, just send a patch. I will do the same
with printenv for coreutils which I have in .bbappend for way too long.

Regards,


>=20
> Here's an example error message:
> update-alternatives: Error: not linking
> /home/seth/projects/awusb/build/tmp/work/awusb1012-awusb-linux/awusb-imag=
e/1.0-r0/rootfs/usr/bin/unshare
> to /bin/busybox.nosuid since
> /home/seth/projects/awusb/build/tmp/work/awusb1012-awusb-linux/awusb-imag=
e/1.0-r0/rootfs/usr/bin/unshare
> exists and is not a link
>=20
> Seth

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ftEhullJWpWg/VHq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCW5uu7gAKCRA3VSO3ZXaA
HLrEAKCGYHQuDqS+0EMdLkS+/o6g1JC+jwCeLkRzteC5yiKHacS13pY/eVc3Uuc=
=FoTU
-----END PGP SIGNATURE-----

--ftEhullJWpWg/VHq--
