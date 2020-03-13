Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web10.1924.1584130752366639511
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 13:19:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jCqly-000L1U-5o
	for yocto@lists.yoctoproject.org; Fri, 13 Mar 2020 21:19:10 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: How to create a btrfs snapshot in the rootfs image (during build)?
Date: Fri, 13 Mar 2020 21:19:04 +0100
Message-ID: <cdac52db-1702-a552-03cb-6bfe28b75c1d@gmail.com>
References: <2bc1449b-d915-3289-05ef-efdf8d9b6e92@gmail.com>
 <31175.1582992041311691839@lists.yoctoproject.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <31175.1582992041311691839@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Self answering below.

Op 22-02-2020 om 16:06 schreef Ferry Toth:
 > Hi all,
 >
 > I am able to generate a rootfs image of type btrfs.
 > Btrfs supports subvolumes, for instance with name @.
 >
 > Using subvolumes instead of partitions allow more efficient use of 
the emmc compared to separate partitions. And it allows multiple 
versions of the rootfs in the same pool.
 >
 > Manually I can create a subvolume (on the host) by loop mounting the 
btrfs image and taking the snapshot. Something like this:
 > mkdir tmp
 > sudo mount edison-image.btrfs tmp
 > sudo btrfs subvolume snapshot tmp tmp/@
 >
 > and then remove all dir's in root except @.
 >
 > mount and btrfs operations need root permissions AFAIK. Is there any 
way to add these to the recipe?

Up to now I found I can use udisksctl to mount the image as ordinary user.

However, to create a snapshot it appears I need to own the root 
directory and for that would need an option like mke2fs -E root_owner.

As that doesn't exist, the only workaround I find is to create an ext4 
partition with -E root_owner and then convert to btrfs.

Is there really no better way?

 > There is 2nd thing I want to achieve:
 > Btrfs can send / receive these snapshots allowing over-the-air-updates.
 >
 > For this I need to:
 > sudo btrfs subvolume snapshot -r tmp/@ tmp/@ota
 > sudo btrfs send tmp/@ota > edison-image.snapshot
 >
 > And then later manually (with the device having mounted btrfs on /mnt):
 >
 > cat edison-image.snapshot | ssh root@edison "btrfs receive /mnt"
 > ssh root@edison "btrfs property set -ts /mnt/@ota ro false"
 >
 > How do I automated the first steps in yocto?
 >
 > Ferry
 >
 >


