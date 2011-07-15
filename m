Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9414B4C804D9
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 13:33:41 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jul 2011 11:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,209,1309762800"; d="scan'208";a="30824478"
Received: from unknown (HELO [10.255.14.29]) ([10.255.14.29])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 11:33:40 -0700
Message-ID: <4E208803.3050306@linux.intel.com>
Date: Fri, 15 Jul 2011 11:33:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4E205D20.2060106@ll.mit.edu>
In-Reply-To: <4E205D20.2060106@ll.mit.edu>
Cc: yocto@yoctoproject.org
Subject: Re: Color ghosting on BeagleBoard xM rev C
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
X-List-Received-Date: Fri, 15 Jul 2011 18:33:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Jason, Koen,

Does anything spring to mind as an obvious fix for this? Perhaps some
kernel parameter initialization string for the graphics hardware?

--
Darren

On 07/15/2011 08:30 AM, Jeff Mitchell wrote:
> Darren Hart suggested I send this to the list...
> 
> Attached is a picture of my screen running Terminal. This is on a 
> BeagleBoard xM rev C connected via its HDMI out to a DVI adapter and 
> then into a Dell UltraSharp monitor. Angstrom doesn't display these 
> problems, so the setup should be fine.
> 
> I'm not quite sure what is causing this. The resolution is also fairly 
> low, and I haven't had any success using boot parameters (either the 
> older video=omapfb:mode variant or the newer DSS2 omapfb.mode variant).
> 
> Thanks,
> Jeff
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

