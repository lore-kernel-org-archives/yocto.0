Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AECDE00CA6; Tue, 27 Mar 2018 02:12:03 -0700 (PDT)
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
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13077E008E4
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:12:02 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id f14so21595790wre.8
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+NSgqClpTMJ5YYtlJgO1CPMIo0kWCGu64EqXvd2Gzrg=;
	b=jtSa2KpkHPz52dFIuocgg2iEbwJ4iXJee59t1tGoNgOgFXhVRuhC078s/wtq81LfAG
	NSI9aO8ZrbpDNtSURdxzo/hB9LS12TBBXOiYQHFZ1wwPh9izPfl6XZUaeCUGVIYzquCs
	uIy48piEWmdnUoGOpDP5+eF2+RBzGObs8DdA+neu2aAXDaz1HR1WXy/X1iM5deT2jdD7
	Xewwf51BP4XNnQQpBfDAPQPA+okNJdPiFwvH4SpKoZtZ+gSI+eCd8IXjwvXHG/QyhkTz
	W837J6bXJctSubYBLIF+8+fGEdsrQWrp26bPy3Zj9kR6L9/nkEiJB0Ei+y5dmcGZlx0A
	H5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+NSgqClpTMJ5YYtlJgO1CPMIo0kWCGu64EqXvd2Gzrg=;
	b=OzVMQpgbMaY6s2IeyzfSVkb0MdLqmsNDzXO2EMxIJks51g66nwWEsN6m12a/Dy5XIR
	46fCbn7jZCV2IwvY6KThVQI3Xdn7pKQsBno0BiWty3tyCWEYCu30VMwjOxDFd/838sKB
	lctwzHnKDKS6Jn/YCZEs97hcuYj9cDB1A5R3eDQ7uPV5ekSqDWrpHazlrngIThtZZoGT
	TSdUDlQnxgokCUDjIM22NckhkCFLviFr0CDpwm8yfzWYtN+ur3Lon4xs1rybi6piC8ei
	9YKNnD16sWV8nQq07AGcJSecMlzDtx12Vx0K7pUSryBCNe4+mL3xvrOYS6oPa82CLGer
	4mmg==
X-Gm-Message-State: AElRT7FFQB80rz4TZW6pTG98UvYiNzU3ZDqV/iIESlDavesbudmF4PFQ
	IpQUSj/NoHKPby8D0Ek+qB0=
X-Google-Smtp-Source: AG47ELt2y8oKl1Ows33ZMpEgZy/ZBB3DtIH5ikNHZGFh/nRjBoKj78vJ0U2gGZI+47APHo5u5HrthQ==
X-Received: by 10.223.134.125 with SMTP id 58mr32544165wrw.102.1522141921924; 
	Tue, 27 Mar 2018 02:12:01 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	m129sm782235wma.44.2018.03.27.02.12.00
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 27 Mar 2018 02:12:01 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 27 Mar 2018 11:12:01 +0200
To: Nicolas Salmin <nicolas_salmin@trimble.com>
Message-ID: <20180327091201.GB1536@jama>
References: <CAGTsOqOdmYMFPxr+WQa2BTMHzZoeTxbfiHqW3OZ-7oS8dku_Gg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGTsOqOdmYMFPxr+WQa2BTMHzZoeTxbfiHqW3OZ-7oS8dku_Gg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: yocto@yoctoproject.org
Subject: Re: How to disable module auto-loading
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
X-List-Received-Date: Tue, 27 Mar 2018 09:12:03 -0000
X-Groupsio-MsgNum: 40427
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline

--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 27, 2018 at 10:18:28AM +0200, Nicolas Salmin wrote:
> Hello all,
>=20
> I would like to know the better way to disable module auto-loading ?
>=20
> I tried to create /etc/modprobe.d/blacklist.conf but as /etc/modprobe.d
> doesn't exist on my rootfs i think is not a good solution.
>=20
> I have tested also with  *KERNEL_MODULE_AUTOLOAD -=3D "module.name
> <http://module.name>"* and
> *KERNEL_MODULE_AUTOLOAD_remove =3D "module.name <http://module.name>"*
>=20
> Last solution will be pass *modprobe.blacklist=3Dmodule.name
> <http://module.name>* in cmd line.
>=20
> So in your opinion, which is the better way to do that ?

KERNEL_MODULE_AUTOLOAD_remove should work, check with bitbake -e to
confirm that it was correctly applied.

It's also possible to blacklist it with:

module_conf_<module-name> =3D "blacklist <module-name>"

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWroK4AAKCRA3VSO3ZXaA
HFe2AJ9eVyns0y93T+6O8jwR3opFHudgtwCdECkYikqz0UXhGFoVC/0Zm9x63W0=
=Ck62
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
