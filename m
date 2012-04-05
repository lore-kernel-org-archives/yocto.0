Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1449AE0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 13:10:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D27AEF8129A; Thu,  5 Apr 2012 14:10:30 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 170C3F81247;
	Thu,  5 Apr 2012 14:10:30 -0600 (MDT)
Message-ID: <4F7DFC36.5040108@mlbassoc.com>
Date: Thu, 05 Apr 2012 14:10:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
In-Reply-To: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
Subject: Re: kernel26 'machine feature'
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
X-List-Received-Date: Thu, 05 Apr 2012 20:10:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-05 14:02, Chris Tapp wrote:
> Quite a few machine conf files specify the kernel26 machine feature. e.g., crownbay.conf has:
>
> MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>                      acpi serial usbgadget"
>
> What does this do? It's not listed at http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-features-machine and seems to be at odds with:
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto = "3.0%"

I don't think it does anything any more.  I'm pretty sure it used
to be used to select which style of kernel module utilities to
install (there was a change in kernel module format between 2.4
and 2.6), but it seems that's gone now.  At least in the Poky/Yocto
tree (oe-core + meta-yocto), there is no active use of this feature.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

