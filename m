Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E83BE01528
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 07:58:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Jul 2013 07:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,728,1367996400"; d="scan'208";a="375131976"
Received: from unknown (HELO helios.localnet) ([10.252.122.115])
	by orsmga002.jf.intel.com with ESMTP; 23 Jul 2013 07:58:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 23 Jul 2013 15:58:43 +0100
Message-ID: <1448217.YGUG8tWujW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFZh4h_OVRZYC1CtBffobwNT118wMy2J9-BTnLH2tDJMh7SNXQ@mail.gmail.com>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<CAFZh4h_OVRZYC1CtBffobwNT118wMy2J9-BTnLH2tDJMh7SNXQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Tue, 23 Jul 2013 14:58:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 July 2013 10:36:46 Brian Hutchinson wrote:
> ... thought I'd give an update.  I switched all branches to use master and
> I was able to build packages from meta-networking (and others) just fine.
> 
> Thanks again for straightening me out!

Great!

One thing to keep in mind though, master is the development branch so it does 
occasionally break, so if you'd prefer something a bit more stable I'd suggest 
the most recent stable release tag or branch (currently dylan-9.0.1 or dylan 
respectively).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

