Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA596E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:30:41 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5F570F811E2; Mon, 15 Oct 2012 13:30:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1FE4CF811DF;
	Mon, 15 Oct 2012 13:30:40 -0600 (MDT)
Message-ID: <507C6483.40904@mlbassoc.com>
Date: Mon, 15 Oct 2012 13:31:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
	<1350284380.4115.18.camel@babel.joshhome>
	<507C61B9.8060300@windriver.com>
In-Reply-To: <507C61B9.8060300@windriver.com>
Subject: Re: Multiple partitions in drive image
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
X-List-Received-Date: Mon, 15 Oct 2012 19:30:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-10-15 13:19, Mark Hatle wrote:
> On 10/15/12 1:59 AM, Joshua Immanuel wrote:
>> Hello Jonathan,
>>
>> On Fri, 2012-10-12 at 21:42 +0000, Jonathan Haws wrote:
>>> What I am trying to do is have Poky build me an image that I can just
>>> 'dd' to a SSD and hook up to the system to boot.  Since that image
>>> will also only be only ~250MB or so, I would like to have Poky
>>> generate an image containing multiple partitions - a small one
>>> containing the boot files, then the rest of the image dedicated to
>>> storage.  Is that possible?
>>
>> Yes. It is possible. I have done the following in order to generate
>> image with multiple partitions.
>>
>>       1. I wrote a custom image_types.bbclass in order to generate
>>          multiple partition images (say /, /var etc)
>>       2. Wrote a bbappend for base-files recipe to generate custom fstab
>>          file with required partition's mount options
>>       3. Extended grub-native recipe to generate core.img and boot.img
>>          using grub-mkimage for target platform
>>       4. Wrote a python task to join all these generated images (boot,
>>          core and filesystem images) and embedded the partition table
>>          structure into it.
>>       5. Added this task to my image recipe after the 'do_rootfs' task
>>
>> This way we can generate a custom image with the required partitions.
>>
>
> Recently a we've been talking about how we could do this.  Specifically how to construct a disk image that can just be DD'ed including bootloader, partitioning and multiple
> partitions.
>
> Is the code you used for the dynamic fstab, partition map, and bootloader setup and image creation available anywhere?
>
> I expect it isn't too difficult to create, but if there is something to start with it would be useful.

There are a lot of examples for this - try looking at meta-fsl-arm
it supports a 'sdcard' image type which is what you are looking for.

git:://github.com/Freescale/meta-fsl-arm.git

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

