Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB62E006DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 11:01:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 May 2012 11:01:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="141783813"
Received: from unknown (HELO [10.7.198.58]) ([10.7.198.58])
	by orsmga001.jf.intel.com with ESMTP; 17 May 2012 11:01:21 -0700
Message-ID: <4FB53CF1.7090504@linux.intel.com>
Date: Thu, 17 May 2012 11:01:21 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAC+thW11WFJcsJifYnzO3gQRivaCGjk_H+-kcMMQk+Weh4TcLg@mail.gmail.com>
In-Reply-To: <CAC+thW11WFJcsJifYnzO3gQRivaCGjk_H+-kcMMQk+Weh4TcLg@mail.gmail.com>
Subject: Re: meta-toolchain-sdk fails in edison with package_ipk
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
X-List-Received-Date: Thu, 17 May 2012 18:01:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello Andrea,

On 17/05/12 01:21, Andrea Galbusera wrote:
> Hello,
> Is there any known problem when building meta-toolchain-sdk target
> with PACKAGE_CLASSES = "package_ipk" ?
>
> I have deterministic failure in do_populate_sdk with latest edison
> metadata and default local.conf (other than changing PACKAGE_CLASSES
> to ipk).
> Don't have a denzil tree at hand, but I'm going to check if this is
> reproducible with 1.2 too.
>
> To me it seem the failing task is trying to access host files on my
> build system. Here is the first error I can see:
>
>> Installing libtelepathy-dbg (0.3.3-r3) to root...
>> Downloading file:/scratch/gizero/edison-build-raid.orig/tmp/deploy/ipk/i586/libtelepathy-dbg_0.3.3-r3_i586.ipk.
>> touch: cannot touch `/etc/shells': Permission denied
>> mkdir: cannot create directory `/var/lib/opkg/alternatives': Permission denied
>
> Here you can see the full log (few lines stripped to satisfy pastebin
> size limits...):
>
> http://pastebin.com/Gim3DacX
>
> Build works when I switch to rpm instead of ipk, but I want ipk for my
> target and, at moment, I need to switch back and forth the two formats
> when I need to update either my images or my sdk. Is there a smarter
> way to stay with rpm for the sdk and with ipk for the target images?

I've discovered that this is fixed in Denzil

https://bugzilla.yoctoproject.org/show_bug.cgi?id=1869

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c4de612298266653130dd2e5b8378f62dda77e9f

I tested here and can report that the issue is resolved with that patch 
applied.

This patch has been applied to my josh/edison branch of the poky-contrib 
repository and should make it into the main edison branch, and a point 
release, in the near future.

Thanks for the report,

Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

