Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54459E01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 04:10:54 -0700 (PDT)
Received: from [192.168.0.54] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 2C52E47EF6
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 12:07:13 +0100 (BST)
Message-ID: <4FFABC82.8080601@communistcode.co.uk>
Date: Mon, 09 Jul 2012 12:12:02 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
	<CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
In-Reply-To: <CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
Subject: Re: menuconfig vs. config fragments?
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
X-List-Received-Date: Mon, 09 Jul 2012 11:10:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/07/12 11:42, Andrei Gherzan wrote:
> On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com 
> <mailto:jfabernathy@gmail.com>> wrote:
>
>     my goal of this test was to see if I could use the n450 BSP as a
>     starting point for a BSP to support my Acer Aspire One n450 based
>     netbook.  The core-image-sato will boot from USB key on the
>     netbook if I use the ZIP drive format for the USB key, but the
>     current n450 BSP doesn't include the drivers for the networking
>     hardware in the netbook.
>
>     I found by testing, using the menuconfig option documented in the
>     Developer Manual Appendix B example, that I needed to add 2
>     parameters to the .config:
>
>     CONFIG_ATH9K_PCI
>     CONFIG_ATL1C
>
>     To make this change easier to manage and more permanent, I thought
>     about creating a config fragment.  I put the config parameters in
>     a file, myconfig, in the linux-yocto directory at the same level
>     as the linux-yocto_3.2.bbappend file, where I added:
>
>     SRC_URI += "file//myconfig"
>
>
> Try to use myconfig.cfg.
>
> @g
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I agree, something in the back of my mind is shouting that config 
fragments should have a .cfg extension.

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


