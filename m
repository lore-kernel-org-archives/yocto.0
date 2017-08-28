Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D62FE00BB7; Mon, 28 Aug 2017 02:32:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85302E00B8E
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 02:32:14 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 28 Aug 2017 02:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,441,1498546800"; d="scan'208";a="142680059"
Received: from ykhoo5-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.79.63])
	by orsmga005.jf.intel.com with ESMTP; 28 Aug 2017 02:32:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 28 Aug 2017 21:32:09 +1200
Message-ID: <2151273.fElYf2KXPe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <258ff3cf-5cac-501a-132b-b91c487c4d5b@dynamicdevices.co.uk>
References: <258ff3cf-5cac-501a-132b-b91c487c4d5b@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problems running image in qemu (x86)
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
X-List-Received-Date: Mon, 28 Aug 2017 09:32:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Sunday, 27 August 2017 1:09:49 AM NZST Alex J Lennon wrote:
> I'm bringing the Mono build up to date in the meta-mono layer and ran
> into a problem with my testing.
> 
> I generally target QEMU, e.g. qemux86, build a core-image-sato based
> Mono test image and run up with 'runqemu qemux86'
> 
> It's a remote build system so I am SSH'd in with VNC port forwarding and
> I view the QEMU box running with a TightVNC client.
> 
> This has worked well for a long time, and still works fine with the
> current krogoth branch.
> 
> I have just built against master though and am seeing screen corruption.
> 
> e.g. https://postimg.org/image/xjcdybdul

Yuck :( Would you please file a bug for this? I'm aware we've upgraded qemu 
recently (I assume this was with the 2.10-rc2 version currently in master?), 
maybe that has something to do with it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

