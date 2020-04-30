Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web12.1125.1588282398436169919
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 14:33:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jUGnz-000X6R-4K
	for yocto@lists.yoctoproject.org; Thu, 30 Apr 2020 23:33:15 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: How to include initrd.cpio to image
Date: Thu, 30 Apr 2020 23:33:09 +0200
Message-ID: <r8fg6l$3ph0$1@ciao.gmane.io>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I am generating core-image-minimal-initramfs-edison.cpio.gz which is 
found in the deploy-core-image-minimal-initramfs-image-complete/ directory.

When I build my image edison-image initrd gets included and deployed in 
edison-image-edison.hddimg. But I am not using that.

I also generate edison-image-edison.ext4 which has bzImage kernel in 
/boot. But by Zeus, I have no idea how to get edison-image to install a 
file from the other recipe's deploy.

To me it doesn't make sense to include bzImage without initrd, kernel 
will not be able to load the rootfs without.

I know I can bundle the initramfs, and that has worked fine before. 
Until kernel + initrd grew above 15MB, now U-Boot won't load it. I have 
now kernel = 10MB + initrd = 10MB which boot fine when I copy initrd to 
/boot manually.

