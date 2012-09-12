Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D53BE014B6
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 05:37:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Sep 2012 05:37:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,408,1344236400"; d="scan'208";a="192020314"
Received: from unknown (HELO helios.localnet) ([10.252.121.198])
	by orsmga001.jf.intel.com with ESMTP; 12 Sep 2012 05:37:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Marc Ferland <ferlandm@sonatest.com>
Date: Wed, 12 Sep 2012 13:37:44 +0100
Message-ID: <2798156.JKUUmKvDMW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAJTo0LbUHH8D08KWYGfJZf=5hLh26P9-md4rPUNknJF3-5Ja_g@mail.gmail.com>
References: <87627kcjd6.fsf@sonatest.com>
	<CAJTo0LbUHH8D08KWYGfJZf=5hLh26P9-md4rPUNknJF3-5Ja_g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Replace netbase with connman
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
X-List-Received-Date: Wed, 12 Sep 2012 12:37:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 September 2012 12:48:49 Burton, Ross wrote:
> Re NFS, no idea. I have seen patches on oe-core to stop connman from
> re-configuring the network when it starts, so you'll probably want to
> find and integrate those if you are not running oe-core master.

We talked to the connman developers and their position is that you shouldn't
use connman at all with nfsroot, so the solution [1] was not to start
connmand if nfsroot is detected.

Cheers,
Paul

[1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c6fda196cbbfd749b8bf10ad97dc373217d8ed2e

-- 

Paul Eggleton
Intel Open Source Technology Centre

