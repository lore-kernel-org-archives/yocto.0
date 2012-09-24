Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83F0E00347
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 09:33:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Sep 2012 09:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,476,1344236400"; d="scan'208";a="212038677"
Received: from unknown (HELO helios.localnet) ([10.252.122.13])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2012 09:33:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 24 Sep 2012 17:33:49 +0100
Message-ID: <1411704.42mFN9N5m0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
References: <1716058.TZM8ukYCTx@helios>
	<CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Sep 2012 16:33:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 24 September 2012 12:29:07 Trevor Woerner wrote:
> On Mon, Sep 24, 2012 at 7:10 AM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> >             openSUSE 11.4 \n \
> >             openSUSE 12.1 \n \
> 
> openSUSE 12.2 was released on September 5th. I have been using it
> since around then and haven't found any issues. Is there some defacto
> test I can run to definitively say 12.2 works fine with Yocto?

IIRC, when we tested the 12.2 pre-release we found we were unable to support 
it due to the following bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2201

If that is definitely fixed and builds run through OK, we should be able to add 
it to our host distro tests and declare it supported.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

