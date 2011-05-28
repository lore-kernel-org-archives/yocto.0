Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3827D4C803D6
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 22:48:36 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 20:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,284,1304319600"; 
   d="scan'208";a="6103531"
Received: from unknown (HELO [10.255.12.244]) ([10.255.12.244])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 20:48:34 -0700
Message-ID: <4DE07092.8030201@intel.com>
Date: Fri, 27 May 2011 20:48:34 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9501179BD704@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9501179BD704@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bug Triage call for action
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
X-List-Received-Date: Sat, 28 May 2011 03:48:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/26/2011 03:50 PM, Zhang, Jessica wrote:
> Hi All,
>
> The Yocto bug triage team did bug scrub and the following 2 bugs are
> identified as critical major which means they need to be fixed ASAP for
> the upcoming 1.1 M1 release.
>
> 1100 – [emenlow/crownbay-noemgd] X window could not start up with
> sato-sdk image (Tom, Dexuan, Darren)
>
> 1108 – keyboard could not work in qemux86/x86-64 (Saul, Ke)
>
> So people that are working on these bugs , please make sure leave enough
> information for your current investigation/debugging by EOD your time so
> the next person in a different time zone can easily pickup the context
> and continue working on the fix.
>
I want to thank Tom, Darren, Ke, Dexuan and Richard for their quick 
action in tracking down and fixing these 2 issues.  It shows the effort 
that we put into getting the Milestones tested and stabilized across 
time and space!

Thanks
	Sau!

> Thanks,
>
> Jessica
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


