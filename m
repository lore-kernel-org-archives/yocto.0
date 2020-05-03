Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web10.21211.1588506146592866096
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 May 2020 04:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jVD0q-000Gn0-DN
	for yocto@lists.yoctoproject.org; Sun, 03 May 2020 13:42:24 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: How to include initrd.cpio to image
Date: Sun, 3 May 2020 13:42:19 +0200
Message-ID: <aa82f1d0-b792-873f-94ba-a2719e813904@gmail.com>
References: <160AB66D41D34D89.15432@lists.yoctoproject.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <160AB66D41D34D89.15432@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Op 30-04-2020 om 23:33 schreef Gmane Admin:
> I am generating core-image-minimal-initramfs-edison.cpio.gz which is 
> found in the deploy-core-image-minimal-initramfs-image-complete/ directory.
> 
> When I build my image edison-image initrd gets included and deployed in 
> edison-image-edison.hddimg. But I am not using that.
> 
> I also generate edison-image-edison.ext4 which has bzImage kernel in 
> /boot. But by Zeus, I have no idea how to get edison-image to install a 
> file from the other recipe's deploy.
> 
> To me it doesn't make sense to include bzImage without initrd, kernel 
> will not be able to load the rootfs without.
> 
> I know I can bundle the initramfs, and that has worked fine before. 
> Until kernel + initrd grew above 15MB, now U-Boot won't load it. I have 
> now kernel = 10MB + initrd = 10MB which boot fine when I copy initrd to 
> /boot manually.

Gmane is crazy. It's me, Ferry.

I'm still stick here. Any ideas?

