Return-Path: <simon.zeni@posteo.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0495E00D3F; Thu,  2 May 2019 15:14:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A27C6E00754
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 15:14:20 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id AD64716005F
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 00:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1556835258; bh=WISPqx/krdbrLNgq+8hnYoYJeJS/LbIYzyZwxFoqiDE=;
	h=Date:From:To:Subject:From;
	b=gQVY2ue9iLnXTbQ8jLbYP256p0hhWF8JL4ZvRrcwWzoviaYb4scf10muWLxEL0rS1
	qiUapLfK18JJnd2/5cnimksA8JiFMCD1khqGs3+EXrvF6gAzbFJib8Dv4MhGf2Tr1p
	z/abY0rlsqNvr8ubZITdg6VZIn7mJZeTylqYxP0aHya8JnoAG/rc3h4PAVcQBrarKX
	pa7gF7z7e1rk5ab/5dMef4xhsOk4K4YtgEQC4E/Ka8KkRFJxnV7VWSX3iY1y//DHi4
	cPvQqMcIyBI+yndXD2c9y8q64KL5wuH00P82Zz5eFk4Z/PhEZh8e67qVZJ9ulZlS25
	5U8vPV0rSSOTQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44w8gZ2Vxxz6tm7
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 00:14:18 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 03 May 2019 00:14:18 +0200
From: simon.zeni@posteo.net
To: Yocto <yocto@yoctoproject.org>
Message-ID: <c84b72da1abc1ea12f9e5e86d4d08758@posteo.net>
X-Sender: simon.zeni@posteo.net
User-Agent: Posteo Webmail
Subject: Dependencies with third party binaries
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
X-List-Received-Date: Thu, 02 May 2019 22:14:22 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm currently working on repackaging the 2016 Intel compiler and I am 
stuck at the dependency resolution.

I am basing my recipe on the AUR PKGBUILD [1], which extracts the RPMs 
from the parallel-studio-xe [2] archive and extracts the content of the 
RPMs to get the binaries. I already have the RPMs extracted from the 
tarball and stored in a git repo. Not the ideal solution, but good 
enough for now.

The `bitbake` command for the recipe is passing after disabling a couple 
of QA errors (too much for my taste), but the recipe for the 
`core-image` fails at the dependency
resolution. From what I understand, all of the binaries inside of the 
`FILES_${PN}` are checked, and one (or more) fails at the dependency 
check with the following message :

```
Error:
  Problem: conflicting requests
   - nothing provides ld-linux-k1om.so.2()(64bit) needed by 
icc-2016+1-r0.corei7_64
```

This shared library seems to be Intel related but I cannot find it in 
all of the RPMs contained in the initial tarball. It is also not needed 
to run the compiler, I was able to execute the `icc` and `icpc` (the c++ 
compiler) binaries from the devshell.

I know this is wrong and against every yocto principles, but is there a 
way to skip the dependenciey resolution for a specific recipe ? Or is 
there a recipe made by Intel that I missed ?
I'm also open to any suggestions on how to tackle this task.

Here's my recipe so far :

```
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

DEPENDS += "libarchive-native"

SRC_URI = # omitted

PV = "2016-1"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

extract_rpms() {
for rpm_file in ${S}/$1; do
	bsdtar -xf ${rpm_file} -C $2
done
}

# Skip the unwanted steps
do_configure[noexec] = "1"
do_compile[noexec] = "1"

do_install () {
extract_rpms 'intel-icc*.rpm' ${D}
extract_rpms 'intel-comp*.rpm' ${D}
extract_rpms 'intel-ccomp*.rpm' ${D}
extract_rpms 'intel-openmp*.rpm' ${D}
}

do_package_qa[noexec] = "1"

ALLOW_EMPTY_${PN} = "1"

FILES_SOLIBSDEV = ""
FILES_${PN} += "/opt/intel/*"

INSANE_SKIP_${PN} += "already-stripped ldflags arch staticdev file-rdeps 
build-deps"

INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

```

Thanks,

Simon Zeni

[1]: 
https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=intel-parallel-studio-xe&id=d4e2871a3bf698c3a5f58ee2201df53fe7f5dce7
[2]: 
http://registrationcenter-download.intel.com/akdlm/irc_nas/8365/parallel_studio_xe_2016_update1.tgz

