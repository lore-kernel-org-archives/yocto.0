Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6D2E013A6
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 06:26:05 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q5EDQ2RI002591
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 15:26:02 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q5EDQ1wq002511
	for yocto@yoctoproject.org; Thu, 14 Jun 2012 15:26:01 +0200
Date: Thu, 14 Jun 2012 15:26:01 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: yocto@yoctoproject.org
Message-ID: <20120614132601.GB29124@giant>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Discussion: Package testing
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
X-List-Received-Date: Thu, 14 Jun 2012 13:26:06 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi.

Many source packages include their own package test suites. We are looking at running these tests on target in a structured way, and I would like a discussion about how to best fit this into the Yocto framework.

The actions that need to be performed for a package test are roughly:

1) Build the test suite
2) Make the test suite appear on target
3) Run the test suite
4) Parse the results

Each action can be done in several ways, and there are different considerations for each solution.

1) Build the test suite
-----------------------
Many package tests are simply bash scripts that run the packaged binaries in various ways, but often the test suites also include binary tools that are not part of the normal package build. These tools have to be built for package testing to work.

Additionally, many packages build and run the test in a single command, such as "make check", which is obviously unsuitable for cross-compiled packages.

We can solve this in different ways:

a) Run the test build+run jobs on target. This avoids the need to modify packages, but building code on target can get quite expensive in terms of disk space. This in turn means many tests would require a harddisk or network disk to run.

b) Patch the makefiles to split test building and test running. Patching makefiles mean we get an additional maintenance and/or upstreaming burden, but we should be able to do this in ways that are acceptable to upstream. This is our suggestion.


2) Make the test suite appear on target
---------------------------------------
The test suite and utilities obviously have to be executable by the target system in order to run. There are a few options for this:

a) Copy all test files to the target at test run time, from the build dir, using whatever means available (scp, ftp etc). This limits testing to targets/images with easy automatic file transfer abilities installed.

b) NFS mount the build dir to access the full work dir and hence the test code. this limits testing to targets (and images) with network+nfs support. Plus it blends the build env and runtime env in an unpleasant way.

c) Create ${PN}-ptest packages (in the model of -dev and -dbg) that contain all test files and add those to the image and hence the rootfs. This is our suggestion.


3) Run the test suite
---------------------
Depending on how the test files are presented to the target, the way we run them can take different shapes:

a) (scp) A top-level run-all-tests.sh runs on the build host, copies all test files from build dir to target, logs in and runs each test.

b) (nfs) run-all-tests.sh is executed in the nfs-mounted build dir on target and build-runs each test in its work dir.

c) (-ptest) Install all test files to /opt/ptest/${PN}-${PV} (for example). Make a package "ptest-runner" that has a script /opt/ptest/run-all-tests to iterate over all installed tests and run them. This is our suggestion.


4) Parse the test results
-------------------------
Just running the tests doesn't give us much. We have to be able to look at the results and make them meaningful to us on a system-global level. Packages present their test results in very different ways, and we need to convert that to a generic format:

a) Patch each package test to produce a generic ptest output format. This is likely difficult to get accepted upstream.

b) Patch the test code minimally and instead use a simple per-packet translate script that converts test suite output from the package-specific format to a generic ptest format. This is our suggestion.


Opinions?

Note that this mail is about the test suites for/in/by specific packages. Standalone test suites such as LTP are a slightly different topic, since they are separate packages (${BPN} == ${PN}) rather than package companion suites.

-- 
Björn

