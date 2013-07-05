Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ECDBE01488;
	Fri,  5 Jul 2013 10:33:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jul 2013 10:34:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1003,1363158000"; d="scan'208";a="365812703"
Received: from unknown (HELO helios.localnet) ([10.252.122.22])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jul 2013 10:33:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Date: Fri, 05 Jul 2013 18:33:07 +0100
Message-ID: <10484040.Vh0tWtMikW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-25-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <51D6FC09.4000506@yoctoproject.org>
References: <51D39006.5000000@yoctoproject.org>
	<1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.intel.com>
	<51D6FC09.4000506@yoctoproject.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Project 1.5_M2.rc1 build status
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
X-List-Received-Date: Fri, 05 Jul 2013 17:33:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 05 July 2013 10:02:01 Michael Halstead wrote:
> Thank you. The final steps of
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/ were blocked
> and never completed so there may be other things missing as well. We
> probably need to do another build before releasing but it will hopefully
> be from the same commit as well.

Feel free to stop the dylan-next build I started about an hour ago on the AB, 
I had a dodgy commit in there so it's mostly failed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

