Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8428E01473
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 15:57:33 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.82.244])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 228BC509B6
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 18:57:32 -0500 (EST)
Message-ID: <50F5ECE7.2090503@bsmucker.eu.org>
Date: Tue, 15 Jan 2013 15:57:27 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
In-Reply-To: <CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
Subject: Re: Busybox still old version: Still looking for a clear understanding of an old mystery.
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
X-List-Received-Date: Tue, 15 Jan 2013 23:57:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Rudolf,

On 1/15/2013 3:28 PM, Rudolf Streif wrote:
>
> Brian,
>
> What are you exactly referring to as "new version"? The package 
> version that bitbake builds is defined by the recipe, through the 
> version designation in the recipe's file name or through explicitly 
> setting PV.
>
> I think what you are trying to do is to modify the busybox 
> configuration and then recompile and package. Bitbake will not 
> automatically recompile after menuconfig. Menuconfig does not 
> invslidate the shared state cache. Try this:
>
> bitbake -c menuconfig busybox
> bitbake -c -f compile busybox
> bitbake busybox
>
>
So I have done the above.  That is not the question.  Busybox compiles 
fine and the new unstripped busybox is in the 
.../yocto/tmp/work/armv4t-poky-linux-gnueabi/busybox-1.20.2-r2/busybox-1.20.2/

My question is that after compiling busybox, I do

bitbake -c cleansstate core-image-minimal
bitbake core-image-minimal

expecting that the core image generated will contain the new busybox.  
It does not, it contains a busybox copy that was compiled days ago, not 
the custom one I just compiled.

Why is this?  How can I force the bitbake to include the newly-compiled 
busybox into my minimal image?

Thanks,

Brian


