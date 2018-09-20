Return-Path: <bing.mao@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84204E0097C; Thu, 20 Sep 2018 07:15:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bing.mao[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BFFE006AF
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 07:15:44 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id l15-v6so8558006lji.6
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 07:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YRvnoL6xmrWlxueZHe1jA0tGmdEbXRGkyrj/06gQlsc=;
	b=kOBLbPBOXBlIurl0Nmwt6ZzlQmqFLFZ5Z2CegMuzimBFxU1r330BiuAik78CP1b2XI
	oaL+a5dMWVqkhViMmbX+GKxBFcPJvDPaprmHKtpd2yKibBUlF/i1rXv/dAwhyAIzQJdv
	/ZrkE6rTMKKapCbhGlbxI4apIT5WoTyJuGmL7Jm1fLUkzg4nexnNw7kIvHdHhF06rB0B
	u1UdKKcNKfIWlGRGaZ+4DYf6HmGvlVwKoqCT7wdeCoPoNJseAtKsmILM6L9XaR+YEglL
	Mdj8UA3enj+FA9i8BmH4SpybY3ClXOeqI4DKQf4hM4z+200fV8aKLtF3qnEq37qR+NSL
	ZQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YRvnoL6xmrWlxueZHe1jA0tGmdEbXRGkyrj/06gQlsc=;
	b=hNSYdl5nu9AEWry3tIJzL+X4EwAqpDNB0k/h6C4qXAO/05sN1tqPRWLAU23lCICJSJ
	ExoT9lmtYgXm+pBedV7ahwYy25/DN5pf0wi9f5PMhsMWKZldodenyEPjk6BsZ3ulZift
	CFk951vxRgrjU+JmIiARYavFA9IlTHZN8uUTtFbQQUOr0T9s6P5NYVt/KhqEwPBnsCmF
	3ENWph/ZF+A8ZTO5NwPRqXZ6zXZMTPpE9+/791LhuqR/piQZ95exPWuPSKhdAfJax5lw
	jecwNHHZexkjcW6HRF2w4KvDpJpeYlqKtytNHkGweeUXI92U+jVD4zWuMqpZyk6aeH+j
	nBsA==
X-Gm-Message-State: APzg51DL78nK6j8lQFfWvYR1ECcVnO52n16KbWxKHAYwJ467t5eT3X6A
	ZycyWFYdOyYOezA9mXRb4T2FbVbKlSgfoJDsSe1gsU7i
X-Google-Smtp-Source: ANB0Vda6Bc2tEILnei+I6+vbLPgUVTGCisgygx9c4TfdmUjVKTLtb3o21knOdC/TXaKv+RAb1c1aj+fi5+NgsMeQQhA=
X-Received: by 2002:a2e:752:: with SMTP id
	i18-v6mr10052600ljd.118.1537452942431; 
	Thu, 20 Sep 2018 07:15:42 -0700 (PDT)
MIME-Version: 1.0
From: bing mao <bing.mao@gmail.com>
Date: Thu, 20 Sep 2018 09:15:30 -0500
Message-ID: <CANVrsj0vGyrrqdZNxm=y_JhH5YwSzNoficM=TL6dLYdCE=LreA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 20 Sep 2018 09:04:49 -0700
Subject: Help on mono yocto build
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
X-List-Received-Date: Thu, 20 Sep 2018 14:15:46 -0000
Content-Type: multipart/alternative; boundary="0000000000007e1a5305764e2813"

--0000000000007e1a5305764e2813
Content-Type: text/plain; charset="UTF-8"

Hi Yocto,
We are going to use mono on Yocto, I followed the instructions to build
mono and found following issue. I have searched on internet, I found
similar issue reported, but didn't find helpful answer, could you share me
some light on this?

Thanks,
Bing

mono-complete has been installed on my ubuntu-16.4, ad below is my mono
version on build host.

cmaobi@ubuntu:~/poky/build$ mono --version
Mono JIT compiler version 5.14.0.177 (tarball Mon Aug  6 09:13:43 UTC 2018)
Copyright (C) 2002-2014 Novell, Inc, Xamarin Inc and Contributors.
www.mono-project.com
TLS:           __thread
SIGSEGV:       altstack
Notifications: epoll
Architecture:  amd64
Disabled:      none
Misc:          softdebug
Interpreter:   yes
LLVM:          yes(3.6.0svn-mono-/)
GC:            sgen (concurrent by default)


==================================
Build Configuration:
BB_VERSION           = "1.39.1"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5+snapshot-20180920"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "HEAD:b78597a4e038ed64b379f11257002e5a5f24886f"
meta-mono            = "HEAD:05edfa6067b21e308b977a3116e07756e88ab086"
meta-oe              = "HEAD:a06c29be2f5bc204f965ee07298c34232c5c39fc"

Initialising tasks: 100%
|#####################################################################################################|
Time: 0:00:04
Sstate summary: Wanted 22 Found 19 Missed 3 Current 2140 (86% match, 99%
complete)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6.2-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6.2 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6.2? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(System.Configuration), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/mono-configuration-crypto.exe
contained in package mono-configuration-crypto requires mono(System), but
no providers found in RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/mono-configuration-crypto.exe
contained in package mono-configuration-crypto requires mono(mscorlib), but
no providers found in RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(Mono.Security), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires mono(System.Xml),
but no providers found in RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.0-api/System.Net.Http.Formatting.dll contained in package
mono-libs-4.0 requires mono(System.Net.Http), but no providers found in
RDEPENDS_mono-libs-4.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.0-api/Mono.Debugger.Soft.dll contained in package
mono-libs-4.0 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-libs-4.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in package
mono-libs-4.5 requires mono(System.Runtime.Loader), but no providers found
in RDEPENDS_mono-libs-4.5? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.7-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.7 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.7? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained in package
mono-libs-3.5 requires mono(System.Xml), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Tasks.v3.5.dll contained in package
mono-libs-3.5 requires mono(System), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Framework.dll contained in package
mono-libs-3.5 requires mono(mscorlib), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/gac/Microsoft.Build.Framework/14.0.0.0__b03f5f7f11d50a3a/Microsoft.Build.Framework.dll
contained in package mono-gac requires mono(mscorlib), but no providers
found in RDEPENDS_mono-gac? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6.1-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6.1 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6.1? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.5.2-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.5.2 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.5.2? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.5.1-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.5.1 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.5.1? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/2.0-api/System.Net.Http.Formatting.dll contained in package
mono-libs-2.0 requires mono(System.Net.Http), but no providers found in
RDEPENDS_mono-libs-2.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/2.0-api/Mono.Debugger.Soft.dll contained in package
mono-libs-2.0 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-libs-2.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/2.0-api/System.Numerics.Vectors.dll contained in package
mono-libs-2.0 requires mono(System.Numerics), but no providers found in
RDEPENDS_mono-libs-2.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/2.0-api/System.Web.Mvc.dll contained in package mono-libs-2.0
requires mono(System.Runtime.Caching), but no providers found in
RDEPENDS_mono-libs-2.0? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/xbuild/Microsoft/NuGet/Microsoft.NuGet.Build.Tasks.dll
contained in package mono-xbuild requires mono(mscorlib), but no providers
found in RDEPENDS_mono-xbuild? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/cmaobi/poky/build/tmp/work/i586-poky-linux/mono/5.12.0.226-r0/temp/log.do_package_qa.105329
ERROR: Task
(/home/cmaobi/poky/meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:do_package_qa)
failed with exit code '1'
ERROR: core-image-mono-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-v --rpmverbosity=debug -y -c
/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/oe-rootfs-repo
--installroot=/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs
--setopt=logdir=/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/temp
--nogpgcheck install packagegroup-core-x11-sato run-postinsts
packagegroup-core-boot mono rpm psplash dnf mono-helloworld
packagegroup-core-x11-base packagegroup-core-ssh-dropbear
packagegroup-base-extended tzdata locale-base-en-us locale-base-en-gb'
returned 1:
DNF version: 2.7.5
cachedir:
/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs/var/cache/dnf
Added oe-repo repo from
/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/oe-rootfs-repo
repo: using cache for: oe-repo
not found deltainfo for: oe-repo
not found updateinfo for: oe-repo
oe-repo: using metadata from Thu 20 Sep 2018 02:11:39 PM UTC.
Last metadata expiration check: 0:00:01 ago on Thu 20 Sep 2018 02:11:40 PM
UTC.
--> Starting dependency resolution
--> Finished dependency resolution
Error:
 Problem 1: package mono-5.12.0.226-r0.i586 requires mono-libs-4.5, but
none of the providers can be installed
  - conflicting requests
  - nothing provides mono(System.Collections.Immutable) = 1.2.0.0 needed by
mono-libs-4.5-5.12.0.226-r0.i586
 Problem 2: package mono-helloworld-1.2-r0.i586 requires mono, but none of
the providers can be installed
  - package mono-5.12.0.226-r0.i586 requires mono-libs-4.5, but none of the
providers can be installed
  - conflicting requests
  - nothing provides mono(System.Collections.Immutable) = 1.2.0.0 needed by
mono-libs-4.5-5.12.0.226-r0.i586

ERROR: core-image-mono-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/temp/log.do_rootfs.105326
ERROR: Task
(/home/cmaobi/poky/meta-mono/recipes-mono/images/core-image-mono.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 5908 tasks of which 5906 didn't need to be
rerun and 2 failed.

Summary: 2 tasks failed:
  /home/cmaobi/poky/meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:
do_package_qa
  /home/cmaobi/poky/meta-mono/recipes-mono/images/core-image-mono.bb:
do_rootfs

--0000000000007e1a5305764e2813
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Yocto,<div>We are goi=
ng to use mono on Yocto, I followed the instructions to build mono and foun=
d following issue. I have searched on internet, I found similar issue repor=
ted, but didn&#39;t find helpful answer, could you share me some light on t=
his?</div><div><br></div><div>Thanks,</div><div>Bing</div><div><br></div><d=
iv>mono-complete has been installed on my ubuntu-16.4, ad below is my mono =
version on build host.</div><div><br></div><div><div>cmaobi@ubuntu:~/poky/b=
uild$ mono --version</div><div>Mono JIT compiler version 5.14.0.177 (tarbal=
l Mon Aug=C2=A0 6 09:13:43 UTC 2018)</div><div>Copyright (C) 2002-2014 Nove=
ll, Inc, Xamarin Inc and Contributors. <a href=3D"http://www.mono-project.c=
om">www.mono-project.com</a></div><div><span style=3D"white-space:pre">	</s=
pan>TLS:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__thread</div><div><span s=
tyle=3D"white-space:pre">	</span>SIGSEGV:=C2=A0 =C2=A0 =C2=A0 =C2=A0altstac=
k</div><div><span style=3D"white-space:pre">	</span>Notifications: epoll</d=
iv><div><span style=3D"white-space:pre">	</span>Architecture:=C2=A0 amd64</=
div><div><span style=3D"white-space:pre">	</span>Disabled:=C2=A0 =C2=A0 =C2=
=A0 none</div><div><span style=3D"white-space:pre">	</span>Misc:=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 softdebug=C2=A0</div><div><span style=3D"white-spa=
ce:pre">	</span>Interpreter:=C2=A0 =C2=A0yes</div><div><span style=3D"white=
-space:pre">	</span>LLVM:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes(3.6.0svn-mo=
no-/)</div><div><span style=3D"white-space:pre">	</span>GC:=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sgen (concurrent by default)</div></div><div><b=
r></div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><div>Bu=
ild Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;1.39.1&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0=
 =C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-linux&quot;</div><div>MACHIN=
E=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&quot;</=
div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &=
quot;poky&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;2.5+snapshot-20180920&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;m32 i586&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;HEAD:b78597a4e038ed64b379f11257002e5a5f24886f&quot;</div><=
div>meta-mono=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:05edf=
a6067b21e308b977a3116e07756e88ab086&quot;</div><div>meta-oe=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:a06c29be2f5bc204f965ee072=
98c34232c5c39fc&quot;</div><div><br></div><div>Initialising tasks: 100% |##=
###########################################################################=
########################| Time: 0:00:04</div><div>Sstate summary: Wanted 22=
 Found 19 Missed 3 Current 2140 (86% match, 99% complete)</div><div>NOTE: E=
xecuting SetScene Tasks</div><div>NOTE: Executing RunQueue Tasks</div><div>=
<font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: =
/usr/lib/mono/4.6.2-api/Mono.Debugger.Soft.dll contained in package mono-ap=
i-4.6.2 requires mono(Mono.Cecil), but no providers found in RDEPENDS_mono-=
api-4.6.2? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: mon=
o-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configuration-c=
rypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-configura=
tion-crypto requires mono(System.Configuration), but no providers found in =
RDEPENDS_mono-configuration-crypto? [file-rdeps]</font></div><div><font col=
or=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/=
mono/mono-configuration-crypto/4.5/mono-configuration-crypto.exe contained =
in package mono-configuration-crypto requires mono(System), but no provider=
s found in RDEPENDS_mono-configuration-crypto? [file-rdeps]</font></div><di=
v><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue=
: /usr/lib/mono/mono-configuration-crypto/4.5/mono-configuration-crypto.exe=
 contained in package mono-configuration-crypto requires mono(mscorlib), bu=
t no providers found in RDEPENDS_mono-configuration-crypto? [file-rdeps]</f=
ont></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package=
_qa: QA Issue: /usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configurati=
on.Crypto.dll contained in package mono-configuration-crypto requires mono(=
Mono.Security), but no providers found in RDEPENDS_mono-configuration-crypt=
o? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0=
.226-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configuration-crypto/4.=
5/Mono.Configuration.Crypto.dll contained in package mono-configuration-cry=
pto requires mono(System.Xml), but no providers found in RDEPENDS_mono-conf=
iguration-crypto? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERR=
OR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/4.0-api/Syste=
m.Net.Http.Formatting.dll contained in package mono-libs-4.0 requires mono(=
System.Net.Http), but no providers found in RDEPENDS_mono-libs-4.0? [file-r=
deps]</font></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do=
_package_qa: QA Issue: /usr/lib/mono/4.0-api/Mono.Debugger.Soft.dll contain=
ed in package mono-libs-4.0 requires mono(Mono.Cecil), but no providers fou=
nd in RDEPENDS_mono-libs-4.0? [file-rdeps]</font></div><div><font color=3D"=
#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/4=
.5/Microsoft.CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 =
requires mono(System.Runtime.Loader), but no providers found in RDEPENDS_mo=
no-libs-4.5? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: m=
ono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mono.Debug=
ger.Soft.dll contained in package mono-api-4.7 requires mono(Mono.Cecil), b=
ut no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]</font></div><d=
iv><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issu=
e: /usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained in package mo=
no-libs-3.5 requires mono(System.Xml), but no providers found in RDEPENDS_m=
ono-libs-3.5? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: =
mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Microsoft=
.Build.Tasks.v3.5.dll contained in package mono-libs-3.5 requires mono(Syst=
em), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]</font><=
/div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: =
QA Issue: /usr/lib/mono/3.5-api/Microsoft.Build.Framework.dll contained in =
package mono-libs-3.5 requires mono(mscorlib), but no providers found in RD=
EPENDS_mono-libs-3.5? [file-rdeps]</font></div><div><font color=3D"#ff0000"=
>ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Micro=
soft.Build.Framework/14.0.0.0__b03f5f7f11d50a3a/Microsoft.Build.Framework.d=
ll contained in package mono-gac requires mono(mscorlib), but no providers =
found in RDEPENDS_mono-gac? [file-rdeps]</font></div><div><font color=3D"#f=
f0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6=
.1-api/Mono.Debugger.Soft.dll contained in package mono-api-4.6.1 requires =
mono(Mono.Cecil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-=
rdeps]</font></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 d=
o_package_qa: QA Issue: /usr/lib/mono/4.5.2-api/Mono.Debugger.Soft.dll cont=
ained in package mono-api-4.5.2 requires mono(Mono.Cecil), but no providers=
 found in RDEPENDS_mono-api-4.5.2? [file-rdeps]</font></div><div><font colo=
r=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/m=
ono/4.6-api/Mono.Debugger.Soft.dll contained in package mono-api-4.6 requir=
es mono(Mono.Cecil), but no providers found in RDEPENDS_mono-api-4.6? [file=
-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 =
do_package_qa: QA Issue: /usr/lib/mono/4.5.1-api/Mono.Debugger.Soft.dll con=
tained in package mono-api-4.5.1 requires mono(Mono.Cecil), but no provider=
s found in RDEPENDS_mono-api-4.5.1? [file-rdeps]</font></div><div><font col=
or=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/=
mono/2.0-api/System.Net.Http.Formatting.dll contained in package mono-libs-=
2.0 requires mono(System.Net.Http), but no providers found in RDEPENDS_mono=
-libs-2.0? [file-rdeps]</font></div><div><font color=3D"#ff0000">ERROR: mon=
o-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/2.0-api/Mono.Debugge=
r.Soft.dll contained in package mono-libs-2.0 requires mono(Mono.Cecil), bu=
t no providers found in RDEPENDS_mono-libs-2.0? [file-rdeps]</font></div><d=
iv><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issu=
e: /usr/lib/mono/2.0-api/System.Numerics.Vectors.dll contained in package m=
ono-libs-2.0 requires mono(System.Numerics), but no providers found in RDEP=
ENDS_mono-libs-2.0? [file-rdeps]</font></div><div><font color=3D"#ff0000">E=
RROR: mono-5.12.0.226-r0 do_package_qa: QA Issue: /usr/lib/mono/2.0-api/Sys=
tem.Web.Mvc.dll contained in package mono-libs-2.0 requires mono(System.Run=
time.Caching), but no providers found in RDEPENDS_mono-libs-2.0? [file-rdep=
s]</font></div><div><font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_pa=
ckage_qa: QA Issue: /usr/lib/mono/xbuild/Microsoft/NuGet/Microsoft.NuGet.Bu=
ild.Tasks.dll contained in package mono-xbuild requires mono(mscorlib), but=
 no providers found in RDEPENDS_mono-xbuild? [file-rdeps]</font></div><div>=
<font color=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: QA run fou=
nd fatal errors. Please consider fixing them.</font></div><div><font color=
=3D"#ff0000">ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_p=
ackage_qa</font></div><div><font color=3D"#ff0000">ERROR: Logfile of failur=
e stored in: /home/cmaobi/poky/build/tmp/work/i586-poky-linux/mono/5.12.0.2=
26-r0/temp/log.do_package_qa.105329</font></div><div><font color=3D"#ff0000=
">ERROR: Task (/home/cmaobi/poky/meta-mono/recipes-mono/mono/mono_5.12.0.22=
6.bb:do_package_qa) failed with exit code &#39;1&#39;</font></div><div><fon=
t color=3D"#ff0000">ERROR: core-image-mono-1.0-r0 do_rootfs: Could not invo=
ke dnf. Command &#39;/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/co=
re-image-mono/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3D=
debug -y -c /home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-=
mono/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/cmaobi/poky=
/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs/etc/yum.re=
pos.d --repofrompath=3Doe-repo,/home/cmaobi/poky/build/tmp/work/qemux86-pok=
y-linux/core-image-mono/1.0-r0/oe-rootfs-repo --installroot=3D/home/cmaobi/=
poky/build/tmp/work/qemux86-poky-linux/core-image-mono/1.0-r0/rootfs --seto=
pt=3Dlogdir=3D/home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-imag=
e-mono/1.0-r0/temp --nogpgcheck install packagegroup-core-x11-sato run-post=
insts packagegroup-core-boot mono rpm psplash dnf mono-helloworld packagegr=
oup-core-x11-base packagegroup-core-ssh-dropbear packagegroup-base-extended=
 tzdata locale-base-en-us locale-base-en-gb&#39; returned 1:</font></div><d=
iv>DNF version: 2.7.5</div><div>cachedir: /home/cmaobi/poky/build/tmp/work/=
qemux86-poky-linux/core-image-mono/1.0-r0/rootfs/var/cache/dnf</div><div>Ad=
ded oe-repo repo from /home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/c=
ore-image-mono/1.0-r0/oe-rootfs-repo</div><div>repo: using cache for: oe-re=
po</div><div>not found deltainfo for: oe-repo</div><div>not found updateinf=
o for: oe-repo</div><div>oe-repo: using metadata from Thu 20 Sep 2018 02:11=
:39 PM UTC.</div><div>Last metadata expiration check: 0:00:01 ago on Thu 20=
 Sep 2018 02:11:40 PM UTC.</div><div>--&gt; Starting dependency resolution<=
/div><div>--&gt; Finished dependency resolution</div><div>Error:=C2=A0</div=
><div>=C2=A0Problem 1: package mono-5.12.0.226-r0.i586 requires mono-libs-4=
.5, but none of the providers can be installed</div><div>=C2=A0 - conflicti=
ng requests</div><div>=C2=A0 - nothing provides mono(System.Collections.Imm=
utable) =3D 1.2.0.0 needed by mono-libs-4.5-5.12.0.226-r0.i586</div><div>=
=C2=A0Problem 2: package mono-helloworld-1.2-r0.i586 requires mono, but non=
e of the providers can be installed</div><div>=C2=A0 - package mono-5.12.0.=
226-r0.i586 requires mono-libs-4.5, but none of the providers can be instal=
led</div><div>=C2=A0 - conflicting requests</div><div>=C2=A0 - nothing prov=
ides mono(System.Collections.Immutable) =3D 1.2.0.0 needed by mono-libs-4.5=
-5.12.0.226-r0.i586</div><div><br></div><div>ERROR: core-image-mono-1.0-r0 =
do_rootfs: Function failed: do_rootfs</div><div>ERROR: Logfile of failure s=
tored in: /home/cmaobi/poky/build/tmp/work/qemux86-poky-linux/core-image-mo=
no/1.0-r0/temp/log.do_rootfs.105326</div><div>ERROR: Task (/home/cmaobi/pok=
y/meta-mono/recipes-mono/images/core-image-mono.bb:do_rootfs) failed with e=
xit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 5908 tasks of=
 which 5906 didn&#39;t need to be rerun and 2 failed.</div><div><br></div><=
div>Summary: 2 tasks failed:</div><div>=C2=A0 /home/cmaobi/poky/meta-mono/r=
ecipes-mono/mono/mono_5.12.0.226.bb:do_package_qa</div><div>=C2=A0 /home/cm=
aobi/poky/meta-mono/recipes-mono/images/core-image-mono.bb:do_rootfs</div><=
/div><div><br></div><div><br></div><div><br></div></div></div></div>

--0000000000007e1a5305764e2813--
