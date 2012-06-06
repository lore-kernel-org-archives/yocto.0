Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D13E01425
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 04:31:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2012 04:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175449982"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2012 04:31:18 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.105.37])
	by linux.intel.com (Postfix) with ESMTP id 71BA72C8001
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 04:31:19 -0700 (PDT)
Message-ID: <4FCF3F85.20207@linux.intel.com>
Date: Wed, 06 Jun 2012 14:31:17 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <A5935CA1C3864E4F87CAF536E3331CBF0FD2BF13@SHSMSX102.ccr.corp.intel.com>
	<953BC298FE16B64A865952E4C88593020FD37A2F@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <953BC298FE16B64A865952E4C88593020FD37A2F@SHSMSX102.ccr.corp.intel.com>
Subject: Re: about syslog configurable
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
X-List-Received-Date: Wed, 06 Jun 2012 11:31:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

Somehow `/etc/syslog-startup.conf` ends up to be a symlink of `busybox` and, apparently, `/etc/syslog-startup.conf` is `/etc/syslog-startup.conf.busybox`.

-- 
Mihai Lindner


On 06/01/2012 01:26 PM, Xu, HongnaX wrote:
> Hi all
>   QA check if syslog could be configured and run without problem on BSPs with the latest poky/master tree.
> We found that the feature had been changed, so we could not check it, so is there anybody tell us how to check?
> our test steps followed:
> **********************************
> 1.Get a Yocto image from autobuilder or local build.
> 2.Launch image and check if syslog is started by default in background with ps command.
> 3.Modify /etc/syslog-startup.conf, change the LOGFILE to /var/log/messages.test
> 4.Restart syslog with command "/etc/init.d/syslog restart"
> 5.check if syslog is started in background with ps command
> 6.Check if there file generated under /var/log/message.test
> ***********************************
> 
> Best Regards,
> Hongna
> 
> -----Original Message-----
> From: Sun, YilongX Y 
> Sent: Friday, June 01, 2012 6:04 PM
> To: yocto@yoctoproject.org
> Cc: Xu, HongnaX; Xu, Jiajun; Ma, NingX
> Subject: about syslog configurable
> 
> Hi all
>    Anyone who knows the feature about " syslog configurable". Now I find no syslog thread in the background.
> The file " /etc/syslog-startup.conf " is a link file. So I don't know how to modify it. Who can help me to explain this feature.
> Thanks in advance.
> 
> 
> Best wishes
> Yilong..Sun
>  
>  
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

