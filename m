Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06F19E00A08; Thu,  3 Nov 2016 20:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B1FE00912
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 20:41:31 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 03 Nov 2016 20:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,442,1473145200"; d="scan'208";a="27616691"
Received: from bkarakos-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.187.65])
	by orsmga004.jf.intel.com with ESMTP; 03 Nov 2016 20:41:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 04 Nov 2016 16:41:26 +1300
Message-ID: <1539248.F6glg5RPsy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
	<fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Fri, 04 Nov 2016 03:41:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 02 Nov 2016 07:25:13 Gary Thomas wrote:
> I've tested your patches for this (from the OE-core mailing list)
> and I can now build and use the eSDK for my board :-)

Great!
 
> I do have a couple observations/questions:
> 
> * I added my missing tool with this line in my local.conf
>       TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
>    Why did this cause many of the nativesdk tools to have to be rebuilt?

So just FYI this will only work for the standard SDK, it's not the right way 
to add these tools for the eSDK - in fact it may break the eSDK due to 
bringing things into the native sysroot that shouldn't be there.

At the moment I think the only way to properly add this to the eSDK is to do 
this:

SDK_TARGETS += "ti-cgt-pru-native:do_populate_sysroot"

We don't document this, and it's a little awkward in any case. I'll work on 
it.

> * When I built 'nativesdk-ti-cgt-pru', I got a number of scary looking
> errors - here are a few: ERROR: nativesdk-ti-cgt-pru-2.1.1-r0 do_configure:
> Taskhash mismatch eb0229a8c364c4c399fc2e84f4dfaf91 versus
> b5d16aa43836f3832200af39aba5b796 for
> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cg
> t-pru_2.1.1.bb.do_configure ERROR: Taskhash mismatch
> eb0229a8c364c4c399fc2e84f4dfaf91 versus b5d16aa43836f3832200af39aba5b796
> for
> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-c
> gt-pru_2.1.1.bb.do_configure ERROR: nativesdk-ti-cgt-pru-2.1.1-r0
> do_compile: Taskhash mismatch bc0d6bb3a62f58875962d4ccf1b60dd9 versus
> 9e207a5a6aa53512135b5ea3a0610bf3 for
> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cg
> t-pru_2.1.1.bb.do_compile

Where did you build this? Just in your normal build?

This kind of error indicates that a variable value is changing while bitbake 
is running - often this is caused by date/time values in variables. Looking in 
meta-ti I can't see anything that would cause this though. Was it only showing 
up for nativesdk-ti-cgt-pru ?

> * When I installed the eSDK on a machine other than where I
>    built it, I also got a lot (865) of messages like these:
> 
> WARNING: The quilt-native:do_configure sig is computed to be
> 315b89079a159e1d4e43d3199c487bdb, but the sig is locked to
> a9909bdcc4c81106eb42c21bb0d760fc in SIGGEN_LOCKEDSIGS_t-x86-64
> The quilt-native:do_compile sig is computed to be
> be128011cc1f47157898f513dc4e9bbb, but the sig is locked to
> fa83446de41fe9e7c2c49c2745438a8d in SIGGEN_LOCKEDSIGS_t-x86-64
> The quilt-native:do_install sig is computed to be
> 85c8be820a93b84901dd7528eb61840e, but the sig is locked to
> 6caa366055ef06147ef64cbe7d83c608 in SIGGEN_LOCKEDSIGS_t-x86-64
> The quilt-native:do_populate_sysroot sig is computed to be
> 5b0f52254aa8548fa406b806dae000cb, but the sig is locked to
> d3cf7e526716d0286ce596c44c6b9936 in SIGGEN_LOCKEDSIGS_t-x86-64
> The glibc:do_patch sig is computed to be 373272e62465460928320aa7643f9916,
> but the sig is locked to 712620a3943887e11d9730013d1e07f0 in
> SIGGEN_LOCKEDSIGS_t-armv7ahf-neon

Right. Are you using uninative? If not, you probably should (and I just sent a 
patch to disable building the eSDK without it).

> All that said, it is now working for me, time to learn to use it!
> Thanks for your help.  Feel free to add my Acked-by or Signed-off-by
> to your patches if you wish.
> 
> Acked-by: Gary Thomas <gary@mlbassoc.com>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>

Thanks!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

