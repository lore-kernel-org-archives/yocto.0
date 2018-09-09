Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFA74E009AA; Sun,  9 Sep 2018 01:59:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A332E0096A
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 01:59:01 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id y2-v6so18483164wma.1
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 01:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:mime-version:subject:message-id:date:to;
	bh=0wpOMVsJtMV0P9PkeZEgpJ7LMwZsdriQUxBwptm3AVo=;
	b=QUi1QSvII5kQf/oQQeMvuJkfSBzXCTRA5Ppmqp35XHXbQJG1cRyJodoLBMI3W9nC/Y
	S23f8b29pTs+EPpI8WRTWqqXeB7dXnmjeb4ZFhH0SvvnD+z65CHTmZu9hPWv3F9YsswC
	sYDU3Gf278yrpWyxh5JQ43L2D6JdE0sr1CSHcuD4VpKlzMOMdXxnsurSnx1ZIkplLrj4
	W7CL2KoazbRzRu0k8UoJgiMX1qAhG0PVomp3aa0DkobTvsUfcmm27HvDnmf0cWg7AFgy
	Cl0OuzGAkHaMX9xySlmMMnwjG4TjozH3LRLeN5zg2MfugBN0aPardf5ic0cEt5fKD+FH
	/Dcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=0wpOMVsJtMV0P9PkeZEgpJ7LMwZsdriQUxBwptm3AVo=;
	b=DXT1Z85FQACO472JJ/8b5+RNwW8Im2brNUoA61yUcCSW/Ki26/dTcMsM6+k7S5IPj6
	FnaErQ+Grxmm64En4M0n06GhuryJrlCVINZmr55X4KWHnog/bP9Z9890bG7GFXnS1JZj
	pZs/f08tK+JpPp5dRIXD1/sCiWqBjz06nmkxeTR/2IzBmsJrnv+fvW0ph604+gkB+Msx
	n1onsMk6rZ90W/Hg8xcCokxNxgY1C+DIBpD23bf95Z4qaH3lLIZuiITTpz28/oIoJpR2
	0A5xK1H3rOSZQz+LN3qbm2zeUQo1BI21QcnbHjw+yuszpBKHoxcHy2tF91G8l+p6W8bl
	oerQ==
X-Gm-Message-State: APzg51C+S56SgKnALP0cwfwB3edan4AouVprugpJdY+cwXEmmm7De1I/
	L3s3mBISy51xpoGfIoDwyoTPaUBY
X-Google-Smtp-Source: ANB0VdZxlVdGm7/fhEI4Zqbd5IrbRiKHxo/RnqxZCN8LwqF0HSLoWMC9TCzc+eySJHfVnKo5e9gijQ==
X-Received: by 2002:a1c:c64c:: with SMTP id
	w73-v6mr8840879wmf.98.1536483540077; 
	Sun, 09 Sep 2018 01:59:00 -0700 (PDT)
Received: from ernie.muppets.liwing.de (b2b-78-94-80-58.unitymedia.biz.
	[78.94.80.58]) by smtp.gmail.com with ESMTPSA id
	72-v6sm14306245wrb.48.2018.09.09.01.58.58
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Sep 2018 01:58:58 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
Date: Sun, 9 Sep 2018 10:58:57 +0200
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Postinstall scriptlets of ['coreutils'] have failed
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
X-List-Received-Date: Sun, 09 Sep 2018 08:59:03 -0000
X-Groupsio-MsgNum: 42412
Content-Type: multipart/signed;
	boundary="Apple-Mail=_ACA342E6-6EBE-4001-BD65-4FB6893E26BE";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_ACA342E6-6EBE-4001-BD65-4FB6893E26BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

I got following issue when building an image for live-debugging:

ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets =
of ['coreutils'] have failed. If the intention is to defer them to first =
boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: =
do_rootfs
ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'

I can reproduce it using core-image-minimal-dev

WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst =
returned 1, marking as unpacked only, configuration required on target.
ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets =
of ['coreutils'] have failed. If the intention is to defer them to first =
boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: =
do_rootfs
ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'

Any idea where to start debugging?

Best regards
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_ACA342E6-6EBE-4001-BD65-4FB6893E26BE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGutaqWUYV+tvC/mCRJmWrtzlCp0FAluU4NEACgkQRJmWrtzl
Cp2rqRAAqZoNa2AEsj4ad2BQrMeXuNhfh86p8czfunjCp24F4Zko68Yen+UvVmW/
onBwt8h9/Fe2RRQdCUph6TCuXzw9reS7+NcnuoeyWzYNt3Si96+pfP0GXcWyrK+y
mGjIr5xwPugFPzxAolt4mR1am7nx3DxyRjdKnv557ND4iVH+gODC6iRoiz3rsII9
sqn56MHVZu0e7mVP3x6WMnbT2vjRY+fb+TR6OVvxW1Zjxv64ZFDeckw6VfOkiW5W
vOtxaiuQ6qCbGIEIf2dUKZdPj1IErzhucOPIcmCJdd+qj/6QYD5hzQuH/iZ0ZknG
Pb6+dMym0fq7qwtb+QskWpCSdkGeHPlzjnifwzgrj7Zbkm/0XG+0xkKT2GZB6N43
exgF5zY91dm82XtpGBRgeTV7mPwe/8lCElFlJfWlCRG7ZfGaIoemhgfacT9x5/N1
7LGkB8joGAwG9qHBfNdp4IWm6z5hGq+sRr/KVb1UG/4Qj+OyADkhy3xp9U8h48eb
JTz1ZdLfM9VHbqDtaYhoEghpBntzrMlzRfFVw3Hbmw319HL0aC2YWdw7SVotuchQ
X/i4O4SpqJDnr3pkSOPL/cggwIMVy3RRrX186AFrcG9Ys2GUya0asOR2yWRirSex
13XLrwv157vb1Qt6TTFlRcqSNGvip9BVo1ZZzSAZB1N9LCUmSFY=
=S2wf
-----END PGP SIGNATURE-----

--Apple-Mail=_ACA342E6-6EBE-4001-BD65-4FB6893E26BE--
