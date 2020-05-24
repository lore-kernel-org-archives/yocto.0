Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web10.12808.1590323895845984475
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 May 2020 05:38:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jcptN-000EER-Ga
	for yocto@lists.yoctoproject.org; Sun, 24 May 2020 14:38:13 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: How to include initrd.cpio to image
Date: Sun, 24 May 2020 14:38:08 +0200
Message-ID: <c901037a-977d-16d9-0062-bc33ffe883f2@gmail.com>
References: <160AB66D41D34D89.15432@lists.yoctoproject.org>
 <160B81ECB7BC9386.1783@lists.yoctoproject.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <160B81ECB7BC9386.1783@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Op 03-05-2020 om 13:42 schreef Gmane Admin:
> Op 30-04-2020 om 23:33 schreef Gmane Admin:
>> I am generating core-image-minimal-initramfs-edison.cpio.gz which is 
>> found in the deploy-core-image-minimal-initramfs-image-complete/ 
>> directory.
>>
>> When I build my image edison-image initrd gets included and deployed 
>> in edison-image-edison.hddimg. But I am not using that.
>>
>> I also generate edison-image-edison.ext4 which has bzImage kernel in 
>> /boot. But by Zeus, I have no idea how to get edison-image to install 
>> a file from the other recipe's deploy.
>>
>> To me it doesn't make sense to include bzImage without initrd, kernel 
>> will not be able to load the rootfs without.
>>
>> I know I can bundle the initramfs, and that has worked fine before. 
>> Until kernel + initrd grew above 15MB, now U-Boot won't load it. I 
>> have now kernel = 10MB + initrd = 10MB which boot fine when I copy 
>> initrd to /boot manually.
> 
> Gmane is crazy. It's me, Ferry.
> 
> I'm still stuck here. Any ideas?

Self answering, I added this to my image recipe:

ROOTFS_POSTPROCESS_COMMAND += "install_initrd; "

install_initrd() {
     bbnote "Adding initrd to image ${IMAGE_ROOTFS}"
     install -d {IMAGE_ROOTFS}/boot
     bbnote "from 
${DEPLOY_DIR_IMAGE}/core-image-minimal-initramfs-edison.cpio.gz"
     install -m 0755 
${DEPLOY_DIR_IMAGE}/core-image-minimal-initramfs-edison.cpio.gz 
${IMAGE_ROOTFS}/boot/initrd
}


> 
> 


