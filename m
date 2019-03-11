Return-Path: <tech@domaigne.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B7FE009A4; Mon, 11 Mar 2019 13:58:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [80.237.132.122 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de
	[80.237.132.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74949E008CA
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 13:58:44 -0700 (PDT)
Received: from app16-neu.ox.hosteurope.de ([92.51.170.150]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1h3S0R-0005NS-Di; Mon, 11 Mar 2019 21:58:43 +0100
Date: Mon, 11 Mar 2019 21:58:43 +0100 (CET)
From: =?UTF-8?Q?Lo=C3=AFc_Domaign=C3=A9?= <tech@domaigne.com>
To: Emily S <easmith5555@gmail.com>
Message-ID: <1280723971.154901.1552337923357@ox.hosteurope.de>
In-Reply-To: <CAAV2bM2w5cxuZL-Be_E1SfPJNst_392sb1QNR2KBNpLsLHzbsA@mail.gmail.com>
References: <CAAV2bM2jFrH426UPxyKTk6whFry_J0VD_E5C-Gsi-CwYDL=wHQ@mail.gmail.com>
	<1210025179.154688.1552335389580@ox.hosteurope.de>
	<CAAV2bM2w5cxuZL-Be_E1SfPJNst_392sb1QNR2KBNpLsLHzbsA@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev51
X-Originating-Client: open-xchange-appsuite
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1552337924;34ecc8cc;
X-HE-SMSGID: 1h3S0R-0005NS-Di
Cc: yocto@yoctoproject.org
Subject: Re: devtmpfs failing to mount
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
X-List-Received-Date: Mon, 11 Mar 2019 20:58:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> > > I'm using Yocto version rocko with a custom layer to run on the Zynq+=
 SoC
> > > on a custom board. When trying to boot I'm getting the following erro=
r in
> > > the boot output:
> > > ...
> > > [    4.127997] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to fea=
ture
> > > incompatibilities
> > > [    4.183737] EXT4-fs (mmcblk0p2): recovery complete
> > > [    4.190840] EXT4-fs (mmcblk0p2): mounted filesystem with ordered d=
ata
> > > mode. Opts: (null)
> > > [    4.198870] VFS: Mounted root (ext4 filesystem) on device 179:2.
> > > [    4.205861] devtmpfs: error mounting -2
> > >
> > > Are there common reasons for this happening I should check?
> >
> > Not sure if that helps, but I'd check:
> > a) What's the type of the mmcblk0p2 (=3Drootfs?) partition?  and
> > b) How is this partition mounted?

> Yes those are both useful things to know. I am booting by flashing an SD
> card with a wic image (made using sdimage-bootpart.wks), so the flashing
> process takes care of creating the partitions. So the partition should be
> of type EXT4. The mounting process is actually what I'm a little fuzzy on
> in the first place.

I am not familiar with the meta-xilinx layer yet.
From what I can read/understand:
- is mmcblk0p2 the rootfs?=20
  If so: this partition should get mounted at kernel boot using the
  "root=3D..." boot arg. This, in turn, is set by "Das uboot" bootloader.
  I guess all the glory details can be found in the
  u-boot-zynq-uenv.bb recipe or similar.=20
- if mmcblk0p2 is not the rootfs, this must be mounted somewhere. A=20
  casual place to look at would be /etc/fstab.=20

Is there a /etc/fstab available on your system?

Cordialement,
Lo=C3=AFc

