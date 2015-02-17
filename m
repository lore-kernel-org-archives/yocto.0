Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F3F1E00777; Tue, 17 Feb 2015 11:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21522E00521
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 11:05:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t1HJ5c2K027228
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Feb 2015 11:05:39 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 17 Feb 2015 11:05:38 -0800
Message-ID: <54E390E2.2050507@windriver.com>
Date: Tue, 17 Feb 2015 14:05:06 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: PIEWALD Georg <Georg.PIEWALD@frequentis.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <7858CE2B355E1A438F13002DDE9D6394011104D9D6@vie196nt>
In-Reply-To: <7858CE2B355E1A438F13002DDE9D6394011104D9D6@vie196nt>
Subject: Re: kernel config and meta-altera
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
X-List-Received-Date: Tue, 17 Feb 2015 19:05:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-02-17 07:55 AM, PIEWALD Georg wrote:
> Hi all,
> I'm rather new to the Yocto world so please bear with me. I built a Linux kernel using the Altera "Golden System Reference Design" [1], which is a 1GB tarball containing all required layers and all source code. Works fine.
>
> Now I'd like to customize the image. Particularly I want to change the kernel config to include the xHCI driver as a module [2]. I created a layer containing a bbappend-file and a "config fragment" file. No success. Reading tons of threads in the mailing list archive I figured that config fragments will not work, because apparently the meta-altera layer inherits from "kernel" rather than "linux-yocto".
>
> So I tried the "defconfig" way, which I thought should work always. It turned out that the defconfig file is correctly picked up and copied to $WORKDIR, but simply not applied to .config there. After a long time of searching I figured out that linux-altera.inc [3] apparently overwrites the do_configure task and ignores any defconfig.
>
> Eventually, the only solution I came up with, was a new task in my bbappend file:
>    do_change_config() {
>        sed -i "s|^.*CONFIG_USB_XHCI_HCD.*$|CONFIG_USB_XHCI_HCD=m\\n# CONFIG_USB_XHCI_HCD_DEBUGGING is not set|" .config
>    }
>    addtask change_config before do_compile after do_configure
>
> This works, but I find it somehow ugly. Can you think of a better way to handle this? Can I somehow add the "defconfig" or (even better) the "config fragments" features to the meta-altera layer?

I'm not familiar with the build process in meta-altera, but I went and had
a look. Everything that follows is from my 10 minutes of looking ....

Did you try setting ${KERNEL_DEFCONFIG} to point to your defconfig ?
You would have to arrange for the defconfig to be within the kernel tree,
since the kernel build is being invoked to process that config. You could
do that positioning of your config from a task that runs before 
do_configure().

Barring that there's not a lot that you can do when a recipe has a custom
configure phase, other than what you've already done. You need  to run after
it completes, so you can ensure that your options are applied last.

Anything that jumps to mind would be a variation on what you've tried. You
could avoid modifying the .config directly and simply re-do the defconfig
processing step from the kernel.bbclass's default routine or you could
change the recipe to inherit linux-yocto, and then define your own fragments
.. but there's no guarantee that that conversion is simple to do.

Alternatively, what's the important thing to maintain for you build ? 
The source
tree and patches that are applied, or the configuration ? You could always
create your own kernel recipe, point it at the source tree + patches and 
have
your own configuration routines do the work.

.. just a few thoughts.

Cheers,

Bruce

>
> BR, Georg
>
>
> [1] http://www.rocketboards.org/foswiki/Documentation/GSRD131YoctoUserManual
> [2] CONFIG_USB_XHCI_HCD=m
> [3] https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux/linux-altera.inc


