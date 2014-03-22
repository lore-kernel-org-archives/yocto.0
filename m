Return-Path: <koansoftware@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50620E00B97
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 00:30:06 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id uz6so3612849obc.29
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 00:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=wRSFyDdn/phkRyHh9zZDYQCY8k/l0GM7i5QRTCwUu6w=;
	b=YoSIwCa3ZCyNw3GvyxaTpG2/Q1ngnoZ1wOun2SgWlrs25Bclsu0hxtMxH4hZT+5QAl
	MIWlzGSEA/miCIMMs3OLK80cy35klh9Nnpxt4rNqR+4/A0go403B9GwSnrkoLgGG8cP6
	VPi9ybzvXahsAv+sHjAX1j8B004ijPcQn13TeubVjyIukjN8bZL3Lh9DZTqE1xlNBBna
	SUtIPyBhld6bT11/LTwqnYcNDLYfSU/KQaRU/f6eFOx+6sIsnEY0ltVGIxYcU7vuIm73
	mDf9651FP8/SF1LYnXvJHDQrVQG6eY+giBVK3xIKzWpqYPrp2TGPt7RbRToYM0KC718j
	7bFA==
X-Received: by 10.60.115.68 with SMTP id jm4mr37066631oeb.45.1395473405839;
	Sat, 22 Mar 2014 00:30:05 -0700 (PDT)
Received: from [10.1.10.33]
	(host61-87-static.14-79-b.business.telecomitalia.it. [79.14.87.61])
	by mx.google.com with ESMTPSA id
	kn10sm31007107oeb.0.2014.03.22.00.30.04 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 22 Mar 2014 00:30:05 -0700 (PDT)
Message-ID: <532D3BFB.3080203@gmail.com>
Date: Sat, 22 Mar 2014 08:30:03 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAG-xyJr=tUpmrV9CkdoxqTOJU8wO9kWuSA+6hwA_Z09z81YB5w@mail.gmail.com>
In-Reply-To: <CAG-xyJr=tUpmrV9CkdoxqTOJU8wO9kWuSA+6hwA_Z09z81YB5w@mail.gmail.com>
Subject: Re: (Embedded) Java 7 or 8 support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 22 Mar 2014 07:30:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 22/03/2014 00:02, Guy Dillen ha scritto:
> Hi,
>
> I'm new to Poky/Yocto.
> Can I make a Poky/Yocto Linux build for the Atmel SAMA5D3 Xplained
> (Cortex-A5 microprocessor)?
>
> Thanks.
>
>


Hi,
yes you can.

We at KOAN are testing it this week.
Basically you need a Yocto build environment plus meta-atmel
https://github.com/linux4sam/meta-atmel

-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
        Atmel third party consultant
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com
         http://www.KaeilOS.com

