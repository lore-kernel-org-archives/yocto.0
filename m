Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CD7E01443
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 16:24:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jun 2012 16:24:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167755081"
Received: from unknown (HELO envy.home) ([10.255.12.67])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2012 16:24:05 -0700
Message-ID: <4FE109C4.1010906@linux.intel.com>
Date: Tue, 19 Jun 2012 16:22:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
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
X-List-Received-Date: Tue, 19 Jun 2012 23:24:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 06/19/2012 12:25 PM, Serban, Laurentiu wrote:
> Hello,
> 
>  
> 
> I submit to your attention the following issue related to Yocto
> project’s bugzilla:
> 
>  
> 
> Which is the most appropriate end for a the lifecycle of a bugzilla
> issue: VERIFIED or CLOSED?
> 
> Currently the bug lifecycle final point is VERIFIED and the status
> CLOSED is not used. Setting a bug to CLOSED after it was VERIFIED has no
> impact on the lifecycle itself as the bug can be reopened anyway.
> 
>  
> 
> My proposal is the following: keep VERIFIED as the final point of the
> bug lifecycle and use the status CLOSED for the bug only after the 1.3
> release, *if* the regression testing for the bug is ran and passed.
> 
> So after the 1.3 release the ideal situation is that all the bugs
> related to it with previous status VERIFIED are CLOSED.

What is the reasoning driving this change? What does CLOSED indicate
that VERIFIED does not already convey?

Thanks,

Darren

> 
>  
> 
> Waiting for your opinion on this,
> 
> Thank you,
> 
>  
> 
> *Laurentiu Serban*
> 
> QA Engineer
> 
> Open Source Technology Center
> 
> System Software Division Romania
> 
> Desk: +40 31 8604742**
> 
> iNET: 88451042
> 
>  
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



