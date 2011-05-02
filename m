Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E8524C800A3
	for <yocto@yoctoproject.org>; Mon,  2 May 2011 18:14:14 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 May 2011 16:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,306,1301900400"; d="scan'208";a="636929095"
Received: from vorpal.jf.intel.com (HELO [10.7.199.161]) ([10.7.199.161])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2011 16:14:14 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <cover.1304036312.git.liping.ke@intel.com>
References: <cover.1304036312.git.liping.ke@intel.com>
Date: Mon, 02 May 2011 16:10:07 -0700
Message-ID: <1304377807.4315.126.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Resend:[Image-Creator]Make bitbake server type configurable (xmlrpc, none)
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
X-List-Received-Date: Mon, 02 May 2011 23:14:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-29 at 08:22 +0800, Liping Ke wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> Add -t options in bitbake for configuring server type.

Thanks Liping, this looks good to me. I've merged it into an
image-creator branch on contrib


I will be collecting image-creator related BitBake patches there for now
with the goal of porting them to upstream BitBake and submitting to the
bitbake-devel list (thought I haven't seen any traffic there for some
time)...

Cheers,
Joshua

> 
> Signed-off-by: Liping Ke <liping.ke@intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/server_type
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/server_type
> 
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
> 
> 
> Liping Ke (1):
>   Make bitbake server type configurable(xmlrpc,none)
> 
>  bitbake/bin/bitbake |   22 +++++++++++++++++-----
>  1 files changed, 17 insertions(+), 5 deletions(-)
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


