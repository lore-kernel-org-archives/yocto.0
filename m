Return-Path: <julian@jusst.de>
Received: from smtp.work.de (smtp1.work.de [212.12.40.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7150CE011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 14:38:10 -0700 (PDT)
Received: from [88.71.89.14] (helo=julian-scheels-macbook.fritz.box)
	by smtp.work.de with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <julian@jusst.de>)
	id 1TJAAF-0005P9-In; Tue, 02 Oct 2012 23:38:03 +0200
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1486\))
From: Julian Scheel <julian@jusst.de>
In-Reply-To: <20121002212223.GE15881@jama.jama.net>
Date: Tue, 2 Oct 2012 23:38:08 +0200
Message-Id: <159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<20121002212223.GE15881@jama.jama.net>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1486)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Tue, 02 Oct 2012 21:38:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:

> On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
>> I'm trying to build core-image-sato for my Pandaboard ES, following =
the
>> instructions posted here:
>>=20
>>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>>=20
>> Thus, my OE build configuration looks like this:
>>=20
>>> OE Build Configuration:
>>> BB_VERSION        =3D "1.15.2"
>>> TARGET_ARCH       =3D "arm"
>>> TARGET_OS         =3D "linux-gnueabi"
>>> MACHINE           =3D "pandaboard"
>>> DISTRO            =3D "poky"
>>> DISTRO_VERSION    =3D "1.2.1"
>>> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
>>> TARGET_FPU        =3D "vfp-neon"
>>> meta
>>> meta-yocto        =3D =
"denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
>>> meta-ti           =3D =
"(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"
>>=20
>> I have these lines in my .gitconfig:
>>=20
>>> [http]
>>>    proxy=3Dhttp://user:passwd@usaprox.lightning.com:8080
>>=20
>> so I'd expect URLs like this one (from the meta-ti layer's
>> linux-omap4_3.1.0.bb recipe) to work fine:
>>=20
>>> SRC_URI =3D =
"http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=3D=
git;branch=3Dti-ubuntu-3.1-1282 \
>=20
> This url seems wrong, it should start with git:// if you want to clone
> git repo.
>=20
> Because it starts with http:// normal fetch (like wget) was used so it
> downloaded probably some http code (see that kernel-ubuntu.git file)
> instead of any relevant source.

I ran into the same issue a few days ago. It seems yocto only supports =
git fetch
through servers providing the repositories through the git protocol. A =
way to use
git repositories which are provided through http or https would be quite =
a good
thing to have.

-Julian

>=20
>>>           =
file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch \
>>>           file://defconfig \
>>>           "
>>=20
>> =46rom what I can tell, though, bitbake isn't handling this SRC_URI
>> correctly, and I get:
>>=20
>>> ERROR: Command Error: exit status: 1  Output:
>>> Applying patch =
0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch
>>> patching file scripts/Makefile.fwinst
>>> Hunk #1 FAILED at 27.
>>> 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
>>> Patch =
0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch does not =
apply (enforce with -f)
>>> ERROR: Function failed: patch_do_patch
>>=20
>> If I examine the folder:
>>=20
>>  build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0
>>=20
>> I see that it contains no source code. It does, however, contain a =
file
>> named 'kernel-ubuntu.git', whose content is exactly the same as you'd
>> get if you typed:
>>=20
>>  wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
>>=20
>> This seems like a bug, possibly related to one of these:
>>=20
>>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3119
>>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3175
>>=20
>>=20
>> Maybe this has been fixed since denzil, but... everything I read =
about
>> the current state of support for the Pandaboard suggests sticking =
with
>> denzil/gcc 4.6. Is there some workaround I can use to get past this
>> error?  Also, assuming these instructions worked for the author of =
the
>> original blog post, I wonder what the difference is with my setup.
>>=20
>> Here are my mods to conf/local.conf, in case it's helpful:
>>=20
>>> MACHINE =3D "pandaboard"
>>> BBMASK =3D "meta-ti/recipes-misc"
>>> PACKAGE_CLASSES =3D "package_ipk"
>>> CONNECTIVITY_CHECK_URIS=3D""
>>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>> SOURCE_MIRROR_URL ?=3D =
"file:///home/evadeflow/projects/poky-mirror/"
>>> INHERIT +=3D "own-mirrors"
>>=20
>> And this is my bblayers.conf:
>>=20
>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>> # changes incompatibly
>>> LCONF_VERSION =3D "4"
>>>=20
>>> BBFILES ?=3D ""
>>> BBLAYERS ?=3D " \
>>>  /home/evadeflow/projects/poky-git/meta \
>>>  /home/evadeflow/projects/poky-git/meta-yocto \
>>>  /home/evadeflow/projects/poky-git/meta-ti \
>>>  "
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


