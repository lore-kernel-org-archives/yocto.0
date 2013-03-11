Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC4C4E006E9
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 06:49:09 -0700 (PDT)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id CBF574B00C1;
	Mon, 11 Mar 2013 14:49:01 +0100 (CET)
Date: Mon, 11 Mar 2013 14:49:00 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20130311144900.59a31a00@e6520eb>
In-Reply-To: <513DDE28.4050004@windriver.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
	<513A7836.2050908@windriver.com>
	<CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
	<CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
	<513DDE28.4050004@windriver.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Mon, 11 Mar 2013 13:49:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Le Mon, 11 Mar 2013 09:37:44 -0400,
Bruce Ashfield <bruce.ashfield@windriver.com> a =C3=A9crit :
> Can you post your exact changes where we can see them ? You need to put
> the module_autload variable in a .conf file, whether that be your
> local.conf, your machine.conf or you distro configuration file (which
> it appears that you are doing), but you also must have the name of
> the module package correct, and the module needs to be part of your
> IMAGE_INSTALL, since the code fragment I pasted above is from the
> post installation fragment created for the various module packages
> as they are created.
>=20
> i.e. I have this in a .conf file:
>=20
>     module_autoload_nfsd =3D "nfsd"
>=20
> To ensure that the nfsd .ko is loaded on boot, when the module is built
> and present on the rootfs.
>=20
I think the problem is that this works when building modules inside the
kernel (module_autoload is handled in kernel.bbclass), but not when
building a module with its own recipe (using module.bbclass) as Hans
is doing, that's why I previously told him to "get inspiration from
kernel.bbclass to do the same thing in your recipe".

Thinking again to this (after pressing send of course ;-) : Or maybe he
needs to build again its kernel after setting module_autoload_hismodule
=3D "hismodule" so that the module name gets handled by the kernel
recipe ?

Eric

