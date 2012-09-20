Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91847E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 17:50:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Sep 2012 17:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,452,1344236400"; d="scan'208";a="224211685"
Received: from unknown (HELO [10.255.13.229]) ([10.255.13.229])
	by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2012 17:50:13 -0700
Message-ID: <505A6844.8060604@linux.intel.com>
Date: Wed, 19 Sep 2012 17:50:12 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPBN=4TEGCuHPzVA5ZsgdFEQYMShPtxtgB+RCz8naWtx0A@mail.gmail.com>
In-Reply-To: <CAPhnLPBN=4TEGCuHPzVA5ZsgdFEQYMShPtxtgB+RCz8naWtx0A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc1 branched
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
X-List-Received-Date: Thu, 20 Sep 2012 00:50:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/19/2012 05:25 PM, Flanagan, Elizabeth wrote:
> All,
>
> 1.3_M5 has been branched and rc1 is close to complete. There were a
> few minor issues which have caused a targeted regeneration of build
> artifacts. Specifically, we are regenerating the build appliance and
> the eclipse plugin. Those build artifacts will be moved to the release
> cadidate directory when they are complete (a few hours from now.). I
> will send out a note when they are finished but if people wish to
> begin testing as soon as they are done, I've included the links to
> where they're being built out to:
>
> Download: autobuilder.yoctoproject.org/pub/nightly/20120919-2
> poky: 52850f0fc6f801298413ee779834b346ef7f48d6
> meta-qt3: 8730326c902e6fb256b5dea77a6dde28d813c424
> eclipse-poky: 7b86e48a504f79871cdfdabd4995aa64352fdeed
>
> Rebuilds:
> Build-appliance:
> http://autobuilder.yoctoproject.org/pub/build-appliance/20120919-1
> Eclipse-poky: http://autobuilder.yoctoproject.org/pub/eclipse-plugin/20120919-2
>
QA Folks,

Please finish up on the M4 RC3 Full pass testing so we at least get an 
idea what items we need to work on for the RC2 build!

If it's possible to start some basic testing during your various day 
time on this 1.3_M5 that would be very appreciated also!

If there are any bugs that anyone feels needs more attention, please let 
me know, I know there are some outstanding issues with doing builds with 
ADT, which we are addressing.

Thanks
	Sau!


