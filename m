Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC20DE0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:35:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q05GZdrc028464
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2012 08:35:39 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 5 Jan 2012 08:35:39 -0800
Message-ID: <4F05D15A.30504@windriver.com>
Date: Thu, 5 Jan 2012 10:35:38 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4F059C60.8020507@mlbassoc.com>
In-Reply-To: <4F059C60.8020507@mlbassoc.com>
Subject: Re: Can't build util-linux
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
X-List-Received-Date: Thu, 05 Jan 2012 16:35:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

I'm getting the same error.  There is a workaround:

Add the following to your local.conf

WARN_QA = "ldflags useless-rpaths rpaths"

A new QA check went in, and it appears to be missing part of the merge.

(WARN_QA is normally defined as:
WARN_QA ?= "ldflags useless-rpaths rpaths unsafe-references-in-binaries 
unsafe-references-in-scripts")

On 1/5/12 6:49 AM, Gary Thomas wrote:
> Using a freshly updated master
>
> OE Build Configuration:
> BB_VERSION        = "1.15.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.1+snapshot-20120105"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:5aabdbaff7b8be319a86c5e33cc2eb8c2e4aa2ef"
>
> | NOTE: DO PACKAGE QA
> | NOTE: Checking Package: util-linux-agetty
> | ERROR: Error executing a python function in /tmp/poky-multi/meta/recipes-core/util-linux/util-linux_2.20.1.bb:
> | AttributeError: 'module' object has no attribute 'check_output'
> |
> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
> | ERROR:   File "do_package_qa", line 68, in<module>
> | ERROR:
> | ERROR:   File "do_package_qa", line 57, in do_package_qa
> | ERROR:
> | ERROR:   File "insane.bbclass", line 19, in package_qa_walk
> | ERROR:
> | ERROR:   File "insane.bbclass", line 17, in package_qa_check_unsafe_references_in_binaries
> | ERROR:
> | ERROR: The code that was being executed was:
> | ERROR:      0064:        bb.fatal("QA run found fatal errors. Please consider fixing them.")
> | ERROR:      0065:    bb.note("DONE with PACKAGE QA")
> | ERROR:      0066:
> | ERROR:      0067:
> | ERROR:  *** 0068:do_package_qa(d)
> | ERROR:      0069:
> | ERROR: (file: 'do_package_qa', lineno: 68, function:<module>)
> | ERROR:      0053:                errorchecks.append(g[testmatrix[e]])
> | ERROR:      0054:
> | ERROR:      0055:        bb.note("Checking Package: %s" % package)
> | ERROR:      0056:        path = "%s/%s" % (pkgdest, package)
> | ERROR:  *** 0057:        if not package_qa_walk(path, warnchecks, errorchecks, skip, package, d):
> | ERROR:      0058:            walk_sane  = False
> | ERROR:      0059:        if not package_qa_check_rdepends(package, pkgdest, skip, d):
> | ERROR:      0060:            rdepends_sane = False
> | ERROR:      0061:
> | ERROR: (file: 'do_package_qa', lineno: 57, function: do_package_qa)
> | ERROR: Function 'do_package_qa' failed
> NOTE: package util-linux-2.20.1-r1: task do_package: Failed
>
> Ideas?
>


