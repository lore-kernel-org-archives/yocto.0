Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ABD9E00BE8; Thu, 29 May 2014 09:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mxout-08.mxes.net (unknown [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CD9E00B71
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 09:49:59 -0700 (PDT)
Received: from [192.168.0.11] (unknown [50.120.89.177])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 48B12509B5
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 12:49:59 -0400 (EDT)
Message-ID: <53876533.7080306@bsmucker.eu.org>
Date: Thu, 29 May 2014 09:49:55 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537F9583.50407@bsmucker.eu.org>
	<53874D1F.8090504@bsmucker.eu.org> <2317978.pEesILAVCv@koontz>
In-Reply-To: <2317978.pEesILAVCv@koontz>
Subject: Re: Yocto with Initial RamFS
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
X-List-Received-Date: Thu, 29 May 2014 16:50:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Soren,

My followup question is: Can I mix toolchains in this situation?

Can I compile the initramfs binaries with the uclibc toolchain based on 
the poky-tiny distro and the regular file system binaries with the 
glibc-based toolchain (based on a different distro)?

If this is possible, how would I begin to do it?

Thanks,

Brian

On 5/29/2014 8:38 AM, Søren Holm wrote:
> Torsdag den 29. maj 2014 08:07:11 skrev Brian Smucker:
>> Hi,
>>
>> Was wondering why this has not been answered.  Maybe it is too dumb of a
>> question? If so, let me know or point me to some documentation.
>>
> I'm declaring an initramfs-image like this. As you can see the recipe is
> derived from core-image-minimal-initramfs. The package initramfs-vm provides
> the script /init executed on boot.
>
> The "assembling" of the actual bootable image with initramfs and rootfs (in my
> case a squashfs) is done in another script.
>
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
> # initramfs for vm-image. Derived from core-image-minimal-initramfs
> DESCRIPTION = "Small image capable of booting a a squashfs+aufs filesystem"
>
> IMAGE_INSTALL = "initramfs-vm-boot busybox udev base-passwd"
>
> # Do not pollute the initrd image with rootfs features
> IMAGE_FEATURES = ""
> IMAGE_LINGUAS = ""
> #DISTRO_FEATURES = ""
>
> inherit core-image
>
> IMAGE_FSTYPES = "cpio"
>
> IMAGE_PREPROCESS_COMMAND = "cb16_remote_bloat;"
>
> cb16_remote_bloat() {
>          rm -r ${IMAGE_ROOTFS}/boot
> }
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>


