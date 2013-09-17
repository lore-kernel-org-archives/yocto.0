Return-Path: <giuseppe.bitonti@external.magnetimarelli.com>
Received: from mx2.ex2007.fiatgroup.com (mx1.ex2007.fiatgroup.com
	[129.35.118.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25422E013E5
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 06:19:54 -0700 (PDT)
Received: from cshu06.fgremc.it (151.92.205.127) by mx1.ex2007.fiatgroup.com
	(151.88.80.13) with Microsoft SMTP Server (TLS) id 8.3.279.5;
	Tue, 17 Sep 2013 15:19:53 +0200
Received: from MXCL21.fgremc.it ([151.92.205.90]) by cshu06.fgremc.it
	([151.92.205.127]) with mapi; Tue, 17 Sep 2013 15:19:51 +0200
From: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
To: Apelete Seketeli <apelete@seketeli.net>
Date: Tue, 17 Sep 2013 15:19:51 +0200
Thread-Topic: [yocto]  Kernel debugging over serial console?
Thread-Index: Ac6zp2S9a6Jv1SzpT4e/aPoKHwoCjQAAJJIQ
Message-ID: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9ADD@MXCL21.fgremc.it>
References: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
	<20130917131500.GB20226@amegan>
In-Reply-To: <20130917131500.GB20226@amegan>
Accept-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: it-IT
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel debugging over serial console?
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
X-List-Received-Date: Tue, 17 Sep 2013 13:19:57 -0000
Content-Language: it-IT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Apelete for your help, but the command you suggested returns the fol=
lowing:

root@imx6qsabrelite:~# cat /sys/module/kgdboc/parameters/kgdboc
cat: can't open '/sys/module/kgdboc/parameters/kgdboc': No such file or dir=
ectory

root@imx6qsabrelite:~# echo ttymxc1,115200 > /sys/module/kgdboc/parameters/=
kgdboc
-sh: can't create /sys/module/kgdboc/parameters/kgdboc: nonexistent directo=
ry

What I miss?

Giuseppe


-----Messaggio originale-----
Da: Apelete Seketeli [mailto:apelete@seketeli.net]=20
Inviato: marted=EC 17 settembre 2013 15:15
A: BITONTI Giuseppe (MM)
Cc: yocto@yoctoproject.org
Oggetto: Re: [yocto] Kernel debugging over serial console?

Hello Giuseppe,

On 17-Sep-13, BITONTI Giuseppe (MM) wrote:
> I am trying to debug the kernel through kgdb for an imx6 sabre lite board=
 with the following kernel built from poky 1.4:
>=20
> root@imx6qsabrelite:~# uname -a
> Linux imx6qsabrelite 3.0.35-1.1.0+g2dc5560 #1 SMP PREEMPT Thu Aug 8=20
> 15:15:39 CEST 2013 armv7l GNU/Linux
>=20
> The system boot well but when I try to enter in debugging mode it returns=
:
>=20
> root@imx6qsabrelite:~# echo g > /proc/sysrq-trigger SysRq : HELP :=20
> loglevel(0-9) reBoot Crash terminate-all-tasks(E)=20
> memory-full-oom-kill(F) kill-all-tasks(I) thaw-filesystems(J) saK=20
> show-backtrace-all-active-cpus(L) show-memory-usage(M)=20
> nice-all-RT-tasks(N) powerOff show-registers(P) show-all-timers(Q)=20
> unRaw Sync show-task-states(T) Unmount ETM buffer dump=20
> show-blocked-tasks(W) root@imx6qsabrelite:~#

I didn't dabble with OE or Yocto for a while, but from a pure Linux kernel =
point of view, it seems like something is amiss with your kgdb configuratio=
n.

> I have configured the kernel with the command:
>=20
> bitbake -c menuconfig linux-imx
>=20
> enabling:
>=20
> -*- Magic SysRq key
> [*] Kernel debugging
> [*] Compile the kernel with debug info [*] KGDB: kernel debugger <*>=20
> KGDB: use kgdb over the serial console
>=20
> I have also edited defconfig file in fsl-community-bsp-dylan/sources/meta=
-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6q/ adding:
>=20
> CONFIG_FRAME_POINTER=3Dy
> CONFIG_DEBUG_KERNEL=3Dy
> CONFIG_KGDB=3Dy
> CONFIG_DEBUG_INFO=3Dy
> CONFIG_KGDB_SERIAL_CONSOLE=3Dy
> CONFIG_MAGIC_SYSRQ=3Dy
>=20
> and added kernel parameter to bootargs with:
>=20
> MX6QSABRELITE U-Boot > editenv mmcargs
> edit: setenv bootargs console=3D${console},${baudrate} root=3D${mmcroot}=
=20
> kgdboc=3Dttymxc1,115200 MX6QSABRELITE U-Boot > saveenv Saving=20
> Environment to MMC...
> Writing to MMC(0)... done
> MX6QSABRELITE U-Boot > boot

You kernel configuration looks ok, and the kgdboc parameter passed by u-boo=
t to the kernel seems correct (at least syntactically speaking).
=20
> but it still does not work.

Depending on the serial driver in use in the kernel, it sometimes happens t=
hat kgdboc is not configured despite the kgdboc parameter being passed to t=
he kernel.
To check that kgdboc is configured like you intended, from user-sapce pleas=
e try:

root@imx6qsabrelite:~# cat /sys/module/kgdboc/parameters/kgdboc

Guessing from what you wrote, it should return: ttymxc1,115200 If it doesn'=
t, please try configuring kgdboc from user-space:

root@imx6qsabrelite:~# echo ttymxc1,115200 > /sys/module/kgdboc/parameters/=
kgdboc

And then:

root@imx6qsabrelite:~# echo g > /proc/sysrq-trigger

Should break the kernel and let you connect to kgdb using, for instance, a =
gdb client.

Hope it helps :-).

Cheers.
--=20
        Apelete

