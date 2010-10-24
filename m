Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3DB64C80054
	for <yocto@yoctoproject.org>; Sun, 24 Oct 2010 13:51:21 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2010 11:51:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,232,1286175600"; d="scan'208";a="670352460"
Received: from unknown (HELO [10.255.12.188]) ([10.255.12.188])
	by orsmga001.jf.intel.com with ESMTP; 24 Oct 2010 11:51:21 -0700
Message-ID: <4CC48028.4040009@linux.intel.com>
Date: Sun, 24 Oct 2010 11:51:20 -0700
From: "Saul G. Wold" <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC1832E6@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC1832E6@orsmsx501.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RC3 vs RC4a
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 24 Oct 2010 18:51:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 03:48 PM, Stewart, David C wrote:
> We have an RC3 which we feel confident in based on our no-nogo launch decision.
>
> However, there are a handful of issues which are not critical but would be desirable to address them - for example, having to do with errors being "fatal" which are not, etc.
>
> So I have asked Saul to create an RC4a with these patched in. Would like Sanity and BAT tests run on RC4a to see if we should ship it, or with stick with RC3.
>
> RP - will complete the patch tonight.
> Saul - will complete the RC4a build by 5PM Sunday (Pacific)

The build has been running overnight and should be complete, the images 
are in the standard location on the internal and external autobuilder 
dated 20101024.

http://autobuilder.pokylinux.org/milestone/20101024/


> Kevin and Jiajun and whole team - test this build as much as you have time for.
Please pass this request to the Windriver team also as I am not sure if 
they are on the list

>
> Late Monday, we will decide whether to go with the RC3 build or RC4a build.
Once we (Jessica and I) get through Heathrow and I get a phone card (I 
hope), I will call Richard.  If it's approved, Scott G. can move the 
bits to the yoctoproject.org machine.

Sau!


>
> Dave
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

