Return-Path: <raj.khem@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE9AE005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 11:01:50 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk27 with SMTP id 27so7618396qyk.14
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 11:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Oz0tFhi8xFTFp/FGkhtiW8MN1YVMi0sJD/A5oFOSbpQ=;
	b=VglwEnUcMnGzZhIxXxuQByoteRFluauuTQSWT21XeZZHAsspJl5Mih362KlSP1qNXl
	SQGN58sP3Q90s5JrZm6I4ERMrQFGCDB+2cxlhz2i2is9QJyQaKLXVaK+oPKH8IgXCI5F
	/A6SPIAgVjGW/FNIK13Yn75k1m4t/ab2haJ0A=
Received: by 10.68.8.195 with SMTP id t3mr47324515pba.107.1318356107035; Tue,
	11 Oct 2011 11:01:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.49.129 with HTTP; Tue, 11 Oct 2011 11:01:17 -0700 (PDT)
In-Reply-To: <4E9463A3.3090005@communistcode.co.uk>
References: <4E9463A3.3090005@communistcode.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 11 Oct 2011 11:01:17 -0700
Message-ID: <CAMKF1spUUhz=19DN661ti_zd8wSuSTyKOnw67W9Z7K0aijKSoQ@mail.gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QEmu Script Error Checking
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
X-List-Received-Date: Tue, 11 Oct 2011 18:01:51 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 11, 2011 at 8:41 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> I have run into the following issue where the tap device is in use due to
> the QEmu machine unexpectedly crashing. The error I recieve is here:
>
> http://i.imgur.com/5t9U1.png (appologies for the screenshot but it wouldn't
> let me copy the text)
>
> Is there any leaway for more robust error checking or a way to forcibly
> destroy the tap node to allow a new one to be created?
>

run-qemu-internal shows errors in that log. Did you try to figure out
why these errors are spewing.

> Cheers,
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

