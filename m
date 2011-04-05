Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 000214C800A2
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2011 07:56:46 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p35CueFV019059;
	Tue, 5 Apr 2011 05:56:40 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 5 Apr 2011 05:56:40 -0700
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 5 Apr 2011 05:56:40 -0700
Message-ID: <4D9B1187.4030509@windriver.com>
Date: Tue, 05 Apr 2011 08:56:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <ineroa$hbp$1@dough.gmane.org>
In-Reply-To: <ineroa$hbp$1@dough.gmane.org>
X-OriginalArrivalTime: 05 Apr 2011 12:56:40.0408 (UTC)
	FILETIME=[E80B3580:01CBF390]
Cc: yocto@yoctoproject.org
Subject: Re: Change Endianess for MIPS build
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
X-List-Received-Date: Tue, 05 Apr 2011 12:56:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-04-05 06:43 AM, Robert Berger wrote:
> Hi,
>
> I was wondering what needs to be done to build (at least) a little
> endian qemu root file system for MIPS.
>
> Yocto builds this:
>
> ELF 32-bit MSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
> linked (uses shared libs), not stripped
>
> I would need this:
>
> ELF 32-bit LSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
> linked (uses shared libs), not stripped
>
> I guess SITEINFO_ENDIANESS (endian-big, endian-little) needs to be
> changed to endian-little somewhere.
>
> Can you please point me to where this needs to be done?

For the kernel, you'll need to modify the configuration to
be little endian. There is latent support in the kernel tree,
and I'll see about making the switch here so I can send some
better steps/changes for the kernel.

As for the rest of the system, you'd likely also need
to modify TARGET_ARCH to be mipsle, and adjust the
compile flags as required. I'm sure that there is an
example of this, but my quick check didn't reveal it.

Hopefully others will jump in with the right pointers!

Cheers,

Bruce

>
> ... or maybe I'm completely wrong and it needs to be done elsewhere ...
>
> Regards,
>
> Robert
>
> ..."I'm afraid that I've seen too many people fix bugs by looking at
> debugger output, and that almost inevitably leads to fixing the symptoms
> rather than the underlying problems." --Linus
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


