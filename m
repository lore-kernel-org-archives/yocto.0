Return-Path: <toby.gomersall@smartacoustics.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE63DE00AD8; Wed,  4 Nov 2015 05:42:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [80.241.60.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 394 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Nov 2015 05:42:13 PST
Received: from mx2.mailbox.org (mx2.mailbox.org [80.241.60.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD22E00AC1
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 05:42:13 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.mailbox.org (Postfix) with ESMTPS id C0B62420E8
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 14:35:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by gerste.heinlein-support.de (gerste.heinlein-support.de
	[91.198.250.173]) (amavisd-new, port 10030)
	with ESMTP id pfQIri1c7tfY for <yocto@yoctoproject.org>;
	Wed,  4 Nov 2015 14:35:36 +0100 (CET)
To: yocto@yoctoproject.org
From: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <563A09A3.4050706@smartacoustics.co.uk>
Date: Wed, 4 Nov 2015 13:35:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: yocto on zynq, How to configure kernel to include drivers
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
X-List-Received-Date: Wed, 04 Nov 2015 13:42:14 -0000
X-Groupsio-MsgNum: 27168
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="l2MorgL8rWhxvpXc3Gd2GEbllD88QNOet"

--l2MorgL8rWhxvpXc3Gd2GEbllD88QNOet
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I'm quite new to yocto so still have a lot to learn. I'm trying to
include the DMA drivers in my yocto build for a Zynq based on the
meta-xilinx layer (http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/=
).

I thought I'd be able to add them in the kernel configuration
(menuconfig) by running (from within the build directory):

bitbake linux-xlnx -c kernel_configme -f
bitbake linux-xlnx -c menuconfig

I can't see the DMA drivers in menuconfig. However if I run menuconfig
within the linux-xlnx tree (which is referenced by the SRCURI) I can see
the DMA drivers. Is there some reason they're hidden in the build
menuconfig?

Thanks,
Toby



--l2MorgL8rWhxvpXc3Gd2GEbllD88QNOet
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWOgmnAAoJEJFfznYik92WLd8P/1pUk89eg2uFYXr8yfiVqoHU
dIG7KvCYTwFH1v0W/5uY/PwODiLBTQtR+36enOicLm1oE+XzNrUX5U1B/fqDZxiR
F9PDS9dBvVsldqdRSUdCCp/XbGPoQk91PsxSBtu7iMe3qby3dzGtYjaNKwm6vqXm
rrkhu4AWEss9Um9ppg5SijYQgY2x6GdrIRoGJE2e2i4RWujq2AYPOxzOWZSIJPWn
oYAie1gy1ViBCxak8Ow8V1qmtJeHb9Gyh7+5YSb1t/0bV38Czj3fxLDjyHJGCXV+
c4FmJc/mIdv6CRzyHVLew5c8/VHZsJ63NJTbJJ7qR3q3V6IeuveMGgbRqrINiKL1
YKBTftQIi2dbk+9QpvPA4irIoFd3sHOqQp7IDtSPReKcNU6Qsy11Xt1PCoq1H+A9
n4QgcjN16ZURJS77SWPUCBJm0xuCZWm1cO63hRhzYejF3r0r425ouAnKZpiR5ByB
k7t6uZ5Ff0Lc1QQlXp95xplUruOKRaYd0L8eDZCjTdO727Xrjy/dqgKyk2IBy9gO
YBHJlYPBu5eqczg7F5v6VlI3B0WidhUc/LxqnWwPqp4GOFRzwp6SftsUQJTw1sYv
+HgrvbqtSmy5Yy4Wb93Mc826XXr/0a4FhgY+V30WjCWh/cbzHWIM9IIwb9sAr8Jq
mwKbz/OYJhkNXLEuGobt
=bl4d
-----END PGP SIGNATURE-----

--l2MorgL8rWhxvpXc3Gd2GEbllD88QNOet--
