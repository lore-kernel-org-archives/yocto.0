Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70096E0044A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 13:36:08 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1S523D-0005cD-4p from Hollis_Blanchard@mentor.com 
	for yocto@yoctoproject.org; Tue, 06 Mar 2012 13:36:07 -0800
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 6 Mar 2012 13:36:06 -0800
Received: from [172.30.12.214] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Tue, 6 Mar 2012 13:36:06 -0800
Message-ID: <4F568346.2010901@mentor.com>
Date: Tue, 6 Mar 2012 13:36:06 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F4FF77D.9060607@mentor.com>
In-Reply-To: <4F4FF77D.9060607@mentor.com>
X-OriginalArrivalTime: 06 Mar 2012 21:36:06.0714 (UTC)
	FILETIME=[236819A0:01CCFBE1]
Subject: Re: [PATCH] include usbinit package with usbgadget feature
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
X-List-Received-Date: Tue, 06 Mar 2012 21:36:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2012 02:26 PM, Hollis Blanchard wrote:
> The g_ether kernel module, in the kernel-module-g-ether package, 
> allows targets to use a USB connection as a network interface. 
> However, that's not useful until the module is loaded.
>
> The usbinit package provides the /etc/init.d/usb-gether script to load 
> the g_ether module at boot, so it should be included along with 
> kernel-module-g-ether.
>
> Tested with core-image-base on beagleboard.
>
> Signed-off-by: Hollis Blanchard <hollis_blanchard@mentor.com>
> ---
>
> diff --git a/meta/recipes-core/tasks/task-base.bb 
> b/meta/recipes-core/tasks/task-base.bb
> index 2032432..fda0384 100644
> --- a/meta/recipes-core/tasks/task-base.bb
> +++ b/meta/recipes-core/tasks/task-base.bb
> @@ -2,7 +2,7 @@ DESCRIPTION = "Merge machine and distro options to 
> create a basic machine task/p
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = 
> "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                      
> file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> -PR = "r73"
> +PR = "r74"
>
>  inherit task
>
> @@ -248,7 +248,8 @@ RRECOMMENDS_task-base-usbgadget = "\
>      kernel-module-gadgetfs \
>      kernel-module-g-file-storage \
>      kernel-module-g-serial \
> -    kernel-module-g-ether"
> +    kernel-module-g-ether \
> +    usbinit"
>
>  RDEPENDS_task-base-usbhost = "\
>      usbutils "

Any additional comments?

Hollis Blanchard
Mentor Graphics, Embedded Systems Division



