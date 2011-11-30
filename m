Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33221E0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 14:31:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2011 14:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="81783846"
Received: from unknown (HELO [10.255.12.113]) ([10.255.12.113])
	by orsmga002.jf.intel.com with ESMTP; 30 Nov 2011 14:31:49 -0800
Message-ID: <4ED6AED5.8070308@linux.intel.com>
Date: Wed, 30 Nov 2011 14:31:49 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
	<1592821.2ngvXcyh81@helios>
	<alpine.DEB.2.02.1111300644120.18752@oneiric>
In-Reply-To: <alpine.DEB.2.02.1111300644120.18752@oneiric>
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Wed, 30 Nov 2011 22:31:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 30/11/11 03:46, Robert P. J. Day wrote:
> On Wed, 30 Nov 2011, Paul Eggleton wrote:
> 
>> On Tuesday 29 November 2011 18:00:31 Robert P. J. Day wrote:
>>>   i'm sure it's in one of the docs i missed, but how does one cleanly
>>> shut down a QEMU session and get back to the original terminal
>>> session?  i've tried shutdown and poweroff but neither of those gives
>>> me my shell prompt back.
>>
>> Which machine are you running within the emulator? I know some emulated
>> machines don't seem to support actually powering off - does reboot work?
> 
>   qemuppc, core-image-minimal.  interestingly, "poweroff" doesn't
> completely close the QEMU session, but "reboot" does.  it might be
> worth adding that to the quick start guide.

The same is also true for qemuarm, we work around it in sato by munging
the shutdown.desktop file to all restart and having the qemu scripts
start qemu with -norestart.

Clearly we should also do the shutdown.desktop munging for qemuppc

What do people think to the idea of putting something into the image for
those two specific machines which aliases poweroff to reboot?

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

