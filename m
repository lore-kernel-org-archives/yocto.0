Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BECE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 13:58:37 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 18 Jan 2012 13:58:36 -0800
Received: by iabz7 with SMTP id z7so602645iab.25
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 13:58:36 -0800 (PST)
Received: by 10.50.168.4 with SMTP id zs4mr24206260igb.28.1326923916261;
	Wed, 18 Jan 2012 13:58:36 -0800 (PST)
Received: from [10.6.18.223] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id q30sm93398808ibc.1.2012.01.18.13.58.34
	(version=SSLv3 cipher=OTHER); Wed, 18 Jan 2012 13:58:35 -0800 (PST)
Message-ID: <4F174089.7090403@intel.com>
Date: Wed, 18 Jan 2012 13:58:33 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F1737E6.1020209@linux.intel.com>
In-Reply-To: <4F1737E6.1020209@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Minutes: Kernel Team 1.2 M3/4 Planning (Jan 18)
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
X-List-Received-Date: Wed, 18 Jan 2012 21:58:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2012 01:21 PM, Darren Hart wrote:
> Attendees:
> Darren Hart
> Tom Zanussi
> Bruce Ashfield
>
> Bug Query:
> http://bugzilla.yoctoproject.org/buglist.cgi?query_format=advanced&emailtype2=regexp&bug_status=NEW&bug_status=ACCEPTED&bug_status=REOPENED&bug_status=NEEDINFO&bug_status=WaitForUpstream&email2=.*%28zanussi|dvhart|ashfield%29.*&emailassigned_to2=1&target_milestone=1.2&target_milestone=1.2%20M1&target_milestone=1.2%20M2&target_milestone=1.2%20M3&target_milestone=1.2%20M4
>
> As a group, Tom, Bruce, and I reviewed all the bugs assigned to us for 1.2. With
> all the non-bug work we are committed to over the next three months comprising
> M3 and M4, we have moved a number of bugs to post 1.2. The post 1.2 kernel bugs
> include:
>
> ID 	Sev 	Pri 	Status 	Summary 	Whiteboard
> 1883 	maj 	Med 	ACCE 	No space left on device
I snagged this one and will get it into 1.2

Sau!
	
> 1634 	enh 	Low 	ACCE 	BSP: research and update/refresh reference platforms
> 1614 	enh 	Med 	ACCE 	Target module build
> 927 	nor 	Low 	ACCE 	[POSIX] case pthread_cond_broadcast does not kill itself after finished
> 1094 	nor 	Low 	ACCE 	module.bbclass is well out of sync with the version in openembedded 	
> 1138 	nor 	Low 	ACCE 	[LTP] Some growfiles cases failed with Yocto 1.1 M1 build16)
> 1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
> 1648 	enh 	Low 	ACCE 	Real-time process-executed timers
> 1795 	enh 	Low 	NEW 	Simplify core-image-minimal-initramfs and reduce dependencies 	
> 1830 	enh 	Low 	NEW 	Add bluetooth config fragment and add to yocto/standard or appropriate BSPs
> 418 	nor 	Med 	ACCE 	uvesafb is required to be a module on qemux86/qemux86-64 target
> 1552 	enh 	Low 	ACCE 	Tracing: create separate recipe for perf
> 1553 	enh 	Low 	ACCE 	Tracing: perf trace scripting support
>
> We would like some assistance finding owners for the following bugs:
>
> 1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
> 1728 	nor 	Med 	ACCE 	Uses native lzma when lzma is selected for bzImage compression
> 1919 	nor 	Med 	NEW 	Accommodate EFI via the live image "install" label
> 1843 	nor 	Med 	NEED 	Error screen when I input "clear" in the terminal
> 1886 	nor 	Med 	NEW 	Glxgears failed in qemux86.
> 1669 	nor 	Med 	ACCE 	emenlow: glxgears running slowly on 3.0 kernel
> 1840 	nor 	Med 	NEW 	glxgears fail to run on Blacksand
I will see what I can do about any of these, but I have a feeling that 
everyone is loaded up.

Sau!

>
> Possibly 1826 [HuronRiver] only 3/4 screen is used when psplash loading
> Tom, what did we decide on this one?
>
> If you have concerns about items dropped from the 1.2 plan, or (better still)
> would like to volunteer to help with some of the bugs listed, please respond in
> the bugzilla record directly.
>


