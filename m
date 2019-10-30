Return-Path: <robert.joslyn@redrectangle.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F69DE00DFA; Tue, 29 Oct 2019 22:12:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.70.183.193 listed in list.dnswl.org]
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
	[217.70.183.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B18E2E00DEF
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 22:12:22 -0700 (PDT)
X-Originating-IP: 173.197.191.182
Received: from xps13.localdomain (rrcs-173-197-191-182.west.biz.rr.com
	[173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D769F240005;
	Wed, 30 Oct 2019 05:12:17 +0000 (UTC)
Message-ID: <f90074a1a4125de6e36a60a3b1eeb3cdf4b65c20.camel@redrectangle.org>
From: Robert Joslyn <robert.joslyn@redrectangle.org>
To: Martin Jansa <martin.jansa@gmail.com>, akuster <akuster@mvista.com>
Date: Tue, 29 Oct 2019 22:12:14 -0700
In-Reply-To: <CA+chaQdeYS3+wQEBdK-EDOEPbauz88YQ0VsPgSdT7N8vZ3gXqg@mail.gmail.com>
References: <5ed5-5db71680-7f-1be36200@40858189>
	<acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
	<d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
	<3cb7a48c-fdd6-5fc8-ab7f-e93c6cf3482e@intel.com>
	<e82f1125-b9dc-fa79-008a-30f8a74866ac@mvista.com>
	<CA+chaQdeYS3+wQEBdK-EDOEPbauz88YQ0VsPgSdT7N8vZ3gXqg@mail.gmail.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Wed, 30 Oct 2019 05:12:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-10-29 at 20:30 +0100, Martin Jansa wrote:
> PR server never knows which one is really newer (in git).
> 
> It just returns max(LOCALCOUNT)+1 when it gets query for hash which
> isn't stored in the database yet.
> 
> Either the build in question didn't use PRserv at all or PRserv's cache
> was deleted between builds or the builds were using the same
> buildhistory but different PRserv's or the first systemd SRCREV was
> reused from sstate created on another server which doesn't share the
> PRserv (so it didn't build it locally to query local PRserv to
> store 511646b8ac as LOCALCOUNT).
> 
> e.g. I've just built systemd with 511646b8ac hash as:
> systemd_241+0+511646b8ac-r0.0webos4_qemux86.ipk
> but reusing it from sstate created on another jenkins server as shown by
> buildstats-summary:
> 
> NOTE: Build completion summary:
> NOTE:   do_populate_sysroot: 100.0% sstate reuse(124 setscene, 0
> scratch)
> NOTE:   do_package_qa: 100.0% sstate reuse(10 setscene, 0 scratch)
> NOTE:   do_packagedata: 100.0% sstate reuse(51 setscene, 0 scratch)
> NOTE:   do_package_write_ipk: 100.0% sstate reuse(10 setscene, 0
> scratch)
> NOTE:   do_populate_lic: 100.0% sstate reuse(17 setscene, 0 scratch)
> 
> Then I've reverted oe-core
> commit 8b9703454cb2a8a0aa6b7942498f191935d547ea to go back
> to c1f8ff8d0de7e303b8004b02a0a47d4cc103a7f8 systemd revision.
> 
> This time it haven't found valid sstate archive for it:
> NOTE: Build completion summary:
> NOTE:   do_populate_sysroot: 0.0% sstate reuse(0 setscene, 16 scratch)
> NOTE:   do_package_qa: 0.0% sstate reuse(0 setscene, 19 scratch)
> NOTE:   do_package: 15.8% sstate reuse(3 setscene, 16 scratch)
> NOTE:   do_packagedata: 0.0% sstate reuse(0 setscene, 16 scratch)
> NOTE:   do_package_write_ipk: 0.0% sstate reuse(0 setscene, 19 scratch)
> NOTE:   do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)
> 
> and resulting .ipk has also +0:
> systemd_241+0+c1f8ff8d0d-r0.0webos4_qemux86.ipk
> but no warning is shown, because in this case it went from 511 to c1f.
> 
> Removing the revert again, doesn't trigger the warning again, because it
> will be again reused from sstate (and QA checks won't get executed):
> NOTE: Build completion summary:
> NOTE:   do_populate_sysroot: 100.0% sstate reuse(16 setscene, 0 scratch)
> NOTE:   do_package_qa: 100.0% sstate reuse(19 setscene, 0 scratch)
> NOTE:   do_packagedata: 100.0% sstate reuse(16 setscene, 0 scratch)
> NOTE:   do_package_write_ipk: 100.0% sstate reuse(19 setscene, 0
> scratch)
> NOTE:   do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)
> 
> And the local PRserv database still has only the c1f8ff8d0d hash,
> because 511646b8ac was never really queried against this local PRserv.
> 
> cache$ sqlite3 prserv.sqlite3 "select * from PRMAIN_nohist where version
> like 'AUTOINC-systemd-1%'"
> AUTOINC-systemd-1_241+|qemux86|AUTOINC+c1f8ff8d0d|0
> 
> Also systemd recipe is using strange format with:
> PV_append = "+${SRCPV}"
> 
> most recipes use "+git${SRCPV}" or "+gitr${SRCPV} to make it more clear
> where this +0+hash came from.
> 
> So long story short: the change is correct, PRserv should handle this,
> but there are many cases where it will fail (e.g. 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5399), but that's not
> a reason to start PE bumps everywhere.

I think this explains what I'm seeing and matches what Ross said. I did
setup the same test and am able to see the version going forward properly
when I have the PR server enabled. The file goes from

systemd_241+0+c1f8ff8d0d-r0.0_core2-64.ipk
to
systemd_241+1+511646b8ac-r0.0_core2-64.ipk

It wasn't obvious to me that the +0 would be incremented by the PR server,
I guess I never noticed it before. I already had the PR server running for
my production builds, but I didn't have it enabled for my test builds
where I got the error. I'll setup another PR server for my test builds to
prevent false alarms like this.

Thanks for the help!

Robert



