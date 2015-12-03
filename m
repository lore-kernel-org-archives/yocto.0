Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE97DE008E5; Thu,  3 Dec 2015 08:32:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC76DE00888
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 08:32:45 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4DA81F81188; Thu,  3 Dec 2015 09:32:45 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE460F81188;
	Thu,  3 Dec 2015 09:32:44 -0700 (MST)
To: yocto@yoctoproject.org
References: <CAOsp8o_kjTeXnmQWgR2GM7XiWHtKZPudSPUp3qR+Y5Wdfnye9g@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56606EB5.6010906@mlbassoc.com>
Date: Thu, 3 Dec 2015 09:32:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o_kjTeXnmQWgR2GM7XiWHtKZPudSPUp3qR+Y5Wdfnye9g@mail.gmail.com>
Subject: Re: Pure initramfs image
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
X-List-Received-Date: Thu, 03 Dec 2015 16:32:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-12-03 09:24, Michael Habibi wrote:
> All,
>
> I have interest in creating an image that runs purely in an initramfs space. It seems that overall this shouldn't be too difficult - I can set my IMAGE_FSTYPE to cpio.gz, and as
> long as it's a reasonable size, it shouldn't be an issue to point to it as an initrd. The only quirk is that kernel modules are split out from the rootfs deployment (two separate
> archives). Is there a way to combine the modules directly into the rootfs archive?

Just add the kernel-modules package to your install.  This
will install all of the kernel modules into your rootfs.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

