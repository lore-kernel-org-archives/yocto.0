Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E42F3E00B3D; Wed,  5 Aug 2015 01:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B142E00AB9
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 01:35:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 05 Aug 2015 01:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,615,1432623600"; d="scan'208";a="777169883"
Received: from igurvich-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.22.90])
	by fmsmga002.fm.intel.com with ESMTP; 05 Aug 2015 01:35:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 05 Aug 2015 09:35:05 +0100
Message-ID: <3739856.8JKZ5MnC4Y@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55C0D49B.4070906@mlbassoc.com>
References: <55C0D49B.4070906@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Stale warning?
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
X-List-Received-Date: Wed, 05 Aug 2015 08:35:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Tuesday 04 August 2015 09:04:59 Gary Thomas wrote:
> While I was fixing the python3 nativesdk recipe, I ran this
> step a few times:
>    $ bitbake nativesdk-python3 -C compile
> 
> After this, I get this warning:
>    WARNING:
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/python/pyt
> hon3_3.4.3.bb.do_compile is tainted from a forced run which seems quite
> reasonable.  Once I had the compile errors
> fixed, I moved the patches into the recipe and then rebuilt
> from scratch (just the nativesdk-python3).  Even though the
> package has been completely rebuilt (fetch/patch/...), I still
> get this warning, which doesn't seem right to me.  The warning
> only goes away if I clean the package:
>    $ bitbake nativesdk-python3 -c clean

This is by design, although I would agree that it would be better if it were 
able to tell if it could reasonably remove the taint on a rebuild and do so 
automatically. Since this is something that's come up before (and I've 
lamented myself) I've filed an enhancement request so we have it tracked:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=8100

At the moment it's marked "future" as I can't make any commitment to 
implementing it any time soon - someone else is welcome to have a go though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

