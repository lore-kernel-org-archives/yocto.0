Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D88CE00716
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 20:00:37 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id hl10so389528igb.6
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 20:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XQchrrgCRU9qUQWks7ktHCy1ooi4dAtV//028XHdMLY=;
	b=pJH6BAZOYigbxc8XBXlnPXVRczolNYcEjcmNJDHMR/6GrOsrJylagYdZipl3lzxkcn
	IGs8fvnCJedkF306P+hm+nrZvhVcTVeErz6oW3uXezN0rlje1lBUzGWzCNd5V4RNHZ1r
	u86GvaYNHpoeUd/e1fHYyLGnrx2VLktOLUU9MhxNRRis4cWU7W0iQOuuvNRq7sZ9xHA+
	qm1WBPWh8JORFYz44WjT+qaWegCR1lxR2fJZoxjkAZyixOg2KoCtK92jiApHTaoGEOxZ
	0cfjc4e5tc2vxmgT/VeIIZAVrUySC9FnsqBQOSQUsuAJxulJflmtxvr06Hp2+67QOTS0
	Ai/g==
X-Received: by 10.42.173.68 with SMTP id q4mr45772286icz.41.1398308436456;
	Wed, 23 Apr 2014 20:00:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Wed, 23 Apr 2014 20:00:06 -0700 (PDT)
In-Reply-To: <CAPTvksA3s+7SVVqjJ1Vu7U-VcFYmxQYKk0V0UV78po86CCwyeA@mail.gmail.com>
References: <CAPTvksA3s+7SVVqjJ1Vu7U-VcFYmxQYKk0V0UV78po86CCwyeA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Apr 2014 20:00:06 -0700
Message-ID: <CAMKF1spZ=4Zmq0t7xvPaqSsKEj+WrhdqqqFBp-SD0OJt+N5JLQ@mail.gmail.com>
To: Rich Wilson <richaw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to run c++ programs?
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
X-List-Received-Date: Thu, 24 Apr 2014 03:00:39 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 23, 2014 at 7:45 PM, Rich Wilson <richaw@gmail.com> wrote:
> I have my core-image-minimal distribution working.
> Now, I would like to compile and run c++ programs.
> How do get there from here?
>

you need to add C++ runtime to the image. Which is provided by libstdc++-6
package mainly.

> I'm a newbie here, so please be gentle :-)
>
> (I'm hoping I can use the Xilinx SDK for the compiler and
> debugger; I think I just need the libraries)
>
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "openSUSE-project-12.3"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard-zynq7"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
> meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"
>
> --
> Rich Wilson
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

