Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43620E00777; Fri, 20 Mar 2015 04:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EF2DE0056E
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 04:06:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 20 Mar 2015 04:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,436,1422950400"; d="scan'208";a="701608353"
Received: from ebtoomey-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.25.148])
	by orsmga002.jf.intel.com with ESMTP; 20 Mar 2015 04:06:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dilip Basavaraju <DILIP.KUMARB@lnttechservices.com>
Date: Fri, 20 Mar 2015 11:06:01 +0000
Message-ID: <1790572.Oekn6fBifF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <AA6EBB22527ED441A9B86C56F43F6DD81E3D2383@POCITMSEXMB07.LntUniverse.com>
References: <AA6EBB22527ED441A9B86C56F43F6DD81E3D2383@POCITMSEXMB07.LntUniverse.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: customising root file system by removing the unwanted commands and libraries
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
X-List-Received-Date: Fri, 20 Mar 2015 11:06:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dilip,

On Wednesday 18 March 2015 03:00:37 Dilip Basavaraju wrote:
>                 I want to build an RFS, which I need to customize it by
> removing the unwanted packages and particular commands which is not used by
> me.
> 
>                 Please suggest me how to customize, or refer me for
> documents where I can read and understand completely all the details about
> customization.
> 
>                 For example:
> 
>                 /bin will have cat, ls, cd, lsmod, wc .....
> 
>                 I want to remove wc and lsmod and minimize my RFS as much as
> possible.

We have a general guide that might be useful here:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-a-tiny-system

(Whether you actually need to use poky-tiny itself is a separate question,
but it does explain some of the techniques used to generate it.)

Ultimately, removing things comes down to figuring out how they got there in
the first place. The Toaster Web UI, or the graphs produced by buildhistory for
the image and bitbake -g may be useful in that process - but note that not
everything can be removed easily.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

