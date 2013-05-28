Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 100EAE014FA
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:03:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 May 2013 06:03:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,758,1363158000"; d="scan'208";a="344354737"
Received: from unknown (HELO helios.localnet) ([10.252.121.204])
	by orsmga002.jf.intel.com with ESMTP; 28 May 2013 06:03:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sebastian =?ISO-8859-1?Q?S=FCsens?= <su@mycable.de>
Date: Tue, 28 May 2013 14:03:54 +0100
Message-ID: <1439859.cGLdtq2HGo@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <51A4A0AD.1000207@mycable.de>
References: <51A4A0AD.1000207@mycable.de>
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
X-List-Received-Date: Tue, 28 May 2013 13:03:58 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 28 May 2013 14:18:53 Sebastian S=FCsens wrote:
> I have build the system with MACHINE_EXTRA_RRECOMMENDS +=3D "
> kernel-modules" at the machine configuration.
> When I look into the rootfs.tar archive I see no modules installed in=

> /lib/modules. I get only a modules.tar archive at the deploy folder.
>=20
> How do I get the modules into the rootfs?

This will only work if your image includes packagegroup-base, as noted
in the glossary entry for this variable:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var=
-MACHINE_EXTRA_RRECOMMENDS

Presumably the image you are building does not include packagegroup-bas=
e
(or more specifically, packagegroup-machine-base)?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

