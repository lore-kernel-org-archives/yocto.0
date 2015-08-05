Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0958E009E4; Wed,  5 Aug 2015 11:31:48 -0700 (PDT)
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
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50D16E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 11:31:45 -0700 (PDT)
Received: by iodd187 with SMTP id d187so58063886iod.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 11:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cRJU8YPsn1Q90y90Q2Ba1ND+/3o8eG06TVMb6ihxtWc=;
	b=HUw0VklYDm8v6Z49IAHcao3qpqhAwnVvflYNIH6Rcw3b1VlUtbhBcRDdEr2qDJjGGr
	LDwkF7zpTeK+oFVEtPHqZ5M/5373MczuATeXzUUboih3f47b9NzaqziOgN0UW09piRvd
	VJ25sOOFZrM/5ajj9INpGrLLqE4kANHO0WJFgz1nnUmsNiq7C1N20khTMjo99/Myurcy
	q33QfesFSru5fCcIOOFCVqgVKZSYSWpWUJyYKamy4VWqf8Xfy7MC+WYYfGf+xCBmIzSm
	8PFlstkzZCajD6mz11G/u5EWrd+VqNbxbuZAxDDQtT1AoO8Bg1fbszM6f4kklJuK/goh
	gx5g==
X-Received: by 10.107.168.145 with SMTP id e17mr11246254ioj.112.1438799504930; 
	Wed, 05 Aug 2015 11:31:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 5 Aug 2015 11:31:15 -0700 (PDT)
In-Reply-To: <1299340381.458690.1438792839565.JavaMail.yahoo@mail.yahoo.com>
References: <1299340381.458690.1438792839565.JavaMail.yahoo@mail.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Aug 2015 11:31:15 -0700
Message-ID: <CAMKF1spxXj26NYAEG=DxxARXX6wAkstAtQ0pO6Ja_q59Nv6aNQ@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compile with ADT and recipe fails builds on target.
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
X-List-Received-Date: Wed, 05 Aug 2015 18:31:48 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 5, 2015 at 9:40 AM, Edward Vidal <develone@sbcglobal.net> wrote:
> Hello All,
>
> Trying to use ADT to compile a package.  The package compiles and installs
> on the target core-image-sato for the Raspberry Pi 2 B.  Also trying to
> create a recipe. see
> recipe_gtkwave/gtkwave/gtkwave_3.6.66.bb at
> https://github.com/develone/raspberrypi2_yocto.git
> The recipe downloads the source code, unpacks and runs do_configure, but
> fails at
>  ERROR: Function failed: do_qa_configure.
>
> 1.) "cd wkg/yocto/RaspberryPi2/poky/"
>
> 2.) ". oe-init-build-env"
>
> 3.) "bitbale core-image-sato -c populate_sdk"
>
> 4.) "sudo
> tmp/deploy/sdk/poky-glibc-x86_64-core-image-sato-cortexa7hf-vfp-vfpv4-neon-toolchain-1.8+snapshot.sh"
>
> 5.) "cd ~/"
>
> 6.) "tar xfz wkg/yocto/downloads/gtkwave-3.3.66.tar.gz"
>
> 7.) "cd gtkwave-3.3.66/"
>
> 8.) "source
> /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi"
>
> 9.a) "./configure ${CONFIGURE_FLAGS}"
> checking for Tcl configuration... configure: error: Can't find Tcl
> configuration definitions. Use --with-tcl to specify a directory containing
> tclConfig.sh
>
> Should the ADT be able to find theses since they are located at
> ls
> /opt/poky/1.8+snapshot/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/usr/lib/tclConfig.sh
> ls
> /opt/poky/1.8+snapshot/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/usr/lib/tkConfig.sh
> without have to set the path

you need to find out how TCL is used here. If its used during build or
is it required during runtime as well.
its not different when you do native compile but OE is all about cross
compiling where it will matter.
If its only needed during build then you will depend on tcl-native in
recipe. If its also needed during runtime you will add tcl
to DEPENDS as well. You will also need to add nativesdk-tcl and any
other dependencies when creating SDK


>
> 9.b) "./configure ${CONFIGURE_FLAGS}
> --with-tcl=/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/raspberrypi2/usr/lib
> --with-tk=/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/raspberrypi2/usr/lib"
>
> This goes further with the following warning
>
> config.status: executing depfiles commands
> configure: WARNING: unrecognized options: --with-libtool-sysroot
>
> Thanks in advance.
>
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net
> 915-595-1613
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

