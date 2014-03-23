Return-Path: <koansoftware@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7415EE00B2F
	for <yocto@yoctoproject.org>; Sun, 23 Mar 2014 02:27:16 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id uz6so4420701obc.41
	for <yocto@yoctoproject.org>; Sun, 23 Mar 2014 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=mK5s5OhqQ1BaK34lDZ1XBTk60j14qJzRs8+61W1p6Bg=;
	b=LG8CfMkGXriCYOmFzFMyWlMXv8sn25gh5xkchnxzUVDxO+Vj2bKPQHqcOsXUoxhwFD
	VdLR8c7qP5gwpg4KB/fOIba2mfQurmFTFNOfWH+Jy2YN54DQaZTfSICAWBe0/CSblTdM
	mkvSn6OXcd9MmdlZBKvZIsKEi+80sNZyxydv4Jpwa26MVCUXr8996u1u33Rmqn0CL1a9
	U1I+vI1Bk6/+0Xdu3r+3RKejkGEJj3vjeGNGRY2Bdi0vLN1EFa+vp+RjJfAmLgLmG7Re
	8gLChG0jA6IKXh5YVrMfLgAjvuxkAWkE4PxDKMef6zIcluNXFhEHe0sqilL9qHB4VXdI
	cEGA==
X-Received: by 10.60.155.180 with SMTP id vx20mr6522257oeb.28.1395566836075;
	Sun, 23 Mar 2014 02:27:16 -0700 (PDT)
Received: from [10.1.10.33]
	(host61-87-static.14-79-b.business.telecomitalia.it. [79.14.87.61])
	by mx.google.com with ESMTPSA id b2sm44883471oed.7.2014.03.23.02.27.13
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 23 Mar 2014 02:27:14 -0700 (PDT)
Message-ID: <532EA8F0.3070502@gmail.com>
Date: Sun, 23 Mar 2014 10:27:12 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAG-xyJr=tUpmrV9CkdoxqTOJU8wO9kWuSA+6hwA_Z09z81YB5w@mail.gmail.com>
	<532D3BFB.3080203@gmail.com>
In-Reply-To: <532D3BFB.3080203@gmail.com>
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
X-List-Received-Date: Sun, 23 Mar 2014 09:27:20 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 22/03/2014 08:30, Marco ha scritto:
> Il 22/03/2014 00:02, Guy Dillen ha scritto:
>> Hi,
>>
>> I'm new to Poky/Yocto.
>> Can I make a Poky/Yocto Linux build for the Atmel SAMA5D3 Xplained
>> (Cortex-A5 microprocessor)?
>>
>> Thanks.
>>
> Hi,
> yes you can.
>
> We at KOAN are testing it this week.
> Basically you need a Yocto build environment plus meta-atmel
> https://github.com/linux4sam/meta-atmel
>


Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "sama5d3xek"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = "armv7a vfp thumb callconvention-hard cortexa5"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "dora:d63a5f557d5fa4cb6637bf75f1b9d21a5c109b55"
meta-oe
meta-networking   = "dora:40e0f371f3eb1628655c484feac0cebf810737b4"
meta-atmel        = "master:db3fae9bc539ace7ecbda6ae94547136b5577883"
...
NOTE: Tasks Summary: Attempted 3486 tasks of which 1356 didn't need to 
be rerun and all succeeded.


-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
        Atmel third party consultant
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com
         http://www.KaeilOS.com

