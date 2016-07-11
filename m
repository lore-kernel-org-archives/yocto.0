Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C2B2E00DC5; Mon, 11 Jul 2016 01:42:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97318E00DB7
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 01:42:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u6B8gEAX010091
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Jul 2016 01:42:14 -0700 (PDT)
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Mon, 11 Jul 2016 01:42:13 -0700
Date: Mon, 11 Jul 2016 16:42:09 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: shoaib md <shoaibfrasmd@gmail.com>
Message-ID: <20160711084209.GB1099@pek-khao-d1>
References: <CAOvqCUMYP5g3+5ONAj0fPUST6aVkzQ-z-VNk6BEfK_Fi6ngqQw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOvqCUMYP5g3+5ONAj0fPUST6aVkzQ-z-VNk6BEfK_Fi6ngqQw@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: Getting USB devices to work on BeagleBoard Black
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
X-List-Received-Date: Mon, 11 Jul 2016 08:42:18 -0000
X-Groupsio-MsgNum: 30984
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dTy3Mrz/UPE2dbVg"
Content-Disposition: inline

--dTy3Mrz/UPE2dbVg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2016 at 11:55:34AM +0530, shoaib md wrote:
> I've managed to build a couple of different recipes for my BeagleBoard
> (BeagleBoard Black Rev C), and also had a go at customising it.  I think
> I've tried core-image-minimal.

Could you check if the following patch is applied in your kernel-meta?

commit fca9cc2483de
Author: Kevin Hao <kexin.hao@windriver.com>
Date:   Tue May 17 20:03:21 2016 +0800

    beaglebone: builtin the usb controller drivers
   =20
    In the current codes, we build the drivers for usb controller as
    modules. But for some image types, such as minimal or full-cmdline,
    these driver modules are not installed to the rootfs by default.
    This makes the using of the usb pretty inconvenience. So make
    them all builtin.
   =20
    Reported-and-suggested-by: hiims <h@101.org.il>
    Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Thanks,
Kevin

--dTy3Mrz/UPE2dbVg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg1vhAAoJEJNY7TDerrFxiiMH+QHH90kJw8qiNgZGG7A992YF
RSa7kKorJNidO4Bo+xU1BZn+CQ6cq4qX4DvR5y6VepvpNrUcRIra6ypwC9uiI9Jm
n64paW6hnUH+tMi1oXyuqYT87QG2xUyPj3WFrDeP620pUiAJ7oTFYamn3sU4A1ha
cWSDTN5qfAA5FUpZzD6hQVRIf+VsgFxPR7GyYWjGQDcwfu+cipm1MRMnjFxud2Ak
6IoH1cgKEyLv2DphwqYu3h3y6oTirh0J3YfZgKzT7mrFe+UEspB+qGEvim0kQI5+
TCaveiWjX30dg+Orx2w6E2b5dqzMh9rUlDbtmQKiBuW6KRL7uP/zYnMpOOALMRo=
=HgtC
-----END PGP SIGNATURE-----

--dTy3Mrz/UPE2dbVg--
