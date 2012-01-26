Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACE08E00597
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:49:08 -0800 (PST)
Received: from [192.168.0.16] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 12B70272F5
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 16:34:53 +0000 (GMT)
Message-ID: <4F2183DA.1050802@communistcode.co.uk>
Date: Thu, 26 Jan 2012 16:48:26 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com>
In-Reply-To: <4F2182E2.2030101@gmail.com>
Subject: Re: understanding recipes
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
X-List-Received-Date: Thu, 26 Jan 2012 16:49:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 26/01/12 16:44, jfabernathy wrote:
> I'm trying to understand the concept of creating a recipe and having 
> it included in the build I do.
>
> For example, suppose I want to create the meta-intel/meta-cedartrail 
> BSP with the core-image-minimal image, but I wanted to include hello 
> world as shown in 3.1.2 Autotooled Package section of the Poky 
> reference Manual.
>
> Where do I put the recipe file?  I'm guessing a recipe-jfa directory 
> at the same level as the meta-cedartrail recipe-core, recipe-kernel, 
> recipe-graphic, recipe-bsp?
>
> I'm also assuming that helloworld.bb file would contain:
>
>      DESCRIPTION = "GNU Helloworld application"
>      SECTION = "examples"
>      LICENSE = "GPLv2+"
>      LIC_FILES_CHKSUM = 
> "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>      PR = "r0"
>
>      SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"
>
>      inherit autotools gettext
>
>
> So where do the values of ${GNU_MIRROR|, and ${PV} get set correctly?
>
> And what does the following line do or require me to do:
>
>  LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#usingpoky-configuring-LIC_FILES_CHKSUM

>
> Is this all that is needed to get helloworld put into /usr/bin so it 
> can be executed at the command line when the image is booted?
>
> Jim A
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


