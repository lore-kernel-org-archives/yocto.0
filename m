Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E32474C80B6B
	for <yocto@yoctoproject.org>; Thu, 25 Nov 2010 10:14:42 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so612749gyf.35
	for <yocto@yoctoproject.org>; Thu, 25 Nov 2010 08:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received
	:in-reply-to:references:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=mDwt60XCYcB386LCbcfDgu6SvLfDUgziKDCfCMcabpE=;
	b=KACc5BAHuxPFzhICL5bonD0OxoX1XLlSNVT9gYIeyQy7iwtkJtaeVUo8vv/URbqq68
	VvAvAFHaSSBpTtuYho5mfRacv1eaYTCw58tY7L8jkm1BxOEi+bL4RBSH98BDq5xzAhPD
	Pfct62pgXHFjUK19nJ8QylNo5akcUjPTAlt78=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=gsYXPOjqH9yTVcPZCR4Otq+w4Ir5kk2uQ2vdnSI+xNGsJdfRtBhDegun0qDlgg4WGi
	AFfkGHNpfiCPKwx3xEFJeg36048s1OBB6I40TSj2AsD100ZZHUwqp4h8yicta5e0s/u4
	vSRN9CjSwaJk6p1NX0qwvzf/aav0697dBxasA=
MIME-Version: 1.0
Received: by 10.100.126.11 with SMTP id y11mr738253anc.115.1290701682340; Thu,
	25 Nov 2010 08:14:42 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Thu, 25 Nov 2010 08:14:42 -0800 (PST)
In-Reply-To: <4CEDD672.3090005@intel.com>
References: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>
	<4CED8155.1090904@intel.com>
	<AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
	<4CEDD672.3090005@intel.com>
Date: Thu, 25 Nov 2010 21:44:42 +0530
X-Google-Sender-Auth: VdOgZZCNPwBTsCeJvypLFkJoWf4
Message-ID: <AANLkTik5OX-u3C3dvjjSxW4Jd4F9PEsLYc6aBp6=uazR@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using poky qemy for powerpc
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
X-List-Received-Date: Thu, 25 Nov 2010 16:14:43 -0000
Content-Type: multipart/alternative; boundary=0016e645a3c04974330495e2e7b7

--0016e645a3c04974330495e2e7b7
Content-Type: text/plain; charset=ISO-8859-1

Dear Scott:

Thanks for your support i am able to use it.

One more request, please provide me link or any doc which describe using
poky-qemu for powerpc processor.

Kind Regards
Sachin Dhiman


On Thu, Nov 25, 2010 at 8:52 AM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 11/24/2010 06:30 PM, sachin kumar wrote:
>
>> Hello Scott:
>>
>> I want to run linux on powerpc on qemu. My host machine is running
>> Fedora13.
>>
>> For that i have downloaded following from yocto project website.
>>
>> Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
>> Toolchain: yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2
>>
>> I have installed toolchain in /opt/poky
>>
>> I have also copied Disk "yocto-image-minimal-qemuppc-0.9.rootfs.ext3"
>> and "Kernel Image : zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky
>> directory
>>
>>
>> To run qemu i am using following commands
>>
>>
>> [sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux
>>
>>
>> [sachin@sachinlinux poky]$ poky-qemu qemuppc
>> zImage-2.6.34-qemuppc-0.9.bin yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> In order for this script to dynamically infer paths
>> to kernels or filesystem images, you either need
>> bitbake in your PATH or to source poky-init-build-env
>> before running this script
>>
>>
>> So i am not able to run poky-qemu command.
>>
>
> Hi Sachin,
>
> You are missing the filesystem type argument. Please add ext3 to the
> argument list:
>
> poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3
>
> HTH,
>
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project
>

--0016e645a3c04974330495e2e7b7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Dear Scott:<br><br>Thanks for your support i am able to use it.<br><br>One =
more request, please provide me link or any doc which describe using poky-q=
emu for powerpc processor.<br><br>Kind Regards<br>Sachin Dhiman<br><br><br>
<div class=3D"gmail_quote">On Thu, Nov 25, 2010 at 8:52 AM, Scott Garman <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:scott.a.garman@intel.com">scott.a.gar=
man@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204)=
; padding-left: 1ex;">
<div class=3D"im">On 11/24/2010 06:30 PM, sachin kumar wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
Hello Scott:<br>
<br>
I want to run linux on powerpc on qemu. My host machine is running Fedora13=
.<br>
<br>
For that i have downloaded following from yocto project website.<br>
<br>
Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin<br>
Toolchain: yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2<br>
<br>
I have installed toolchain in /opt/poky<br>
<br>
I have also copied Disk &quot;yocto-image-minimal-qemuppc-0.9.rootfs.ext3&q=
uot;<br>
and &quot;Kernel Image : zImage-2.6.34-qemuppc-0.9.bin&quot; in the /opt/po=
ky<br>
directory<br>
<br>
<br>
To run qemu i am using following commands<br>
<br>
<br>
[sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux<br>
<br>
<br>
[sachin@sachinlinux poky]$ poky-qemu qemuppc<br>
zImage-2.6.34-qemuppc-0.9.bin yocto-image-minimal-qemuppc-0.9.rootfs.ext3<b=
r>
In order for this script to dynamically infer paths<br>
to kernels or filesystem images, you either need<br>
bitbake in your PATH or to source poky-init-build-env<br>
before running this script<br>
<br>
<br>
So i am not able to run poky-qemu command.<br>
</blockquote>
<br></div>
Hi Sachin,<br>
<br>
You are missing the filesystem type argument. Please add ext3 to the argume=
nt list:<br>
<br>
poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin yocto-image-minimal-qemuppc=
-0.9.rootfs.ext3 ext3<br>
<br>
HTH,<div><div></div><div class=3D"h5"><br>
<br>
Scott<br>
<br>
-- <br>
Scott Garman<br>
Embedded Linux Distro Engineer - Yocto Project<br>
</div></div></blockquote></div><br>

--0016e645a3c04974330495e2e7b7--
