Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE245E0099B; Tue, 21 Apr 2015 03:13:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FDD6E00952
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 03:12:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2015 03:13:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,615,1422950400"; d="scan'208";a="683290007"
Received: from ppiorkow-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.9.218])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2015 03:12:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Christophe Coutand <ccoutand@widenorth.no>
Date: Tue, 21 Apr 2015 11:12:56 +0100
Message-ID: <6115291.3O8KzSeDpB@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
References: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to add openmp to the target image
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
X-List-Received-Date: Tue, 21 Apr 2015 10:13:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Cristophe,

On Monday 20 April 2015 13:15:06 Christophe Coutand wrote:
> Is there a way to include the openmp library on the target image? when
> building the full target image for a freescale processor, I get gcc etc...
> installed on the target filesystem but not libgomp. It is however correctly
> deployed when installing the SDK on the host machine.

The library is packaged in a package called libgomp, headers are in a package
called libgomp-dev. You can add these to your image if you are looking to
build things on the target itself [1], but if you are simply building an
application that you want to link to this library from within the build
system, you should not need to explicitly add it because the build system will
pick up on the dynamic link and add a dependency from your application package
on the libgomp package automatically.

Cheers,
Paul

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

-- 

Paul Eggleton
Intel Open Source Technology Centre

