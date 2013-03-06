Return-Path: <raj.khem@gmail.com>
Received: from mail-ia0-f173.google.com (mail-ia0-f173.google.com
	[209.85.210.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9740DE0148E
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 21:09:26 -0800 (PST)
Received: by mail-ia0-f173.google.com with SMTP id h37so7055733iak.18
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 21:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=t5TieoisbZEJFCCiWYJnfJqOfdw8Gx5c+QeEY7Z7VoI=;
	b=X8VPyCTusf4qpTCV3NLiGC0MBWYwuoaA3tGmD+c0jt2TB3Tiggk/K19DWH4G64aBXF
	gwVh/UhKhPMMOa79aaBV9AzleBqaLlJKxpl0oAHrxV7wlnH9UJTaXFxK9SHCDdqOPy2A
	id4TTFniysVit1kwklGTEGGH3RK70xbW8wZTUu/pO+vIU0anPJ+EH0YdoNu/UrUuJtiH
	etu3+2t6b2BniRSJv1ECq6ae9rjj0xJxb23wlJUo38oC+s5QdXddQZsmxmu8BX2KfpUf
	ZI8epaT79KuUwY7dSQnbdddKby4QGDSz8qEn06tfg625kEVfDhZOjNgM61MF/U6PdUSe
	PBsw==
X-Received: by 10.50.17.131 with SMTP id o3mr9445815igd.112.1362546566092;
	Tue, 05 Mar 2013 21:09:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Tue, 5 Mar 2013 21:08:56 -0800 (PST)
In-Reply-To: <D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Mar 2013 21:08:56 -0800
Message-ID: <CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Wed, 06 Mar 2013 05:09:26 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 5, 2013 at 7:58 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>
> On Mar 6, 2013, at 6:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> I dont have a public repo for gcc its too big to host. You can just do
>> a normal patch
>> process on gcc in work-shared using quilt That should work
>
> I've already started doing this. If I get the compiler support for
> MicroBlaze built and tested, I'll send across the patches for
> inclusion.

nice. I will look forward for them

>
> The Xilinx Series -7 FPGAs without an ARM core will require
> a MicroBlaze processor (Artix-7, Kintex-7 and Virtex-7).
>
> The Xilinx mb-gcc toolchain was built using crosstool-ng, but
> I'd like to build it using Yocto.
>

yes I dont see any reason that should not work

> Best regards,
>
> Elvis Dowson

