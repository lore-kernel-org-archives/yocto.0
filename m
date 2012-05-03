Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FDF0E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 03:27:01 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 63745F81213; Thu,  3 May 2012 04:27:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	DEAR_SOMETHING autolearn=no version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B6F85F8120C;
	Thu,  3 May 2012 04:26:52 -0600 (MDT)
Message-ID: <4FA25D6C.8070605@mlbassoc.com>
Date: Thu, 03 May 2012 04:26:52 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <OF2A8EADBF.1A016282-ONC12579F3.0038D0CC-C12579F3.00390132@Sitek.it>
In-Reply-To: <OF2A8EADBF.1A016282-ONC12579F3.0038D0CC-C12579F3.00390132@Sitek.it>
Subject: Re: Need help for building kernel image with embedded initramfs.cpio
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
X-List-Received-Date: Thu, 03 May 2012 10:27:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-03 04:22, giovanni.pavoni@exorint.it wrote:
> Dear Sirs,
>
> for my cortex A8 based system, I am in the need to deploy
> a sort of "safe mode image" that should bootstrap only
> in case of system recovery.
>
> This image fits particularily well the model of a ramfs based system
> with contents such as core-image-minimal-mtdutils plus some tools addition.
>
> I defined a "myimage.bb" recipe for this image that generates a "myimage.cpio"
>
> However I am in the need to:
>
> 1. establish in myimage.bb a relation with virtual/kernel and ask to generate
> kernel modules only.
>
> 2. retrieve modules only from the kernel staging area and made them part of
> "myimage.cpio"
>
> 3. change the config of my kernel to add CONFIG_INITRAMFS_SOURCE = "myimage.cpio"
> and copy myimage.cpio from staging area to kernel build location.
>
> 4. build kernel and deploy the emitted uImage as "mykernel+myimage"
>
> Anyone can help with suggestions/guidelines and/or codesnips?

Why not use an 'initrd' image + kernel instead?  It's much simpler
to build and U-Boot has good support for this.  I use this method
all the time for just the scenario you mention.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

