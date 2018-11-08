Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA2C3E00ABE; Thu,  8 Nov 2018 14:41:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1850E00A1A
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 14:41:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Nov 2018 14:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,481,1534834800"; d="scan'208";a="272543125"
Received: from yngiam-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.68.155])
	by orsmga005.jf.intel.com with ESMTP; 08 Nov 2018 14:41:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 09 Nov 2018 11:41:42 +1300
Message-ID: <6194709.vnUpm0U1CA@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <4820003.uEWOQMMmpA@localhost.localdomain>
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
	<4820003.uEWOQMMmpA@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: 2.6 migration guide
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
X-List-Received-Date: Thu, 08 Nov 2018 22:41:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 5 November 2018 4:32:26 PM NZDT Paul Eggleton wrote:
> On Wednesday, 31 October 2018 11:06:31 AM NZDT Scott Rifenbark wrote:
> > I have an initial section at
> > https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release,
> > which is based on Richard's input.  I am sure there are more items.
> 
> OK, so I have removed Richard's items from the wiki page (since they're now
> in the manual) and added items I have gathered from reviewing all of the 
> git commits in the release. Let me know if you need clarification on anything
> - everyone else, let us know if I missed or messed up something.
> 
>   https://wiki.yoctoproject.org/wiki/FutureMigrationGuide

I forgot one thing:

------- snip -------

Python 3 profile-guided optimisation
-----------------------------------------------

The python3 recipe now enables profile-guided optimisation; this requires a little extra build time in exchange for improved performance on the target at runtime, and is only enabled if the current MACHINE has support for user-mode emulation in QEMU (i.e. "qemu-usermode" is in MACHINE_FEATURES, which it is by default, so the machine configuration would need to have opted out for it not to be). If you wish to disable Python profile-guided optimisation regardless of the value of MACHINE_FEATURES, then ensure that PACKAGECONFIG for python3 does not contain "pgo". You could accomplish the latter using PACKAGECONFIG_pn-python3 = "pgo" at the configuration level or by setting PACKAGECONFIG using a bbappend for the python3 recipe.

------- snip -------


> BTW I think the section on postinstalls (from Richard's input) is a little terse
> and needs expansion - most importantly it needs to describe what actions the
> user might need to take. I'll take care of this on review if nobody else does.

So what I think we need here is to copy part of the "Using exit 1 to explicitly defer a postinstall script until first boot..." paragraph that's mentioned in the 2.5 migration section. Would it make sense to actually break this out to its own place in the documentation (on "Deferring postinstalls to first boot") and then link to that from both places?

While I think of it, could you also move the _remove item that's in the "Bitbake Changes" section into the "Override Changes" section?

Thanks,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre



