Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76F3FE00343
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 08:48:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2012 08:47:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="170539483"
Received: from unknown (HELO helios.localnet) ([10.252.120.253])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2012 08:47:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Wed, 11 Jul 2012 16:47:45 +0100
Message-ID: <1781737.YJFop0SogY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <4FFD9E2C.2080005@gmail.com>
References: <4FFC86E1.9020402@gmail.com> <4FFD9E2C.2080005@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-baryon
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
X-List-Received-Date: Wed, 11 Jul 2012 15:48:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 July 2012 11:39:24 Jim Abernathy wrote:
> On 07/10/2012 03:47 PM, Jim Abernathy wrote:
> > I took at look at the meta baryon NAS project and thought it was
> > interesting and decided to build it on a n410 based miniITX motherboard.
> > 
> > I think I guessed correctly on how to integrate it in.
> > 1. make the machine = n450 in local.conf
> > 2. make distro = baryon in local.conf
> > 3. add meta-baryon and meta-n450 layers to bblayer.conf
> > 4. put the commercial license flag in local.conf.
> 
> This is an issues with Denzil.  I went back and built it on edison
> branch and it built clean and boots on a D510MO board.

OK, thanks. FYI I'm just running through a fresh build with it now with 
master, and have hit a few unrelated issues, so I haven't quite got to the one 
you found yet. When I do I'll certainly investigate and let you know what I 
find.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

