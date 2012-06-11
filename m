Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88FBDE00746
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 07:22:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jun 2012 07:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178415833"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2012 07:22:56 -0700
Received: from [10.237.105.43] (unknown [10.237.105.43])
	by linux.intel.com (Postfix) with ESMTP id EF0FA6A4007
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 07:22:56 -0700 (PDT)
Message-ID: <4FD5FF3E.4060303@linux.intel.com>
Date: Mon, 11 Jun 2012 17:22:54 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:13.0) Gecko/20120604 Thunderbird/13.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
In-Reply-To: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
Subject: Re: Grub installation
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
X-List-Received-Date: Mon, 11 Jun 2012 14:22:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 6/11/2012 5:12 PM, Jürgen Messerer wrote:
> Hi
> 
>  
> 
> I have the following problem. I have created with yocto a core-image-minimal for x86 which I could test with qemu.
> 
>  
> 
> later I added the following lines to conf/local.conf at the end according to the manual chapter 4.2.4:
> 
> IMAGE_INSTALL_append = " bash"
> 
> IMAGE_INSTALL_append = " strace"
> 
> IMAGE_INSTALL_append = " grub"
> 
>  
> 
> Bash and strace were installed correctly.
> 
> In the case of grub I couldn’t find the directory /boot/grub.
> 
>  
> 
> /etc/grub.d is installed also the folder /usr/lib/grub
> 
>  
> 
> Question 1:
> 
> Which grub recipe does yocto install from  poky-denzil-7.0/meta/recipes-bsp/grub/
> 
> I would prefer version 1.99.
> 
>  
> 
> Questin 2:
> 
> Will yocto not install a /boot/grub directory?
> 
>  
> 
> I would appreciate any tips and tricks to install grub correctly in the core-image-minimal
> 
>  
> 
>  
> 
> Thanks a lot
> 
>  
> 
> Best regards
> 
>  
> 
> Juergen
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

Hello,

Look for /boot/grub/ in /dev/sda1
It should be there.

-- 
Mihai Lindner



