Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBD26E00D64; Wed, 29 Nov 2017 19:30:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7749AE00D07
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 19:30:50 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Nov 2017 19:30:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,339,1508828400"; d="scan'208";a="179393084"
Received: from tchin5-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.72.79])
	by orsmga005.jf.intel.com with ESMTP; 29 Nov 2017 19:30:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jerry Lian <jerry.lian@gmail.com>
Date: Thu, 30 Nov 2017 12:03:27 +1300
Message-ID: <21915543.uzsTMMMV9o@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAE0QtjOcjf8TL5Hx5WbpLOoZ4kMm84CbWcwYUZo+bM6CSzSnuw@mail.gmail.com>
References: <CAE0QtjOcjf8TL5Hx5WbpLOoZ4kMm84CbWcwYUZo+bM6CSzSnuw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Concept clarification: can we deploy Yocto SDK to target?
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
X-List-Received-Date: Thu, 30 Nov 2017 03:30:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jerry,

On Thursday, 30 November 2017 10:35:32 AM NZDT Jerry Lian wrote:
> I am confused about the concept of Yocto SDK:
> * when we use "bitbake -c populate_sdk some_image", we obtain sysroots for
> both target and host.
> * But why do we need sysroot for host?

The host sysroot actually contains the main part of the SDK - the cross-
compiler and other tools that need to run on the host. The target part usually 
doesn't include any executable binaries, only libraries and debugging symbols.
  
> * I know we can build application under target-sysroot (surely source the
> environment), with fast speed.
> * But can we deploy target-sysroot to hardware-target?
> (Yes, I do want to compile/build application inside hardware-target, even
> though it is slow)

I would suggest an alternative - install the compiler and tools into your 
image. You could do this when building the image, or alternatively if you 
enable package management in the image you could install them after the fact. 
At the image level there's a "tools-sdk" IMAGE_FEATURES item that will install 
the appropriate packages; alternatively you can install packagegroup-core-sdk 
which is effectively the same thing or for something a little more lightweight 
there is packagegroup-core-buildessential (roughly equivalent to debian's 
build-essential).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

