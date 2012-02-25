Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D66E7E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 22:12:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2012 22:12:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="111737128"
Received: from unknown (HELO envy.home) ([10.255.15.122])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2012 22:12:57 -0800
Message-ID: <4F487BC7.40108@linux.intel.com>
Date: Fri, 24 Feb 2012 22:12:23 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <4F4877BF.7070903@linux.intel.com>
In-Reply-To: <4F4877BF.7070903@linux.intel.com>
X-Enigmail-Version: 1.3.5
Subject: Re: DEPEND creep breaking poky-tiny
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
X-List-Received-Date: Sat, 25 Feb 2012 06:12:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/24/2012 09:55 PM, Darren Hart wrote:
> I'm working through some issues with a poky-tiny build of
> core-image-minimal failing. The first error is attributable to"
> 
> commit f3677d679e5c74f9877f36cdb170bbfea9b7b9bb
> glib-2.0: Add missing DEPENDS on dbus
> 
> dbus eventually pulls in shadow, which fails configure with the minimal
> libc configuration in poky-tiny. Removing this dependency allows us to
> make progress. (I understand a proper fix is needed, as the dependency
> was added for a reason).
> 
> Next up is popt failing due to missing native language or widechar
> support. pkgconfig is what brings in popt, and also what brought in glib
> above. Nothing in popt suggests it changed recently, which leads me to
> believe that the pkgconfig bit is new as I'm pretty sure I didn't need
> glib in poky-tiny originally at all.
> 
> Has pkgconfig been added recently? Seems silly to ask, but that is where
> things are pointing...

At some point opkg gained an RDEPENDS on pkgconfig. Trying to track down
where...


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

