Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A2EE00852
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 12:26:45 -0800 (PST)
Received: by mail-ea0-f175.google.com with SMTP id z10so606020ead.6
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 12:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=bzMPQGOf56Crj9Bl90S1NnB+OZj1MI4IY5Y5MmHifDs=;
	b=Tt2skytRwpRWZl67Wll8/v/IaKlDzpiwm+73U9SApLrzKjhUeP58rReBHuMShc4XAz
	ZjNhUPA9P7OQ8l/HI6/9w+5CRukYPoKh0+GrznT9gRaJ/9Q/xOvRP1N4kgyjUPmkTaO3
	IldvzJ0cqoB6A7FPo/cuUj5dhQQC3nRhhtUP1DN/I6HKlk81AScqrsFF5G1phafllxVD
	hEKmZCLHdtKMviz5V/2yt+ENbjnlEhNqAvK3wVrvJTihbl1DX+wLErqHwRY37VHMsRBN
	j9ESQQW5GSYjgrDe+bAeWe4ci1EDCRIGn+D7jiq3Sgzo4/TuxhdZzv6WWHYd5pjmZB4w
	Glhg==
X-Received: by 10.15.94.196 with SMTP id bb44mr195429eeb.103.1390508804394;
	Thu, 23 Jan 2014 12:26:44 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id k41sm42758150eey.0.2014.01.23.12.26.43
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jan 2014 12:26:43 -0800 (PST)
Date: Thu, 23 Jan 2014 21:26:45 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Message-ID: <20140123202645.GH3704@jama>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Thu, 23 Jan 2014 20:26:51 -0000
X-Groupsio-MsgNum: 17868
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wZdghQXYJzyo6AGC"
Content-Disposition: inline

--wZdghQXYJzyo6AGC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2014 at 02:35:06PM -0500, Brian Hutchinson wrote:
> Hi,
>=20
> I've seen the bitbake -g command that lists the packages in an image:
>=20
> bitbake -g <*image>* && cat pn-depends.dot | grep -v -e '-native' | grep =
-v
> digraph | grep -v -e '-image' | awk '{print $1}' | sort | uniq
>=20
> ... but for documentation I need to generate this list with package versi=
on
> information as well.
>=20
> I've been just running opkg list-installed on the target but I'd like to
> know how to do this kind of thing without the target and I'm striking out
> in all the searches I've been doing.

I would recommend using buildhistory.bbclass it's really useful.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--wZdghQXYJzyo6AGC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLhewUACgkQN1Ujt2V2gByAAwCghWyPU6YzCYrOF3hHhCTs3urZ
6EAAnirBCWcQVpVdU7JE0PJ/DrR3eFPb
=d6xA
-----END PGP SIGNATURE-----

--wZdghQXYJzyo6AGC--
