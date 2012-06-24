Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3E94E013E5
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 08:25:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jun 2012 08:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="184298604"
Received: from unknown (HELO helios.localnet) ([10.252.120.173])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2012 08:25:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Sun, 24 Jun 2012 16:25:11 +0100
Message-ID: <1743594.b4UxPuuKdH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <DCA17C0A-86FA-4EE3-8D86-83348F6DCF36@keylevel.com>
References: <DCA17C0A-86FA-4EE3-8D86-83348F6DCF36@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RaspberryPi Kernel - Fails to boot when sound driver is a built-in
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
X-List-Received-Date: Sun, 24 Jun 2012 15:25:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 18 June 2012 22:16:44 Chris Tapp wrote:
> If I build the RPi kernel (SRCREV 3fc65f9f291fb19cad434968a4a0f66ab749e637)
> then the board boots as expected.
> 
> However, if a modify the .config (either manually after -c configure, or by
> -c menuconfig) so that CONFIG_SND, CONFIG_SND_TIMER, CONFIG_SND_PCM and
> CONFIG_BCM2835 are set to 'y' (i.e. changed from modules) then the kernel
> no longer boots.
> 
> Has anyone else tried to do this? I'm trying to get a kernel that has ALSA
> working out-of-the-box.

Well, FWIW I can't even get a kernel with the default configuration built from 
meta-raspberrypi to boot - I even tried copying it to a Debian SD-card and it 
doesn't boot there either. All I get is a black screen or with the newer 
firmware I get the four-colour display which apparently indicates it couldn't 
load the kernel.

Any suggestions would be welcome...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

