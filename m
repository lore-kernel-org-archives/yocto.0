Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2393AE00527
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 11:59:24 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.159.24])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 3E4C3509B9
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 14:59:22 -0500 (EST)
Message-ID: <50D8B40C.7020305@bsmucker.eu.org>
Date: Mon, 24 Dec 2012 11:59:08 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Magic kernel config option.
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
X-List-Received-Date: Mon, 24 Dec 2012 19:59:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm a yocto mostly-newbie, trying to find my way.  I have a custom layer 
that I am using to build a kernel. The layer right now consists of a few 
kernel patches and a defconfig and is based on the standard kernel 
otherwise.

When I do a diff on my defconfig and the bitbake generated .config, they 
are quite similar, but the CONFIG_UNION_FS=y line magically shows up.  
I'm wondering where it comes from and how to disable it.

I can do a bitbake -c menuconfig virtual/kernel and eliminate that 
option giving me the kernel I want, but those changes are gone after a 
bitbake -c cleansstate ...

Could someone give me some help about where to go from here?

Thanks,
Brian

