Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4906E0076F; Tue, 24 Feb 2015 08:58:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5C1AE00404
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 08:58:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id B069A496D4F
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 11:58:10 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id ffv+GDi+l25v for <yocto@yoctoproject.org>;
	Tue, 24 Feb 2015 11:58:09 -0500 (EST)
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by mail.rogue-research.com (Postfix) with ESMTPSA id B6931496D41
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 11:58:09 -0500 (EST)
Received: by qcrw7 with SMTP id w7so17467801qcr.4
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 08:58:09 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.140.146.13 with SMTP id 13mr38718144qhs.101.1424797089038;
	Tue, 24 Feb 2015 08:58:09 -0800 (PST)
Received: by 10.96.87.38 with HTTP; Tue, 24 Feb 2015 08:58:08 -0800 (PST)
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A8054C2850@G1W3650.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8054C2850@G1W3650.americas.hpqcorp.net>
Date: Tue, 24 Feb 2015 11:58:08 -0500
Message-ID: <CACgAsMddAf-Rp-fs7htQWXwT2bwZ6g_ccex2BJhzo+9BRpKEJg@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The kernel *.cfg system
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
X-List-Received-Date: Tue, 24 Feb 2015 16:58:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yannick,

I don't know if this could be related but was playing with kernel .cfg
with meta-fsl and changing cfg didn't change I had to change the
entire .config?


From:
https://lists.yoctoproject.org/pipermail/yocto/2015-February/023616.html

hmm I just notice that adding CONFIG_BT=3Dm, when it was =3Dy, in
defconfig.cfg didn't change it even tried cleansstate. But it worked
if I copy the original .config to my bbappend and change it inside...

I'm with yocto 1.7.1

NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "wandboard-quad"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.1"


Which version of yocto are you using by curiosity?

thx,

-KA


On Thu, Feb 19, 2015 at 2:17 PM, Koehler, Yannick (HP Networking)
<yannick.koehler@hp.com> wrote:
> Hi,
>
>   I recently was playing with the FreeScale community layer meta-fsl-ppc.=
  They are using their own kernel package linux-qoriq-sdk.  I attempted to =
alter the configuration file using a systemd.cfg for the pleasure, to my su=
rprise, the .cfg didn't change anything at all.  Is FreeScale playing Yocto=
 rules properly or is it me that missed something ?  I did the same as with=
 linux-yocto:
>
>   FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>   KERNEL_FEATURES =3D "ext2 cgroups ipv6"
>   SRC_URI +=3D "file://systemd.cfg"
>
>   Yet, the kernel .config didn't contained my changes like the linux-yoct=
o did.  I was wondering if it was because the Qoriq Kernel didn't include s=
pecific Yocto recipe instructions or class and it was something that I coul=
d easily add or if this needed to come from FreeScale itself, or if it was =
really just my setup having a problem.  Note that I did copy the systemd.cf=
g file at a proper location and bitbake did find it, even thought the final=
 config under the /tmp/work/... didn't contain the changes.
>
>   Any help on this welcome.
>
> Yannick Koehler
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

