Return-Path: <f.forstmayr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B72D7E00B6C; Mon, 24 Jun 2019 05:29:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (f.forstmayr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 538F0E00B1A
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 05:29:51 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id m23so12388533lje.12
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 05:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=s3HjLEzClWE+bC+JUFwki9Y3p1eznvl/bpgdpHzgB3Q=;
	b=csOZqfuzQxfnLx5flnpFzy+q1h7H1pr6p0ie26fxkASEz9bulm8zkIB/N3+9W54g8j
	hMkqle9Y/VsyTmy1WPg/eyLfSKdCnMwTPm0S4zaCaPpSuBiWVaS2wgB2RyrpMgoGhny2
	XcI6Z/IHxuK64qCxuYdABz7uTIrTA2vviZcIWr0EpouXRLQM3yqgEynOHNHQcpFBYNFA
	ZRMM73cWhkN+qZrRNUYwwaqywVZt7X6sFXpPaZVhJFDIXc4aL/9kyLLLg1pt9LNR9Ej3
	8JxJVGJUSvFWRa+qYE+IXw/C9WaJU9UrAvsgs6FhmAlKm9OEM6N8Bi0T0CYoreX2pMhn
	Z7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=s3HjLEzClWE+bC+JUFwki9Y3p1eznvl/bpgdpHzgB3Q=;
	b=qCr2qEnxY5zew8ydJw73nwTxiHjSzi9lO3CzTXvZ2jk7wzIZPHHYi3ttVbyTxF1J/O
	JVUF7xiVBve55vF5p7+KqMKFnrKOLC+nQZSZqgtFwqwx3HzPfHYyB5wuC6VnmHjPAgxs
	puetHlQJpx8hi9t4M9Qrs0Gl10yJTp+EuJJdM/Q9Pzl52eYq3KMgKqD0Kz8nvWaf+TdY
	gpUsJzx7p/oVyCnGVUs/aig4MGJ+fMughvc37d3sGKVKknly3VeOYOgyz2ZXqII3KDE+
	L0JqGfYNObfNtMkAMN7AEGk7WRz7Bop0HIu3jXitJzbIVbKf0ROt1XzOI792gK1Spjab
	FkxA==
X-Gm-Message-State: APjAAAXeItY39jRRMB+O4Cnj4TUNeV9rBqxRu9tjScoF/A+TwXRyQQwB
	HwB4UmRHrZ1TieOX54vKcgeZfI/KWcz5+IuRTpnDQ+eB
X-Google-Smtp-Source: APXvYqwCuqppf7OVltWP6R0v7o2FIgBqdEUQWkW+NG35N8kZuxlUDJiClt2OB/Xx+dMpxBV8CWhmVPBg9Vce0tCjRkE=
X-Received: by 2002:a2e:870f:: with SMTP id m15mr34458252lji.223.1561379389886;
	Mon, 24 Jun 2019 05:29:49 -0700 (PDT)
MIME-Version: 1.0
From: Franz Forstmayr <f.forstmayr@gmail.com>
Date: Mon, 24 Jun 2019 14:27:05 +0200
Message-ID: <CAGKTrWKHrkNbKLhF22XEjQ+-a9ygjJGdiSB=DaVPJgJr0xRbRg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using AUTOREV in PV triggers FetchError
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
X-List-Received-Date: Mon, 24 Jun 2019 12:29:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

i was using some simple recipes for kernel modules since rocko branch
successfully with AUTOREV and a release branch in my local gitlab
instance (over ssh). I was upgrading to thud these days, and now I'm
triggering some FetchErrors in recipes which are using AUTOREV.
My recipe looks like this:

inherit module

SRC_URI =3D "git://gitlab@gitlab.....:protocol=3Dssh"

SRCREV =3D "${AUTOREV}"
PV =3D "1.0+git${SRCPV}"

S =3D "${WORKDIR}/git"

Is there something wrong with this?
Is there a better way than getting the last revision of my release branch?
Sometimes I get this error:

> WARNING: .../recipes-kernel/dma-proxy/dma-proxy_git.bb: Exception during =
build_dependencies for WORKDIR           | ETA:  --:--:--
> WARNING: .../recipes-kernel/dma-proxy/dma-proxy_git.bb: Error during fina=
lise of .../recipes-kernel/dma-proxy/dma-proxy_git.bb
> ERROR: ExpansionError during parsing .../recipes-kernel/dma-proxy/dma-pro=
xy_git.bb                                 | ETA:  0:00:43
> Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fet=
cher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export PATH=3D"/home/ecs/W=
orkspaces/yocto/projects/basic_zcu111/tmp/sysroots-uninative/x86_64-linux/u=
sr/bin:/home/ecs/Workspaces/yocto/projects/basic_zcu111/layers/openembedded=
-core/scripts:/home/ecs/Workspaces/yocto/projects/basic_zcu111/tmp/work/ro_=
zcu111_usbm2-poky-linux/dma-proxy/fetcheravoidrecurse-fetcheravoidrecurse/r=
ecipe-sysroot-native/usr/bin/aarch64-poky-linux:/home/ecs/Workspaces/yocto/=
projects/basic_zcu111/tmp/work/ro_zcu111_usbm2-poky-linux/dma-proxy/fetcher=
avoidrecurse-fetcheravoidrecurse/recipe-sysroot/usr/bin/crossscripts:/home/=
ecs/Workspaces/yocto/projects/basic_zcu111/tmp/work/ro_zcu111_usbm2-poky-li=
nux/dma-proxy/fetcheravoidrecurse-fetcheravoidrecurse/recipe-sysroot-native=
/usr/sbin:/home/ecs/Workspaces/yocto/projects/basic_zcu111/tmp/work/ro_zcu1=
11_usbm2-poky-linux/dma-proxy/fetcheravoidrecurse-fetcheravoidrecurse/recip=
e-sysroot-native/usr/bin:/home/ecs/Workspaces/yocto/projects/basic_zcu111/t=
mp/work/ro_zcu111_usbm2-poky-linux/dma-proxy/fetcheravoidrecurse-fetcheravo=
idrecurse/recipe-sysroot-native/sbin:/home/ecs/Workspaces/yocto/projects/ba=
sic_zcu111/tmp/work/ro_zcu111_usbm2-poky-linux/dma-proxy/fetcheravoidrecurs=
e-fetcheravoidrecurse/recipe-sysroot-native/bin:/home/ecs/Workspaces/yocto/=
projects/basic_zcu111/tmp/sysroots-xsct/Scout/2019.1/bin:/home/ecs/Workspac=
es/yocto/projects/basic_zcu111/tmp/sysroots-xsct/Scout/2019.1/gnu/microblaz=
e/lin/bin:/home/ecs/Workspaces/yocto/projects/basic_zcu111/tmp/sysroots-xsc=
t/Scout/2019.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/home/ecs/Workspaces/y=
octo/projects/basic_zcu111/tmp/sysroots-xsct/Scout/2019.1/gnu/armr5/lin/gcc=
-arm-none-eabi/bin:/home/ecs/Workspaces/yocto/projects/basic_zcu111/tmp/sys=
roots-xsct/Scout/2019.1/gnu/aarch64/lin/aarch64-none/bin:/home/ecs/Workspac=
es/yocto/projects/basic_zcu111/layers/poky/bitbake/bin:/home/ecs/Workspaces=
/yocto/projects/basic_zcu111/tmp/hosttools"; export HOME=3D"/home/ecs"; git=
 -c core.fsyncobjectfiles=3D0 ls-remote ssh://gitlab@blabla/Research_and_De=
velopment/RD_ECS/Drivers/dma-proxy.git  failed with exit code 128, output:
> ssh_exchange_identification: Connection closed by remote host
> fatal: Could not read from remote repository.

> Please make sure you have the correct access rights
> and the repository exists.

> Summary: There were 2 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.



Regards Franz

