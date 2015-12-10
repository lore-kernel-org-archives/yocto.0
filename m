Return-Path: <prvs=078641fa47=valentin.longchamp@keymile.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED84E00B8B; Thu, 10 Dec 2015 01:46:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.8.104.250 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-de.keymile.com (mail-de.keymile.com [195.8.104.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A73E8E0033E
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 01:46:51 -0800 (PST)
Received: from frodo.de.keymile.net ([10.9.1.54]:49087
	helo=mailrelay.de.keymile.net)
	by mail-de.keymile.com with esmtp (Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Valentin.Longchamp@keymile.com>)
	id 1a6xoF-0000up-2Z; Thu, 10 Dec 2015 10:46:47 +0100
Received: from SRVDEHAN1MX1.keymile.net (srvdehan1mx1.keymile.net [10.9.1.150])
	by mailrelay.de.keymile.net (8.12.2/8.12.2) with ESMTP id
	tBA9kkfn020614; Thu, 10 Dec 2015 10:46:46 +0100 (MET)
Received: from SRVDEHAN1MX1.keymile.net ([10.9.1.150]) by
	SRVDEHAN1MX1.keymile.net ([10.9.1.150]) with mapi;
	Thu, 10 Dec 2015 10:46:46 +0100
From: "Longchamp, Valentin" <Valentin.Longchamp@keymile.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 10 Dec 2015 10:46:46 +0100
Thread-Topic: Custom kernel headers and SDK
Thread-Index: AdEx/EzwJo9Sd0CySEW/KyYepjwXbQAovKkQACNuQSQ=
Message-ID: <B7AC17D946CFB9489B0C4EEDFEE0C8EC1355B4D2A7@SRVDEHAN1MX1.keymile.net>
References: <688824bb-bfed-4888-8e46-a64338f1db97@keymile.com>,
	<30C2D590D16A5C46ADFE65219103779853A94D6C@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853A94D6C@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-DE
MIME-Version: 1.0
Cc: "Brunck, Holger" <Holger.Brunck@keymile.com>
Subject: Re: Custom kernel headers and SDK
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
X-List-Received-Date: Thu, 10 Dec 2015 09:46:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thanks a lot for the suggestion. I had in the meantime come to a simliar so=
lution: define a linux-XXX-headers recipe in our own meta layer where I ins=
tall the missing kernel headers and then I add this linux-XXX-headers-dev p=
ackage to our SDK's sysroot thanks to TARGET_TOOLCHAIN_TASK.
Your implementation looks fine and I am going to pick some ideas from it.

However, I have stumbled upon another problem with this approach: it works =
well if you add new files to the kernel headers. We unforntunately have at =
least one uapi file (i2c.h to name it) that is present in the standard kern=
el headers where we have our own version with some additions/extensions. If=
 I install our version from ou linux-XXX-headers recipe, bitbake (correctly=
) complains that this file is provided by 2 packages (linux-libc-headers an=
d linux-XXX-headers). And here I really don't know how to solve this issue.=
 Any ideas/suggestions ?

Thanks

Valentin
________________________________________
From: Vuille, Martin (Martin) [vmartin@avaya.com]
Sent: Wednesday, December 09, 2015 5:40 PM
To: Longchamp, Valentin; yocto@yoctoproject.org
Cc: Brunck, Holger
Subject: RE: Custom kernel headers and SDK

Hi Valentin,

Not sure whether this the =93canonical=94 Yocto way, but here=92s how we so=
lved
the same issue.

First, let me say that we use a BSP from our technology partner, and have
our own meta-XXX layer for customization.


-          Created a .bbappend in our layer for the kernel recipe

-          In the .bbappend

o   add a do_install_append task that creates directory ${D}${includedir}/X=
XX
and installs the required headers from kernel source into that
directory

o   add a new package: PACKAGES +=3D =93 XXX-kernel-headers=94

o   specify the files for that package: FILES_XXX-kernel-headers =3D =93${i=
ncludedir}/XXX/*=94

-          In the recipe for the SDK, include the package XXX-kernel-header=
s

MV

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Longchamp, Valentin
Sent: December 08, 2015 4:06 PM
To: yocto@yoctoproject.org
Cc: Brunck, Holger
Subject: [yocto] Custom kernel headers and SDK


Hello,

We are currently migrating our Embedded Linux software and the correspondin=
g
small in house distribution to Yocto. We are small Linux team and we provid=
e and
maintain the toolchain, kernel and base distribution for a broader team of
software developers that build the applications for our hardware.

So far, we have been able to use Yocto to build our whole software (kernel,
minimal distribution and application software) by adding our minimal meta-l=
ayer
and defining stuff there and it works great.

Since the application devs are "not interested" in our distro nor in the
compiler, we want to make them available for them thanks to the SDK which i=
s a
great fit for this use case. So far it works very well and we are currently
working on adapting the build system to the SDK.

And here comes my question. We have however our own kernel sources that ext=
end
the headers for a few "in-house" drivers. From the warning in linux-libc-he=
aders
(http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/li=
nux-libc-headers/linux-libc-headers.inc<https://urldefense.proofpoint.com/v=
2/url?u=3Dhttp-3A__git.yoctoproject.org_cgit_cgit.cgi_poky_tree_meta_recipe=
s-2Dkernel_linux-2Dlibc-2Dheaders_linux-2Dlibc-2Dheaders.inc&d=3DBQQGaQ&c=
=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=
=3DaecjOhK90BxgIsO0Z0SxTTAYA24E0E2rNHYdLiaPdEM&s=3DNsNJ4rNpfxO5fD-mwfYiZL8m=
1FwdIcozCxbta8sS7lA&e=3D>),
I understand that it should be avoided to recreate a recipe for the kernel
headers to avoid having the libc "machinified". From yocto, I could get the
custom headers thanks to STAGING_KERNEL_DIR. However, we need these custom
headers from "outside" of yocto, when using the SDK.

I have found 2 ways to install them into the sysroot and thus SDK:
- either by adding the kernel-devsrc to the SDK that installs them into
/usr/src/kernel by default.
- or by adding something similar to what is proposed in this mailing-list
discussion to our kernel recipe:
https://lists.yoctoproject.org/pipermail/linux-yocto/2014-April/002178.html=
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.=
org_pipermail_linux-2Dyocto_2014-2DApril_002178.html&d=3DBQQGaQ&c=3DBFpWQw8=
bsuKpl1SgiZH64Q&r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=3DaecjOhK=
90BxgIsO0Z0SxTTAYA24E0E2rNHYdLiaPdEM&s=3DutjVbEgHLBYm4zWbGYyBQ0jFBfRz43KePu=
rEZ1meevs&e=3D>

The problem with these 2 solutions is that sysroot contains:
1) the sanitized kernel headers at in sysroot/usr/include/linux
2) our custom headers at sysroot/usr/src/kernel/include/linux

and when I add a -I option in the CFLAGS for 2), I get conflicts since the =
SDK
automatically looks first in sysroot/usr/include.

Here is an example of the current errors I get with 1) and 2) in both the -=
I path:

>                  from plat/icndrv/hdlc/mpc8xxx_scc/src/libhdlc-km.c:2:
> /opt/work/ppc-toolchain/sysroots/powerpc-oe-linux/usr/src/kernel/include/=
linux/types.h:14:26: error: conflicting types for 'fd_set'
>  typedef __kernel_fd_set  fd_set;
>                           ^
> In file included from /opt/work/ppc-toolchain/sysroots/powerpc-oe-linux/u=
sr/include/sys/types.h:219:0,
>                  from /opt/work/ppc-toolchain/sysroots/powerpc-oe-linux/u=
sr/include/sys/uio.h:23,
>                  from /opt/work/ppc-toolchain/sysroots/powerpc-oe-linux/u=
sr/include/sys/socket.h:26,
>                  from plat/icndrv/hdlc/mpc8xxx_scc/src/libhdlc-km.c:1:
> /opt/work/ppc-toolchain/sysroots/powerpc-oe-linux/usr/include/sys/select.=
h:75:5: note: previous declaration of 'fd_set' was here
>    } fd_set;

What would be the correct "yocto" way of solving our current problem with o=
ur
custom headers to be added to the SDK ?

Thanks

Valentin


