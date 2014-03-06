Return-Path: <ashcharles@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04703E00A40
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 11:06:29 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id ik5so3120774vcb.9
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 11:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Z2ArOIkI4/tE5xHerggWJOSkwb4BMTwQWxg+JDnyG78=;
	b=R8GJ3oDcFOgcikF+tLcBxFd3Gwm09+JPtMiZbZQes/XmBTb2Kpn49JN+bdAx7gcCe3
	9YCIYwPwBtQAYAArwL2QGLJ1aEOCqQwjJfS2mEEU7HA7bIGfjuCH35LleVEE3dMfxA55
	pxWQnz6NE+pOBrMTRcyHOqK5n1eTYoGZD/wHrpWQ6tf+I4NSegU22dxwvVAEUT9C8Q/X
	Vz1IJsBsNdytXNoklGr+OFMGmEIMYydJAaL3hshiE9QwqkMf4FRRMVx+Eke0ubrwn0oi
	L8xbmnywR33jjCdhyAvGPzBfyaOULB0RM2E0jAUntFIwiJFXZVAZyZK6bMjgEKlw/5s/
	L3tA==
X-Received: by 10.220.164.80 with SMTP id d16mr6163748vcy.15.1394132789133;
	Thu, 06 Mar 2014 11:06:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.45.134 with HTTP; Thu, 6 Mar 2014 11:05:59 -0800 (PST)
In-Reply-To: <CAK8F28m8AZX3ea0tqJvVQgphF8rSFnJV34hCkdJgOWR1oCdQnA@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
	<CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
	<CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
	<CAMKF1srsi2EfUBsPam0n8DqLJw8+WiZBDMYQoquf0yQGu4VmoA@mail.gmail.com>
	<CAK8F28=Z5=T2+z1a=66Jzsi_nOyMWLBOA-F8NZovR8Z=1hTVgg@mail.gmail.com>
	<CAK8F28m8AZX3ea0tqJvVQgphF8rSFnJV34hCkdJgOWR1oCdQnA@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 6 Mar 2014 11:05:59 -0800
Message-ID: <CAK8F28kXAneCxACgdSK-kKBYXvCVJS69R4hYY2UBTAC9My39ow@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Thu, 06 Mar 2014 19:06:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I tried a clean build just to make sure but I still see the issue.

Basically, the kernel.bbclass is packaging and shipping all the
firmware it finds in the kernel source.  The linux-firmware recipe is
also shipping a superset of firmware to those files found in the
kernel hence I see warnings about the files shipped by both recipes.
Is there a way to only include just the package I need from
linux-firmware (linux-firmware-sd8686) without getting all files in
the sysroot-destdir?
--or--
Is there a way to instruct the kernel.bbclass not to ship any firmware?

Thanks for any suggestions!

--Ash

On Fri, Feb 28, 2014 at 10:45 AM, Ash Charles <ashcharles@gmail.com> wrote:
> I think my response yesterday was slightly premature...
>
> If I understand correctly, packages of the form
> 'kernel-firmware-<xxxx>' are provided by the kernel recipe for any
> firmware that is licensed such that it can be included directly with
> the kernel source i.e. in the <linux>/firmware directory.  A superset
> of this firmware is available from the linux-firmware repository with
> different licensing.  Firmware can be pulled into an image with the
> addition of a 'linux-firmward-<xxxx>' package.
>
> It seems though that adding a 'linux-firmware-<xxxx>' package pulls in
> the basic 'linux-firmware' package that includes firmware binaries
> already shipped with the kernel.
>
> If this is correct, I see two options:
> 1. 'linux-firmware-<xxxx>' should only pull in the explicit firmware
> specified, or
> 2. if 'linux-firmware' is getting pulled in, the kernel recipe
> shouldn't populate any firmware
>
> Am I on the right track?
>
> --Ash
>
> On Thu, Feb 27, 2014 at 5:09 PM, Ash Charles <ashcharles@gmail.com> wrote:
>> On Thu, Feb 27, 2014 at 4:54 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> as you can see kernel-firmware-whiteheat is the package name under
>>> which kernel is packaging it
>>> so include that if you want the kernel provided one.
>> Ah---perfect.  That makes sense.
>> I had
>> MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686"
>> I should have had
>> MACHINE_EXTRA_RDEPENDS += "kernel-firmware-sd8686"
>>
>> Thanks for your help!
>> --Ash

