Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89247E00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:19:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q9FJJLBr018874
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:19:21 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Mon, 15 Oct 2012 12:19:20 -0700
Message-ID: <507C61B9.8060300@windriver.com>
Date: Mon, 15 Oct 2012 14:19:21 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121010 Thunderbird/16.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
	<1350284380.4115.18.camel@babel.joshhome>
In-Reply-To: <1350284380.4115.18.camel@babel.joshhome>
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
X-List-Received-Date: Mon, 15 Oct 2012 19:19:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/12 1:59 AM, Joshua Immanuel wrote:
> Hello Jonathan,
>
> On Fri, 2012-10-12 at 21:42 +0000, Jonathan Haws wrote:
>> What I am trying to do is have Poky build me an image that I can just
>> 'dd' to a SSD and hook up to the system to boot.  Since that image
>> will also only be only ~250MB or so, I would like to have Poky
>> generate an image containing multiple partitions - a small one
>> containing the boot files, then the rest of the image dedicated to
>> storage.  Is that possible?
>
> Yes. It is possible. I have done the following in order to generate
> image with multiple partitions.
>
>       1. I wrote a custom image_types.bbclass in order to generate
>          multiple partition images (say /, /var etc)
>       2. Wrote a bbappend for base-files recipe to generate custom fstab
>          file with required partition's mount options
>       3. Extended grub-native recipe to generate core.img and boot.img
>          using grub-mkimage for target platform
>       4. Wrote a python task to join all these generated images (boot,
>          core and filesystem images) and embedded the partition table
>          structure into it.
>       5. Added this task to my image recipe after the 'do_rootfs' task
>
> This way we can generate a custom image with the required partitions.
>

Recently a we've been talking about how we could do this.  Specifically how to 
construct a disk image that can just be DD'ed including bootloader, partitioning 
and multiple partitions.

Is the code you used for the dynamic fstab, partition map, and bootloader setup 
and image creation available anywhere?

I expect it isn't too difficult to create, but if there is something to start 
with it would be useful.

--Mark

>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


