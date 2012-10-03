Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F9CE011C9
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:35:41 -0700 (PDT)
Received: from localhost ([127.0.0.1]:33913 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TJP6w-00083Y-3W
	for yocto@yoctoproject.org; Wed, 03 Oct 2012 13:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=vJ/EEGvQ1ROnI2pnPeWAuyIxdYI=; b=zJ658apqznJRLEdKh5j3o6Voh/kA
	U/DcoEue/HHGAgtq8sk9fL7zhy+m5zqUPhyL+uhVZWlfVfayOD9q+CHj6Caf0GPu
	qx1pcicLsbDUQ8FvwhRGRqI70eJAOmOndL7RfWGTgbHNpA5VkJdnWAmlYNmULcu+
	nfN+YTe35NEhYAs=
Received: from [195.171.99.130] (port=56110 helo=[192.168.0.40])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TJP6v-00083U-SW
	for yocto@yoctoproject.org; Wed, 03 Oct 2012 13:35:38 +0000
Message-ID: <506C3F92.4050309@communistcode.co.uk>
Date: Wed, 03 Oct 2012 14:37:22 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120910 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
	<CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
	<CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
In-Reply-To: <CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
Subject: Re: Correct procedure for rebuilding after a git pull
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 13:35:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/12 14:27, James Abernathy wrote:
>
>
> On Wed, Oct 3, 2012 at 9:21 AM, Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>>wrote:
>
>     On 3 October 2012 14:05, James Abernathy <jfabernathy@gmail.com
>     <mailto:jfabernathy@gmail.com>> wrote:
>     > Now I see a bunch of patches pushed to Denzil branch and I want
>     to test
>     > them.  My build directory is untouched since the successful
>     build before.
>     > What do I do to rebuild my project to include the latest
>     patches.  I've
>     > tried things like "bitbake -c cleansstate core-image-cdv-media"
>     before the
>     > new "bitbake core-image-cdv-media" and I've tried just rebaking
>     by itself.
>     > Something always fails.  I've learned that to really test I have to
>     > completely delete my build directory saving only my local.conf and
>     > bblayer.conf.
>
>     Just git pull ; bitbake should work -- all of the packages that
>     changed will rebuild without any problems.
>
>     That's the theory, and everyone who works against oe-core/poky master
>     does this ever day (including me).
>
>     Can you give an example of something that fails?
>
>     The most recent patch update to Denzil included some Cedartrail
>     BSP updates to the CDV PVR driver.  I was traveling last week and
>     I was out of date on my poky and meta-intel by at least that
>     long.  Monday was the pull.  So when the rebuild happened, I got a
>     cdv-pvr driver configuration error.  I didn't look into why
>     because of my experience of this taking longer than a complete
>     rebuild.  So I deleted the build directory and did the rebuild. 
>     And I didn't get the error on the rebuild.  Everything still works
>     fine for me on that BSP.
>
> Jim A
>
>     Ross
>
>

I also use this work flow. If something goes wrong with a particular 
package then I will -c cleansstate failed-package and then start the 
build again. This usually fixes it.

Regards,

>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


