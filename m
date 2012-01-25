Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA82E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:18:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2012 14:18:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110765096"
Received: from unknown (HELO envy.home) ([10.255.14.136])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2012 14:18:29 -0800
Message-ID: <4F207F9B.2060809@linux.intel.com>
Date: Wed, 25 Jan 2012 14:18:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4F203D8E.3010508@gmail.com>
In-Reply-To: <4F203D8E.3010508@gmail.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org, "Garman, Scott A" <scott.a.garman@intel.com>
Subject: Re: normal user for Intel BSPs?
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
X-List-Received-Date: Wed, 25 Jan 2012 22:18:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/25/2012 09:36 AM, jfabernathy wrote:
> I've noticed that the meta-intel BSP come up with the default
> terminal, serial console user, etc. as root.  What would it take to
> make my own BSP that was exactly the same, but the default was a not
> admin user, but you could su or sudo to root?

I'm adding Scott G. who I believe has been working on the useradd
scripts and such (to sanity check the following). I believe you should
be able to setup new users by extending an image recipe with a new task
to make the necessary useradd/mod etc calls on the rootfs prior to
packaging it up.

Scott, can you offer more detail on how that is done?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

