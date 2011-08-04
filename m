Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6699F4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 20:09:46 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Aug 2011 18:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,313,1309762800"; d="scan'208";a="35199068"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2011 18:09:45 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 03 Aug 2011 18:09:40 -0700
In-Reply-To: <4E39E30B.3080206@am.sony.com>
References: <4E39E30B.3080206@am.sony.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1312420185.31410.12.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 01:09:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Tim,

On Wed, 2011-08-03 at 17:08 -0700, Tim Bird wrote:
> The first error is a failure to fetch the kernel, and a follow-on
> failure to do a git-clone on the kernel.  I'm behind a firewall and
> this is a perennial problem for me.  

We have a Spartan page on the project wiki trying to collect the
required setup information for users on controlled networks.

Perhaps it can help you get further?

https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


