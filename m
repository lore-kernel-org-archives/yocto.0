Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D38AE00343
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 10:21:48 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so914015pdj.36
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 10:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=k4Y1wJ5xHJ3kz/lFtAjGwQqpOPjMcQTC9PcjnvJwhrY=;
	b=N6hP8UsvRrLC20+yYyVzkI3EdlG9WQY31sQkyYvbM4SZNqcJ+qHU02eGGsc9Cv9URJ
	/ONCai4/IFgO885Z/7zq+XnH+/t71cuGG63NfkJvZcEAFyJfXLsEz6M2iORkQtEEnQ22
	+Mc+htTOx241UC5Aul0UNP2NM9ERDKyYRD/pDViBuvfzuaAdshJmkJq6TiQTemU+oiwR
	wZ1bwNq9OPDERs5tFFP2Rux/xrADszxqoRgFBgONNnVyouRJlBTLE6kRn35z1O5lsgvw
	61WjckqPhuqjgRYzeBfCK23yctdo4kc7PG+e+guRIKNbYqoIs9+jiEBSehWTcnsp5mpe
	DLvw==
X-Received: by 10.68.131.168 with SMTP id on8mr798959pbb.97.1377278507760;
	Fri, 23 Aug 2013 10:21:47 -0700 (PDT)
Received: from sa-nc-finance-109.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id ar5sm915770pbc.40.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 23 Aug 2013 10:21:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMc2iepgcSVA9bddm9LQOxT40QQzF7Va1EsPaPc1=ebc1i1hXA@mail.gmail.com>
Date: Fri, 23 Aug 2013 10:21:39 -0700
Message-Id: <1B8240E1-8C82-4C69-800B-C7C4EF779C85@gmail.com>
References: <CAMc2iepgcSVA9bddm9LQOxT40QQzF7Va1EsPaPc1=ebc1i1hXA@mail.gmail.com>
To: Mercier Ivan <ivan.mercier@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: How to build a custom ramdisk image
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
X-List-Received-Date: Fri, 23 Aug 2013 17:21:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 22, 2013, at 1:53 AM, Mercier Ivan <ivan.mercier@gmail.com> =
wrote:

> Hi everybody,
>=20
> I'm working on an yocto distrib with a freescale p3041 based board.
> I would like to modify the root file system, like hostname,udev rules
> and build my own ramdisk image.
> I use to create my image by
> $ bitbake fsl-image-core
>=20
> is it corret?
>=20
> should I modidy fsl-image-core.bb?
>=20
> I try to modify files in
> =
build_p3041ds_release/tmp/work/p3041ds-fsl_networking-linux/fsl-image-core=
/1.0-r20/rootfs
>=20
> but modifications are overwrited
>=20
> can anybody help me?

You can do it in couple of ways, define rootfs post processing functions =
and add them to ROOTFS_POSTPROCESS_COMMAND
in a class or something and add the tweaks you want in image

otherwise you can override the file with customized changes in a layer =
and use bbappends to stich them into=20
the recipe you want to modify.

>=20
> thanks a lot
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


