Return-Path: <xertz.yocto@gmail.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BB48E01566
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 02:27:21 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so2539305vbf.38
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 02:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yjTuJpzkM6vaIMTBHChja2C2t8yjEEqr+oQedYMuPDw=;
	b=GSy76OJLmSNQdEbkTjKbgcaVG5Op/o2YbC7frO2RyK0n/m4n6T6AFYiWou8LiwmCIt
	IBlp/+23Q00RE0vrrfLQ1uKW9xGqjg+oA6TALREi0fnFfv4M65h/xrFvZu3rDDd1SzHf
	cdICsmjFkX4TOJAOIrV3yH0wEvax3qL02m3jLwmWPySmm8hCqI3LGdQ3yhx/ujBo1Z/k
	y5x+uKKb0KD0c4hwwdiONs9vbxdFnMd74kFFlKYsRjQI/y1Gl3MZu5W0a12etAW3GdfL
	uFzYAzTNzJs8L7/mJVFuWz7832nfQ124gnjB4oZskdYAsCT7PHU2clv3ZIno+IOJOqeb
	obOg==
MIME-Version: 1.0
X-Received: by 10.52.170.232 with SMTP id ap8mr406939vdc.40.1381483641240;
	Fri, 11 Oct 2013 02:27:21 -0700 (PDT)
Received: by 10.220.69.199 with HTTP; Fri, 11 Oct 2013 02:27:21 -0700 (PDT)
In-Reply-To: <523FA989.2010700@windriver.com>
References: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
	<523CA864.7020105@windriver.com>
	<CAEo3mJVqezmQM5o8+=EozeHbU2O=WM91TGnZ=AJkGWRofbQ7yw@mail.gmail.com>
	<523FA989.2010700@windriver.com>
Date: Fri, 11 Oct 2013 10:27:21 +0100
Message-ID: <CAEo3mJXmr8rdBEhuhfX63+uaqMLM2H70_cP8RGw1uvdX2ZxkMw@mail.gmail.com>
From: John Doe <xertz.yocto@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring linux-yocto-custom to build specific kernel modules
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
X-List-Received-Date: Fri, 11 Oct 2013 09:27:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Bruce,

It was exactly as you say, I forgot to enable cfg80211 and mac80211.
Now I can see all the drivers.

Regards,
J

On Mon, Sep 23, 2013 at 3:38 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-09-22 12:05 PM, John Doe wrote:
>>>
>>> Is your kernel already building from linux-yocto-custom ? Or are you
>>> using the default linux-yocto kernel and recipes already ?
>>
>>
>> I have a project that is using linux-yocto-custom and another project
>> which is using the default linux-yocto kernel.
>>
>>> If you are using one of the standard qemu machines, or a BSP that
>>> is already working with linux-yocto*, you can simply enable the module
>>> by creating a configuration fragment, and putting it on the SRC_URI.
>>
>>
>> The problem is that I can not find the driver (rtl8187 under
>> drivers/net/wireless/rtl818x) in the menuconfig. It seems all device
>> drivers are missing despite them being in the repository or tarball.
>>
>
> If there's a missing dependency (say for example PCI), or a wrapping
> Kconfig options that hides the menu, you won't see the drivers offered
> in menuconfig.
>
> Looking at the kernel source and the Kconfig is my next step, since it
> lists all the dependencies that you need.
>
> Bruce
>
>> Cheers
>> J
>>
>

