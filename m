Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5553AE009DF; Fri, 19 Jun 2015 00:28:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (afenkart[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D659E009C6
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 00:28:21 -0700 (PDT)
Received: by ykfr66 with SMTP id r66so85594974ykf.0
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 00:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KgOLzFmjflgtzkDX2z9NHTQJjvgbIhvHQ31qY6JwmGk=;
	b=vDX4YKl5ntbBFw42ThUpb7yBU/xA4cNd0a1gC5bWQax0fvnUeqkZjibV1waSuqP4E/
	IA0P8iu8cJce6eg6XxTnX69EQNtMuVf1fjCt5rRZs47E9IEOxhvnrLJwZ8ZvHYAKAkRe
	gCuoyPf3Iiz4kUJd+fv+gQUwZktqOSR1Rx9TWAhbpV3Sk9kkbb1667sCXWHEeL2C2AqA
	Dbuc2DTBpLt3cK6DIFGyGpiqdOPRCrBpZ7Z0gUzwspzzp8fKIv4pHFvweMX6yS2QwYG8
	D/lkZqJCFgTKDQ0aNSig9LrJiTNLxvvWMTXu7rxf4GrF3aRDOj34WiLw48MVOHiRJoXP
	6XGQ==
MIME-Version: 1.0
X-Received: by 10.129.123.196 with SMTP id w187mr17834620ywc.100.1434698900689;
	Fri, 19 Jun 2015 00:28:20 -0700 (PDT)
Received: by 10.37.56.66 with HTTP; Fri, 19 Jun 2015 00:28:20 -0700 (PDT)
Date: Fri, 19 Jun 2015 09:28:20 +0200
Message-ID: <CALtMJECkfxQz+tabTRVL9JcZUNgO+Oho_JcssbCWkZdEEmCsvg@mail.gmail.com>
From: Andreas Fenkart <afenkart@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 19 Jun 2015 09:13:08 -0700
Subject: Problems using "In-Tree" defconfig File
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
X-List-Received-Date: Fri, 19 Jun 2015 07:28:27 -0000
Content-Type: text/plain; charset=UTF-8

I want to use a defconfig, that is provided by the linux git
repository, hence this seems to fit my need:

http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file

Anybody used that feature recently? I couldn't get it to work, :-(

The build fails in kernel_config target, in merge_config.sh. It fails
to merge kernel config fragments. Probably because I don't have any.

[INFO] collecting configs in .meta/meta-series
ARCH=arm O=<path>/linux-dss11e-standard-build merge_config.sh -d
mv: cannot stat '<path>/linux-dss11e-standard-build/.tmp.config*': No
such file or directory

Grep'ing for KBUILD_DEFCONFIG in kernel-tools only get_defconfig seems
to use  that variable

$ get_defconfig arm dss20_defconfig
linux/arch/arm/configs/dss20_defconfig      ...so that works fine

I took that snipped from check_defconfig functoin, here:
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/createme#n201

but that function is not called anywhere in script createme. After all
that script only creates the meta folder but has nothing to do with
kernel configuration. Seems to be a dead end. Probably get_defconfig
call should be added to configme script

Anybody had the same problem, is there a patch. Or did I misconfigure something?

kind regards,
Andi


Here my recipe:
---------------------------------------------------------------------------------------------------------------
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SRCBRANCH = "dSS"
SRCREV="82d97d74bb072fe24be10b46d0782d3735130199"
SRC_URI =
"git://git.digitalstrom.org/bsp/linux.git;protocol=https;branch=${SRCBRANCH}"

LINUX_VERSION = "4.1"
LINUX_VERSION_EXTENSION = ""
KBUILD_DEFCONFIG_dss11e = "dss20_defconfig"

PR = "r1"
PV = "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE = "(dss11e)"

