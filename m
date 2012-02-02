Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8AF9E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 14:01:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 14:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103301055"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 14:01:31 -0800
Message-ID: <4F2B07BA.1040204@linux.intel.com>
Date: Thu, 02 Feb 2012 14:01:30 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB507144.6E40%belen.barros.pena@intel.com>
	<4F2B057D.6000905@linux.intel.com>
In-Reply-To: <4F2B057D.6000905@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Thu, 02 Feb 2012 22:01:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 02/02/12 13:51, Joshua Lock wrote:
> Hi Belen,
>
> Sorry this is so long, I don't know how to turn off my verbose switch.
>
> On page 4 you mention Shane's intention to have proxy settings in the UI
> - I just want to point out that this is usually an OS level
> configuration and we should be wary about how we implement it.
> I'd suggest we go so far as to just have a "Change system proxy
> settings" button which launches the OS's network configuration settings.
>
> Of course, this opens us up to potential issues around supporting the
> multitude of available network configuration tools on Linux but I'd
> suggest we start with a lowest common denominator approach and have the
> program behave intelligently.
>
> Explicitly we can detect whether the binary gnome-control-center and the
> so file /usr/lib64/control-center-1/panels/libnetwork.so exist (being
> clever about that path, too) and if so we can execute:
>
> "gnome-control-center display network"
>
> Which will display the network configuration (and therefore proxy)
> settings for stock Fedora and Ubuntu desktops.
>

The above is all moot if we're just going to configure the proxy through 
sites.conf as per Saul's recent mail.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

