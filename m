Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91C7DE00E08; Thu,  1 Mar 2018 15:41:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F42E0047F
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 15:41:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2018 15:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,409,1515484800"; d="scan'208";a="208220355"
Received: from ohchua-mobl.gar.corp.intel.com (HELO [10.255.137.203])
	([10.255.137.203])
	by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2018 15:41:46 -0800
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
Date: Fri, 2 Mar 2018 07:41:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Thu, 01 Mar 2018 23:41:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

On 03/01/2018 07:20 PM, Iván Castell wrote:
> Hello forum.
> 
> Working with 'rocko' yocto branch. Yocto generates .ext4, .hddimg and
> .wic images. I want to install the proper image to the HDD of my PC, in
> order to use it as my default Linux distro.
> 
> I have been using the .wic image to boot from the USB pendrive until
> now, writing it to the USB using 'dd'. This works fine, but because of
> some BIOS issues, I had to modify mkefidisk.wks script to add 'noapic'
> option (probably this is relevant).
> 
> To try to install the generated image in my hard disk, I write the
> .hddimg file to a USB-pendrive using dd and the plug the pendrive and
> boot the PC. A boot menu of GNU GRUB version 2.02 appears with two options:
> 
>     * install
>     * noot
> 
> Editing the install option I can see this:
> 
>     setparams 'install'
>     linux /vmlinuz LABEL=install-efi root=/dev/ram0 rootwait
> console=ttyS0,115200 console=tty0
>     initrd /initrd
> 
> And editing boot options I can see this:
> 
>     setparams 'boot'
>     linux /vmlinuz LABEL=boot root=/dev/ram0 rootwait
> console=ttyS0,115200 console=tty0
>     initrd /initrd
> 
> After choosing "install" option and pressing "Enter", a black screen
> appears and nothing else happens.
> 
> I have tried editing 'install' option, adding 'noapic' after
> console=tty0, and then I can see logs of kernel booting and after 0.5
> secods the screen is flooded of error lines:
> 
>     /init: line 65: sleep: command not found
>     /init: line 65: sleep: command not found
>     ...
>     /init: line 65: sleep: command not found
>                                                                        
>      
> Is this the proper way to install the generated image in the hard disk?
> Maybe I am doing something wrong?

Does the image boot up if you select 'boot'? Do you eventually get
options to select storage media after all these 'not found' messages if
you select 'install'? Can you share the logs?

Thanks,
Anuj

> 
> Thanks a lot in advance! :-)
> 
> Best regards,
>   -- Ivan
> 
> 
> 


