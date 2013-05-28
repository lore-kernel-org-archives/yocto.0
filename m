Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63EDCE01458
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 07:11:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 28 May 2013 07:08:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,758,1363158000"; d="scan'208";a="341342072"
Received: from unknown (HELO helios.localnet) ([10.252.121.204])
	by fmsmga001.fm.intel.com with ESMTP; 28 May 2013 07:11:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sebastian =?ISO-8859-1?Q?S=FCsens?= <su@mycable.de>
Date: Tue, 28 May 2013 15:10:48 +0100
Message-ID: <1776847.BtD7W1b5CJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <51A4B7DE.6010702@mycable.de>
References: <51A4A0AD.1000207@mycable.de> <1439859.cGLdtq2HGo@helios>
	<51A4B7DE.6010702@mycable.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do I get the kernel modules into rootfs?
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
X-List-Received-Date: Tue, 28 May 2013 14:11:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 28 May 2013 15:57:50 Sebastian S=FCsens wrote:
> On 05/28/2013 03:03 PM, Paul Eggleton wrote:
> > On Tuesday 28 May 2013 14:18:53 Sebastian S=FCsens wrote:
> >> I have build the system with MACHINE_EXTRA_RRECOMMENDS +=3D "
> >> kernel-modules" at the machine configuration.
> >> When I look into the rootfs.tar archive I see no modules installed=
 in
> >> /lib/modules. I get only a modules.tar archive at the deploy folde=
r.
> >>=20
> >> How do I get the modules into the rootfs?
> >=20
> > This will only work if your image includes packagegroup-base, as no=
ted
> > in the glossary entry for this variable:
> >=20
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html=
#var-MA
> > CHINE_EXTRA_RRECOMMENDS
> >=20
> > Presumably the image you are building does not include packagegroup=
-base
> > (or more specifically, packagegroup-machine-base)?
>=20
> now I build the system with packagegroup-base and it works.
> Can I build the rootfs which include modules without the packagegroup=
-base?

kernel-modules is just a package, so you can include it in IMAGE_INSTAL=
L just=20
like any other package name (although this may not be the most appropri=
ate=20
solution).

Alternatively, if you have a list of kernel modules that are required f=
or=20
booting you can have them installed in any image that uses packagegroup=
-core-
boot by adding them to MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS.

Cheers,
Paul

PS please keep replies CC'd to the mailing list, thanks.

--=20

Paul Eggleton
Intel Open Source Technology Centre

