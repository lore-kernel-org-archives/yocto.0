Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0865CE006DD
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 04:49:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B3F55F81256; Thu,  5 Jan 2012 05:49:37 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BA899F81254;
	Thu,  5 Jan 2012 05:49:36 -0700 (MST)
Message-ID: <4F059C60.8020507@mlbassoc.com>
Date: Thu, 05 Jan 2012 05:49:36 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Can't build util-linux
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
X-List-Received-Date: Thu, 05 Jan 2012 12:49:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using a freshly updated master

OE Build Configuration:
BB_VERSION        = "1.15.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1+snapshot-20120105"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:5aabdbaff7b8be319a86c5e33cc2eb8c2e4aa2ef"

| NOTE: DO PACKAGE QA
| NOTE: Checking Package: util-linux-agetty
| ERROR: Error executing a python function in /tmp/poky-multi/meta/recipes-core/util-linux/util-linux_2.20.1.bb:
| AttributeError: 'module' object has no attribute 'check_output'
|
| ERROR: The stack trace of python calls that resulted in this exception/failure was:
| ERROR:   File "do_package_qa", line 68, in <module>
| ERROR:
| ERROR:   File "do_package_qa", line 57, in do_package_qa
| ERROR:
| ERROR:   File "insane.bbclass", line 19, in package_qa_walk
| ERROR:
| ERROR:   File "insane.bbclass", line 17, in package_qa_check_unsafe_references_in_binaries
| ERROR:
| ERROR: The code that was being executed was:
| ERROR:      0064:        bb.fatal("QA run found fatal errors. Please consider fixing them.")
| ERROR:      0065:    bb.note("DONE with PACKAGE QA")
| ERROR:      0066:
| ERROR:      0067:
| ERROR:  *** 0068:do_package_qa(d)
| ERROR:      0069:
| ERROR: (file: 'do_package_qa', lineno: 68, function: <module>)
| ERROR:      0053:                errorchecks.append(g[testmatrix[e]])
| ERROR:      0054:
| ERROR:      0055:        bb.note("Checking Package: %s" % package)
| ERROR:      0056:        path = "%s/%s" % (pkgdest, package)
| ERROR:  *** 0057:        if not package_qa_walk(path, warnchecks, errorchecks, skip, package, d):
| ERROR:      0058:            walk_sane  = False
| ERROR:      0059:        if not package_qa_check_rdepends(package, pkgdest, skip, d):
| ERROR:      0060:            rdepends_sane = False
| ERROR:      0061:
| ERROR: (file: 'do_package_qa', lineno: 57, function: do_package_qa)
| ERROR: Function 'do_package_qa' failed
NOTE: package util-linux-2.20.1-r1: task do_package: Failed

Ideas?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

