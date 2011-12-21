Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5AC0E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:10:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 08:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="88972998"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 08:10:34 -0800
Message-ID: <4EF204E8.8020009@linux.intel.com>
Date: Wed, 21 Dec 2011 08:10:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Chris Larson <kergoth@gmail.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<CABcZANmbKdn+dzftgQwNRN1ExYEUkhO906LJG8Pw0Cu+U0cRYg@mail.gmail.com>
In-Reply-To: <CABcZANmbKdn+dzftgQwNRN1ExYEUkhO906LJG8Pw0Cu+U0cRYg@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [RFC PATCH 0/9] New distribution definition for poky-tiny
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
X-List-Received-Date: Wed, 21 Dec 2011 16:10:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/21/2011 07:52 AM, Chris Larson wrote:
> On Wed, Dec 21, 2011 at 2:02 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> For example, I could not discover a way to use
>> oe_filter_out inside poky-tiny.conf to remove "keyboard" for MACHINE_FEATURES.
> 
> This might be best handled via inclusion of a .inc which defines an

I assume you mean to include the .inc in task-core-boot?

> event handler or anonymous python function that removes it. The

I'm not familiar with adding event handlers, can you point me at an
example? In general, my concern is that whatever this mechanism is, it
shouldn't have to be poky-tiny aware: meaning it needs to glean the
knowledge that keymaps should not be added from something else. I
suppose this could be some DISTRO_FEATURE, but that is effectively what
I've already done in 5/9 "task-core-boot: Allow DISTRO to disable keymaps".

> problem with the := + oe_filter_out method is that it forces an
> immediate variable expansion right there, which can cause problems in
> some cases.

Right. That and using it in a .conf file results in parsing errors. :-)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

