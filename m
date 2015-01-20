Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82CFAE00853; Tue, 20 Jan 2015 04:23:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0905CE0082D
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 04:23:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 20 Jan 2015 04:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,433,1418112000"; d="scan'208";a="664598500"
Received: from jkan1-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.1.52])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2015 04:23:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raphael Philipe <rapphil@gmail.com>
Date: Tue, 20 Jan 2015 12:23:09 +0000
Message-ID: <5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Tue, 20 Jan 2015 12:23:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Raphael,

On Tuesday 20 January 2015 09:17:49 Raphael Philipe wrote:
> I'm working on a set of recipes that must be configurable to be baked
> in native, nativesdk, cross and target.
> 
> I have a bunch of questions concerning this terms. I searched the
> documentation and wasn't able to find a definitive explanation for
> these terms.
> 
> I will write some statements bellow about my understanding on these
> terms, and I will ask you to please correct me if I'm wrong or add any
> additional information:
> 
> - By default, recipes bake binaries for the target architecture that
> is described in the MACHINE variable in the local.conf

Correct.

> - One can use BBCLASSEXTEND = "native nativesdk" to bake binaries for
> the host architecture (native) and for target sdk architecture. The
> target sdk architecture is described in the SDKMACHINE variable and
> the host architecture is the architecture of the machine executing
> bitbake. BBCLASSEXTEND = "native nativesdk" will alow you to bake
> recipes that are "virtual" using the suffix native ( so ${PN}-native)
> and the prefix nativesdk (so nativesdk-${PN}).

Correct. FYI alternatively you can also "inherit native" or "inherit
nativesdk" to make a recipe specific to either of those classes (in which case
the recipe itself should be named <something>-native or nativesdk-
<something>), however BBCLASSEXTEND is preferred these days.

> - Recipes that are cross need to inherit cross.bbclass. They are used for 
> ????

Cross tools, i.e. tools that need to run in the native context and produce
some binary output for the target.
 
> I'm looking for the reason why there is a u-boot-fw-utils and a
> u-boot-fw-utils-cross. One produces a binary for the target and the
> other for???

Here's the start of the discussion that precipitated this move:

  http://lists.openembedded.org/pipermail/openembedded-core/2013-September/084280.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

