Return-Path: <nbigaouette@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CDF4E0049A; Tue,  1 Nov 2016 08:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [68.67.54.10 listed in list.dnswl.org]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7A2E00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:14:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 26C841812C51
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:14:52 -0400 (EDT)
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Jwgxe9+G0RJn for <yocto@yoctoproject.org>;
	Tue,  1 Nov 2016 11:14:48 -0400 (EDT)
Received: from [10.29.19.226] (unknown [10.29.19.226])
	by mail.rogue-research.com (Postfix) with ESMTPSA id C5F511812C43
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:14:48 -0400 (EDT)
To: yocto@yoctoproject.org
From: Nicolas Bigaouette <nbigaouette@rogue-research.com>
Message-ID: <c62407c3-6850-ab3e-9116-b2cfe2ae53ce@rogue-research.com>
Date: Tue, 1 Nov 2016 11:14:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: Question about wic partition creation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Nov 2016 15:14:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

We are using Yocto (jethro and krogoth) to build an image for a device.

I organized the compilation process into multiple stages for easier 
integration with our tooling. The last stage is a call to `wic` to 
create a drive image that we can then `dd` to a real drive to get a 
workable system.

I am faced with a problem where I would like the top-level directory of 
one of the partition created by wic to have a different owner than root.

I am able to tell wic the partition information (size, filesystem, etc.) 
but I can't find a way to tell wic to change permissions of 
files/directories inside the partition...

As an example I have an entry like the following at the end of my `.wks`:
 > part /opt/mnt        --label extra  --fstype=ext4 --align 1024 
--ondisk sda --size=2040
which will add an extra partition after all others on the final image. 
An entry in `/etc/fstab` will be added so that the partition will be 
mounted to `/opt/mnt`.

Note that the partition should be empty: I'm not populating it with any 
files or directories.

But after booting the system, the directory `/opt/mnt` will have the 
permissions of the top-level directory of the created partition, and by 
default those are `0755` and owned by `root:root`.

So my question is: How can I change this so that it's owned by a 
specific uid and gid (`1000:1000`)?

I am investigating plugins for now (for example by having a 
`meta-mylayer/scripts/lib/wic/plugins/source/fsimage-mypartition.py`) 
but I still can't see how I can change the owner of the directory. 
Should I provide a rootfs-like directory which is empty but owned by the 
proper uid and gid?

Note that letting users be able to mount the partition (by adding 
`users` to `/etc/fstab`) is not what I want; it would _not_ change the 
permissions/owner of the top-level directory of the partition.

Thank you very much!

Regards,

Nicolas

