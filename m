Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBFB1E00CAB; Tue,  1 Aug 2017 23:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB48E00C19
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 23:38:33 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id t201so32755040wmt.0
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 23:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jVoX7ev5SIhXrXjDiyTzNNLfsBmiV52hnP5sMvfDv/8=;
	b=OaOiksjzkn1UPz4IeN8NwICqDWLiKifOogunfPAJKTK9SXej38ZKC0SE3qrogTQXu8
	9AFL+06pY/99KHrR7MatQ5gbwC2hObc/pFJDD7cFLI+1F6Tt2LgVaLDuTVdxUsbAEGE4
	GZ4bXIRsuiVQeXT0nX+P6gm7xW6/7Fhv1rPCTY28FZYP6F0OjKQXhbFLtwK774gQV/76
	e1eC6zU7J04122uyVTDSRgrTEQFlveiO4FFMXsOFHQSSyrYK4XV7ynGDjK92CcFTHTSy
	EUgytBhD6yOBlkpWUge2Tbp6I0mU0XTCCY3rTj2WtQcPlFH8BtVs4WBQvJGNM+k7bnYg
	4SqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jVoX7ev5SIhXrXjDiyTzNNLfsBmiV52hnP5sMvfDv/8=;
	b=JIqelQpfFgeyQme9z3YXD3rr5gHcc6Ku7M/FNLyYpfW1lRcwtV0QdCrewYPagiPp73
	KA15Je+mmGovMu3PJHgufl/R6j50YZoqaLDKREwgIf1cwQtZjrtS90NV4VhZmlqCTGEV
	/zVxW1GBigWIqWFt3FtMWnShw0vnBqDckURobBzQeiuLOgb4e1mX+DvIUaL2mz2ubHJ2
	C/ivMw1J1MDl8c/9YW+7dzr4gThvZVz75xj8Rzs4MlM1AhvVUf6MLLBuT2G9K2qUGU+x
	vFV3UC3leThvo/xEXNrYal0/eRKRDR9KDJwOM+n9bpZp2/i0pRLDybsis4mmxEt02STI
	A8AQ==
X-Gm-Message-State: AIVw113j0Yn+2va/Ku5qdoBKnOAq6rKi5pSVBef+cnfNUYqMxNCaKcrh
	AXaiQdTY/xPfFOm/2vXlT6k4Gzkg9w==
X-Received: by 10.80.140.253 with SMTP id r58mr20442311edr.123.1501655912354; 
	Tue, 01 Aug 2017 23:38:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Tue, 1 Aug 2017 23:38:01 -0700 (PDT)
In-Reply-To: <7205fa77-6677-581b-7067-fb4d0baad7ab@gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
	<CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
	<23c2a7a6-50fb-d3f1-3cd2-4fc406975367@gmail.com>
	<CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com>
	<7205fa77-6677-581b-7067-fb4d0baad7ab@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 1 Aug 2017 23:38:01 -0700
Message-ID: <CAMKF1soVe9msdj8ouWUZF+v-+5nncB7CPB08g_4LkgX7-Ns0qg@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Wed, 02 Aug 2017 06:38:35 -0000
Content-Type: text/plain; charset="UTF-8"

apply the solutions they may work for ubuntu

On Tue, Aug 1, 2017 at 11:33 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> Dear Yocto Team Member,
>
> I'm building with Ubuntu 16
>
>
> On 02/08/17 14:31, Khem Raj wrote:
>
> On Tue, Aug 1, 2017 at 11:18 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>
> Dear Yocto Team Member,
>
> That's the branch :
>
> ======
>
> meta-poky
> meta-yocto-bsp    = "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"
> openembedded-core = "master:2fd0757ae7fd63bc93a4ce8579c6ba0cdbb4c1cd"
> meta-openembedded
> meta-oe
> meta-xfce
> meta-gnome
> meta-python
> meta-multimedia
> meta-networking   = "master:b063789560bfb9c60a7a15277b5b3a9839b5ba74"
> meta-browser      =
> "firefox-52.1.2esr-2:c79cf6c7811afd2cd167e8967e3c29b1e797371e"
> meta-ti           = "master:872d418f6e503dea66e3533f43e7a17618183982"
>
> Initialising tasks: 100%
> |################################################################################################################################|
> Time: 0:00:08
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed
> ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile (log
> file is located at
> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
> ERROR: Logfile of failure stored in:
> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: Using icecc
> | NOTE: make -j 10
> | ERROR: oe_runmake failed
> | : && /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc && {
> PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
> && export PATH; } && /usr/bin/env perl ../automake-1.15/doc/help2man
> --output=doc/automake-1.15.1 automake-1.15
> | help2man: can't get `--help' info from automake-1.15
>
> What OS do you run on build machine ?
> if its archlinux then apply this patch to automake
>
> https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a
>
> otherwise if its centos7 then install
>
> yum install perl-Thread-Queue
>
>
>
> | Try `--no-discard-stderr' if option outputs to stderr
> | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
> | make: *** [doc/automake-1.15.1] Error 255
> | ERROR: Function failed: do_compile (log file is located at
> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
> ERROR: Task
> (virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile
> Summary: There were 4 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> bianchi77@bianchi77-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>
> How can I fix that automake error ?
>
> I tried to run bitbake core-image-minimal for it.
> Thanks,
>
> On 31/07/17 21:26, Burton, Ross wrote:
>
> Then the branch you checked out.  git branch will tell you.
>
> Ross
>
> On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com> wrote:
>
> Git clone ...
>
> On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
> How did you get poky?
>
> Ross
>
> On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:
>
> How can I see my branch?
>
> On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>
> Is my auto make disabled with icecc ?
>
> How to make it enable ? thanks.
>
> That's just a debug message.
>
> | help2man: can't get `--help' info from automake-1.15
> | Try `--no-discard-stderr' if option outputs to stderr
> | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>
> That's the error your hitting.
>
> I think you need to update to the latest commit for the branch you're
> on, there was a problem with modern perl in help2man.  What release/branch
> are you using?
>
> Ross
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> Kind regards,
> Riko Ho
> /*******/
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> Kind regards,
> Riko Ho
> /*******/

