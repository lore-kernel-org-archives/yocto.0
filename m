Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id D83A54C800D8
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 13:48:53 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6SIhi9d032240;
	Thu, 28 Jul 2011 13:43:45 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E3188D3.8040405@linux.intel.com>
Date: Thu, 28 Jul 2011 13:43:45 -0500
Message-Id: <312066B0-7200-477F-A875-B610335E6153@kernel.crashing.org>
References: <1F827C13-EF18-4D1E-AAA1-381361929F39@kernel.crashing.org>	<65A75BC37EC7EE4F88AB5EB98759A97003E6E32F@LONMLVEM04.e2k.ad.ge.com>
	<315B4992-8E1A-4DD3-8D3D-E8FD2436B365@kernel.crashing.org>
	<4E3188D3.8040405@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: mpc8315e-rdb core-image-minimal fails (PACKAGE_ARCHS question)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jul 2011 18:48:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 28, 2011, at 11:05 AM, Saul Wold wrote:

> On 07/28/2011 08:45 AM, Kumar Gala wrote:
>> I think I know the cause, let me dig up the change that is related.  =
What bit is looking for just ppc603e?
>>=20
> This might also be related to the PACKAGE_EXTRA_ARCHS issue, please =
try the patch that Koen posted.
>=20
> Thanks
> 	Sau!

so in conf/bitbake.conf

PACKAGE_ARCH =3D "${TUNE_PKGARCH}"
MACHINE_ARCH =3D "${@[bb.data.getVar('TUNE_PKGARCH', d, 1), =
bb.data.getVar('MACHINE', d, 1)][bool(bb.data.getVar('MACHINE', d, =
1))].replace('-', '_')}"
PACKAGE_EXTRA_ARCHS ??=3D "${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}"
PACKAGE_ARCHS =3D "all any noarch ${PACKAGE_EXTRA_ARCHS} =
${MACHINE_ARCH}"


Shouldn't PACKAGE_ARCHS be:

PACKAGE_ARCHS =3D "all any noarch ${PACKAGE_ARCH} ${PACKAGE_EXTRA_ARCHS} =
${MACHINE_ARCH}"

- k=

