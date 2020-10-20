Received: from first.geanix.com (first.geanix.com [116.203.34.67])
 by mx.groups.io with SMTP id smtpd.web10.2799.1603184194840914868
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 01:56:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=first header.b=AdOp74B7;
 spf=pass (domain: geanix.com, ip: 116.203.34.67, mailfrom: martin@geanix.com)
Received: from [192.168.64.71] (unknown [185.17.218.86])
	by first.geanix.com (Postfix) with ESMTPSA id EE60BF42469;
	Tue, 20 Oct 2020 08:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
	t=1603184191; bh=Zzul6Zh8AfVbQ+TDwxQGAWULq4zg3FRuIjQ1y6/jUSw=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=AdOp74B7RPW72rCnE9VOTgOCwSnLtk43C79NEvs6SSh/SyjZQ5HK5SQUHSs7lmCHM
	 9EaqXlQmojsh00EKt9LUQfKviWUt5gPcDJzZnFGcmHVkTdfblaNAbOzGisly81oKQn
	 y3vg/XLVEwkk2wHWZRSYJltSH2pmquOCHhUbflmCH0KCyoyUrW4JsXcAOC+UL0U9OL
	 lzBrLqWqmiJg/sa7WCNMhCDEySOXZvxWpEQagavvs5unpWrtltA00oogI+GVa0bqkG
	 NM/gRQ0kxVQW1GPhVFmNK0ZU24TuiuWjlls1LiWxy6fwOuQEiXDWfhLhYcAFPuRlnN
	 fO3CAW4ZzIcVg==
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
To: Enrico J?rns <ejo@pengutronix.de>, yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
From: "Martin Hundeb?ll" <martin@geanix.com>
Message-ID: <ae6e9ece-6f6b-bd1f-657c-2031694da76c@geanix.com>
Date: Tue, 20 Oct 2020 10:56:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
X-Spam-Status: No, score=-0.4 required=4.0 tests=ALL_TRUSTED,BAYES_50,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	URIBL_BLOCKED autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on ff3d05386fc5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

Hi Enrico,

On 19/10/2020 17.43, Enrico J?rns wrote:
> Hi,
> 
> as I did not have much success with my question in the OR irc, let's
> try it here in a more verbose way. ;)
> 
> Imagine I have an A+B redundant boot system, with additional bootloader
> and separate home or application file system. Thus my layout would be
> like:
> 
> p1: bootloader
> p2: rootfs A
> p3: rootfs B
> p4: appfs A
> p5: appfs B
> 
> where rootfs A + appfs A form a logical unit with respect to the image-
> based update handling.
> 
> No my question is: How do I generate the images required for the
> bootloader partition and/or the appfs partition with the OE standard
> image generation mechanisms?
> 
> We have a working solution with the 'genimage' tool for quite some
> time, but I wonder if that could be done with the more tightly
> integrated wic, too.
> 
> 
> To my understanding, the way of creating something like a bootloader
> image or an application file system is by using wic's image split
> capabilities and doing (non-redundant example):
> 
> part /boot --source rootfs (or some plugin)
> part / ... --source rootfs
> part /app  --source rootfs
> 
> This will create multiple file system images out of the prior monolitic
> rootfs one. It also does all necessary changes for mounting, like
> modifying the rootfs /etc/fstab etc.
> Thus, using these generated images in my update scenario would be the
> way to go for me.
> 
> 
> BUT, currently I do not see any straight-forward way of how to use
> them. One could add them to what the image_wic* image fstypes generate,
> but this will violate the default rule that each image fstype generates
> exactly one image.
> And the generated images are a little hard to reference as one cannot
> give them names (which is probably a negligable issue) and they do not
> have a fstype extension.
> The more sever issue is that I would also like to have archives (like
> tar.bz2) of the content of /app or /boot as I can use them quite good
> for installing to partitions whose size and other parameters I do not
> know very beforehand (also applicable to UBI volumes).
> 
> But, at the moment there does not seem to be a designated way of doing
> something like I intended. I wonder how others solve the generation of
> non-rootfs images with YP/OE?

I've often needed similar functionality.

Sometimes I wonder if one could make a recipe/class that depends on the 
rootfs contents, installs some packages, and packages the resulting 
differences - maybe using the --exclude option to tar?

// Martin

