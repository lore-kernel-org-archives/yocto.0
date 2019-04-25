Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A3FE00CB9; Thu, 25 Apr 2019 05:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from barrelracingcanada.ca (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C76C4E00C14
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 05:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default;
	h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aUeQKrLqD4HcgTgRg7klpdi0SgB2h5dRq71M0R8pyU0=;
	b=MWLwZsTh/B1LL0As4PsRz7wtMA
	ogTEFt3I9R3+5zuOA9d+0qqYQno2UzgOvtBoNrsnxkbd5f//jv6Cpd2vFQqV1EewKDT0waRKJkSu6
	xZNedRbbQhkY73ZV/K5g+AV3HOCW2KueJ3bGOfyoeRKe67jiyUr9dljty+Ryh+pPybWPC/JtjffHP
	VT6omiJ1CO6LHr7cyCCsrULLHqr2tyKQXUgU0u07wPPpQ9lb0d1jtIvjVoezbCOBVyB5VGX9aPB6G
	dodqmvcr4Jlu6sOQwMAq9O5Ahi7PyTvSdDeXq7xMJOVczo2zcrliPlnsmzBRl3vb2lE42RMVbivEK
	5Tm9t1Pw==;
Received: from [72.142.126.219] (port=40956 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>) id 1hJd7s-0000Dd-IT
	for yocto@yoctoproject.org; Thu, 25 Apr 2019 08:05:21 -0400
Date: Thu, 25 Apr 2019 08:05:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: ASSUME_PROVIDED, cmake-native and why cmake is subsequently not found?
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
X-List-Received-Date: Thu, 25 Apr 2019 12:05:24 -0000
Content-Type: text/plain; charset=US-ASCII


  (warning: i've been away from YP for well over a year and am now
studiously trying to catch up, so i have some work to do.)

  currently trying to build a "core-image-minimal" for a zedboard on
my wholly unsupported fedora 30 (branched) system, so i'm well aware
there will almost certainly be breakage as i try to resolve version
numbers and so on, but working off the "thud" branch, the first issue
i had was trying to configure cmake-native -- the error message is
exactly what you can read someone asking about here:

https://stackoverflow.com/questions/52663287/glibcxx-3-4-26-not-found

/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-native/3.12.2-r0/build/Bootstrap.cmk/cmake:
/home/rpjday/oe/builds/zedboard/tmp/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6:
version `GLIBCXX_3.4.26' not found (required by
/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-native/3.12.2-r0/build/Bootstrap.cmk/cmake)
| ---------------------------------------------
| Error when bootstrapping CMake:
| Problem while running initial CMake
| ---------------------------------------------

  i'm unsure how to resolve that easily, but my first reaction was,
"if i already have cmake installed on the host, why not just take
advantage of ASSUME_PROVIDED"? i recall from some time back asking why
more host utils were not, by default, included in ASSUME_PROVIDED, and
the answer (quite reasonably) was that one wants to have as few
variables as possible for reliably replicated builds.

  fair enough, but in my case, until i figure out how to fix that, i
thought, why not just:

  ASSUME_PROVIDED += "cmake-native"

so i did, and that got me past the cmake-native build issue, until i
hit this trying to build libsolv-native:

DEBUG: Executing shell function do_configure
/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/libsolv-native/0.6.35-r0/temp/run.do_configure.16705:
line 130: cmake: command not found

  hang on ... why would a subsequent recipe not be able to locate
/usr/bin/cmake on my host after i explicitly identified cmake-native
as assumed to be provided? is there something about the libsolv-native
recipe that does not take that possibility into account? i'm just
about to check, but if someone has an explanation for that, i'm
all ears.

  finally, regarding ASSUME_PROVIDED, given that i'm already living
life dangerously with an unsupported distro, is there any harm in just
loading up on ASSUME_PROVIDED packages, as long as they work? in many
cases, i can see that the version that would be built by YP is close
to, if not identical to, my host version. so other than risking
breakage down the line as versions change, as long as the host
packages work, is there any harm in just taking advantage of them?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

