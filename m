Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A77FE013E6
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 21:40:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Sep 2012 21:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,469,1344236400"; d="scan'208";a="195941756"
Received: from unknown (HELO [10.255.13.83]) ([10.255.13.83])
	by azsmga001.ch.intel.com with ESMTP; 22 Sep 2012 21:40:17 -0700
Message-ID: <1348375217.23190.34.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Sean Liming <sean.liming@annabooks.com>
Date: Sat, 22 Sep 2012 23:40:17 -0500
In-Reply-To: <000701cd9889$19ba1760$4d2e4620$@annabooks.com>
References: <000701cd9889$19ba1760$4d2e4620$@annabooks.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: UEFI support for Crown Bay
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
X-List-Received-Date: Sun, 23 Sep 2012 04:40:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2012-09-21 at 23:11 -0700, Sean Liming wrote:
>  
> 
> Yocto=1.2
> 
> BSB = Crown Bay (Intel Atom Processor E660 with Intel Platform
> Controller Hub EG20T Development Kit)
> 
> Target System= Inforce Computing, Inc. - SYS9400 Reference Platform -
> VGA output only.
> 
> UEFI only no BIOS
> 
> Base Image: core-image-minimal
> 
> Hob used to build the image
> 
>  
> 
>  
> 
>  
> 
> The target platform only has UEFI and doesn’t have traditional BIOS. I
> am able to re-configure the UEFI firmware using the BLDK application
> if needed. The Crown Bay BSP doesn’t include an efi loader
> (bootia32.efi) like Cedar Trail BSP in the live image (hddimg). If I
> add the EFI boot files from Cedar Trail live image, the USB flash disk
> presents the menu for boot or install. Upon selecting boot, I can see
> output on the serial console, but it eventually stops no output on the
> VGA monitor. I have attached the output from the serial port.
> 
>  
> 
> 1. Is UEFI supported with Crown Bay BSP? Is there a flag that needs to
> be set like EFI = “1”?
> 

Hi,

The Crown Bay BSP doesn't yet have EFI support - I added it earlier this
year but had some problems getting it to work.  I just now updated it
and tried again but though I see the grub menu, selecting 'boot' also
gets me a blank screen, and I don't even get serial output.

If you want to try it out for yourself and see if you get better
results, here's the branch (the top 6 commits add efi support and some
related cleanup):

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/crownbay-efi-v2

The current BSP can be found in the meta-intel repo in the meta-crownbay
directory (the README has some build instructions):

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-crownbay


Since you're using the Inforce Sys9400, though, I'm thinking that it
might make more sense to use the meta-sys940x BSP:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-sys940x

I see it already has efi support and so I think that's already been
tested and probably works (cc'ing Darren, the author of the sys940x and
EFI expert who actually added the EFI support recipes, etc).

As for EMGD and X, the current BSPs should all be good to go - there was
some unrelated problems with X in the core which has been fixed, and at
least as far as the crownbay goes, I know it works as I tested it just
yesterday...

Hope that helps,

Tom


>  
> 
> There seems to be discussions about this back in 2011:
> 
> https://lists.yoctoproject.org/pipermail/yocto/2011-November/005806.html
> 
> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/012972.html
> 
>  
> 
> 2. Is it possible to setup serial console for Crown Bay? I tried the
> following flags from the n450 information:
> 
>  
> 
> SYSLINUX_OPTS_atom-pc = "serial 0 115200"
> 
> SERIAL_CONSOLE_atom-pc = "115200 ttyS0"
> 
> APPEND_atom-pc = "console=ttyS0,115200 console=tty0"
> 
>  
> 
> 3. There was some discussion about EMGD and X Windows issues and a
> possible fix. Where can I download the latest BSP to try out?
> 
>  
> 
>  
> 
> Regards,
> 
>  
> 
> Sean Liming
> 
> Annabooks
> 
> Tel: 714-970-7523 / Cell: 858-774-3176
> 
>  
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



