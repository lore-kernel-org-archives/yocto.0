Return-Path: <simon.zeni@posteo.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5686AE00D4A; Thu,  2 May 2019 16:38:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D03F6E00D33
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 16:38:08 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id CD63116005D
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 01:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1556840286; bh=T6HYj77Csr72VREvfk0+krirEb3x2WgooBeixzaCe9Y=;
	h=Date:From:To:Cc:Subject:From;
	b=It9wnPHkxTPiVka+X10Q7X8mWHhC4ch0LYeSQUVwwnbfdi0OXxruBcEYuT9kF4OfU
	iDyDGY+04LHeHGjfERIAz4yoxSFS2jjeq++k58JANY+hFo9y6OXVgXi5ugwqLWi4az
	uVSIcfPXrzG66CldhZut2FHWbi9qn9J8q//Z9quFhcL/eWsE/4MIDmBiYyNaAiobd4
	wWjVkddooVs6OP7BqLfEkMcwBSNXmEeudzr5Nb5u03ztr/gbF/2nUvsQbu+vtT0psC
	bt5Fzuysf1dlA5L8NLyMVMWit5XrGyRnnL/SBAj4fHD6jZ0/iolaV1oMJ0UhyMAw/b
	azhFeqrMOJJ4w==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44wBXG3LmLz6tm8;
	Fri,  3 May 2019 01:38:06 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 03 May 2019 01:38:06 +0200
From: simon.zeni@posteo.net
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZjXghuNNJxXOODiWJ7psAS0+SuivP34rb2Vqjy-iz5zQ@mail.gmail.com>
References: <c84b72da1abc1ea12f9e5e86d4d08758@posteo.net>
	<CAJTo0LanumnXADZM5nsf8pkZxn7dRd8rFbFTovnxcf+=tHabbg@mail.gmail.com>
	<0b69463845463a6776c00441492f4bc0@posteo.net>
	<CAJTo0LZjXghuNNJxXOODiWJ7psAS0+SuivP34rb2Vqjy-iz5zQ@mail.gmail.com>
Message-ID: <9424930d1749a4ee0eabb0b54e5bd39c@posteo.net>
X-Sender: simon.zeni@posteo.net
User-Agent: Posteo Webmail
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Dependencies with third party binaries
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
X-List-Received-Date: Thu, 02 May 2019 23:38:10 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Yes, the image will be deployed on the CI to build our software. I 
managed to just drop the files at some place, but it requires user input 
to install the compiler.

Simon

On 03.05.2019 01:19, Burton, Ross wrote:
> Do you mean you want to build packages to run icc on the target?
> 
> On Thu, 2 May 2019 at 23:46, <simon.zeni@posteo.net> wrote:
>> 
>> The layer that comes with the Intel system studio only contains the
>> runtime libraries, not the compiler itself.
>> 
>> Simon
>> 
>> On 03.05.2019 00:15, Burton, Ross wrote:
>> > Why don't you use the layer that comes with the Intel compiler?
>> >
>> > Ross
>> >
>> > On Thu, 2 May 2019 at 23:15, <simon.zeni@posteo.net> wrote:
>> >>
>> >> Hi,
>> >>
>> >> I'm currently working on repackaging the 2016 Intel compiler and I am
>> >> stuck at the dependency resolution.
>> >>
>> >> I am basing my recipe on the AUR PKGBUILD [1], which extracts the RPMs
>> >> from the parallel-studio-xe [2] archive and extracts the content of
>> >> the
>> >> RPMs to get the binaries. I already have the RPMs extracted from the
>> >> tarball and stored in a git repo. Not the ideal solution, but good
>> >> enough for now.
>> >>
>> >> The `bitbake` command for the recipe is passing after disabling a
>> >> couple
>> >> of QA errors (too much for my taste), but the recipe for the
>> >> `core-image` fails at the dependency
>> >> resolution. From what I understand, all of the binaries inside of the
>> >> `FILES_${PN}` are checked, and one (or more) fails at the dependency
>> >> check with the following message :
>> >>
>> >> ```
>> >> Error:
>> >>   Problem: conflicting requests
>> >>    - nothing provides ld-linux-k1om.so.2()(64bit) needed by
>> >> icc-2016+1-r0.corei7_64
>> >> ```
>> >>
>> >> This shared library seems to be Intel related but I cannot find it in
>> >> all of the RPMs contained in the initial tarball. It is also not
>> >> needed
>> >> to run the compiler, I was able to execute the `icc` and `icpc` (the
>> >> c++
>> >> compiler) binaries from the devshell.
>> >>
>> >> I know this is wrong and against every yocto principles, but is there
>> >> a
>> >> way to skip the dependenciey resolution for a specific recipe ? Or is
>> >> there a recipe made by Intel that I missed ?
>> >> I'm also open to any suggestions on how to tackle this task.
>> >>
>> >> Here's my recipe so far :
>> >>
>> >> ```
>> >> LICENSE = "CLOSED"
>> >> LIC_FILES_CHKSUM = ""
>> >>
>> >> DEPENDS += "libarchive-native"
>> >>
>> >> SRC_URI = # omitted
>> >>
>> >> PV = "2016-1"
>> >> SRCREV = "${AUTOREV}"
>> >>
>> >> S = "${WORKDIR}/git"
>> >>
>> >> extract_rpms() {
>> >> for rpm_file in ${S}/$1; do
>> >>         bsdtar -xf ${rpm_file} -C $2
>> >> done
>> >> }
>> >>
>> >> # Skip the unwanted steps
>> >> do_configure[noexec] = "1"
>> >> do_compile[noexec] = "1"
>> >>
>> >> do_install () {
>> >> extract_rpms 'intel-icc*.rpm' ${D}
>> >> extract_rpms 'intel-comp*.rpm' ${D}
>> >> extract_rpms 'intel-ccomp*.rpm' ${D}
>> >> extract_rpms 'intel-openmp*.rpm' ${D}
>> >> }
>> >>
>> >> do_package_qa[noexec] = "1"
>> >>
>> >> ALLOW_EMPTY_${PN} = "1"
>> >>
>> >> FILES_SOLIBSDEV = ""
>> >> FILES_${PN} += "/opt/intel/*"
>> >>
>> >> INSANE_SKIP_${PN} += "already-stripped ldflags arch staticdev
>> >> file-rdeps
>> >> build-deps"
>> >>
>> >> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
>> >> INHIBIT_PACKAGE_STRIP = "1"
>> >>
>> >> ```
>> >>
>> >> Thanks,
>> >>
>> >> Simon Zeni
>> >>
>> >> [1]:
>> >> https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=intel-parallel-studio-xe&id=d4e2871a3bf698c3a5f58ee2201df53fe7f5dce7
>> >> [2]:
>> >> http://registrationcenter-download.intel.com/akdlm/irc_nas/8365/parallel_studio_xe_2016_update1.tgz
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto

