Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC7AE004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 07:39:58 -0700 (PDT)
Received: by mail-pb0-f46.google.com with SMTP id rq2so9219050pbb.5
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 07:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=eARyEp4XzBp4XZUqb15PcIPBmuAcjblVRvU9fgVdimg=;
	b=04QaPTpFDuIcPxa2DWqHN6CSe65eUDjpbSrg6nej6TTNcz2BW0yGYGr538i2XCJSaA
	tspDrHwzX2md6HLWa6/+gRSHiU7mfTjAAjdRbtq/+mYOztaz057Xvy+aqLNR+n6iodT8
	TlCsOvZ0ODmYroHPDyj6y6g2kBqMiLlEE13LRVXOcFjxACjNryWnvcJAwiDcXB8aLwhw
	6WpQJvYr4R/OpMkawAtdKKRGWUpd5w5KqsnQNhwdJLYNLPTI9yikxSeVGPI0QoOv0JYF
	0PF8chys0DnHtA243qiRYFZ+ootLR+AX9nGFd5l1UJaXtBPLi+Yn7fsYt4/Un3T+rpci
	tX0g==
X-Received: by 10.66.19.234 with SMTP id i10mr3702182pae.152.1369838397864;
	Wed, 29 May 2013 07:39:57 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	zy5sm37537960pbb.43.2013.05.29.07.39.55 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 29 May 2013 07:39:56 -0700 (PDT)
Date: Wed, 29 May 2013 16:39:48 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20130529143948.GM3192@jama>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Wed, 29 May 2013 14:39:58 -0000
X-Groupsio-MsgNum: 13994
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oYAXToTM8kn9Ra/9"
Content-Disposition: inline

--oYAXToTM8kn9Ra/9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
> Hi,
> I'm failing to load a kernel module named spike doing this:
> 1) add the recipe (inherit module), based in a Makefile with
> modules_install:
> $(MAKE) INSTALL_MOD_DIR=3Dkernel/drivers/spike -C $(KERNEL_SRC) M=3D$(SRC)
> modules_install
> 2) Add the package to the image with IMAGE_INSTALL +=3D "spike" in the
> local.conf file
> 3) In the machine/mymachine.conf I've added
>         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "spike"
>         module_autoload_spike =3D "spike"
>=20
> The driver gets added to the image and I can load it with insmod spike,
> however, I would like to load it at boot time.
> A workaround is to create a file with the name spike.conf and write spike
> inside. Copying that file to /etc/modules-load.d/spike.conf
> loads the driver correctly, but I need to do it from a recipe.
>=20
> Can anyone spot what am I doing wrong?

module_autoload won't work with external module unless you inherit also
kernel-module-split

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--oYAXToTM8kn9Ra/9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlGmEzQACgkQN1Ujt2V2gBzfjwCdErChnJXpF8qVT1UJ0kj79j7W
SHoAnjlgTDCnusX2+fzI7rCoXnR22RcG
=o4TE
-----END PGP SIGNATURE-----

--oYAXToTM8kn9Ra/9--
