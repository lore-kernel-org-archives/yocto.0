Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DDBFE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 12:55:08 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8D094F81219; Tue, 24 Jul 2012 13:55:07 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE08EF81217;
	Tue, 24 Jul 2012 13:55:05 -0600 (MDT)
Message-ID: <500EFDAD.9020706@mlbassoc.com>
Date: Tue, 24 Jul 2012 13:55:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
	<CAEsOVNegFwoe+83-n88-XVAEh13cbXaX1dsY4gM9rEeuvgytCg@mail.gmail.com>
	<2D733773-9752-489E-BB14-46E2F8025356@gmail.com>
In-Reply-To: <2D733773-9752-489E-BB14-46E2F8025356@gmail.com>
Subject: Re: Unable to get login prompt for Xilinx ML507 PowerPC440 target development board
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
X-List-Received-Date: Tue, 24 Jul 2012 19:55:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-07-24 13:36, Elvis Dowson wrote:
> Hi,
>
> On Jul 24, 2012, at 11:15 PM, McClintock Matthew-B29882 <B29882@freescale.com <mailto:B29882@freescale.com>> wrote:
>
>> On Tue, Jul 24, 2012 at 12:03 PM, Elvis Dowson <elvis.dowson@gmail.com <mailto:elvis.dowson@gmail.com>> wrote:
>>> Hi,
>>>      I have progressed somewhat further with getting Yocto to build a
>>> kernel image and rootfilesystem for the Xilinx ML507 PowerPC440 target
>>> development board.
>>>
>>> For some reason, I'm unable to get a login prompt. The serial console device
>>> is ttyUL0. If someone could help me figure out what's going wrong, it would
>>> be great. I have checked /etc/securetty and it does contain an entry for
>>> ttyUL0.
>>
>> You don't use /etc/inittab to spawn consoles?
>>
> It is set as follows:
>
> 0:2345:respawn:/sbin/agetty 115200 ttyUL0
>
> Best regards,

Did 'udev' run?  I didn't see it in your log.  Normally, udev
would be responsible for creating /dev/ttyUL0

What image are you trying to run?  e.g. core-image-minimal, etc?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

