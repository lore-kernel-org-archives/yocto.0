Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E3D8E0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 01:33:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2013 01:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,473,1363158000"; d="scan'208";a="294989412"
Received: from unknown (HELO helios.localnet) ([10.255.13.245])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2013 01:33:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Mon, 15 Apr 2013 09:33:01 +0100
Message-ID: <7992156.jO3X0cFusz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <8B6CDD4DF052424F91A0C447C50E3614@PAULD>
References: <8B6CDD4DF052424F91A0C447C50E3614@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Why isn't USB MIDI working?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Apr 2013 08:33:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 14 April 2013 15:49:12 Paul D. DeRocco wrote:
> I've built core-image-base-cedartrail-nopvr, which includes ALSA. /dev/snd
> properly contains the devices for my mobo, and /proc/asound/devices lists
> them as well. If I plug in a USB MIDI device (a USB to MIDI converter), I
> see the USB connect message on the console, but no device is added to
> /dev/snd or /proc/asound/devices. Anyone have any idea why? I've tried an
> eMu XMidi1x1, and a cheap generic converter. Both work fine under Ubuntu, on
> the same mobo.

Typically two things are required for a USB device to work - a driver, and an 
appropriate udev rule to associate the driver with the device. Do you have USB 
midi support enabled in the kernel? If so, is there a udev rule for USB midi 
devices? If there isn't, presumably you could just use Ubuntu as a reference 
for that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

