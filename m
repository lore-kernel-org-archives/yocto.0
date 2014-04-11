Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B6E00CE3
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 01:31:06 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id c41so3841170eek.36
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 01:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=GBwxtcebNDlhNyelgMaImULDjnl9c0w3wW/ilTfNQiA=;
	b=vlWdZAW4XUYFGva6wpFyxD9858mClGgH9KAdXTC3Ir26z76qsCOP/aegTy+sZXkEuz
	Po8Aj+OpcFhJ46me2aWigSL1YFvU564NozNEEcmGLOsknPFhI19tCH58UlvJ9FWnvNcx
	W21rUPI1EXYYLfoBXqRzWEQqHpnsO05W2tPELmIdKBDHKsqyK5pnV1EqiSPYUiw0ZkGD
	jJK0oKXOnzdOHudLm1O742nVcitGlYkb2+s8OkUNoMS2nE+RV4E2JWm/0esJNesgjik1
	+9q/Lpuh8Zg9Cx54ewYcm6GxmWEN16s5l97eCGWpjx17qfpXpV+rn27vp9JHCvyQe6Qk
	7NfQ==
X-Received: by 10.15.27.195 with SMTP id p43mr27549387eeu.2.1397205065254;
	Fri, 11 Apr 2014 01:31:05 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	48sm15993533eee.2.2014.04.11.01.31.03 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Apr 2014 01:31:04 -0700 (PDT)
Date: Fri, 11 Apr 2014 10:31:13 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Message-ID: <20140411083113.GT2132@jama>
References: <53472898.8030207@linaro.org>
MIME-Version: 1.0
In-Reply-To: <53472898.8030207@linaro.org>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: polkit and consolekit
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
X-List-Received-Date: Fri, 11 Apr 2014 08:31:12 -0000
X-Groupsio-MsgNum: 18963
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vKcNkqnJHUUp475E"
Content-Disposition: inline

--vKcNkqnJHUUp475E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 10, 2014 at 07:26:16PM -0400, Trevor Woerner wrote:
> consolekit has a dependency on polkit:
>=20
> arm-oe-linux-gnueabi-gcc: error:
> /SSD/build/distroless/tmp/qemuarm-eglibc/sysroots/qemuarm/usr/lib/libpolk=
it-gobject-1.so:
> No such file or directory
> ERROR: Function failed: do_compile (log file is located at
> /SSD/build/distroless/tmp/qemuarm-eglibc/work/armv5te-oe-linux-gnueabi/co=
nsolekit/0.4.6-r0/temp/log.do_compile.18881)
>=20
> Whereas consolekit is in openembedded-core, polkit is in meta-openembedde=
d.
>=20
> Suggestions?

PACKAGECONFIG to keep polkit support disabled by default.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--vKcNkqnJHUUp475E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlNHqFEACgkQN1Ujt2V2gBzBKQCdHAGdlPrU9VE5QA+njRru+RM7
N9UAnRgSme74FzbJcnI5rbafLlKbqi5x
=Ksa2
-----END PGP SIGNATURE-----

--vKcNkqnJHUUp475E--
