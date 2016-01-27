Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C22E00AD7; Wed, 27 Jan 2016 06:57:40 -0800 (PST)
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
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56CE2E00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 06:57:36 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id l65so148252282wmf.1
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 06:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Xx8QwkhXoByZd9eKzuCITwCr7QqIVcsCwcJqvf2YToM=;
	b=iODYbgaznOq6UK0RxpXn3RThHAL2pgWFtZVGGvST0kbnrgNVTIc+tlLeNuo/pIBDd4
	8jDtoHkPRiay+RCvNPk9GDECqGC4ee0sviTvnnqo8+nh8OCmXrAhye3VG16Oe6bOxksL
	KFSKs9BJkh9ZNWAuAhdnJmVm0QM3WHIGtJYfIbw2B22CT1s82Y0H3f1W6Q00srm10FWQ
	KALJYvrE6GIaVSWgncl0bSd8akl2t44wBCpiu6oyT3VXK9WB30TPFHkBiVvsvI6ksY4V
	9mPlFGhm+hpo15ocEPWM/qGcFhM+GWyuChSPAbv+QvsJHh7i0IqG964RvQUhzHW2Rccg
	DpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Xx8QwkhXoByZd9eKzuCITwCr7QqIVcsCwcJqvf2YToM=;
	b=hQNUYhGaZNDEhw7OzqzXKrIbfz+OFziEi1UhSkWhK9T+hemtTFOuQNnNqvJllV6TrX
	GhSy743rZidaBoDqqlDHApWpudUIZzYvR5aIAVpNOVEIkuY4Z7jJfCmvDIgNTgZH9CSh
	gA2D75ps+rvU8IGhfG2NhUoPU5UoXoXzAhFnpy0Uejqk2RnysnTME2eLG+ShojW09lUA
	Lvn7xvl3xL6t9s4Pl+gozSZiXnGvuPJ7QqdEi53DdCLnh3N2mzok/jaSuaPJyiiCDBPv
	VSoh6FndRDkErapsGXabKqTAEwS9raf/keubG17PC7Q0jMdAnPu3Smka84v3vIgirpa9
	zqsw==
X-Gm-Message-State: AG10YOR0L65fFIWiei640zUcvwTytnuMEqNZkCdVlrNvuD7KYwhVSu75Dt9iQrXSCoYk+g==
X-Received: by 10.195.18.5 with SMTP id gi5mr29785739wjd.167.1453906655811;
	Wed, 27 Jan 2016 06:57:35 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	e14sm2180513wmi.21.2016.01.27.06.57.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Jan 2016 06:57:34 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 27 Jan 2016 15:59:46 +0100
To: Ulf Magnusson <ulfalizer@gmail.com>
Message-ID: <20160127145946.GI2574@jama>
References: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Detecting missing build dependencies
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
X-List-Received-Date: Wed, 27 Jan 2016 14:57:40 -0000
X-Groupsio-MsgNum: 28107
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/8E7gjuj425jZz9t"
Content-Disposition: inline

--/8E7gjuj425jZz9t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 27, 2016 at 03:45:30PM +0100, Ulf Magnusson wrote:
> Hello,
>=20
> If a recipe has a missing build dependency that the sysroot just
> happens to contain anyway from an earlier build, then the build will
> succeed only to fail later when the sysroot no longer has the build
> dependency. We want to avoid that, so we're looking for ways to
> automatically check for unspecified build dependencies.
>=20
> The only method I know of at the moment is to remove or rename tmp/ so
> that the build uses a fresh sysroot and then trying to rebuild the
> recipe. Is there something nicer? I think I remember reading about a
> script for testing for missing build dependencies, but I might be
> misremembering.

See openembedded-core/scripts/test-dependencies.sh but it basically
automates rebuilding recipes after removing TMPDIR, but also it detects
autodetected dependencies.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--/8E7gjuj425jZz9t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlao22EACgkQN1Ujt2V2gByBngCgnBMkF9eE/k1AthDRkNwIXTCN
MqcAn3YbZOhgpZXeE9oaOc5vbbryQQ3R
=HR8E
-----END PGP SIGNATURE-----

--/8E7gjuj425jZz9t--
