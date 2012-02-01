Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C11E00306
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 02:19:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 02:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112763008"
Received: from unknown (HELO helios.localnet) ([10.252.122.196])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 02:19:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Date: Wed, 01 Feb 2012 10:19:55 +0000
Message-ID: <2072780.exfi7MVpVP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <CANJvwR-+LgCHHd+SywzD2yri6h_dg-a7rnQfdGN7UT=LxQy-yw@mail.gmail.com>
References: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
	<4F28DBE3.4010107@linux.intel.com>
	<CANJvwR-+LgCHHd+SywzD2yri6h_dg-a7rnQfdGN7UT=LxQy-yw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Wed, 01 Feb 2012 10:19:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 February 2012 15:44:58 Sathishkumar Duraisamy wrote:
> Well, if this error is because of dash, please use the following
> comments to change to bash,
> 
> $sudo rm /usr/bin/sh
> $sudo ln -s /usr/bin/bash /usr/bin/sh
> 
> There is also, other way to change to dash to bash through package
> configure. 

I guess you mean "sudo dpkg-reconfigure dash"

> But any way, above will done through automated scripts. So,
> above is good. You can also make sure you are working on bash shell,
> by simply, ls -al /usr/bin/sh, which shows whether the link is
> pointing to bash or dash.

The idea is we really want the build system not to care which shell you are 
using, so users don't have to change from the default of dash to bash (and 
slow down their boot in the process, since faster booting was the main reason 
dash was introduced in Ubuntu.) FWIW in master this is pretty much taken care 
of, although there may still be a few cases like this one and we do have to be 
careful not to introduce any "bashisms" in future.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

