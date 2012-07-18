Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C3E8E002A5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 07:13:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jul 2012 07:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="179649620"
Received: from unknown (HELO [10.255.12.184]) ([10.255.12.184])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2012 07:13:25 -0700
Message-ID: <1342620801.2338.160.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Wed, 18 Jul 2012 09:13:21 -0500
In-Reply-To: <cover.1342504457.git.nitin.a.kamble@intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Wed, 18 Jul 2012 14:13:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-07-16 at 22:57 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This commit changes emgd kernel driver for crownbay bsp to the emgd-1.14.
> 

Nitin,

Doesn't switching this over in the kenrnel require emgd-1.14 userspace
recipe updates to work?  Did I miss those?

Tom

> Thanks,
> Nitin
> 
> The following changes since commit c2b5ee363bf2612932301488f3ac0644ff70fc7c:
> 
>   meta: disable CONFIG_MTD_NAND_VERIFY_WRITE (2012-07-14 00:21:49 -0400)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
>   http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/meta
> 
> Nitin A Kamble (1):
>   meta: crownbay.scc change emgd branch name
> 
>  .../bsp/crownbay/crownbay-standard.scc             |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 



