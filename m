Return-Path: <charles.chau@habeyusa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50F8E00B77; Fri, 20 Nov 2015 17:48:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2759 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Nov 2015 17:47:57 PST
Received: from server.habeyonline.com (server.habeyonline.com [142.4.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D9F8E00B6F
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 17:47:57 -0800 (PST)
Received: from [96.31.254.242] (port=37889 helo=[192.168.0.227])
	by server.habeyonline.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <charles.chau@habeyusa.com>)
	id 1ZzwYs-0007Zc-Og
	for yocto@yoctoproject.org; Sat, 21 Nov 2015 01:01:55 +0000
To: yocto@yoctoproject.org
From: Charles Chau <charles.chau@habeyusa.com>
Message-ID: <564FC280.7040205@habeyusa.com>
Date: Fri, 20 Nov 2015 17:01:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.habeyonline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - habeyusa.com
X-Get-Message-Sender-Via: server.habeyonline.com: authenticated_id:
	charles.chau@habeyusa.com
X-Authenticated-Sender: server.habeyonline.com: charles.chau@habeyusa.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Mailman-Approved-At: Mon, 23 Nov 2015 08:04:32 -0800
Subject: i.MX6DL Qt5.5 Image
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
X-List-Received-Date: Sat, 21 Nov 2015 01:48:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am trying to upgrade my image from Daisy to Jethro.

I followed this tutorial from Wandboard 
http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
The Core Board I am using is Freescale i.MX6DL board

I am getting a lot of error of dependencies from the previous tutorial 
IMAGE_INSTALL_append and could not find the recipes for them.

> ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but 
> /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb 
> RDEPENDS on or otherwise requires it)
> ERROR: Nothing RPROVIDES 'libgl-mesa-dev' (but 
> /mountdata/hio-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p7.1-hfp.bb 
> RDEPENDS on or otherwise requires it)
> ERROR: Required build target 'hio-image-fb' has no buildable providers.
> Missing or unbuildable dependency chain was: ['hio-image-fb', 
> 'gst1.0-fsl-plugin', 'virtual/libg2d', 'libgl-mesa-dev']
I am still pretty new with the layers and applications and still 
finguring out the functionality of each items.

Could you please give me some instructions?

Thank you,

-- 
Charles Chau


