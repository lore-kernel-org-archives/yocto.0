Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D10E009C8; Wed, 17 Jun 2015 01:32:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC64E0095D
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 01:32:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2015 01:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,632,1427785200"; d="scan'208";a="748204624"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.18.65])
	by orsmga002.jf.intel.com with ESMTP; 17 Jun 2015 01:32:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rafael E. Herrera" <raffo@cdi.com>
Date: Wed, 17 Jun 2015 09:32:45 +0100
Message-ID: <1454246.7ogHIVOs06@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1368563895.1209459.1434499086050.JavaMail.root@cdi.com>
References: <1368563895.1209459.1434499086050.JavaMail.root@cdi.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Help using bitbake to compile a custom package.
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
X-List-Received-Date: Wed, 17 Jun 2015 08:32:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rafael,

On Tuesday 16 June 2015 19:58:06 Rafael E. Herrera wrote:
> I'm trying to port an in-house piece of software in my Yocto tree. I managed
> to create a rudimentary recipe file that grabs the tar ball from the local
> disk and attempts to compile using:
> 
> host $ bitbake -f -c compile example
> 
> From the output I infer that the tar ball got unpacked and a make executed
> in the source code tree.
> 
> However, my build fails because a number of libraries are missing.
> 
> For example, the libuuid library seems not to be found. How do I verify that
> this library is available in my Yocto tree?
> 
> If not, how to determine what recipe do I need to build to get it installed?
> 
> How do I make sure that the header files for the library are also installed?

Step one is to find out which recipe provides the library. This will usually
correspond to which upstream project actually provides the source for the
library. I usually start with "git grep"; in this case "git grep libuuid"
gives me a pointer to the util-linux recipe.

Step two is to add this recipe to the value of DEPENDS within your recipe.
This ensures that the libraries and headers that are produced by the depended
upon recipe will be in the sysroot by the time the configure step of your
recipe runs.

> I'm assuming that once a library is built using the right bitbake recipe, it
> is available to the code that calls it. If not, how is that configured?

That's correct yes, once the do_populate_sysroot task of a recipe executes,
a subset of what is installed at the do_install step is "staged" into the
sysroot, and do_populate_sysroot is always run as part of the normal build
of a recipe. You do need to be explicit about stating the build-time
dependencies in DEPENDS though in order to ensure that happens for
every other recipe your recipe depends upon though.

Just in case you haven't seen it, there is a section of our manual that
describes the process of writing a new recipe that may be helpful:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

