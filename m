Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE9FE00559
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 08:01:58 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 45573F81220; Sat,  8 Dec 2012 09:01:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5EBEBF811F5;
	Sat,  8 Dec 2012 09:01:56 -0700 (MST)
Message-ID: <50C3647F.4050900@mlbassoc.com>
Date: Sat, 08 Dec 2012 09:02:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <31099774-8FED-4465-BFC3-67C718BC4AF6@gmail.com>
In-Reply-To: <31099774-8FED-4465-BFC3-67C718BC4AF6@gmail.com>
Subject: Re: How to check if systemd is correctly setup
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
X-List-Received-Date: Sat, 08 Dec 2012 16:01:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-08 07:19, Elvis Dowson wrote:
> Hi,
>        I haven't used systemd before, and I've just built a linux kernel image using the latest yocto poky/master.
>
> The boot process starts as normal, but it just displays "freeing memory (some value)" and I get no console prompt.
>
> Q1: Which config setting or recipe code, controls the inclusion of systemd in the root filesystem?
>
> Q2: How can I check to see if systemd is properly configured for my target (virtex-5-powerpc-405-ml507-softfloat)?

First thing, make sure that your kernel has this in the config:
   CONFIG_DEVTMPFS=y
   CONFIG_DEVTMPFS_MOUNT=y
The latest udev (rev 182) has to have this to work.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

