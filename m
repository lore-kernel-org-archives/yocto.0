Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31111E0090E; Mon, 21 Jan 2019 08:25:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8005CE00870;
	Mon, 21 Jan 2019 08:25:00 -0800 (PST)
Received: by mail-qk1-f193.google.com with SMTP id 189so12561648qkj.8;
	Mon, 21 Jan 2019 08:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Za8g14cG9423Ha1t58FaxVcmMCsHAvb86/QigegXwGQ=;
	b=aMyyw6Bkf+d7f4qtMVkUlTx/yVtJAA24LJMh+ng2hGXVe4KjQAqD+yNY3+/pm+vQyM
	a8dP2xRttLwipuJAKEuw0BgL2icJCLWzAaXHN2HCizda3zQYRf9EcnQUBBOJ1tjWhHFu
	IbY1zAHH2VzmP1anCwLzxuKem+VOjX2lXh9SICeaClpTqgimo7RvGrN5Ep7Uc+dP41iu
	cMood2ujSkHBgPNX3BGMtsugZLRtrEsVpZOQ7nf/hT9JIGgigCFEqC/3T9++zhnGnUoF
	6g6NlbAeq2Z8iESMVSS/2uVChU1Bf5hBT2/os0cthRW1tgYaHPLKrzQAocT+SVM/vJ6j
	fNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Za8g14cG9423Ha1t58FaxVcmMCsHAvb86/QigegXwGQ=;
	b=gKJ5LBDamXy3BJVe2nMeJj6rT6NEoSYasWrGEJOnFF2x/yxZ/sEOqKl9faXlICbHIK
	Nk+FE50ayiHsVmET4boybi/xHPcxOFFrSV4+rsF9AVej16D3fG8oQjbrfDoSUdrL+lyP
	xg2SuN3CEgHQisooGH4tsdN0mmbDWzzSkKXtD0aGh9GzFPObX/Bk7SIIVCCL+VWvgFqJ
	TZTl9DnpsWoazStHtmJ0BWtTpkPevszANSTu27ZLfwdC5EvupgFf2tT8zaYgdB4Jrw3O
	Wd4ctqwAlPh+LpUxPM4u8TdPTXJcDEBz2YLWYeYBxhyvOo31nWRCYjFcpwOEQVRtJWJD
	5lTg==
X-Gm-Message-State: AJcUukcjIlPOxmRjO6CqtQR9FJ14oHym/G0qFs9qgnhCI0hsTJ1m8KW1
	IZug+4TVDauX1fDt67lnyMGVqvI8InDqmIlRMKM=
X-Google-Smtp-Source: ALg8bN4cil2rZ9eAb5268yU0jFcLZGxmcqkC3eXCFv/mf4o/R6trRy/kf9EHQi077sVcUoIcmVKVZbhNU0as8J5pHEU=
X-Received: by 2002:a37:4c41:: with SMTP id z62mr24835990qka.206.1548087899623;
	Mon, 21 Jan 2019 08:24:59 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWfH34XxhD1pyXwm8NcR7WvN0fcdHZyAqPTAK=saQdC++w@mail.gmail.com>
In-Reply-To: <CAFsTbWfH34XxhD1pyXwm8NcR7WvN0fcdHZyAqPTAK=saQdC++w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 21 Jan 2019 08:24:33 -0800
Message-ID: <CAMKF1sq1iRkSo6Wg8xm7_zOfU0hrTT4TYZyPDvsQ--fb+weobw@mail.gmail.com>
To: srinivasan <srinivasan.rns@gmail.com>
Cc: angolini@gmail.com, yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org, meta-intel@yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: Build error after changing PACKAGE_CLASSES to package_deb
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
X-List-Received-Date: Mon, 21 Jan 2019 16:25:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

this is the problem

dpkg-deb: error: package name has characters that aren't lowercase
alphanums or '-+.'

its possible that linux-imx is adding some string to PR which is not
honoring this convention usually introduced by setting EXTRAVERSION in
kernel toplevel makefile

On Mon, Jan 21, 2019 at 8:15 AM srinivasan <srinivasan.rns@gmail.com> wrote=
:
>
> Dear Yocto Experts Team,
>
> I am seeing the below error after changing the package_classes from "rpm"=
 to "deb" as below, when I am trying to add freescale meta layers to my cus=
tom yocto distribution
>
> Could you please do the needful by providing some inputs in resolving the=
 below issue?
>
> Logs:
> WARNING: Host distribution "ubuntu-18.04" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Parsing recipes: 100% |##################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:15
> Parsing of 2304 .bb files complete (0 cached, 2304 parsed). 3210 targets,=
 385 skipped, 6 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.38.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "ubuntu-18.04"
> TARGET_SYS           =3D "aarch64-poky-linux"
> MACHINE              =3D "imx8mmevk"
> DISTRO               =3D "NativeOS-TRK"
> DISTRO_VERSION       =3D "1.0.8"
> TUNE_FEATURES        =3D "aarch64"
> TARGET_FPU           =3D ""
> meta-traktor-imx8    =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a=
"
> meta-traktor         =3D "sumo:b91788da6bd52485faa85bb19bc7a9a1ddf2ee5d"
> meta-qt5             =3D "qt-5.11:ff6127ddd318d422f595295d1c189a86b303287=
3"
> meta-nativeos        =3D "sumo:8a14b16e4049051e29009e67afa63bfac5ddb26e"
> meta-freescale       =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a=
"
> meta
> meta-poky            =3D "sumo:623b77885051174d0e05198843e739110977bd18"
> meta-oe
> meta-python
> meta-networking      =3D "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> meta-bsp
> meta-sdk             =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a=
"
>
> Initialising tasks: 100% |###############################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:05
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: linux-imx-4.14.62-r0 do_package_write_deb: Error executing a pytho=
n function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_package_deb(d)
>      0003:
> File: '/home/srinishanmugam/nibuild_test/nativeos/sources/poky/meta/class=
es/package_deb.bbclass', lineno: 102, function: do_package_deb
>      0098:
>      0099:    os.chdir(oldcwd)
>      0100:
>      0101:    if error:
>  *** 0102:        raise error
>      0103:}
>      0104:do_package_deb[vardeps] +=3D "deb_write_pkg"
>      0105:do_package_deb[vardepsexclude] =3D "BB_NUMBER_THREADS"
>      0106:
> Exception: subprocess.CalledProcessError: Command 'PATH=3D"/home/srinisha=
nmugam/nibuild_test/nativeos/build/tmp/sysroots-uninative/x86_64-linux/usr/=
bin:/home/srinishanmugam/nibuild_test/nativeos/sources/poky/scripts:/home/s=
rinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/lin=
ux-imx/4.14.62-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux:/home/sr=
inishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/linu=
x-imx/4.14.62-r0/recipe-sysroot/usr/bin/crossscripts:/home/srinishanmugam/n=
ibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-=
r0/recipe-sysroot-native/usr/sbin:/home/srinishanmugam/nibuild_test/nativeo=
s/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot-n=
ative/usr/bin:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx=
8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot-native/sbin:/home/sri=
nishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/linux=
-imx/4.14.62-r0/recipe-sysroot-native/bin:/home/srinishanmugam/nibuild_test=
/nativeos/sources/poky/bitbake/bin:/home/srinishanmugam/nibuild_test/native=
os/build/tmp/hosttools" dpkg-deb -b /home/srinishanmugam/nibuild_test/nativ=
eos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/packages-split=
/kernel-module-snd-usbmidi-lib-4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4c3287=
 /home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-l=
inux/linux-imx/4.14.62-r0/deploy-debs/imx8mmevk' returned non-zero exit sta=
tus 2.
>
> Subprocess output:
> dpkg-deb: error: package name has characters that aren't lowercase alphan=
ums or '-+.'
>
> ERROR: linux-imx-4.14.62-r0 do_package_write_deb: Function failed: do_pac=
kage_deb
> ERROR: Logfile of failure stored in: /home/srinishanmugam/nibuild_test/na=
tiveos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/temp/log.do=
_package_write_deb.31568
> ERROR: Task (/home/srinishanmugam/nibuild_test/nativeos/sources/meta-fsl-=
bsp-release/imx/meta-bsp/recipes-kernel/linux/linux-imx_4.14.62.bb:do_packa=
ge_write_deb) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3614 tasks of which 3104 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/srinishanmugam/nibuild_test/nativeos/sources/meta-fsl-bsp-release=
/imx/meta-bsp/recipes-kernel/linux/linux-imx_4.14.62.bb:do_package_write_de=
b
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> 2019-01-21 14:29:02,436 - Error during build (Return code 1)
>
> Many Thanks in advance
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

