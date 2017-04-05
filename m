Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50F28E00655; Wed,  5 Apr 2017 02:07:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6C0E00349
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 02:07:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id B0FF1265693
Message-ID: <1491383240.25991.19.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Wed, 05 Apr 2017 11:07:20 +0200
In-Reply-To: <DB6PR0601MB26633CE38C3512324CDF630BCF0B0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
References: <DB6PR0601MB26633CE38C3512324CDF630BCF0B0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: FIT Image boot issue
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
X-List-Received-Date: Wed, 05 Apr 2017 09:07:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

Did you try if it works out of yocto?

I use those lines to generate FitImage from a kernel tree:

source ../poky/build/tmp/environment-setup-cortexa8hf-neon-helix-linux-gnueabi
make ARCH=arm CROSS_COMPILE=arm-helix-linux-gnueabi- -j16 zImage ???.dtb ???.dtb
arm-helix-linux-gnueabi-objcopy -O binary -R .note -R .comment -S arch/arm/boot/compressed/vmlinux
linux.bin
mkimage -f ???.its fitImage

Fabien

On Tue, 2017-04-04 at 14:08 +0000, Gujulan Elango, Hari Prasath (H.) wrote:
> Hello all,
>  
> We are using FIT image in an ARM 64 bit target based instead of separate Linux binary(Image.bin)
> and DTB. We are using a copy of the kernel fit image bbclass provided by poky in our custom
> machine layer to build the fit image. We observe that the bootloader is not able to load the
> device tree from the RAM. We are using Yocto project 2.1 and kernel version 4.9
>  
> Additionally, we observe that the fit image size varies across builds. We are observing two
> different image sizes viz 6855936 and 6855932 bytes. Of these two, the fit image with size 6855932
> bytes boot properly while the image with size 6855936 doesn't boot. Most often the image with
> 6855932 bytes is generated as build output. Out of 5 to 7 builds (approximately), the image with
> size 6855936 bytes that causes the boot issue is generated once.
>  
> We had modified our custom machine conf file and the kernel-fitimage.bbclass provided by poky
> layer for adding fit Image support . I have attached the modified fitimage bbclass file,our custom
> machine layer conf file ,its file generated and the error log during boot for your reference.
>  
> Regards,
> Hari Prasath
>  

