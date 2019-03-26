Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 960F9E00C43; Tue, 26 Mar 2019 01:06:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [37.187.160.104 listed in list.dnswl.org]
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id F1478E00BC8
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 01:06:03 -0700 (PDT)
Received: from PC-008 (200.red-79-155-111.dynamicip.rima-tde.net
	[79.155.111.200]) by mail.knx-group.net
	; Tue, 26 Mar 2019 09:05:56 +0100
Message-ID: <2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
From: jairo <jairo@futurasmus-knxlab.es>
To: Patrick Boettcher <patrick.boettcher@posteo.de>
Date: Tue, 26 Mar 2019 09:05:47 +0100
In-Reply-To: <20190325172133.50597470@yaise-pc1>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Tue, 26 Mar 2019 08:06:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Patrick:


The idea is that when an update is going to be done, the system will
restart in the rescue partition so that it updates the main partition
and when it is updated it will restart the main partition again.


I think the problem (among others) was having it because I was not
applying any patch to the device-tree. It's a somewhat complicated
issue, anyway, thank you very much for the help, I think it's a good
clue to keep going.

A greeting!


El lun, 25-03-2019 a las 17:21 +0100, Patrick Boettcher escribi=C3=B3:
> Hi,
>=20
> On Mon, 25 Mar 2019 16:01:37 +0100
> jairo <jairo@futurasmus-knxlab.es> wrote:
>=20
> > Hi all,
> >=20
> > I want to make a system with a rescue partition.
> >=20
> > What is the minimum to make a rescue image? Or how can it be done?
> >=20
> > I use a board with a imx6 micro from phytec, and in the meta-yogurt
> > layer there is a recipe called phytec-initramfs-image.bb that
> > creates
> > an image or partition with cpio.gz format of 11MB containing
> > rootfs,
> > can it be used That image as a rescue? If so, how do you copy a
> > cpio
> > partition in an UBI MTD system?
>=20
> To create an initramfs rescue image (assuming that's what you would
> want to do?) You need to tell yocto that there is a initramfs to be
> built:
>=20
> To your local.conf you can add
>=20
>   # for initramfs-usage
>   INITRAMFS_IMAGE =3D "rescue-image-initramfs"
>   INITRAMFS_IMAGE_BUNDLE =3D "1"
>=20
> and you'll to craete a corresponding .bb-file. There are example over
> the internet if you search for it. I needed the following packages:
>=20
>   PACKAGE_INSTALL =3D "packagegroup-core-boot \
>                      ppp          \
>                      bash         \
>                      sshd         \
>                      rauc         \
>                      mtd-utils    \
>   "
>=20
> This gave me a initramfs of 25-30 MB and barebox wasnot able to
> jump to the kernel so I had to patch.
>=20
> After that you just need to add a partition for the initramfs and its
> device-tree-blob (dtb) to the UBIFS and flash it and boot it.
>=20
> You should, if you haven't already, come up with a complete strategy
> of
> how to do your updates and upgrades using RAUC or another update-
> system.
>=20
> best regards,
> --
> Patrick.
>=20
>=20
>=20



