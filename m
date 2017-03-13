Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 097ACE00839; Mon, 13 Mar 2017 13:30:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FF92E0077F
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:30:00 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 77so19422953pgc.0
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=MdKUMk3ThXzhgSG47Ad8/p8gEbFhs+3f7RWsA7SmlF0=;
	b=Cv+ITSzJQqiH2ILF1I/vpLRMdzgNW5sLlNcpTIXSTltmRO4jRkQIfiCASnPKo5kU3c
	NWaX39/PrcpktHVt8vLTHZR7ZU4Ed+1hFYbF7jHrvYSn9g3QyxokjK0i8kGKW/WmQiC5
	s5yuqZE27iRw/7NWr6CZ8Ohl+OoHv7CfhYm5fIIVWvhoPBAE7VNgr0EiFQ6EPyqG5xF0
	H9MC2ocWNiLkzJUvfnH9G3XWmbcoeCRm2XZchBbBVSt9E0ak1WR7jU/edoqdLAWGI/62
	TBbdlwSF137rlA4pxM7YAoa24P7sCF1Ah6vPupZzFfDCOyChf7dcEqONl6R62x1Bn1Nh
	jmYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=MdKUMk3ThXzhgSG47Ad8/p8gEbFhs+3f7RWsA7SmlF0=;
	b=tGdzbsS/F9VuC8oJYOCjAB58XNNxeUymFU6+8Y23zWdsS85SJGWKar9kARdEtY15Af
	kGFWQ2vniOjK7m+6GyRlY8wVZfdnQbbYCQ1Und75D5nTPYst4xIiHoFBPXhYlmlbEFTd
	H6euGvDfVaXwATk1gcRHbsZ89K2k2n0DfIwQSXnaU/O+PV1wMro3j0QrQN7p57oiaXja
	WDZYAPfB6oVF0lFcdA8ZWBixkKeSeHILbgAQA0et3UwSZJ53iDJPMFkkoUi166AqciCh
	TtgJk0hW1Zf4FNWRQqqRkGH3TGgfmMSgxvpzSzJgkyuQMU6MuPbvOYCUixWmWWvBAPVi
	xkWw==
X-Gm-Message-State: AMke39ngAawZZaYH+7TRON6QNdm2LfoNyG3gxn9WnSl/PZamzLwY+vRfI07GsdD7Act4QQ==
X-Received: by 10.84.228.208 with SMTP id y16mr50146277pli.168.1489436999835; 
	Mon, 13 Mar 2017 13:29:59 -0700 (PDT)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m21sm34517947pgh.4.2017.03.13.13.29.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Mar 2017 13:29:58 -0700 (PDT)
To: yocto@yoctoproject.org
References: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <651fce91-d1dd-5e1a-c049-37a85a91f83d@gmail.com>
Date: Mon, 13 Mar 2017 13:28:37 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
Subject: Re: Autoload kernel module works only once
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
X-List-Received-Date: Mon, 13 Mar 2017 20:30:02 -0000
X-Groupsio-MsgNum: 35024
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="p1HGuKkXkIslogJk31OOSvsoJrxUo2Vec"

--p1HGuKkXkIslogJk31OOSvsoJrxUo2Vec
Content-Type: multipart/mixed; boundary="GHWKGQ4TkfDrEptX2lb490J4XUDEV1lQ6";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <651fce91-d1dd-5e1a-c049-37a85a91f83d@gmail.com>
Subject: Re: [yocto] Autoload kernel module works only once
References: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
In-Reply-To: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>

--GHWKGQ4TkfDrEptX2lb490J4XUDEV1lQ6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/13/17 7:36 AM, Andrea Laini wrote:
> Hi everybody,
>=20
> =20
>=20
> I=92m getting some errors after building my Linux distro with the use o=
f
> KERNEL_MODULE_AUTOLOAD to allow autoloading 2 of my custom out-of-tree
> device at boot time. We=92ve a Poky 1.7 version.
>=20
> =20
>=20
> So, before building the new image with the Yocto keyword
> KERNEL_MODULE_AUTOLOAD, I was able to load and open (and, obviously,
> use) my devices simply by calling =91modprobe mydevice=92 after logging=
 in.
> Restarting the board, everything was still working well.
>=20
> Since I=92ve rebuild a new image enabling module autoload at boot time,=

> modules are always loaded, but I=92m able to open (and use) them only
> really first time I switched on the board after downloading new image.
> After the first reboot, LKMs are still loaded (calling =91lsmod=92 show=

> them) but I can=92t open them, neither from my C program nor
> reading/writing them from =91/dev/mydevice=92.

look out for any race conditions for dependencies. Since it will now
autoload the modules and its possible that you were depending on some
system behavior that was enabled late in boot process, but it worked
since you did it after logging in and manually doing modprobe.

>=20
> =20
>=20
> To me it sound a very strange behavior.
>=20
> =20
>=20
> Hope anyone can help,
>=20
> Many thanks
>=20
> =20
>=20
> Andrea
>=20
> =20
>=20
>=20
> *Andrea Laini
>=20
> *Email: andrea.laini@claypaky.it <mailto:andrea.laini@claypaky.it>
> *_________________________________*
> *Clay Paky S.p.A.
> *AN OSRAM BUSINESS
> Via Pastrengo, 3/b - 24068 Seriate (BG) - ITALY
> Phone: +39 - 035.654.311 - Fax: +39 - 035.30.18.76
> Web: www.claypaky.it <http://www.claypaky.it/>
> *_________________________________*
> Read our Disclaimer @  www.claypaky.it/disclaimer
> <http://www.claypaky.it/disclaimer/index.html>
>=20
> =20
>=20
>=20
>=20


--GHWKGQ4TkfDrEptX2lb490J4XUDEV1lQ6--

--p1HGuKkXkIslogJk31OOSvsoJrxUo2Vec
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljHAPkACgkQuwUzVZGdMxSBowCcDgC5zixhW7yFbYZnl3fotIO3
UOAAmwRu/yznsQD98iqFf49DXckLHeg9
=tw6F
-----END PGP SIGNATURE-----

--p1HGuKkXkIslogJk31OOSvsoJrxUo2Vec--
