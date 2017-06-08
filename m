Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5870BE00BF7; Thu,  8 Jun 2017 13:47:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA2F1E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 13:47:45 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id x70so84700286wme.0
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 13:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Wi3ghfgy1Pa2JidEn1RMbSe4FigEZx+WL/lvrLbRESs=;
	b=mhWNXxpstRO0tQk2N+Ly7BhvFHI7eNCRrNNLpikR1qii+5+c84bdRpd59kaIaM80Et
	GoSF22O+IT+JKfkY0+1ZG3rXQMHa3tkm3uNrpXntosdYubkewp7jKbE3pYkxSlEm/NDp
	8UQrHtD4id9r0tmcG46+dp8YqSs3MDP03d+Lcc1suV8DXb2OR8D2OQzqIp3ms4fHU0TD
	G33cHRP6AxhuDDuo4UnhK2xvzO7npnb7FO+hmsmZz2lLCXLX7ivfe37VDlgFduGQAn5N
	G4fBV9bnHdgeh/vrTlZlCCNQCXo9Z/bYgd9mO6uGXFMyIE1Gbf6tizot5kAKvcYjfaGs
	3RBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Wi3ghfgy1Pa2JidEn1RMbSe4FigEZx+WL/lvrLbRESs=;
	b=WtS0tys4kUXwmN2iowQ+kMVF7dfEZxlfjfVE5ko4DmRyf/60dualY9i0Gj4OfdPH+h
	2qurFIvFY0DsOPS//XO1b90NM2ZitJZYa3W1vOl6x7Yr88syCc1RPOQX/cbJ4x6OR+K5
	lBDuaVJzqgM0EaRBtIjtkp291M2W6IdxY1y6IwE07cSnoZMynIhu9HAJjLBO/GozPKx9
	TC5SnenRCWMnoW+HSaJy8O/cGPGnCvyt/mWN2/gDKWklal9GzfRLxHGdmxsT5IkL7gln
	sqxevFQ25k6hkTgeULfjQ/i868FXV+J8/H9rpEQh8vB5rOmmjr2CSvORVk6DQApxswrB
	7txw==
X-Gm-Message-State: AODbwcBsENgp30szKKfU+VF6wC7IqJQOQGLnHM1dM1tsUh8AozZTXFaS
	J454U0IklaCqg0VQqVfSMEfm7wDNEg==
X-Received: by 10.80.180.155 with SMTP id w27mr30200521edd.42.1496954864231;
	Thu, 08 Jun 2017 13:47:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Thu, 8 Jun 2017 13:47:13 -0700 (PDT)
In-Reply-To: <CAFzUWG=m-UeJjFA2O3CEqHkjmNYOY2Gf2pHUfGJH4KU=YDFOHQ@mail.gmail.com>
References: <CAFzUWG=m-UeJjFA2O3CEqHkjmNYOY2Gf2pHUfGJH4KU=YDFOHQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 8 Jun 2017 13:47:13 -0700
Message-ID: <CAMKF1sqUz+-FTn85nHmhqDorUf_xH-3WDLF+ZVsMZgygmemw1w@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: LLVM linking for custom recipe
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
X-List-Received-Date: Thu, 08 Jun 2017 20:47:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 8, 2017 at 1:42 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi,
>
> I have the following error message when trying to get LLVM linked up. The
> problem is that I'm using a widely used science software called ROOT
> (https://root.cern.ch/) with the following minimal recipe at the moment
> (https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb)
> however I get the following error...
>
> Any ideas?

Look into meta-clang there are patches for cross compiling clang/llvm
https://github.com/kraj/meta-clang

>
> Giordon
>
> | CMake Error at cmake/modules/SearchInstalledSoftware.cmake:662
> (find_package):
> |   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project has
> |   asked CMake to find a package configuration file provided by "LLVM", but
> |   CMake did not find one.
> |
> |   Could not find a package configuration file provided by "LLVM" with any
> of
> |   the following names:
> |
> |     LLVMConfig.cmake
> |     llvm-config.cmake
> |
> |   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
> |   "LLVM_DIR" to a directory containing one of the above files.  If "LLVM"
> |   provides a separate development package or SDK, be sure it has been
> |   installed.
> | Call Stack (most recent call first):
> |   CMakeLists.txt:58 (include)
> |
> |
> | -- Configuring incomplete, errors occurred!
> | See also
> "/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeOutput.log".
> | See also
> "/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeError.log".
> | WARNING:
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/run.do_configure.16761:1
> exit 1 from 'cmake ${OECMAKE_SITEFILE}
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/root-6.04.12
> -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=bin
> -DCMAKE_INSTALL_SBINDIR:PATH=sbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=libexec
> -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc
> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=../com
> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var -DCMAKE_INSTALL_LIBDIR:PATH=lib
> -DCMAKE_INSTALL_INCLUDEDIR:PATH=include
> -DCMAKE_INSTALL_DATAROOTDIR:PATH=share -DCMAKE_INSTALL_SO_NO_EXE=0
> -DCMAKE_TOOLCHAIN_FILE=/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/toolchain.cmake
> -DCMAKE_VERBOSE_MAKEFILE=1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=1 -Drootfit=ON
> -Dminuit2=ON -Dpython=ON -Dssl=ON -Dxrootd=ON -Dbuiltin_freetype=ON
> -Dbuiltin_llvm=OFF ${PACKAGECONFIG_CONFARGS} -Wno-dev'
> | ERROR: Function failed: do_configure (log file is located at
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/log.do_configure.16761)
> ERROR: Task
> (/local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1027 tasks of which 1024 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   /local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

