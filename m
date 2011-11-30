Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B88CE0072A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 03:02:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Nov 2011 03:02:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,596,1315206000"; d="scan'208";a="90533664"
Received: from unknown (HELO helios.localnet) ([10.252.121.201])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2011 03:02:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 30 Nov 2011 11:02:07 +0000
Message-ID: <1592821.2ngvXcyh81@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1111291759160.17235@oneiric>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 30 Nov 2011 11:02:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 November 2011 18:00:31 Robert P. J. Day wrote:
>   i'm sure it's in one of the docs i missed, but how does one cleanly
> shut down a QEMU session and get back to the original terminal
> session?  i've tried shutdown and poweroff but neither of those gives
> me my shell prompt back.

Which machine are you running within the emulator? I know some emulated 
machines don't seem to support actually powering off - does reboot work?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

