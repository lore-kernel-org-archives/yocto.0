Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09995E0147D
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 09:24:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Apr 2013 09:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,510,1363158000"; d="scan'208";a="320959550"
Received: from unknown (HELO [10.255.14.2]) ([10.255.14.2])
	by orsmga002.jf.intel.com with ESMTP; 19 Apr 2013 09:23:43 -0700
Message-ID: <51716F8F.2080408@linux.intel.com>
Date: Fri, 19 Apr 2013 09:23:43 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
	<alpine.DEB.2.02.1304191038530.5636@oneiric>
	<CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
In-Reply-To: <CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Fri, 19 Apr 2013 16:24:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/19/2013 07:45 AM, Paul Barker wrote:
> On 19 April 2013 15:39, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>
>>    i think i'll just leave this to the rpi folks. :-)
>>
>
> I'm building for raspberrypi so I'll add this to my queue of things to look at.
>
Just another note about the netbase, for 1.4 the interfaces file moved 
to init-ifupdown, so that file should move to a new recipe with 
bbappends for init-ifupdown-1.0.

We just fixed meta-yocto for the beagleboard  in the final 1.4 release.

Sau!

> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

