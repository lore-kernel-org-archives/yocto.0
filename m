Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9752E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:35:59 -0700 (PDT)
Received: from [192.168.1.3] (c-68-46-169-75.hsd1.nj.comcast.net
	[68.46.169.75])
	by smtp.webfaction.com (Postfix) with ESMTP id D0EA1213E9DD;
	Wed,  8 Aug 2012 15:35:58 -0500 (CDT)
Message-ID: <5022CDAD.5020309@mindchasers.com>
Date: Wed, 08 Aug 2012 16:35:57 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
In-Reply-To: <CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Wed, 08 Aug 2012 20:35:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2012 03:05 PM, McClintock Matthew-B29882 wrote:
> These seem like quite different issues, code generation vs. some
> inittab foo... are you seeing this issues with upstream? I've recently
> gotten some inittab cleanups into oe-core for master / denzil / my own
> edison branch + meta-fsl-ppc...

On 08/08/2012 03:05 PM, McClintock Matthew-B29882 wrote:> These seem 
like quite different issues, code generation vs. some
 > inittab foo... are you seeing this issues with upstream? I've recently
 > gotten some inittab cleanups into oe-core for master / denzil / my own
 > edison branch + meta-fsl-ppc...

Thanks Matthew.   I need to sort this out with some regression testing. 
  The latest master branches of poky & meta-fsl-ppc provides a kernel 
that oops while it's probing flash during boot.

With the latest fsl-image-minimal rootfs and a mainline kernel, I get an 
init that hangs when it tries to exec getty.

I see that the the "serial8250: too much work for irq42" message comes 
from "drivers/tty/serial/8250/8250.c" and that there have been plenty of 
patches to this file this year.

I'll chime in again later.

Bob




