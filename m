Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B63E0078F; Wed, 23 Jul 2014 05:15:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [207.46.163.183 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0183.outbound.protection.outlook.com [207.46.163.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F917E00572
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 05:15:32 -0700 (PDT)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) with
	Microsoft
	SMTP Server (TLS) id 15.0.985.8; Wed, 23 Jul 2014 12:15:28 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.00.0985.008; Wed, 23 Jul 2014 12:15:28 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] SELinux doesn't work on t4240qds
Thread-Index: Ac+lvzKBtGo4KmiDRFuWSK4Azfu4jwAE3bYAABI/unAAFO/BcA==
Date: Wed, 23 Jul 2014 12:15:27 +0000
Message-ID: <0ad645f8fb6c4c8e8aff82398133db2e@CY1PR0301MB0715.namprd03.prod.outlook.com>
References: <dfd0afc8932f41e19daf0a1fe13578b3@CY1PR0301MB0715.namprd03.prod.outlook.com>
	<53CE9FC2.3090507@windriver.com>
	<6f5922a626734b809df5f899dc3ae3e3@CY1PR0301MB0715.namprd03.prod.outlook.com>
In-Reply-To: <6f5922a626734b809df5f899dc3ae3e3@CY1PR0301MB0715.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(189002)(53754006)(199002)(51704005)(24454002)(377454003)(13464003)(479174003)(106356001)(80022001)(76482001)(15975445006)(95666004)(87936001)(85306003)(74662001)(74502001)(31966008)(66066001)(99286002)(107046002)(83322001)(54356999)(107886001)(20776003)(50986999)(46102001)(77982001)(76176999)(92566001)(83072002)(2656002)(2351001)(19580395003)(4396001)(74316001)(85852003)(81342001)(99396002)(77096002)(19580405001)(101416001)(81542001)(86362001)(21056001)(33646002)(79102001)(110136001)(76576001)(64706001)(105586002)(108616002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:CY1PR0301MB0715;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Re: SELinux doesn't work on t4240qds
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
X-List-Received-Date: Wed, 23 Jul 2014 12:15:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried dora(poky + meta-selinux + meta-fsl-ppc), following error message a=
ppears during kernel boot up, please help.=20

RAMDISK: gzip image found at block 0
VFS: Mounted root (ext2 filesystem) on device 1:0.
devtmpfs: mounted
Freeing unused kernel memory: 340k freed
Mount failed for selinuxfs on /sys/fs/selinux:  No such file or directory
Unable to load SELinux Policy. Machine is in enforcing mode. Halting now.
Kernel panic - not syncing: Attempted to kill init! exitcode=3D0x00000100

Call Trace:
[c0000002f9143ae0] [c000000000008b2c] .show_stack+0x7c/0x1f0 (unreliable)
[c0000002f9143bb0] [c000000000816e48] .panic+0xec/0x24c
[c0000002f9143c40] [c00000000003d094] .do_exit+0x964/0xa40
[c0000002f9143d30] [c00000000003e354] .do_group_exit+0x54/0xf0
[c0000002f9143dc0] [c00000000003e404] .SyS_exit_group+0x14/0x20
[c0000002f9143e30] [c000000000000598] syscall_exit+0x0/0x88
Rebooting in 180 seconds..


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of zhenhua.luo@freescale.com
> Sent: Wednesday, July 23, 2014 10:29 AM
> To: Mark Hatle; yocto@yoctoproject.org
> Subject: Re: [yocto] SELinux doesn't work on t4240qds
>=20
> Hi Mark,
>=20
> Thanks for your comments.
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Mark Hatle
> >
> > On 7/22/14, 10:11 AM, zhenhua.luo@freescale.com wrote:
> > > Hi all,
> >
> > Which release are you using.
> [Luo Zhenhua-B19537] I tried poky daisy + meta-fsl-ppc master + meta-
> selinux master
>=20
> > The last version I used w/ meta-selinux was the 1.5 release.
> >
> > We're planning on updating it to master in the 'near' future [patches
> > welcome!], and I've been told by a few others of success w/ 1.7.
> [Luo Zhenhua-B19537] I will try master and dora.
>=20
> > Did you enable the 'selinux' distribution flag?
> > If so, it should have enabled all of the components necessary for this
> stuff to be enabled.
> [Luo Zhenhua-B19537] Yes, selinux is in DISTRO_FEATURES.
>=20
>=20
> Best Regards,
>=20
> Zhenhua
>=20
> > --Mark
> >
> > > I use the meta-selinux layer to build a core-image-selinux rootfs
> > > image, and build kernel with following options enabled.
> > >
> > > CONFIG_AUDIT=3Dy
> > >
> > > CONFIG_NETWORK_SECMARK=3Dy
> > >
> > > CONFIG_EXT2_FS_SECURITY=3Dy
> > >
> > > CONFIG_EXT3_FS_SECURITY=3Dy
> > >
> > > CONFIG_EXT4_FS_SECURITY=3Dy
> > >
> > > CONFIG_JFS_SECURITY=3Dy
> > >
> > > CONFIG_REISERFS_FS_SECURITY=3Dy
> > >
> > > CONFIG_JFFS2_FS_SECURITY=3Dy
> > >
> > > CONFIG_SECURITY_NETWORK=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D1
> > >
> > > CONFIG_SECURITY_SELINUX_DISABLE=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
> > >
> > > CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D1
> > >
> > > I use the generated images to boot up FSL PPC t4240qds board(tried
> > > both NFS boot and RAM boot with ext2.gz.u-boot rootfs), the SELinux
> > > is not turned on after kernel boot up.
> > >
> > > following is some information in rootfs.
> > >
> > > root@t4240qds:~# sestatus
> > >
> > > SELinux status:                 disabled
> > >
> > > root@t4240qds:~#
> > >
> > > root@t4240qds:~# cat /etc/selinux/config
> > >
> > > # This file controls the state of SELinux on the system.
> > >
> > > # SELINUX=3D can take one of these three values:
> > >
> > > #     enforcing - SELinux security policy is enforced.
> > >
> > > #     permissive - SELinux prints warnings instead of enforcing.
> > >
> > > #     disabled - No SELinux policy is loaded.
> > >
> > > SELINUX=3Denforcing
> > >
> > > # SELINUXTYPE=3D can take one of these two values:
> > >
> > > #     standard - Standard Security protection.
> > >
> > > #     mls - Multi Level Security protection.
> > >
> > > SELINUXTYPE=3Dmls
> > >
> > > root@t4240qds:~# cat /proc/cmdline
> > >
> > > root=3D/dev/ram rw console=3DttyS0,115200 selinux=3D1
> > >
> > > root@t4240qds:~# setenforce 1
> > >
> > > setenforce: SELinux is disabled
> > >
> > > root@t4240qds:~# getenforce
> > >
> > > Disabled
> > >
> > > root@t4240qds:~#
> > >
> > > Can somebody shed some light on the issue?
> > >
> > > Best Regards,
> > >
> > > Zhenhua
> > >
> > >
> > >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

