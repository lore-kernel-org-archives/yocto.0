Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 150344C80B71
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 08:47:01 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBEEkxY5027654;
	Tue, 14 Dec 2010 06:46:59 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 14 Dec 2010 06:46:58 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 14 Dec 2010 06:46:58 -0800
Message-ID: <4D078361.2040301@windriver.com>
Date: Tue, 14 Dec 2010 09:46:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
X-OriginalArrivalTime: 14 Dec 2010 14:46:59.0060 (UTC)
	FILETIME=[C2CD5B40:01CB9B9D]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions about the name of qemu bin file for different archs
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
X-List-Received-Date: Tue, 14 Dec 2010 14:47:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-14 02:40 AM, Ke, Liping wrote:
> Hi, Jessica
>
> I found qemu bin file name convention is different for different archs, for example, for x86, it is bzImage-qemuXXX.
> For arm, it is zImage-qemuXXX. My question is why it is bzXXX or zXXX, is there any reason of such naming convention?

The leading part of the image name is dependent
on the type of kernel we are booting.

]> grep KERNEL_IMAGETYPE qemu*
qemuarm.conf:KERNEL_IMAGETYPE = "zImage"
qemumips.conf:KERNEL_IMAGETYPE = "vmlinux"
qemumips-variant.conf:KERNEL_IMAGETYPE = "vmlinux"
qemuppc.conf:KERNEL_IMAGETYPE = "zImage"
qemux86-64.conf:KERNEL_IMAGETYPE = "bzImage"
qemux86.conf:KERNEL_IMAGETYPE = "bzImage"

And those are your differences in the name.

As for why the symlinks may not be created at times, I'm
not sure.

>
> Or I must did name translate for each kind of arch qemu bin file?

Should be something you can script by checking the
KERNEL_IMAGETYPE.

Cheers,

Bruce

>
>
> Thanks&  Regards,
> criping
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


