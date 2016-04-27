Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A89BE00D7F; Wed, 27 Apr 2016 02:42:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B79CE00D7D
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:42:55 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id w143so11102077wmw.3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=t32T1XtTMa4uGVaIX57EV0m7j1yyLQriIM5Q5oGw1oI=;
	b=CQWZIQQ1YewFMul7jOO3BrQzJ/fgLtH8GIIiWC6b7MMDLB/q+bd/cACkNw2stH3Upz
	DxmFH3qD+Ho0pkuZqoidKdmeDxvFfteNdJayZKP6U53QKNR3y1as8Hz+PX7mW2+e6Ycf
	sBEtrfs+ZIEC6c2/fwl1IFw/+Eww1HmcEXzawgq/pK750iiNGgGn/APYRCLJoJzcI6PP
	tBzJvQzu2bScqJvInOpOMgAoouWkQDhUQRXbZUeg92v61Lo+SVRxQ4cAPDOupMy2ilMl
	r27vS3viquakiqVSpZ5H+d3jUEO2xhQsrHnJyp0RKnYRLd/J5NY52d8VXqgKds7VWVEt
	mZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=t32T1XtTMa4uGVaIX57EV0m7j1yyLQriIM5Q5oGw1oI=;
	b=Rlyxd4G3S3zRLVfe7DI65DkjvK7LFBrPF5wIUtnZUGk4Vtjjqz49t59uWtElzgb4D5
	yfJ9pRjfvCvwrMtD3qe0V+lJnO7DOkfYScunumGx8UqKyMhnd1/5HFOpeNeSs6HkK5sw
	uYa7gBQ42wesrzaBSfbgWHQv9aEpiYBc5w15Eiil96jlH2Lp3KlcaYd2z98Stljzweum
	Os6FHvMA55PtxWRezzDxLka+SWIzZBZdNayGK2ndgSSYqA4NgnY7JOwndRXj/YMMDlbl
	bVtT/nwzmhi6EKbzkhsY2PhFfMtqxLyN6lubVADkddkaxIRerssKHqm3oSB0GkHnH+jd
	OmCw==
X-Gm-Message-State: AOPr4FXAkisMR7+2BHn+mcy0pLZJQRLz2FrZSG5zFdFwqTtUsY91mxu56IxBvbOfF3GGGA==
X-Received: by 10.28.135.200 with SMTP id j191mr24271161wmd.54.1461750174758; 
	Wed, 27 Apr 2016 02:42:54 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id d23sm606654wmd.1.2016.04.27.02.42.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Apr 2016 02:42:53 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 27 Apr 2016 11:43:24 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160427094324.GH2559@jama>
References: <57207CC3.3020905@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <57207CC3.3020905@mlbassoc.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 09:42:58 -0000
X-Groupsio-MsgNum: 29669
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PW0Eas8rCkcu1VkF"
Content-Disposition: inline

--PW0Eas8rCkcu1VkF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 27, 2016 at 10:48:03AM +0200, Gary Thomas wrote:
> I see that the replacement for udev (eudev) in OE-core takes nearly
> 12MB on my i.MX6 (ARM CortexA7).  This is nearly 25% of my total
> storage space (64MB NAND)!

See
http://permalink.gmane.org/gmane.comp.handhelds.openembedded.core/77244
and following discussions

>=20
> # ls -lR /etc/udev
> /etc/udev:
> total 6520
> -rw-r--r-- 1 root root    1600 Jan  1  1970 cache.data
> -r--r--r-- 1 root root 6660476 Apr 26 13:08 hwdb.bin
> drwxr-xr-x 2 root root    1296 Apr 26 11:34 hwdb.d
> -rw-r--r-- 1 root root      51 Apr 26 11:31 mount.blacklist
> drwxr-xr-x 2 root root     160 Apr 26 11:35 mount.blacklist.d
> drwxr-xr-x 2 root root     608 Apr 26 13:08 rules.d
> drwxr-xr-x 2 root root     304 Apr 26 11:35 scripts
> -rw-r--r-- 1 root root      49 Apr 26 11:34 udev.conf
>=20
> /etc/udev/hwdb.d:
> total 5224
> -rw-r--r-- 1 root root 1292931 Apr 26 11:34 20-OUI.hwdb
> -rw-r--r-- 1 root root  126596 Apr 26 11:34 20-acpi-vendor.hwdb
> -rw-r--r-- 1 root root   41289 Apr 26 11:34 20-bluetooth-vendor-product.h=
wdb
> -rw-r--r-- 1 root root     111 Apr 26 11:34 20-net-ifname.hwdb
> -rw-r--r-- 1 root root   13710 Apr 26 11:34 20-pci-classes.hwdb
> -rw-r--r-- 1 root root 2648842 Apr 26 11:34 20-pci-vendor-model.hwdb
> -rw-r--r-- 1 root root     783 Apr 26 11:34 20-sdio-classes.hwdb
> -rw-r--r-- 1 root root    4067 Apr 26 11:34 20-sdio-vendor-model.hwdb
> -rw-r--r-- 1 root root    8070 Apr 26 11:34 20-usb-classes.hwdb
> -rw-r--r-- 1 root root 1113001 Apr 26 11:34 20-usb-vendor-model.hwdb
> -rw-r--r-- 1 root root    3702 Apr 26 11:34 60-evdev.hwdb
> -rw-r--r-- 1 root root   52967 Apr 26 11:34 60-keyboard.hwdb
> -rw-r--r-- 1 root root   14217 Apr 26 11:34 70-mouse.hwdb
> -rw-r--r-- 1 root root    4627 Apr 26 11:34 70-pointingstick.hwdb
>=20
> /etc/udev/mount.blacklist.d:
> total 0
>=20
> /etc/udev/rules.d:
> total 20
> -rw-r--r-- 1 root root 1449 Apr 26 11:31 10-imx.rules
> -rw-r--r-- 1 root root    0 Apr 26 11:34 80-net-name-slot.rules
> -rw-r--r-- 1 root root  847 Apr 26 11:31 automount.rules
> -rw-r--r-- 1 root root  757 Apr 26 11:31 autonet.rules
> -rw-r--r-- 1 root root  885 Apr 26 11:34 local.rules
> -rw-r--r-- 1 root root  843 Apr 26 11:31 localextra.rules
>=20
> /etc/udev/scripts:
> total 8
> -rwxr-xr-x 1 root root 2469 Apr 26 11:31 mount.sh
> -rwxr-xr-x 1 root root 1402 Apr 26 11:31 network.sh
>=20
> Is there any way to not have both the hwdb.bin (which I assume
> is a binary version of the hardware databases) and /etc/udev/hwdb.d?
> Perhaps there is some way to only use one?
>=20
> Or maybe there is a better choice, such as mdev?  I'm not sure about
> this (no experience) but my system needs to handle plug&play devices
> which the current eudev does well.  It's just a huge "price" to pay.
>=20
> Any ideas or pointers would be great
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--PW0Eas8rCkcu1VkF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlcgibsACgkQN1Ujt2V2gBxD+gCgnP1RjTr3N9H+CxlNDI0kc5z7
FNwAnjfNHWbPnJHXkxvqGN7jxL6KG11l
=zUgv
-----END PGP SIGNATURE-----

--PW0Eas8rCkcu1VkF--
