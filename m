Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D99B6E00A48; Wed, 28 Jan 2015 00:16:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0FCAE00A44
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 00:16:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0S8GEYO001679
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Jan 2015 00:16:14 -0800 (PST)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.174.1; Wed, 28 Jan 2015 00:16:13 -0800
Date: Wed, 28 Jan 2015 16:16:10 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Christian Schultz <xxultz@gmail.com>
Message-ID: <20150128081610.GB1471@pek-khao-d1.corp.ad.wrs.com>
References: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
	<20150123020046.GB5908@pek-khao-d1.corp.ad.wrs.com>
	<CAMkbQehGh6s0bKNvejKMCdKSOi=HmtCBc--9=_Dz8JG_=w+Ohg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMkbQehGh6s0bKNvejKMCdKSOi=HmtCBc--9=_Dz8JG_=w+Ohg@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Jan 2015 08:16:24 -0000
X-Groupsio-MsgNum: 23222
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Y7xTucakfITjPcLV"
Content-Disposition: inline

--Y7xTucakfITjPcLV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 26, 2015 at 10:53:33AM -0200, Christian Schultz wrote:
> I looked at the doc, and it gives the instructions to write the image to =
othe
> SD Card and run from the card. I didn't find yet instructions about how to
> write the images to the MMC.=20

The same commands for writing MMC. You just need to change the mmc block de=
vice
to mmcblk1 when you run these commands on target.

>For example, I made an image with Yocto, and from
> the system, I should create the partitions (for boot and rootfs), format =
them,
> and copy the contents, but my image lacks the mkfs.vfat and mkfs.ext3, so=
 I
> didn't figure how to setup the MMC memory to receive the files.=20

Add the following to your local.conf:
	IMAGE_INSTALL_append =3D " dosfstools e2fsprogs-mke2fs"

Thanks,
Kevin

--Y7xTucakfITjPcLV
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJUyJrKAAoJEJNY7TDerrFx5XYIALKD/xnHhSWdVep0L4moAoMh
AYkqa8giyAyHOzk+EeuCzT/b6Aws7zuDSF9cyVEQSXVgG5dpP23rsU8P0qJ+akkN
sLXLCkww7op377S2kQwG3t61ml8S1pF5hFIjYQGr63Doz3NeO3RrQzwWRufd7MxT
2UPfr1OT49ofzxrPLC1WqmqTSD99xr9PPp2DwZagTak2Bo3HQCAXQ6TqsCoIBSmY
dQGEYmO4joxLcbfZOjMi3BgKXx5JSxkx+7Hh6K1dIIkyhTddj0mAg9utcD3yVE/g
mqY9za6JMqga38r0RvjizriOr0huo5CEONMmKLS2NlmgNVfWywYr0lisPVzhxAY=
=gzmA
-----END PGP SIGNATURE-----

--Y7xTucakfITjPcLV--
