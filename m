Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E93EE0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 09:45:18 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id um15so9329076pbc.16
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 09:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=Lq0WL0jdldZ2yU3HLUByq6Ayj9gat0EeB+Vw0wBmj7Y=;
	b=j4swD0G6hqxO2Gd4KgQt+fQX7Ube9ZeUnJIByYeGDcRcrPdxKGwbqafRAmfz7BIGKh
	dRhYZL998yoMLjTKFZPljOE6LJkHnP6xdlrIDnCNRwBHjsPyzTeIGYyz8PAY1LRrVQ9W
	9TqtUeVi7WnPRGP7XmWFdSiELApkFUR+Sq5Jy10CwcOauq1HlYx54VTLtbAB0Tz1sZW5
	E2j0WFNgIeX+3svoKS3LTx+X2ijrybA40qLQ5bXwmT3QB/E/uzczpieaUN8ThTa14L5l
	nx43L6cIgJHYyB55dj9bj6zu4+lH42/NsD+B9Dx+un0V/5QmPFXQKwdbde74dDeyMUxc
	QV4w==
X-Received: by 10.68.197.9 with SMTP id iq9mr162439452pbc.130.1357321517966;
	Fri, 04 Jan 2013 09:45:17 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id kp4sm32565918pbc.52.2013.01.04.09.45.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 Jan 2013 09:45:16 -0800 (PST)
Date: Fri, 4 Jan 2013 18:45:13 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Ronan Le Martret <ronan@fridu.net>
Message-ID: <20130104174513.GD3222@jama>
References: <CAEmu=9FBbN0x+iTj07Wz1qb2Xht8wi-CMr_s5GojtoW3b3VCpA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEmu=9FBbN0x+iTj07Wz1qb2Xht8wi-CMr_s5GojtoW3b3VCpA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: cairo failed on openSUSE
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
X-List-Received-Date: Fri, 04 Jan 2013 17:45:18 -0000
X-Groupsio-MsgNum: 11357
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ILuaRSyQpoVaJ1HG"
Content-Disposition: inline

--ILuaRSyQpoVaJ1HG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 03, 2013 at 01:48:15PM +0100, Ronan Le Martret wrote:
> - add libpng version 15 to configure.ac of cairo. (libpng12 confict.)

Please follow:
http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

And this belongs to oe-core ML.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ILuaRSyQpoVaJ1HG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlDnFSkACgkQN1Ujt2V2gBy1iQCZAYtH52Xhb5GSk4X+/+ZXOjqz
qpoAoKOyy8B7I2KVvILLxHJOAr1FUGzK
=I9Ee
-----END PGP SIGNATURE-----

--ILuaRSyQpoVaJ1HG--
