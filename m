Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C20E00569
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2011 08:14:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2011 08:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="50334434"
Received: from unknown (HELO [10.255.14.183]) ([10.255.14.183])
	by orsmga001.jf.intel.com with ESMTP; 20 Sep 2011 08:14:45 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2011 08:14:39 -0700
In-Reply-To: <201108231642.49667.paul.eggleton@linux.intel.com>
References: <201108231642.49667.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1316531685.2151.2.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Tue, 20 Sep 2011 15:14:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-23 at 16:42 +0100, Paul Eggleton wrote:
> Hi all,
> 
> We now have the mechanism for fixing bug #1096 [1] i.e. showing a warning if 
> the user is running a build on a distro that has not been tested; however to 
> make this work what we now need is a list of distributions we want to consider 
> tested. What distros specifically are we going to list for 1.1?

I've successfully built and run core-image-sato-sdk on Fedora 15 and the
Fedora 16 alpha.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


