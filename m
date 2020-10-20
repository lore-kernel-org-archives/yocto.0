Received: from first.geanix.com (first.geanix.com [116.203.34.67])
 by mx.groups.io with SMTP id smtpd.web10.2838.1603184446117485418
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 02:00:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=first header.b=eYmgZYBY;
 spf=pass (domain: geanix.com, ip: 116.203.34.67, mailfrom: martin@geanix.com)
Received: from [192.168.64.71] (unknown [185.17.218.86])
	by first.geanix.com (Postfix) with ESMTPSA id AE643F42469;
	Tue, 20 Oct 2020 09:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
	t=1603184443; bh=IsiTs6WVY+M0XMjAXahRiJ3R7LshXmp8prpx41NpdwA=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=eYmgZYBYvPAuM+WfK9FL59Wbw1NrNXxH71/XcMcSxzVu+gLTxNPOsxop4wgeWu8hC
	 1hMYDeRKPDlHuit/LEIHtEY5xusmrb/x9TbOW+hbwYD/maVpvPRpa58qR+yv32Tem3
	 Ypxx5xQ2iUphCnGplpSH33Jrk/DFMMTDIXmd/KcKEedoX2VzKgL67M56cKtAWfCqma
	 dvmFwsTAi35LvxDoUTKqwUKz5KH0FK24JMNp+665mZn7q3NqoioLxVAOKzzIXeNuT/
	 vyQbe3Unrw4mtkRanEZtozAzlLAHgBhLsAOPR4Ftho/YobqJjlfGi8OUqC3DC5NF8d
	 +IyDsS2KPhAkA==
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
To: Stefano Babic <sbabic@denx.de>, Enrico J?rns <ejo@pengutronix.de>,
 yocto@lists.yoctoproject.org
Cc: jlu <jlu@pengutronix.de>
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
 <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
From: "Martin Hundeb?ll" <martin@geanix.com>
Message-ID: <76407cc3-811c-5e12-c895-525b0e8ede40@geanix.com>
Date: Tue, 20 Oct 2020 11:00:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de>
X-Spam-Status: No, score=-0.4 required=4.0 tests=ALL_TRUSTED,BAYES_50,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	URIBL_BLOCKED autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on ff3d05386fc5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

Hi Stefano,

On 19/10/2020 18.23, Stefano Babic wrote:
> Hi Enrico,
> 
> On 19.10.20 17:43, Enrico J?rns wrote:
>> Hi,
>>
>> as I did not have much success with my question in the OR irc, let's
>> try it here in a more verbose way. ;)
>>
>> Imagine I have an A+B redundant boot system, with additional bootloader
>> and separate home or application file system. Thus my layout would be
>> like:
>>
>> p1: bootloader
>> p2: rootfs A
>> p3: rootfs B
>> p4: appfs A
>> p5: appfs B
>>
>> where rootfs A + appfs A form a logical unit with respect to the image-
>> based update handling.
>>
>> No my question is: How do I generate the images required for the
>> bootloader partition and/or the appfs partition with the OE standard
>> image generation mechanisms?
>>
>> We have a working solution with the 'genimage' tool for quite some
>> time, but I wonder if that could be done with the more tightly
>> integrated wic, too.
>>
>>
>> To my understanding, the way of creating something like a bootloader
>> image or an application file system is by using wic's image split
>> capabilities and doing (non-redundant example):
>>
>> part /boot --source rootfs (or some plugin)
>> part / ... --source rootfs
>> part /app  --source rootfs
> 
> I had the same use case as you, and I could use something like
> 
> part /app --source rawcopy --sourceparams="file=..."
> 
> and the file points to the image I want to put on the partition.
> 
>>
>> This will create multiple file system images out of the prior monolitic
>> rootfs one. It also does all necessary changes for mounting, like
>> modifying the rootfs /etc/fstab etc.
>> Thus, using these generated images in my update scenario would be the
>> way to go for me.
>>
>>
>> BUT, currently I do not see any straight-forward way of how to use
>> them. One could add them to what the image_wic* image fstypes generate,
>> but this will violate the default rule that each image fstype generates
>> exactly one image.
>> And the generated images are a little hard to reference as one cannot
>> give them names (which is probably a negligable issue) and they do not
>> have a fstype extension.
>> The more sever issue is that I would also like to have archives (like
>> tar.bz2) of the content of /app or /boot as I can use them quite good
>> for installing to partitions whose size and other parameters I do not
>> know very beforehand (also applicable to UBI volumes).
>>
>> But, at the moment there does not seem to be a designated way of doing
>> something like I intended. I wonder how others solve the generation of
>> non-rootfs images with YP/OE?
>>
>> Or did I miss something that already exists for this?
> 
> I have not a straightforward solution. I inherited just "image" and I
> cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was
> superfluous. Maybe forcing packagegroup-core-boot can be an option.

Yeah, this is also what I often end up doing. I often need a way to 
bundle several artifacts together, i.e. bootloader, rootfs, sdk, etc.

With that in mind, I would also very much like a way to make image 
artifacts available in WORKDIR without pulling from DEPLOY_DIR_IMAGE - 
it just feels wrong to use files from the output folder as input in recipe.

// Martin
