Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE4BE01374
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 07:50:01 -0700 (PDT)
Received: from static-74-106-4-21.syrcny.fios.verizon.net ([74.106.4.21]
	helo=[10.197.228.148])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1SILLU-0004SN-BD; Thu, 12 Apr 2012 14:50:00 +0000
Message-ID: <4F86EA68.1070504@twobit.us>
Date: Thu, 12 Apr 2012 10:44:56 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.24) Gecko/20111114 Icedove/3.1.16
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.1.2
X-SA-Exim-Connect-IP: 74.106.4.21
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: native recipe and sysroot-destdir troubles
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
X-List-Received-Date: Thu, 12 Apr 2012 14:50:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Yocto,

I'm working on two new recipes and both are working quite well.  Now I
need native variants and online sources indicate this should be done
through BBCLASSEXTEND = "native".  For one of my recipes this works
fine, for the other not so much.

The error I'm seeing seems to be in the staging of the sysroot-destdir
which ends up being empty though the source code builds fine (image
directory has everything expected). do_populate_sysroot seems to assume
there's a directory structure present which ends up being empty causing
an error when it trys to tar the directory up.  If I create the
directories do_populate_sysroot expects the recipe runs to completion
but sysroot-destdir still ends up being empty and no packages are built.

Given that one of my packages works fine I'd guess the problem lies in
the Makefiles for the offending source tree and not yocto though I'm
still unsure of how to move forward.  Any help would be appreciated.  I
can pastebin the receips if that will help.

TIA,
- Philip

P.S. OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "<unknown>:<unknown>"


