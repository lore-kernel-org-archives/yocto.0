Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0015AE006C2
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 08:51:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 May 2013 08:51:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,662,1363158000"; d="scan'208";a="240829169"
Received: from unknown (HELO helios.localnet) ([10.255.12.245])
	by AZSMGA002.ch.intel.com with ESMTP; 13 May 2013 08:51:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sandino Flores Moreno <tigrux@gmail.com>
Date: Mon, 13 May 2013 16:51:43 +0100
Message-ID: <3389940.5HRX4CheDh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAJX_UagqsBF7u-J8EEUAV+93R_=SbXTYFqJd5enau1NYM3_7GQ@mail.gmail.com>
References: <CAJX_UagqsBF7u-J8EEUAV+93R_=SbXTYFqJd5enau1NYM3_7GQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Details on automated Yocto validation?
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
X-List-Received-Date: Mon, 13 May 2013 15:51:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 15 January 2013 16:46:49 Sandino Flores Moreno wrote:
> Where may I find details about Yocto Validation?
> Especially in what regards to automated tests.
> 
> I came up with this topic because we are using it to build a custom linux
> distribution, rpm based, and now it is required to implement a proper
> validation to ensure there are no regressions, that packages are sane, etc.
> 
> As it normally happens, there may be an effort that someone else started
> already.
> 
> So far I have only found:
> https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule
> 
> But it's, as the name states, it is very general.
> Something more specific would be useful.

Sorry for the (extremely) late reply. There are a few different aspects to
testing within the Yocto Project:

* Autobuilder - we have an autobuilder infrastructure upon which we run
regular builds for continuous integration purposes. Our autobuilder instance

http://autobuilder.yoctoproject.org/

The software that is used to manage the autobuilder infrastructure, which is
based upon Buildbot, is also made available so that you can set up your own autobuilder
if desired:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/

* We also have a QA process for every release. This includes a number of manual
tests which are recorded in Testopia within our Bugzilla instance at
http://bugzilla.yoctoproject.org. We plan to automate many of these tests
as part of the 1.5 release.

* Package QA tests: these are run automatically on every package built by the
build system. This is implemented in classes/insane.bbclass and is now
documented in the reference manual:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-insane

* ptest: in 1.4 we added the "ptest" framework which allows you to integrate
tests for individual software packages and run them on the target hardware (or
within emulation). There is a section within the manual explaining how to use
the ptest framework:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#testing-packages-with-ptest

* qemuimagetest: there are a limited set of runtime tests that you can
run automatically on every built image (and we enable these on the
autobuilder). These are not very well-documented but will likely be
rewritten for the next release in any case (1.5); however there is some
information on how to enable these in the sample local.conf - search
for "IMAGETEST". The implementation of the tests can be found in
scripts/qemuimage-tests/.

You can see some of the improvement work we have planned for 1.5 in the
bugs linked from this entry in Bugzilla:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=4137

Hope this helps.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

