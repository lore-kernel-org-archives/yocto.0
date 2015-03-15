Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36614E0056E; Sun, 15 Mar 2015 01:57:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2098E0052B
	for <yocto@yoctoproject.org>; Sun, 15 Mar 2015 01:57:32 -0700 (PDT)
Received: by igbue6 with SMTP id ue6so17978132igb.1
	for <yocto@yoctoproject.org>; Sun, 15 Mar 2015 01:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=++qr8YqarQ+NDhB2EMcJ4y3g4IfNxrs70tkNXrS3Sl8=;
	b=EneNXeg3+e1VK5saYe8ULDNufn3ITAxGDFTpHigUski5uR14x2AiwpexiB2jstm1fv
	x8b4YkDxOIFMi2Z4E0lea4FyMLMuG+2sn2NQQ1mW/B+/brZ9Srpy2io71j0QqzM7c6L7
	WPdBelKEqJBxR32vXgNJveRg1D9k/ZVaM/oAfXIwf2XbJvyVZ0SUD274VAelUSd8T2zz
	PUjkbavmhv/qOJoIJMjLXXnSQlEJVS6OFFuvAShoHxtsUGjf29cN81StAgk5Qh+MADhG
	pXgAIqXPFKyg/3SenxxJOJhRAQIbxaYDtJZmI4UZ2pZpnIsYov576aNg3hLz8ehyunzR
	gDkg==
X-Received: by 10.43.70.10 with SMTP id ye10mr70968997icb.66.1426409852409;
	Sun, 15 Mar 2015 01:57:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Sun, 15 Mar 2015 01:57:02 -0700 (PDT)
In-Reply-To: <CAJqtCybFU9G7v71bgjTpJGpWqJ5AC-DMp7+yxr3n86jYVEjrHA@mail.gmail.com>
References: <CAJqtCybFU9G7v71bgjTpJGpWqJ5AC-DMp7+yxr3n86jYVEjrHA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 Mar 2015 01:57:02 -0700
Message-ID: <CAMKF1sph3oqBe4_t+9eRuHLNrgpZ6jrh0kb0HmUJYdHe=jnT=Q@mail.gmail.com>
To: Caio <caiortp@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: node-serialport recipe help
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
X-List-Received-Date: Sun, 15 Mar 2015 08:57:36 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 11:35 AM, Caio <caiortp@gmail.com> wrote:
> Hi folks!
>
> I'm writing a recipe to build the nodejs with node-serialport, but i'm
> having problem in the QA and in the do_package.
>
> This problem occurs when I try to copy all the npm packets to target path
> using the command "cp -r".
>
>      cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
>      cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules
>
> When I use the cp , the bitbake display the following message:
>
> WARNING: QA Issue: node-serialport requires /bin/bash, /bin/zsh, but no
> providers in its RDEPENDS [file-rdeps]
>
> I try to add RDEPENDS += "bash" but this is not enough, and the bitbake ask
> for the /bin/zsh and the zsh is blacklisted.
>
> *I'm not a "Yocto expert" so I need improve my recipes (there's some
> workarounds in my recipes)

These errors can be easily avoided by making more granular packaging.
Identify the scripts in the install tree which require bash and zsh
for interpreter, then add PACKAGES += "${PN}-bash ${PN}-zsh" which
defines two extra output packages. then add FILES_${PN}-zsh =
"/path/to/the/zsh/scripts/" and same for for another package. Then add
RDEPENDS_${PN}-zsh = "zsh" RDEPENDS_${PN}-bash = "bash"


>
> I'm using as model the Recipes from webOS :
> https://github.com/openwebos/meta-webos/tree/master/recipes-upstreamable/node-gyp
>
>
> node-serialport_git.bb
>
> SUMMARY = "node-serial is a Serial Port binding for Node.js"
> SECTION = "nodejs/module"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://README.md;md5=b9a59a0fefe195d10be82cf7f0a99788"
>
> DEPENDS = "node-pre-gyp-native"
>
> PV = "1.6.1+gitr${SRCPV}"
>
> RDEPENDS = "bash"
>
> SRC_URI =
> "git://github.com/voodootikigod/node-serialport.git;branch=master;protocol=git"
> SRCREV = "94b7bdcc087b820e10913c483bab3e2c54d103f2"
> S = "${WORKDIR}/git"
>
>
> do_configure() {
>     export LD="${CXX}"
>     export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
>     node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux
> configure
> }
>
> do_compile() {
>     export LD="${CXX}"
>     export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
>     node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux  build
> }
>
> do_install() {
>
>     npm install --no-cache
>     install -d ${D}${libdir}/node_modules
>     install -d ${D}${libdir}/node_modules/serialport/
>     install -d ${D}${libdir}/node_modules/serialport/build
>     install -d ${D}${libdir}/node_modules/serialport/bin
>     install -d ${S}/build/Release/
> ${D}${libdir}/node_modules/serialport/build/
>     install -m 0664 ${S}/bin/serialportList.js
> ${D}${libdir}/node_modules/serialport/bin/
>     install -m 0664 ${S}/bin/serialportTerminal.js
> ${D}${libdir}/node_modules/serialport/bin/
>     install -m 0664 ${S}/package.json ${D}${libdir}/node_modules/serialport/
>     install -m 0664 ${S}/parsers.js   ${D}${libdir}/node_modules/serialport/
>     install -m 0664 ${S}/serialport.js
> ${D}${libdir}/node_modules/serialport/
> #problematic line if the cp lines are uncommented the bitbake displayed to
> add RDEPEND /bin/bash and /bin/zsh
>     cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
>     cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules
> }
>
>
> FILES_${PN} += "${libdir}/node_modules \
>         ${libdir}/node_modules/serialport \
>         ${libdir}/node_modules/serialport/build \
> "
>
> FILES_${PN}-dbg += "${libdir}/node_modules/.debug \
>         ${libdir}/node_modules/serialport/.debug \
>         ${libdir}/node_modules/serialport/build/.debug \
>         ${libdir/node_modules/serialport/build/Release/.debug \
> "
> #workaround to avoid QA's problems, must be fixed in the second round
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> INHIBIT_PACKAGE_STRIP = "1"
>
>
> }
>
>
>
> node_pre-gyp-native.bb
>
> DESCRIPTION = "Node.js tool for easy binary deployment of C++ addons"
> HOMEPAGE = "https://github.com/mapbox/node-pre-gyp.git"
> LICENSE = "BSD"
> SECTION = "nodejs/module"
>
> LIC_FILES_CHKSUM = "file://LICENSE;md5=7e13c3cf883a44ebcc74a8f568c0f6fb"
>
> SRC_URI =
> "git://github.com/mapbox/node-pre-gyp.git;branch=master;protocol=git"
> SRCREV = "332b8b123e3aa91718fad763cf1fc11c4cfb49b7"
> DEPENDS = "nodejs-native node-gyp-native"
>
> S = "${WORKDIR}/git"
>
> inherit native
>
> do_install () {
>   #woraround to install the node-pre-gyp
>   npm install -g --force
> }
>
> If someone could help me I will be grateful.
> Thanks !
>
> Regards,
>
> --
> ----------------------------------------------
> Caio Pereira
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

