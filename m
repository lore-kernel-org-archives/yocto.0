Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9004BE00D59; Tue, 26 Apr 2016 19:30:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC11E00D56
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 19:30:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Apr 2016 19:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,539,1455004800"; d="scan'208";a="967269448"
Received: from wlee9-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.75])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2016 19:30:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 27 Apr 2016 14:30:51 +1200
Message-ID: <11696073.T7gOO91bRW@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <571E1646.5060809@mlbassoc.com>
References: <571E1646.5060809@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Strange dependency
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
X-List-Received-Date: Wed, 27 Apr 2016 02:30:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Mon, 25 Apr 2016 15:06:14 Gary Thomas wrote:
> I have a distribution which normally includes x11.  I just
> ran a build with
>    DISTRO_FEATURES_remove = "x11 wayland"
> 
> Why on earth did this require qemu-native to be rebuilt?
> One would think that qemu-native would be independent of the
> DISTRO_FEATURES??

Looking at meta/recipes-devtools/qemu/qemu.inc it is explicitly looking at 
DISTRO_FEATURES for the native class. That seems wrong to me as well, but I 
would be surprised if it were the only place we were referring to 
DISTRO_FEATURES in the native context (especially implicitly - consider the 
defaults for PACKAGECONFIG in various recipes where we initialise it based on 
DISTRO_FEATURES and don't provide a special default for native). I guess it's 
something that someone will need to go through and clean up at some point.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

