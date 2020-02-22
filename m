Received: from radex-web.radex.nl (radex-web.radex.nl [178.250.146.7])
 by mx.groups.io with SMTP id smtpd.web12.6.1582390603893697122
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 08:56:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 178.250.146.7, mailfrom: fntoth@gmail.com)
Received: from [10.8.0.6] (cust-178-250-146-69.breedbanddelft.nl [178.250.146.69])
	by radex-web.radex.nl (Postfix) with ESMTPS id 6C53F2408F
	for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2020 17:50:06 +0100 (CET)
From: fntoth@gmail.com
Subject: How to create a btrfs snapshot in the rootfs image?
X-Mozilla-News-Host: news://news://news://news.gmane.org:119
To: yocto@lists.yoctoproject.org
Message-ID: <2bc1449b-d915-3289-05ef-efdf8d9b6e92@gmail.com>
Date: Sat, 22 Feb 2020 17:50:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all,

I am able to generate a rootfs image of type btrfs.
Btrfs supports subvolumes, for instance with name @.

Using subvolumes instead of partitions allow more efficient use of the 
emmc compared to separate partitions. And it allows multiple versions of 
the rootfs in the same pool.

Manually I can create a subvolume (on the host) by loop mounting the 
btrfs image and taking the snapshot. Something like this:
mkdir tmp
sudo mount edison-image.btrfs tmp
sudo btrfs subvolume snapshot tmp tmp/@

and then remove all dir's in root except @.

mount and btrfs operations need root permissions AFAIK. Is there any way 
to add these to the recipe?

There is 2nd thing I want to achieve:
Btrfs can send / receive these snapshots allowing over-the-air-updates.

For this I need to:
sudo btrfs subvolume snapshot -r tmp/@ tmp/@ota
sudo btrfs send tmp/@ota > edison-image.snapshot

And then later manually (with the device having mounted btrfs on /mnt):

cat edison-image.snapshot | ssh root@edison "btrfs receive /mnt"
ssh root@edison "btrfs property set -ts /mnt/@ota ro false"

How do I automated the first steps in yocto?

Ferry



