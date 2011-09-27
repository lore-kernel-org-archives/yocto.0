Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61E1E004E9
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 02:05:04 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 31D5E22D0D
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 09:14:47 +0100 (BST)
Message-ID: <4E8191BC.9030207@communistcode.co.uk>
Date: Tue, 27 Sep 2011 10:05:00 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: QEMU nfs kernel panic
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
X-List-Received-Date: Tue, 27 Sep 2011 09:05:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am using the stock sysroot and arm kernel zImage downloaded from the 
yocto site. When I try to boot QEMU all is well until it tries to mount 
the nfs root filesystem. It can't find it and the kernel panics, I have 
set --debug all on in the runqemu-export-rootfs script but it throws no 
further errors. Does anyone have any idea why it would do this, is it 
possible that there is something wrong with the nfs implementation in 
the kernel and the module is not loaded correctly, or is it more likely 
that the nfs share isn't mounted on my machine and the kernel cannot 
find it.

Screenshot of kernel panic: http://imgur.com/UbPTT

The only thing that jumps out at me is in the kernel boot up the rootfs 
doesn't have a value as can be seen in the screenshot, but I don't know 
if this is normal or not?

Cheers,
Jack.

