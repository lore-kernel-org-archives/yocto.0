Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0ACD04C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 13:22:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Jul 2011 11:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,209,1309762800"; d="scan'208";a="27738444"
Received: from unknown (HELO [10.255.14.29]) ([10.255.14.29])
	by azsmga001.ch.intel.com with ESMTP; 15 Jul 2011 11:22:58 -0700
Message-ID: <4E208580.3030505@linux.intel.com>
Date: Fri, 15 Jul 2011 11:22:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1107141957320.4687@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107141957320.4687@localhost6.localdomain6>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: the proper way to report bitbake fetch errors?
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
X-List-Received-Date: Fri, 15 Jul 2011 18:22:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/14/2011 05:01 PM, Robert P. J. Day wrote:
> 
>   just so i'm doing this the right way, what is the appropriate way to
> report bitbake fetch errors?  with a fully-updated git repo, i just
> ran:
> 
>  $ bitbake -c fetchall -k core-image-sato
> 
> and got fetch errors for both of:
> 
>   * sat-solver
>   * linux-libc-headers
> 
> should i post the more detailed output of the command?  the contents
> of the log files?  etc, etc.

I would check the log files and verify it isn't a local network issue.
After that, sharing the relevant bits of the log.do_fetch logs for the
failed recipes is a good way to report them.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

