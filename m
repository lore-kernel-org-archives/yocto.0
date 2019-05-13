Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B158CE00D11; Mon, 13 May 2019 08:33:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MANY_SPAN_IN_TEXT, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68F6E00754
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:33:03 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id k24so10254973qtq.7
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=10xPoBmxZ0k0aJdOJKW5gZGAm1/+t2+KB7WHY8FfWqs=;
	b=tUV/cbOuQ+ebuGlmKoAo0l5nAEHayEFG3fgTJRvL3dKZDEFdrQ1aHM22FKRpKy+/Bo
	oxHDOobjkra6Q+AVvY7n0Ugv8o8eeq+Sok2NVZSnkEMhm1+IMdoK9SqZjCwmxM5dmnQN
	7x5iQ204XeJfsGgVjzHxO74G+0JGkcmm79/U3UT9zgsojdHwJow20J9e1m5TCCMzac0d
	eWYfniZ6WnUQ3Ara+b2gcTioFNY1UwiUbHQ9jVdDDveR7QGBJKO7MP/H5206q91ZMdbC
	rXTZjI7esV6tu53tHAPt/lo0EfN9cfAixD6o/PA4khNdYiHVVphj9vINreRFJCyOFuBx
	OP0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=10xPoBmxZ0k0aJdOJKW5gZGAm1/+t2+KB7WHY8FfWqs=;
	b=aOQhQe9mC2RLsUE4W5UUUy3cJGIPVpCv/IVCR2JiVfmSX8hjVtVPTwhpQ4dRSKm5jc
	kSB2zQbfXsW4/kkdgwtHtgNIx/OItlmHc6f4axgfDs/FYtX55TAc4HHqe81cGoGax3//
	WwD4DecH93X0GNaKJ9GtqLI0eUs2AAPuar7fXZIMbC9UvM+DjeEKGL06hCvW0h9/LfDg
	75m4vuqFbTm2Y5fScCtMr8bhxa9T8GICwjKi744bw44zHUq/30m3Ar01wzqfeJYUH+ms
	6u+gyId6aC8fMe/touZ8M+oEsVHPAml+XRcswtQirSLEkPDPN5hdeavsA/NPyH7GWnaW
	MKkA==
X-Gm-Message-State: APjAAAVop9Hp5NO45LtzFWqXDIJd+FIY0fDL44T7vZK5wtx3T+DKtbcg
	pME8GQHBruca1XibXhhNnmobgIuKfEj0MrGOHe+WXYl/
X-Google-Smtp-Source: APXvYqwrJy9HImlnmTTBWHCe4W68QwHc/GvarAouxwb18oTAtAKS+ED1+Mqn45idu22xF2tkBRXuiOuvAzTbceRcTk0=
X-Received: by 2002:ac8:265b:: with SMTP id v27mr11376855qtv.29.1557761582857; 
	Mon, 13 May 2019 08:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0@DM6PR19MB2796.namprd19.prod.outlook.com>
	<CAMKF1sqAWp+r8LsN7ODAT0WgpodVpvu9+NfAr-qJOG7Q7h_5JA@mail.gmail.com>
	<DM6PR19MB279683E9E62AA2388D9D41ABF70F0@DM6PR19MB2796.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB279683E9E62AA2388D9D41ABF70F0@DM6PR19MB2796.namprd19.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 May 2019 08:32:51 -0700
Message-ID: <CAMKF1srHj4azS7cQ_2TATKtWXkWDi8s=s46r+MSzXTNOWtCETA@mail.gmail.com>
To: Edson Seabra <Edson.Seabra@zpesystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error on dockerode using YP-Core warrior 2.7
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
X-List-Received-Date: Mon, 13 May 2019 15:33:05 -0000
X-Groupsio-MsgNum: 45152
Content-Type: multipart/related; boundary="000000000000cb22a20588c6a1bd"

--000000000000cb22a20588c6a1bd
Content-Type: multipart/alternative; boundary="000000000000cb22a10588c6a1bc"

--000000000000cb22a10588c6a1bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2019 at 7:19 AM Edson Seabra <Edson.Seabra@zpesystems.com>
wrote:

> Hi,
>
>
> Thanks Khem Raj.
>
>
> As this package name is generate internally by poky/yocto I did this patc=
h
> to make it build:
>
>
> *edson@ubuntu-16*:*oe*$ git diff package.py
>
> *diff --git a/meta/lib/oe/package.py b/meta/lib/oe/package.py*
>
> *index 6e83f01f14..3503313621 100644*
>
> *--- a/meta/lib/oe/package.py*
>
> *+++ b/meta/lib/oe/package.py*
>
> @@ -298,7 +298,7 @@ def npm_split_package_dirs(pkgdir):
>
>                  for pathitem in relpth.split('/'):
>
>                      if pathitem =3D=3D 'node_modules':
>
>                          continue
>
> -                    pkgitems.append(pathitem)
>
> +                    pkgitems.append(pathitem.lower())
>
>                  pkgname =3D '-'.join(pkgitems).replace('_', '-')
>
>                  pkgname =3D pkgname.replace('@', '')
>
>                  pkgfile =3D os.path.join(root, dn, 'package.json')
>
>
> I do not feel confident to submit it. I would suggest a poky/yocto
> maintainer to step in.
>

Just change the concerned recipe name this patch is a bit too much

>
> Regards,
> Edson.
>
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Sunday, May 12, 2019 4:50 AM
> *To:* Edson Seabra
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Build error on dockerode using YP-Core warrior 2.7
>
> Use all lowercase in recipe name you seem to have mixed it with uppercase
>
> On Sat, May 11, 2019 at 5:58 PM Edson Seabra <Edson.Seabra@zpesystems.com=
>
> wrote:
>
> Hi,
>
>
> I created the recipe for dockerode 2.5.8 using the command recipetool:
>
>
> recipetool create "npm://registry.npmjs.org;name=3Ddockerode;version=3D2.=
5.8"
>
>
> The recipe creates a lot of ipk's package and fails on dockerode-JSONStre=
am
> ipk.
>
>
> I can build dokerode with YP-Coce morty, almost sure I did with YP-Core
> thud.
>
>
> Any hint about how to find what  is this issue will be appreciated.
>
>
> NOTE. Other recipes, using npm.bbclass, build normally.
>
>
> If any additional information is needed just let me know...
>
>
> =3D=3D=3D=3D here is the output of bitbake dockerode =3D=3D=3D=3D=3D=3D
>
> Build Configuration:
>
> BB_VERSION           =3D "1.42.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> MACHINE              =3D "genericx86-64"
>
> DISTRO               =3D "node-poky"
>
> DISTRO_VERSION       =3D "2.7"
>
> TUNE_FEATURES        =3D "m64 core2"
>
> TARGET_FPU           =3D ""
>
> IMAGE_LINGUAS        =3D "en-us en-gb"
>
> MACHINE_FEATURES     =3D "screen keyboard pci usbhost ext4 x86 acpi pcbio=
s
> rtc"
>
> IMAGE_FSTYPES        =3D "hddimg"
>
> DISTRO_FEATURES      =3D "argp pam largefile xattr nfs pci x11 ipv4 ipv6
> libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets
> libc-charsets libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fc=
vt
> libc-fmtmsg libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-an=
l
> libc-libm libc-locales libc-locale-code libc-memusage libc-nis
> libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunr=
pc
> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regex=
p
> libc-posix-regexp-glibc libc-posix-wchar-io multiarch sysvinit opengl
> pulseaudio wifi virtualization"
>
> IMAGE_FEATURES       =3D "package-management read-only-rootfs tools-debug=
"
>
> meta-nodegrid
>
> meta-kernel          =3D "trunk:11630-11620"
>
> meta-zpe             =3D "trunk:11630-11629"
>
> meta-oe              =3D "trunk:11630-11620"
>
> meta-graphics        =3D "trunk:11630-11172"
>
> meta-networking      =3D "trunk:11630-11560"
>
> meta-python          =3D "trunk:11630-11620"
>
> meta-selinux         =3D "master:b1dac7e2b26f869c991c6492aa7fa18eaa4b47f6=
"
>
> meta-virtualization  =3D "trunk:11630-11620"
>
> meta-tpm2            =3D "trunk:11630-11090"
>
> meta-java            =3D "master:2fc78571483465ca2fc69d6bd77632acd35e0770=
"
>
> meta
>
> meta-poky
>
> meta-yocto-bsp       =3D "warrior:1b425a8450872f915c30bd0a35b0b0df92172b7=
0"
>
>
> Initialising tasks: 100%
> |############################################################| Time: 0:00=
:02
>
> Sstate summary: Wanted 33 Found 27 Missed 6 Current 365 (81% match, 98%
> complete)
>
> *NOTE*: Executing SetScene Tasks
>
> *NOTE*: Executing RunQueue Tasks
>
> *WARNING*: dockerode-2.5.8-r0 do_populate_lic: dockerode: No generic
> license file exists for: Unknown in any provider
>
> *ERROR*: dockerode-2.5.8-r0 do_package_write_ipk: Fatal errors occurred
> in subprocesses:
>
> Command
> 'PATH=3D"/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linu=
x/usr/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/t=
mp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bi=
n/x86_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-li=
nux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-t=
runk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroo=
t-native/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linu=
x/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-trunk/nod=
egrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native=
/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/=
2.5.8-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/bin:/h=
ome/edson/ng-trunk/nodegrid/tmp/hosttools"
> opkg-build -Z xz -a "--memlimit=3D50% --threads=3D4" dockerode-JSONStream
> /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.=
8-r0/deploy-ipks/core2-64'
> returned non-zero exit status 1.: Traceback (most recent call last):
>
>   File "/home/edson/ng-trunk/poky/meta/lib/oe/utils.py", line 272, in run
>
>     ret =3D self._target(*self._args, **self._kwargs)
>
>   File "/home/edson/ng-trunk/poky/meta/classes/package_ipk.bbclass", line
> 230, in ipk_write_pkg
>
>     shell=3DTrue)
>
>   File
> "/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subprocess=
.py",
> line 395, in check_output
>
>     **kwargs).stdout
>
>   File
> "/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subprocess=
.py",
> line 487, in run
>
>     output=3Dstdout, stderr=3Dstderr)
>
> subprocess.CalledProcessError: Command
> 'PATH=3D"/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linu=
x/usr/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/t=
mp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bi=
n/x86_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-li=
nux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-t=
runk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroo=
t-native/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linu=
x/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-trunk/nod=
egrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native=
/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/=
2.5.8-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/bin:/h=
ome/edson/ng-trunk/nodegrid/tmp/hosttools"
> opkg-build -Z xz -a "--memlimit=3D50% --threads=3D4" dockerode-JSONStream
> /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.=
8-r0/deploy-ipks/core2-64'
> returned non-zero exit status 1.
>
>
>
> *ERROR*: dockerode-2.5.8-r0 do_package_write_ipk:
>
> *ERROR*: dockerode-2.5.8-r0 do_package_write_ipk: Function failed:
> do_package_ipk
>
> *ERROR*: Logfile of failure stored in:
> /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.=
8-r0/temp/log.do_package_write_ipk.4213
>
> *ERROR*: Task
> (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/dockerode/dockero=
de_2.5.8.bb:do_package_write_ipk)
> failed with exit code '1'
>
> *NOTE*: Tasks Summary: Attempted 1357 tasks of which 1344 didn't need to
> be rerun and 1 failed.
>
> =3D=3D=3D=3D=3D=3D=3D=3D IPK's generated until the error =3D=3D=3D=3D=3D=
=3D=3D
>
> cd tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/packages-split/
>
> *edson@ubuntu-16*:*packages-split*$ ls
>
> *dockerode*                       *dockerode-docker-modem-readable-stream=
*
>   *dockerode-readable-stream*
>
> *dockerode-bl*                    *dockerode-docker-modem-string-decoder*
>   *dockerode-safe-buffer*
>
> *dockerode-buffer-alloc*          *dockerode-end-of-stream*
>   *dockerode-split-ca*
>
> *dockerode-buffer-alloc-unsafe*   *dockerode-fs-constants*
>   *dockerode-src*
>
> *dockerode-buffer-fill*           *dockerode-inherits*
>   *dockerode-staticdev*
>
> *dockerode-buffer-from*           *dockerode-isarray*
>   *dockerode-string-decoder*
>
> *dockerode-chownr*                *dockerode-jsonparse*
>   *dockerode-tar-fs*
>
> *dockerode-concat-stream*         *dockerode-JSONStream*
>   *dockerode-tar-stream*
>
> *dockerode-core-util-is*          *dockerode-locale*
>   *dockerode-through*
>
> *dockerode-dbg*                   *dockerode-minimist*
>   *dockerode-to-buffer*
>
> *dockerode-debug*                 *dockerode-mkdirp*
>   *dockerode-typedarray*
>
> *dockerode-dev*                   *dockerode-ms*
>   *dockerode-util-deprecate*
>
> *dockerode-doc*                   *dockerode-once*
>   *dockerode-wrappy*
>
> *dockerode-docker-modem*          *dockerode-process-nextick-args*
>   *dockerode-xtend*
>
> *dockerode-docker-modem-isarray*  *dockerode-pump*
>
> *edson@ubuntu-16*:*packages-split*$
>
> NOTE. building dockerode with morty only one ipk is generated:
>
> edson@NodeGrid-CustomKit-SDK:nodegrid$ ls
> tmp/deploy/ipk/core2-64/dockerode*.ipk
>
> tmp/deploy/ipk/core2-64/dockerode_2.4.3-r0_core2-64.ipk
>
> tmp/deploy/ipk/core2-64/dockerode-dbg_2.4.3-r0_core2-64.ipk
>
> tmp/deploy/ipk/core2-64/dockerode-dev_2.4.3-r0_core2-64.ipk
>
> Thanks in advance.
>
>
> Edson Seabra
>
> Principal Engineer
>
> M +1 510 579 0843
> *E   *edson.seabra@zpesystems.com <alvin.chan@zpesystems.com>
>
> [image:
> 1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4=
c90-8c28-e559c26bc7d1.png]
> 46757 Fremont Blvd., Fremont, CA 94538
> <https://maps.google.com/?q=3D46757+Fremont+Blvd.,+Fremont,+CA+94538&entr=
y=3Dgmail&source=3Dg>
> *zpesystems.com* <https://www.zpesystems.com/>* | **Request a Nodegrid
> Demo <https://www.zpesystems.com/demo/>*
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000cb22a10588c6a1bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, May 13, 2019 at 7:19 AM Edson Seabra &lt;<a href=3D=
"mailto:Edson.Seabra@zpesystems.com">Edson.Seabra@zpesystems.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_7217947524574696501divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks Khem Raj.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">As this package=C2=A0name is gene=
rate internally by poky/yocto I did this patch to make it build:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures;color:rgb(47,180,29)"><b>edson@ubun=
tu-16</b></span><span style=3D"font-variant-ligatures:no-common-ligatures">=
:</span><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb=
(64,11,217)"><b>oe</b></span><span style=3D"font-variant-ligatures:no-commo=
n-ligatures">$
 git diff package.py</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><b>diff --git a/meta/lib/oe/packag=
e.py b/meta/lib/oe/package.py</b></span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><b>index 6e83f01f14..3503313621 10=
0644</b></span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><b>--- a/meta/lib/oe/package.py</b=
></span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><b>+++ b/meta/lib/oe/package.py</b=
></span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures;color:rgb(46,174,187)">@@ -298,7 +2=
98,7 @@</span><span style=3D"font-variant-ligatures:no-common-ligatures"> d=
ef npm_split_package_dirs(pkgdir):</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
</span>for pathitem in relpth.split(&#39;/&#39;):</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
</span>if pathitem =3D=3D &#39;node_modules&#39;:</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span>continue</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(180,36,25)"><span style=3D=
"font-variant-ligatures:no-common-ligatures">-<span class=3D"m_721794752457=
4696501Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</span>pkgitems.append(pathitem)</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(47,180,29)"><span style=3D=
"font-variant-ligatures:no-common-ligatures">+<span class=3D"m_721794752457=
4696501Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</span>pkgitems.append(pathitem.lower())</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
</span>pkgname =3D &#39;-&#39;.join(pkgitems).replace(&#39;_&#39;, &#39;-&#=
39;)</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
</span>pkgname =3D pkgname.replace(&#39;@&#39;, &#39;&#39;)</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><span class=3D"m_72179475245746965=
01Apple-converted-space">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
</span>pkgfile =3D os.path.join(root, dn, &#39;package.json&#39;)</span></p=
>
=C2=A0
<p></p>
I do not feel confident to submit it. I would suggest a poky/yocto maintain=
er to=C2=A0step in.</div></div></blockquote><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Just change the concerned recipe name this patch is a bit to=
o much=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div id=
=3D"m_7217947524574696501divtagdefaultwrapper" style=3D"font-size:12pt;colo=
r:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<div><br>
</div>
<div>Regards,</div>
<div>Edson.<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_7217947524574696501divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, May 12, 2019 4:50 AM<br>
<b>To:</b> Edson Seabra<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Build error on dockerode using YP-Core warrior =
2.7</font>
<div>=C2=A0</div>
</div></div></div></div></div><div dir=3D"ltr"><div id=3D"m_721794752457469=
6501divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-family=
:Calibri,Helvetica,sans-serif" dir=3D"ltr"><div><div style=3D"color:rgb(0,0=
,0)">
<div>
<div>
<div dir=3D"auto">Use all lowercase in recipe name you seem to have mixed i=
t with uppercase=C2=A0</div>
</div>
<div><br>
<div class=3D"m_7217947524574696501x_gmail_quote">
<div dir=3D"ltr" class=3D"m_7217947524574696501x_gmail_attr">On Sat, May 11=
, 2019 at 5:58 PM Edson Seabra &lt;<a href=3D"mailto:Edson.Seabra@zpesystem=
s.com" id=3D"m_7217947524574696501LPlnk686481" class=3D"m_72179475245746965=
01OWAAutoLink" target=3D"_blank">Edson.Seabra@zpesystems.com</a>&gt; wrote:=
<br>
</div>
<blockquote class=3D"m_7217947524574696501x_gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,=
Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;And=
roid Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-family:Calibri,Helvetica,sans-serif,Hel=
vetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,N=
otoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSy=
mbols;font-size:12pt">
<p>Hi,</p>
<p><br>
</p>
<p>I created the recipe for dockerode 2.5.8 using the command recipetool:</=
p>
<p><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">recipetool creat=
e &quot;npm://<a href=3D"http://registry.npmjs.org" id=3D"m_721794752457469=
6501LPlnk379809" class=3D"m_7217947524574696501OWAAutoLink" target=3D"_blan=
k">registry.npmjs.org</a>;name=3Ddockerode;version=3D2.5.8&quot;</span></p>
<p></p>
<p><br>
</p>
<p>The recipe creates a lot of ipk&#39;s package and=C2=A0<span style=3D"fo=
nt-size:12pt;font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont">fail=
s on=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures;=
font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt">do=
ckerode-JSONStream
 ipk.</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt">I can build doke=
rode with YP-Coce=C2=A0morty, almost sure I did with YP-Core thud.</span></=
p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt">Any hint about=
=C2=A0how to find what=C2=A0 is=C2=A0this issue will be appreciated.</span>=
</p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:Ca=
libri,Helvetica,sans-serif,serif,EmojiFont;font-size:12pt">NOTE.=C2=A0Other=
 recipes, using npm.bbclass,=C2=A0build normally.=C2=A0</span></p>
<p><br>
</p>
<p>If any additional information is needed just let me know...</p>
<p><br>
</p>
<p>=3D=3D=3D=3D=C2=A0here is the output of bitbake dockerode =3D=3D=3D=3D=
=3D=3D=C2=A0</p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Build Configurat=
ion:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">BB_VERSION=C2=A0=
<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-co=
nverted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;1.4=
2.0&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">BUILD_SYS<span c=
lass=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted=
-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;x86=
_64-linux&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">NATIVELSBSTRING<=
span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;universal&quot;</s=
pan></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TARGET_SYS=C2=A0=
<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-co=
nverted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;x86=
_64-poky-linux&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">MACHINE<span cla=
ss=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-s=
pace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quo=
t;genericx86-64&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO=C2=A0<spa=
n class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conver=
ted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D=
 &quot;node-poky&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO_VERSION=
=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;2.7&quot;</=
span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TUNE_FEATURES<sp=
an class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;m64 core2&quo=
t;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TARGET_FPU=C2=A0=
<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-co=
nverted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;&qu=
ot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_LINGUAS<sp=
an class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;en-us en-gb&q=
uot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">MACHINE_FEATURES=
=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">=C2=A0 =C2=A0=C2=A0</span>=3D &quot;screen keyboard pc=
i usbhost ext4 x86 acpi pcbios rtc&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_FSTYPES<sp=
an class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;hddimg&quot;<=
/span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO_FEATURES<=
span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;argp pam largefile=
 xattr nfs pci x11 ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-c=
xx-tests
 libc-catgets libc-charsets libc-crypt libc-crypt-ufc libc-db-aliases libc-=
envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse libc-getlogin libc-idn=
 libc-inet-anl libc-libm libc-locales libc-locale-code libc-memusage libc-n=
is libc-nsswitch libc-rcmd libc-rtld-debug
 libc-spawn libc-streams libc-sunrpc libc-utmp libc-utmpx libc-wordexp libc=
-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc libc-posix-wch=
ar-io multiarch sysvinit opengl pulseaudio wifi virtualization&quot;</span>=
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_FEATURES=
=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;package-man=
agement read-only-rootfs tools-debug&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-nodegrid=C2=
=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple=
-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-kernel<span=
 class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-convert=
ed-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;trunk:11=
630-11620&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-zpe=C2=A0<s=
pan class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conv=
erted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quo=
t;trunk:11630-11629&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-oe<span cla=
ss=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-s=
pace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quo=
t;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-graphics<sp=
an class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;trunk:11630-1=
1172&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-networking<=
span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;trunk:11630-11560&=
quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-python<span=
 class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-convert=
ed-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;trunk:11=
630-11620&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-selinux=C2=
=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple=
-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;master:=
b1dac7e2b26f869c991c6492aa7fa18eaa4b47f6&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-virtualizat=
ion<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple=
-converted-space">=C2=A0=C2=A0</span>=3D &quot;trunk:11630-11620&quot;</spa=
n></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-tpm2<span c=
lass=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted=
-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;tru=
nk:11630-11090&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-java<span c=
lass=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted=
-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;mas=
ter:2fc78571483465ca2fc69d6bd77632acd35e0770&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta<span class=
=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></=
span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-poky=C2=A0<=
span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-yocto-bsp=
=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>=3D &quot;warrior:1b4=
25a8450872f915c30bd0a35b0b0df92172b70&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Initialising tas=
ks: 100% |############################################################| Tim=
e: 0:00:02</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Sstate summary: =
Wanted 33 Found 27 Missed 6 Current 365 (81% match, 98% complete)</span></p=
>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Exe=
cuting SetScene Tasks</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Exe=
cuting RunQueue Tasks</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(159,160,28)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>WARNING</b></=
span><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,=
0,0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatur=
es">dockerode-2.5.8-r0 do_populate_lic: dockerode:
 No generic license file exists for: Unknown in any provider</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures=
">dockerode-2.5.8-r0 do_package_write_ipk:
 Fatal errors occurred in subprocesses:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures">Command &#39;PAT=
H=3D&quot;/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linux=
/usr/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/tm=
p/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin=
/x86_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-lin=
ux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-tr=
unk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot=
-native/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux=
/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-trunk/node=
grid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/=
sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2=
.5.8-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/bin:/ho=
me/edson/ng-trunk/nodegrid/tmp/hosttools&quot;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64&#39; returned non-zero exit status 1.: Tr=
aceback (most recent call last):</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0=C2=A0</span>File &quot;/home/edson/ng-trunk/poky/meta/lib/oe/utils.p=
y&quot;, line 272, in run</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0 =C2=A0=C2=A0</span>ret =3D self._target(*self._args, **self._kwargs)=
</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0=C2=A0</span>File &quot;/home/edson/ng-trunk/poky/meta/classes/packag=
e_ipk.bbclass&quot;, line 230, in ipk_write_pkg</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0 =C2=A0=C2=A0</span>shell=3DTrue)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0=C2=A0</span>File &quot;/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/u=
sr/lib/python3.7/subprocess.py&quot;, line 395, in check_output</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0 =C2=A0=C2=A0</span>**kwargs).stdout</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0=C2=A0</span>File &quot;/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/u=
sr/lib/python3.7/subprocess.py&quot;, line 487, in run</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m=
_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=
=C2=A0 =C2=A0=C2=A0</span>output=3Dstdout, stderr=3Dstderr)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures">subprocess.Calle=
dProcessError: Command &#39;PATH=3D&quot;/home/edson/ng-trunk/nodegrid/tmp/=
sysroots-uninative/x86_64-linux/usr/bin:/home/edson/ng-trunk/poky/scripts:/=
home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r=
0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/edson/ng-trunk/node=
grid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin=
/crossscripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/do=
ckerode/2.5.8-r0/recipe-sysroot-native/usr/sbin:/home/edson/ng-trunk/nodegr=
id/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/us=
r/bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/=
2.5.8-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/=
core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/bin:/home/edso=
n/ng-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/hosttools&quo=
t;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64&#39; returned non-zero exit status 1.</sp=
an></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures=
">dockerode-2.5.8-r0 do_package_write_ipk:<span class=3D"m_7217947524574696=
501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=C2=A0</span></spa=
n></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures=
">dockerode-2.5.8-r0 do_package_write_ipk:
 Function failed: do_package_ipk</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures=
">Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work/core=
2-64-poky-linux/dockerode/2.5.8-r0/temp/log.do_package_write_ipk.4213</span=
></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0)">:=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures=
">Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/dockerode/do=
ckerode_2.5.8.bb:do_package_write_ipk)
 failed with exit code &#39;1&#39;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Tas=
ks Summary: Attempted 1357 tasks of which 1344 didn&#39;t need to be rerun =
and 1 failed.</span></p>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D IPK&#39;s generated until the error =3D=3D=3D=3D=
=3D=3D=3D</div>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-family:Calibri,Helvetica,sans-serif,Hel=
vetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,N=
otoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSy=
mbols;font-size:12pt">
<br>
<p></p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">cd tmp/work/core=
2-64-poky-linux/dockerode/2.5.8-r0/packages-split/</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(47,180,29)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>edson@ubuntu-=
16</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;colo=
r:rgb(0,0,0)">:</span><span style=3D"font-variant-ligatures:no-common-ligat=
ures;color:rgb(64,11,217)"><b>packages-split</b></span><span style=3D"font-=
variant-ligatures:no-common-ligatures;color:rgb(0,0,0)">$
 ls</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode</b>=
</span><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(=
0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841393690x_=
x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span></span><span style=3D"font-vari=
ant-ligatures:no-common-ligatures"><b>dockerode-docker-modem-readable-strea=
m</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;color=
:rgb(0,0,0)">=C2=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures"><b>dockerode-readable-stream</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-bl<=
/b></span><span style=3D"font-variant-ligatures:no-common-ligatures;color:r=
gb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligature=
s"><b>dockerode-docker-modem-string-decoder</b></span><span style=3D"font-v=
ariant-ligatures:no-common-ligatures;color:rgb(0,0,0)">=C2=A0<span class=3D=
"m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>=C2=A0=C2=A0</span></span><span style=3D"font-variant-ligatures:no-common-=
ligatures"><b>dockerode-safe-buffer</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-alloc</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-end-of-str=
eam</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;col=
or:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_21964327468413=
93690x_x_x_x_Apple-converted-space">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span></span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-split-ca<=
/b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-alloc-unsafe</b></span><span style=3D"font-variant-ligatures:no-common-=
ligatures;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_2=
196432746841393690x_x_x_x_Apple-converted-space">=C2=A0=C2=A0</span></span>=
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-fs-=
constants</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-src</b></=
span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-fill</b></span><span style=3D"font-variant-ligatures:no-common-ligature=
s;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_219643274=
6841393690x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es"><b>dockerode-inherits</b></span><span style=3D"font-variant-ligatures:n=
o-common-ligatures;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>doc=
kerode-staticdev</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-from</b></span><span style=3D"font-variant-ligatures:no-common-ligature=
s;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_219643274=
6841393690x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es"><b>dockerode-isarray</b></span><span style=3D"font-variant-ligatures:no=
-common-ligatures;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696=
501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</span></span><span style=3D"font-variant-ligatures:no-common-ligatures"=
><b>dockerode-string-decoder</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-cho=
wnr</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;col=
or:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>doc=
kerode-jsonparse</b></span><span style=3D"font-variant-ligatures:no-common-=
ligatures;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_2=
196432746841393690x_x_x_x_Apple-converted-space">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span=
></span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>docke=
rode-tar-fs</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-con=
cat-stream</b></span><span style=3D"font-variant-ligatures:no-common-ligatu=
res;color:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_2196432=
746841393690x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</span></span><span style=3D"font-variant-ligatures:no-common-ligatures"=
><b>dockerode-JSONStream</b></span><span style=3D"font-variant-ligatures:no=
-common-ligatures;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span=
><span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-ta=
r-stream</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-cor=
e-util-is</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-locale</b>=
</span><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(=
0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures">=
<b>dockerode-through</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-dbg=
</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;color:=
rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_21964327468413936=
90x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0</span></span><span style=3D"font-variant-ligatur=
es:no-common-ligatures"><b>dockerode-minimist</b></span><span style=3D"font=
-variant-ligatures:no-common-ligatures;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>doc=
kerode-to-buffer</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-deb=
ug</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;colo=
r:rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_219643274684139=
3690x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span></span><span style=3D"font-variant-ligatures:=
no-common-ligatures"><b>dockerode-mkdirp</b></span><span style=3D"font-vari=
ant-ligatures:no-common-ligatures;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligatures">=
<b>dockerode-typedarray</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-dev=
</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;color:=
rgb(0,0,0)">=C2=A0<span class=3D"m_7217947524574696501x_m_21964327468413936=
90x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0</span></span><span style=3D"font-variant-ligatur=
es:no-common-ligatures"><b>dockerode-ms</b></span><span style=3D"font-varia=
nt-ligatures:no-common-ligatures;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-comm=
on-ligatures"><b>dockerode-util-deprecate</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(64,11,2=
17)"><b>dockerode-doc</b></span><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures">=C2=A0<span class=3D"m_7217947524574696501x_m_2196432746841=
393690x_x_x_x_Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span></span><span style=3D"font-variant-lig=
atures:no-common-ligatures;color:rgb(64,11,217)"><b>dockerode-once</b></spa=
n><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-common-liga=
tures;color:rgb(64,11,217)"><b>dockerode-wrappy</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-doc=
ker-modem</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-process-ne=
xtick-args</b></span><span style=3D"font-variant-ligatures:no-common-ligatu=
res;color:rgb(0,0,0)">=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span style=3D"font-variant-ligatu=
res:no-common-ligatures"><b>dockerode-xtend</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-doc=
ker-modem-isarray</b></span><span style=3D"font-variant-ligatures:no-common=
-ligatures;color:rgb(0,0,0)">=C2=A0=C2=A0</span><span style=3D"font-variant=
-ligatures:no-common-ligatures"><b>dockerode-pump</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:11px;line-height=
:normal;font-family:Menlo,serif,EmojiFont;color:rgb(47,180,29)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>edson@ubuntu-=
16</b></span><span style=3D"font-variant-ligatures:no-common-ligatures;colo=
r:rgb(0,0,0)">:</span><span style=3D"font-variant-ligatures:no-common-ligat=
ures;color:rgb(64,11,217)"><b>packages-split</b></span><span style=3D"font-=
variant-ligatures:no-common-ligatures;color:rgb(0,0,0)">$<span class=3D"m_7=
217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">=C2=
=A0</span></span></p>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-size:12pt">
NOTE. building dockerode with morty only one ipk is generated:</div>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
<div id=3D"m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefaul=
twrapper" dir=3D"ltr" style=3D"font-size:12pt">
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures">edson@NodeGrid-CustomKit-SDK:nodeg=
rid$ ls tmp/deploy/ipk/core2-64/dockerode*.ipk</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerode_=
2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerode-=
dbg_2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin:0px;font:11px Menlo;color:rgb(0,0,0)"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerode-=
dev_2.4.3-r0_core2-64.ipk</span></p>
<br>
</div>
Thanks in advance.</div>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"m_7217947524574696501x_m_2196432746841393690Signature">
<div id=3D"m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:rgb=
(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif,Helvetica,Emoj=
iFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p></p>
<p class=3D"m_7217947524574696501x_m_2196432746841393690x_MsoNormal" style=
=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif;c=
olor:rgb(33,33,33)">
<span style=3D"font-size:10pt;color:rgb(31,73,125)">Edson Seabra</span></p>
<p class=3D"m_7217947524574696501x_m_2196432746841393690x_MsoNormal" style=
=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif;c=
olor:rgb(33,33,33)">
<span style=3D"font-size:10pt;color:rgb(31,73,125)">Principal Engineer</spa=
n></p>
<p class=3D"m_7217947524574696501x_m_2196432746841393690x_MsoNormal" style=
=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif;c=
olor:rgb(33,33,33)">
<span style=3D"font-size:10pt;color:rgb(31,73,125)">M +1 510 579 0843</span=
></p>
<div><span style=3D"font-size:10pt;font-family:&quot;Source Sans Pro&quot;,=
serif,EmojiFont;color:rgb(96,109,117)"><b>E=C2=A0=C2=A0=C2=A0</b></span><a =
href=3D"mailto:alvin.chan@zpesystems.com" rel=3D"noopener noreferrer" id=3D=
"m_7217947524574696501LPlnk248107" style=3D"font-size:12pt;font-family:Cali=
bri" class=3D"m_7217947524574696501OWAAutoLink" target=3D"_blank"><span sty=
le=3D"font-size:10pt;font-family:&quot;Source Sans Pro&quot;,serif,EmojiFon=
t;color:rgb(5,99,193)">edson.seabra@zpesystems.com</span></a><br>
</div>
<div>
<p style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:Calibri"><sp=
an style=3D"font-size:10pt;font-family:&quot;Source Sans Pro&quot;,serif,Em=
ojiFont;color:rgb(96,109,117)"></span></p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:Calibri"><sp=
an style=3D"font-size:10pt;font-family:&quot;Source Sans Pro&quot;,serif,Em=
ojiFont;color:rgb(96,109,117)"><img class=3D"m_7217947524574696501x_m_21964=
32746841393690EmojiInsert" alt=3D"1506169147061_OutlookEmoji-1505330244060_=
ZPELogo_Email.png1e6c5898-d340-4c90-8c28-e559c26bc7d1.png" src=3D"cid:16ab1=
d2b4d1e67dc2ab1" style=3D"width:174px;max-width:100%"><br>
<span class=3D"m_7217947524574696501x_m_2196432746841393690contextualExtens=
ionHighlight m_7217947524574696501x_m_2196432746841393690ms-font-color-them=
ePrimary m_7217947524574696501x_m_2196432746841393690ms-border-color-themeP=
rimary m_7217947524574696501x_m_2196432746841393690ident_378_416"><a href=
=3D"https://maps.google.com/?q=3D46757+Fremont+Blvd.,+Fremont,+CA+94538&amp=
;entry=3Dgmail&amp;source=3Dg" id=3D"m_7217947524574696501LPlnk647153" clas=
s=3D"m_7217947524574696501OWAAutoLink" target=3D"_blank">46757
 Fremont Blvd., Fremont, CA 94538</a></span><br>
</span><a href=3D"https://www.zpesystems.com/" rel=3D"noopener noreferrer" =
id=3D"m_7217947524574696501LPlnk718848" class=3D"m_7217947524574696501OWAAu=
toLink" target=3D"_blank"><b><span style=3D"font-size:10pt;font-family:&quo=
t;Source Sans Pro&quot;,serif,EmojiFont;color:rgb(96,109,117)">zpesystems.c=
om</span></b></a><b><span style=3D"font-size:10pt;font-family:&quot;Source =
Sans Pro&quot;,serif,EmojiFont;color:rgb(96,109,117)">=C2=A0|=C2=A0</span><=
/b><b><span style=3D"font-size:10pt;font-family:&quot;Source Sans Pro&quot;=
,serif,EmojiFont;color:rgb(96,109,117)"><a href=3D"https://www.zpesystems.c=
om/demo/" rel=3D"noopener noreferrer" id=3D"m_7217947524574696501LPlnk51285=
7" class=3D"m_7217947524574696501OWAAutoLink" target=3D"_blank">Request
 a Nodegrid Demo</a></span></b></p>
</div>
</div>
</div>
</div>
</div>
<div dir=3D"ltr">
<div id=3D"m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,=
Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;And=
roid Emoji&quot;,EmojiSymbols">
<div id=3D"m_7217947524574696501x_m_2196432746841393690Signature">
<div id=3D"m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:rgb=
(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif,Helvetica,Emoj=
iFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<div></div>
<p></p>
</div>
</div>
</div>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" id=3D"m_7217947524574696501LPlnk8=
63696" class=3D"m_7217947524574696501OWAAutoLink" target=3D"_blank">yocto@y=
octoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" id=3D"m_7217947524574696501LPlnk919086" class=3D"m_7217947524574696501OWA=
AutoLink" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</=
a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000cb22a10588c6a1bc--

--000000000000cb22a20588c6a1bd
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Disposition: inline; filename="Outlook-1506169147.png"
Content-Transfer-Encoding: base64
Content-ID: <16ab1d2b4d1e67dc2ab1>
X-Attachment-Id: 16ab1d2b4d1e67dc2ab1

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

--000000000000cb22a20588c6a1bd--
