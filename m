Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 918B5E00BB0; Mon, 31 Oct 2016 15:06:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B6FFE00B04
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 15:06:51 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 31 Oct 2016 15:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,428,1473145200"; d="scan'208";a="25925106"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by fmsmga005.fm.intel.com with ESMTP; 31 Oct 2016 15:06:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 01 Nov 2016 11:06:47 +1300
Message-ID: <2883891.WbHxuNiGSe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
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
X-List-Received-Date: Mon, 31 Oct 2016 22:06:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Mon, 31 Oct 2016 13:19:18 Gary Thomas wrote:
> I'm trying to build an extensible SDK (eSDK) for my target and running into
> a few problems.
> 
>    gthomas@zeus:~$
> /work/tmp/mlb-glibc-x86_64-arm-toolchain-ext-2.2+snapshot.sh MLB
> @SDK_TITLE@ Associates Embedded (Poky/Yocto Powered) Extensible SDK
> installer version 2.2+snapshot
> ===========================================================================
> Enter target directory for SDK (default:
> ~/mlb_sdk):
>    You are about to install the SDK to "/home/gthomas/mlb_sdk".
> Proceed[Y/n]? y Extracting SDK.........................................done
>    Setting it up...
>    Extracting buildtools...
>    Preparing build system...
>    Error: 'meta-poky/conf' must be a directory containing local.conf &
> bblayers.conf
> 
> The first thing I notice is the banner which should read:
>    MLB & Associates Embedded (Poky/Yocto Powered) Extensible SDK installer
> version 2.2+snapshot
> ===========================================================================

Ah, I see what's going wrong here - we're doing a sed replacement and the 
ampersand is being interpreted as an "insert matched string" directive - my 
fault. I'll insert some escaping.

> The second is that I use my own distribution (not poky).  How can I
> build an eSDK using my distribution?

FYI the eSDK will use whatever you set in DISTRO - you have your own 
distribution, but I assume you are still referencing poky - perhaps as an 
include from your distro configuration? At least meta-poky must be in your 
bblayers.conf, otherwise I don't think you'd be getting this error.

Regardless of that, there is a bug here somewhere. What do you have under 
layers/ in the generated SDK? Are you setting TEMPLATECONF anywhere?

> Once I ran into this error, I tried rebuilding using the [old] SDK.
> I noticed that it seemed to rebuild [most] everything all over again.
> Is there no shared state / reusable components between the eSDK and SDK?

The extensible SDK and standard SDK are quite different - the host part of the 
extensible SDK is built out of -native rather than nativesdk- components 
(aside from buildtools-tarball, that is) so there are lots of things that need 
to be built if you subsequently build the standard SDK and you haven't done so 
already. It shouldn't be "almost everything", but I appreciate it's often hard 
to tell.

> Finally, since I had to install SDK and not eSDK, I'm missing some tools
> I was hoping to have.  I want to build PRU programs for the BeagleBoneBlack
> and I'm using meta-ti to import those tools and programs.  I was expecting
> the PRU tools which come from ti-cgt-pru-native to be included with my
> eSDK/SDK, but they don't seem to be, at least not in the SDK.  How can I
> get these tools available so I can use the SDK to develop PRU code for the
> BBB?

Not sure exactly, but for the standard SDK I would assume you'd need to append
nativesdk-<something> to TOOLCHAIN_HOST_TASK so that those tools get included. 
Aside from the BSP setting that variable (which probably isn't a good idea) 
there isn't currently a means of host tools automatically getting pulled into 
the SDK based on the target, though it has been discussed [1].

Cheers,
Paul

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=5429

-- 

Paul Eggleton
Intel Open Source Technology Centre

