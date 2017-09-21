Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54B92E00CEF; Thu, 21 Sep 2017 14:40:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2BFEE00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:40:49 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 21 Sep 2017 14:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,426,1500966000"; d="scan'208";a="154114659"
Received: from ytan1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.156])
	by fmsmga005.fm.intel.com with ESMTP; 21 Sep 2017 14:40:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 22 Sep 2017 09:40:41 +1200
Message-ID: <1544326.TpQUvsiudI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW0NX8opCrU3Q61LYd_iUdWZGyTt_oXSE4V=uYD60O_cuQ@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<1979255.oHZKlvZ7SS@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW0NX8opCrU3Q61LYd_iUdWZGyTt_oXSE4V=uYD60O_cuQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Thu, 21 Sep 2017 21:40:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:
> On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > Right, so the next step would be looking for the hash for
> > python-native.do_populate_sysroot in conf/locked_sigs.inc within the
> > failed SDK install directory and then looking for that in both the sstate-
> > cache directory within the failed SDK and then in the sstate-cache
> > directory of the build that built it. I suspect it may not be there, but
> > let me know what you find.
> 
> Good catch! In the failing SDK neither conf/locked_sigs.inc nor
> sstate-cache do include any python-native signature or object... Only
> python3-native stuff is there. Weird! As said, SDKs from the same build
> directory, used to work since a few weeks ago. May any recent change in
> poky master have caused this while periodically upgrading without
> regenerating the sstate-cache?

No, I can't see any added references to python-native anywhere in the last few 
weeks. If you do bitbake -c clean python-native and then rebuild the SDK does 
the issue go away?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

