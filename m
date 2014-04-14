Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A00E00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 07:41:12 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id b57so6666643eek.40
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 07:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=u5WiApDtTYzFB31O8e3eD5uan7QbsY3RfcVD+D5+pSE=;
	b=oN67nfdKEB4nF2v9qArLRtERfGgYrLdi20zYujEqD2xh5LAsONtkhYoduE/3yh1Rph
	whYlub/MufneveldDdQOZkxHVkJQ66g1NTazVxHzBTCy/Ed9HfUuRmxQlYI6HXnPSfeD
	XkQ7TWe3/uAb13V93p+0NP0PLTgnj3PKwKNwNHlvCBJS9RUygylDQljHNngoxK+cmm+n
	eyHjoHWrBaDxL9rORqpehJlTcUDZLGMb168H42Z2MwEd3YpooOmUptqpf9D+G2ER0BMf
	q1XHobcB8qkTx2BiQmm9sX06J0qSdX0/tjw+HLOX1yBL8aQGNLjN9Gb1Uc2RkILHO1/6
	MdOQ==
X-Received: by 10.14.246.1 with SMTP id p1mr52182921eer.20.1397486471379;
	Mon, 14 Apr 2014 07:41:11 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	z48sm41501367eel.27.2014.04.14.07.41.09 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Apr 2014 07:41:10 -0700 (PDT)
Date: Mon, 14 Apr 2014 16:41:21 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Richard Schmitt <richard.schmitt@freescale.com>
Message-ID: <20140414144121.GC2132@jama>
References: <aa3464940d85426fbca4b43ff4c7c9c9@BL2PR03MB210.namprd03.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <aa3464940d85426fbca4b43ff4c7c9c9@BL2PR03MB210.namprd03.prod.outlook.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openssl and heartbleed
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
X-List-Received-Date: Mon, 14 Apr 2014 14:41:14 -0000
X-Groupsio-MsgNum: 19007
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DRp5/Sds4nAqvQzf"
Content-Disposition: inline

--DRp5/Sds4nAqvQzf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 14, 2014 at 02:37:52PM +0000, Richard Schmitt wrote:
> Does the Yocto project plan to have some response to the heartbleed explo=
it in openssl in the near term?  Has this already been addressed?

It was already addressed for master, daisy, dora and dylan.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--DRp5/Sds4nAqvQzf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlNL85EACgkQN1Ujt2V2gBzGWQCgsYrbSeBMmrMEyq4PRaf/fbT6
NZwAoLhdFpcGes9uS2HO+F2pQ3fvuCyL
=mXn6
-----END PGP SIGNATURE-----

--DRp5/Sds4nAqvQzf--
