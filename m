Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F3794C80050
	for <yocto@yoctoproject.org>; Wed, 22 Dec 2010 14:57:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2010 12:57:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,214,1291622400"; d="scan'208";a="586416312"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.67]) ([10.7.201.67])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 12:57:31 -0800
Message-ID: <4D126637.4080805@intel.com>
Date: Wed, 22 Dec 2010 12:57:27 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Master stability and the autobuilder.
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
X-List-Received-Date: Wed, 22 Dec 2010 20:57:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

In preparation for the M3 milestone, I've been taking notes on what our
build and release process is and where the pain points are over the
course of the M2 milestone. A few things I've noted that are concerning:

1. We have a really long build cycle. It takes a good 40 hours before
contamination of master is recognized and a further 40 hours *at the
very minimum* before it can be verified as corrected.

2. We are very resource constrained. Because the build loop is so long,
our two build slaves are essentially in use 24/7. This will be
alleviated soon with a new build slave, but not until after the new year.

3. There was an issue in M2 (which I'm not totally filled in on yet, I'm
going to be pinging people for details) which caused some kernel issues
around the M2 branch for ppc and arm. I haven't seen (and I've been
swamped with email recently, so I may have missed it) any resolution on
this in master.

4. People are relying on the autobuilder to do their builds or to verify
their code.

My main goal in M3 and on, is the stability of master. If we were less
resource constrained, I could allow the autobuilder to be a global
community resource where people could just queue up their various
builds. That, unfortunately, is not the case for now. What this means is
that I have to ask people for a few things.

1. I'll be cleaning up the poky autobuilder config within the git repo
and making it very developer specific so that you should be able to run
a script and have the autobuilder set up to run incremental and fulls
(and an optional swabber target) on your own machine and have it work
right out of the box. Once my pull for the new autobuilder comes
through, please, set up your own local autobuilder instance. This should
be by the EOD today. I'll be somewhat available through the holidays to
assist people with local machine setups, but it should be fairly
straightforward.

2. Please, make certain that your code builds on your local buildbot
before submitting a pull request. As the project grows, maintaining the
stability of master will become more and more important and the limited
resources of our maintainers and our infrastructure will become more and
more stretched.

3. I've dropped this recently, due to limited time, but I'm going to
start sending out more and more broken build emails. Please, do not
ignore these. Act on them. If you're think you may be responsible for
something that is broken, let people know that you recognize the
breakage and what you're planning on doing to fix it.

4. Until we know that master is stable (right now I know of 3 or 4
issues, email forthcoming), the autobuilder will be tasked with a very
limited number of buildsets. I'll be generating a milestone type build
off of master to get some quicker response (20 hours verses 38), and
incremental versions of milestone and sanity testing. We will still be
running nightly (although you can't see it on the autobuilder right now)
and distro-testing but until master is stable, those have got to be the
priorities on the autobuilder.

-b

