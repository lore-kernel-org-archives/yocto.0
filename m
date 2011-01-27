Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C8D14C8118C
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 08:36:25 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0REa8ab021521;
	Thu, 27 Jan 2011 06:36:08 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 06:36:08 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 06:36:08 -0800
Message-ID: <4D4182D7.1050605@windriver.com>
Date: Thu, 27 Jan 2011 09:36:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <953D6EA3-E3D9-4998-8147-2FF0E325AA56@keylevel.com>
In-Reply-To: <953D6EA3-E3D9-4998-8147-2FF0E325AA56@keylevel.com>
X-OriginalArrivalTime: 27 Jan 2011 14:36:08.0262 (UTC)
	FILETIME=[89127660:01CBBE2F]
Cc: yocto@yoctoproject.org
Subject: Re: USB keyboard not working on PC-Engines host
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
X-List-Received-Date: Thu, 27 Jan 2011 14:36:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-01-27 09:22 AM, Chris Tapp wrote:
> I've built poky-image-minimal for a machine that's based on
> qemux86.conf. I've create a modified copy to target x86 hardware and
> made sure usbhost and usbgadget are in the MACHINE_FEATURES.
>
> If I boot on an Intel Atom board then everything is fine. However, if I
> boot on a PC-Engines ALIX 3D3 the usb keyboard doesn't work and I can't
> login.
>
> I have had to disable USB 2 support in the ALIX BIOS to prevent "unable
> to enumerate USB device on port ..." messages, but USB 1.1 is still
> enabled. The OHCI device code is 1d6b:0001 and works ok with an EO build
> that I have.

What's the kernel version on the working build ?
Do you have the dmesg output from the working/non working
boots handy ? Also the .config from your non-working
boot would also be handy.

>
> Can anyone point me to where I should be looking to find out how to get
> this working?

This smells like a configuration issue, or something different
between kernel versions. The information above will help us
narrow it down.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


