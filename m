Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A96E006D8; Wed, 27 Feb 2019 12:09:10 -0800 (PST)
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
	*      [209.85.208.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 244A0E006D8
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 12:09:08 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id m35so14984440ede.10
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 12:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=R03Wh2oNlWUr5l4jb3zr7H39q/XmUmH31V8sAh9L4tw=;
	b=K4JGd+kgqk77wNXFhQ3JooeKno9+YCg76Yp5ugo7T7w5dP6H5GDNjr+qmvJpxojGr+
	7dj7zGyl6QEgwx3qOAhRdRZ/wmP67ehNqxpaFygWh2bZdB5XTLOCvcZBQRHw68I20H1l
	tPAN4JaBTp3UmxpGHjHKFMUEW/DzNLiEZDsxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=R03Wh2oNlWUr5l4jb3zr7H39q/XmUmH31V8sAh9L4tw=;
	b=OfGl1pikD0fC0ewa9LAO0RzvBEYlSzfZJOxTuZj6PbpJ2qrFXHLNEe1S4IsLaMNiPc
	6/E9Yb7IiOkYSzcIqrc9jB+ZSxxx86CsNCYPJ73CvjJOq1IHqp6JonhiU30al22rC5l8
	SHov0hzcel+hz2DHePmwhXe7YkHT8j9zgk057MqiRCVpMJdBuUVZQ4ocPgES4EAPh6+8
	2jBH3qj3NT84hIxF5U6ntCls9XrOdK8y5tv+T1ho5Z2b8ytLfxwb2lIaGoP1H3ejhtWi
	dqc+45rAsawm6MV4qXPEaDES5dMfsAuT0kiTsIk2/2y4bpLWlG/b9utmuxEe9zriOA6N
	0kMA==
X-Gm-Message-State: AHQUAuYpMhOGIVBkAudqNIB8Th1vdsrchZbQK5RdPUZWwQ2knP4o4ATx
	TdZ+YMI0SloO4FxGabqvC6KwDg==
X-Google-Smtp-Source: AHgI3IZ2oAa7RWUyJTiHspzdde7wZbea7HVfvRn0l0L+od+2StkOTNrKJi5PmWViz9HudmHziLufzA==
X-Received: by 2002:a50:b639:: with SMTP id b54mr3676151ede.229.1551298148146; 
	Wed, 27 Feb 2019 12:09:08 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id 31sm1859391edr.7.2019.02.27.12.09.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 12:09:06 -0800 (PST)
Date: Wed, 27 Feb 2019 15:09:02 -0500
From: Tom Rini <trini@konsulko.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <20190227200902.GG12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
MIME-Version: 1.0
In-Reply-To: <93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Feb 2019 20:09:10 -0000
X-Groupsio-MsgNum: 44253
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BABa+tfk3PyYaZZW"
Content-Disposition: inline

--BABa+tfk3PyYaZZW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 09:06:38PM +0100, Jean-Christian de Rivaz wrote:
> Thank you very much Tom for help. Here is my complete method:
>=20
> git clone git://git.yoctoproject.org/poky -b thud
> cd poky
> cat << EOF > meta-poky/conf/distro/poky-ng.conf
> require conf/distro/poky.conf
> DISTRO =3D "poky-ng"
>=20
> # Switch to systemd
> DISTRO_FEATURES +=3D "systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D ""
> VIRTUAL-RUNTIME_syslog =3D ""
> VIRTUAL-RUNTIME_login_manager =3D "shadow-base"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>=20
> # Replace busybox
> PREFERRED_PROVIDER_virtual/base-utils =3D "coreutils"
> VIRTUAL-RUNTIME_base-utils =3D "coreutils"
> VIRTUAL-RUNTIME_base-utils-hwclock =3D "util-linux-hwclock"
> VIRTUAL-RUNTIME_base-utils-syslog =3D ""
> EOF
> source oe-init-build-env
> sed -i 's/^DISTRO.*/DISTRO =3D "poky-ng"/' conf/local.conf
> bitbake core-image-minimal
> runqemu core-image-minimal kvm
>=20
> So as expected systemd is there and busybox is not. But there is a lot of
> useful commands missing on the resulting QEMU image:
>=20
> root@qemux86:~# ps
> ~sh: ps: command not found
> root@qemux86:~# w
> ~sh: w: command not found
> root@qemux86:~# find
> ~sh: find: command not found
> root@qemux86:~# grep
> ~sh: grep: command not found
> root@qemux86:~# ip addr
> ~sh: ip: command not found
>=20
> I expected that all the limited busybox commands would be replaced by
> the full
> featured commands. How to fix that ?

Correct, you're missing a lot of stuff.  Somewhere on my (and other
folks too) TODO list is a packagegroup that includes procps and psmisc
and grep and tar and various network packages and less and more and...

--=20
Tom

--BABa+tfk3PyYaZZW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdu5eAAoJEIf59jXTHXZSAj4P/00RTUCrmxCTj5gPuNoPHR9N
vV9fGhhoFmHJeNF63fpyTFtOIwwj9EZ2x6c9j7yQDBHiyTgSxysBiZB+hNN2f3Ba
KRlTLqzotaVxvPKhIOzU5PWn30VPb0rVhqyV8tzqraNVOkCP+WJDXsQM+mn1Q5LM
WepN+SII/PqN7tPMfDx5BAGeOgeWBAKKURzHu0w6deW2eB6QlgRXBBbLfgUeHPzb
FsIMQ5kd8yGBWPfyQQlvh3F++Pm37gAfGGa9/0QW8vaeE2SWMdzN0ZOHZ9kCmabn
Axp5Mk23pv6PBEKiNclIoP6c9noJor36BR7Znkejwlzx1rN7vdGMYAPDGwcmXGd4
zIqboCVLKtoP9RpCOIuVHDUNiEOho/pqLqVKijyfesoQ+DiBHZZe5U/OxIee7PS8
PWfK7DU0BrK86fUsXKpfds4/W0ouEmvaIHMgOTUaO0DZija7pVed1FJzzjDfqYo1
zti+QrmctTcaVI5k3H4Nr5Hk+WADgC7o6EXz1oeWbQFBIOAUgFTBaApnUxDTFarR
1LcMO4+cduEqv0a4Msxp3X5F1O4QyOgiQY1rggoTJgyy80RxK5C6LhSogdhkuGkP
Wkqlipsl2oWq1OL0TMpeCtBRt9MTWthUWzvJ2XT5RmOHsAeywZC12X3Qhudh0lrf
yqE7VpVfaH1rJPxopzyS
=0wTZ
-----END PGP SIGNATURE-----

--BABa+tfk3PyYaZZW--
