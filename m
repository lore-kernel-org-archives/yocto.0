Return-Path: <karl@hiramoto.org>
Received: from homiemail-a32.g.dreamhost.com (caiajhbdccac.dreamhost.com
	[208.97.132.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73EDAE01710
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 08:36:19 -0700 (PDT)
Received: from homiemail-a32.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a32.g.dreamhost.com (Postfix) with ESMTP id E09A7584056
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 08:36:18 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=hiramoto.org; h=message-id:date
	:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=hiramoto.org;
	b=HygqUUSrr2aeoq2nd8fYuoKj7HO6VOh6KHZOBOorf3yC1+IqoYpnowhDDgdJA
	/4F/Ho3ktfASbQbu8+Wf9Ukw6whaPUl/2q2zLcC5FkH0v7wZYgyq7WbmlxROueI7
	7CHca5jbdoyBJgU2HYzkpwVeC0yoRwygpDpRnirR/NXTx0=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=message-id
	:date:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=hiramoto.org; bh=kgWn
	DxoTUoFNZpArM0YrdwkgH7A=; b=eJpsBZYAMQq+FyVCjL6Nr3sy7c4l4JBvmbtW
	fsJjbSsFJpG3xeDodfEKeKpzbqobBin4FW95dKkLjIL4wX0A/cUgV5LmGDf49ina
	szzwzdFd78oHsDAGEMa4eG+TxlpIxQyrqvsqK8q86TBG75AJZe17XcGlWYtGh04F
	AxbLnDA=
Received: from [10.64.1.2] (139.Red-83-61-237.dynamicIP.rima-tde.net
	[83.61.237.139])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a32.g.dreamhost.com (Postfix) with ESMTPSA id 425D3584054
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 08:36:18 -0700 (PDT)
Message-ID: <5273CA60.7030205@hiramoto.org>
Date: Fri, 01 Nov 2013 16:36:00 +0100
From: Karl Hiramoto <karl@hiramoto.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130921 Thunderbird/17.0.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
In-Reply-To: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
Subject: Re: 2.6.39 kernel and poky
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
X-List-Received-Date: Fri, 01 Nov 2013 15:36:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2013 04:21 PM, Maxwell Bottiger wrote:
> I have a custom kernel and drivers I built for an Atmel AT91SAM9x5ek 
> system on a chip, and I'd like to use them with yocto to build a 
> distribution.
>
> The original documentation, support CD, etc are all based around an 
> open embedded build from 2011, which doesn't seem to work any longer.  
> Yocto looks like a great alternative, but wants to build the 3.10 
> kernel, which I don't think supports this SoC any longer.  So, is 
> there a straight forward method of building a standard Poky root 
> filesystem, but with a custom recipe for the 2.6.39 kernel instead of 
> the stock one?


I use a 2.6.35 kernel on my own overlay.  One thing i ran into with an 
older kernel and new toolchain is the need for the 
-mno-unaligned-access  compile flag.


My example:

recipies-kernel/linux/linux-yocto-custom_2.6.35.12.bb


inherit kernel
#require recipes-kernel/linux/linux-yocto.inc

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
DEFAULT_PREFERENCE = "-1"


LINUX_VERSION = "2.6.35.12"
LINUX_VERSION_EXTENSION ?= "-custom"
KBRANCH = "master"
META = "meta"

SRC_URI = 
"git://my_url/linux-2.6.35.12.git;branch=${KBRANCH};branch=master;protocol=ssh;user=git"


SRC_URI += "file://defconfig"
SRC_URI += "file://extra-cflags-override.patch"

KERNEL_EXTRA_ARGS="LOADADDR=0x2000000  V=1 KCFLAGS=-mno-unaligned-access"


UBOOT_ENTRYPOINT="2000000"

SRCREV="master"


PV = "${LINUX_VERSION}"

PR = "r1"

S = "${WORKDIR}/git"
EXTRA_OEMAKE = "${PARALLEL_MAKE}"

# Override COMPATIBLE_MACHINE to include your machine in a bbappend
# file. Leaving it empty here ensures an early explicit build failure.
COMPATIBLE_MACHINE = "(xo1-mvs)"



kernel_do_configure() {
     # fixes extra + in /lib/modules/2.6.37+
     # $ scripts/setlocalversion . => +
     # $ make kernelversion => 2.6.37
     # $ make kernelrelease => 2.6.37+
     touch ${B}/.scmversion ${S}/.scmversion

     cp ${WORKDIR}/defconfig ${B}/.config

     if [ ! -z "${INITRAMFS_IMAGE}" ]; then
         for img in cpio.gz cpio.lzo cpio.lzma cpio.xz; do
         if [ -e 
"${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE}-${MACHINE}.$img" ]; then
             cp "${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE}-${MACHINE}.$img" 
initramfs.$img
         fi
         done
       fi
}




