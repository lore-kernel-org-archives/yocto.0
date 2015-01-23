Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9679E00860; Thu, 22 Jan 2015 18:00:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3490E00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 18:00:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0N20o5i007345
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 22 Jan 2015 18:00:50 -0800 (PST)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.174.1; Thu, 22 Jan 2015 18:00:50 -0800
Date: Fri, 23 Jan 2015 10:00:47 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Christian Schultz <xxultz@gmail.com>
Message-ID: <20150123020046.GB5908@pek-khao-d1.corp.ad.wrs.com>
References: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Installing a Yocto image on BeagleBone Black MMC
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
X-List-Received-Date: Fri, 23 Jan 2015 02:00:58 -0000
X-Groupsio-MsgNum: 23102
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline

--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2015 at 09:41:51AM -0200, Christian Schultz wrote:
> Hello
>=20
> I'm new to Yocto, I baked a core-image-minimal and booted it via SD Card =
on my
> BeagleBone Black. I erased the contents on the MMC in order to boot from =
SD
> Card.
> I'm searching for instructions on how do I install or flash the MMC with =
the
> Yocto image I created, in order to boot the image without the SD Card, bu=
t I
> can't find how to do it, anyone knows where I can find such instructions?

Have you looked at the README.hardware in yocto? There are steps about how =
to
flash the SD card in a host environment. You can copy the built images to t=
he
SD card and then use the same steps to flash the eMMC on the target. Please
remember to change the block device to mmcblk1 when you are executing these
commands on target.

Thanks,
Kevin

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJUwatOAAoJEJNY7TDerrFx2aMIAL4GT33GXzs5I2kreRzQtk+X
jsQGIsSGsYG5hYF0V2kvtHEnMbEdAjpMgM3rp/4ovDiZUMkbZwdogf9McwKFSXk2
bt1E0pSmByN/dYJ1iRiijjAXdjaEI9J07RKLfQPeG70/95OSylP9MllxRl4A0ZGG
a0cV09HLe+tfEDfSkXxbUjc7/02sGJghXUO6IwOZ6KB/DpLIaTQsMA2A20inZNrT
4KJSZRIkKh9Icp/FilEAbqvjKuyBAfwBfuFX6XL1IkWpBvoXtSbQyil1GCNnwutP
lQ1A5iz0s8j+plhjlJ8kux+2J1J1vmucXnYYL1wIz5zrkiL8uXEv7+nGSltg+ew=
=t5se
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
