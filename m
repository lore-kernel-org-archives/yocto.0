Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5616DE00B54; Wed,  4 Nov 2015 07:08:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E152E00B4C
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 07:08:51 -0800 (PST)
Received: by lfs39 with SMTP id 39so10467546lfs.3
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 07:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=99g92TviucQmuI67W8rN1NOCZu+a9MkjrpN0Wx4cXL8=;
	b=Y9PVu9zSuUFYeFb9849BgOsk808cI/F8DyFHp824PDRURoLDmddOJa8yeauRB5kDGq
	jsf4/oCw+tyx0SXfLCdevScWj+/FrJefZMEOJpsRaRCHr6tWqnbH+RfD7jFwdANz7TJi
	ahcWJNy35mUap48cf82ZCzn6ohG7PMCwd0uorFY4ND654CUarA4z6jglbIuBOh0HI9J9
	EF7/vhS/9dQ+ArrGBtPwPT0cj4+UBRdY+GLauSMAH+VBOQklIvWQ4b8Z4RGKPZdT1pem
	nLlU0oIiWyhNhR9z5DkN0FA6khAj6EzvZr8GQXTyD7Sw1eXOgStuv2rD2oB2ssQvFknl
	U5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=99g92TviucQmuI67W8rN1NOCZu+a9MkjrpN0Wx4cXL8=;
	b=hLA2juNyLmc7Z/Pt1JvBJemd0TVonD/ddwRdHq4GiYdPt6+iCjk0v66kfN1j8Zq3Fr
	HQ+JDNwKWaVnjlMwwtojuPWLqwI+2S/2ki1Q8mhdTjyTjKxw5QtY2m9jNPQikHR6iFlx
	/lXqUVFopKmanzVyfOCZlmDQw0I7yvqZiFaZRibt869NcVAKJIlnwW9gRC1dNOYkxHRt
	A9PE8ZQrAth69ZU0UttD2dC20rrDdTxGiCt+XXxcxaHUbF+41SkzD6qzmjtWGSlg5oIk
	YUasmnKlhlkLf1hbB8VRvR6oOnT2xwS/mTcpBEPLCSx82gE9FReVcdLC3UpnGzl3EKQM
	fvUQ==
X-Gm-Message-State: ALoCoQlHX8z9wr1BPdik+79UmkkbctXb01big3sjRnWPAD/sMHB/gLKx7u6F++5cVuMdU6liENYb
MIME-Version: 1.0
X-Received: by 10.25.82.76 with SMTP id g73mr396338lfb.56.1446649730359; Wed,
	04 Nov 2015 07:08:50 -0800 (PST)
Received: by 10.25.78.147 with HTTP; Wed, 4 Nov 2015 07:08:50 -0800 (PST)
In-Reply-To: <563A1438.80309@smartacoustics.co.uk>
References: <563A09A3.4050706@smartacoustics.co.uk>
	<1B92730CF2B23F4DB7A48AAE6E3CAA361461CA0B@DEPOIY0MX08MB03.msg.avnet.eu>
	<563A1438.80309@smartacoustics.co.uk>
Date: Thu, 5 Nov 2015 01:08:50 +1000
Message-ID: <CA+aJhH3wtc=H2_0gn44fLxrspO5XEFUVxgjGwjDFBzQCtD7amg@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hecht,
	Martin \(Silica\)" <Martin.Hecht@avnet.eu>
Subject: Re: yocto on zynq, How to configure kernel to include drivers
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
X-List-Received-Date: Wed, 04 Nov 2015 15:08:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 12:20 AM, Toby Gomersall
<toby.gomersall@smartacoustics.co.uk> wrote:
> Hi,
>
> We've tried building the linux-xlnx tree standalone and we have the DMA
> drivers available to add in menuconfig but not when I build
> core-image-minimal. I thought the full build would pick up the
> linux-xlnx kernel and make the same options available. Is there
> something I need to do to make them available?

By default the linux-xlnx configs within meta-xilinx are close as
possible to mainline configuration. In this case the only Xilinx DMA
driver enabled by default is the VDMA driver as it is available both
in linux-xlnx and in mainline/linux-yocto. It has been done this way
to ensure users understanding that they are using a driver that may
disappear in future linux-xlnx versions or be changed for upstream
submission.

To configure these linux-xlnx only drivers, you can use the "-c
menuconfig" and have your changes made temporarily (The drivers are
under 'Device Drivers / DMA Engine support / Xilinx DMA Engines').

Or you can use the config fragment available in meta-xilinx by setting
KERNEL_FEATURES up with the fragment (the fragment enables a few of
linux-xlnx only drivers). Adding the following line to your machine's,
distro's your local .conf depending on your requirements:

KERNEL_FEATURES += "bsp/xilinx/xilinx-drivers-linux-xlnx.scc"

Just on a side note, there was a bug in the .scc file, I have just
fixed it in master (and fido). So you will need to pull to use this or
it will give you an error.

Regards,
Nathan

>
> Regards,
> Toby
>
> On 04/11/15 13:47, Hecht, Martin (Silica) wrote:
>> Hi Toby,
>>
>> Please compare with http://www.wiki.xilinx.com/Linux+Drivers. Most of the DMA drivers aren't mainlined by now. You need to add them by yourself currently.
>>
>> Regards,
>> Martin
>>
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Toby Gomersall
>> Sent: Mittwoch, 4. November 2015 14:44
>> To: yocto@yoctoproject.org
>> Subject: [yocto] yocto on zynq, How to configure kernel to include drivers
>>
>> I'm quite new to yocto so still have a lot to learn. I'm trying to include the DMA drivers in my yocto build for a Zynq based on the meta-xilinx layer (http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/).
>>
>> I thought I'd be able to add them in the kernel configuration
>> (menuconfig) by running (from within the build directory):
>>
>> bitbake linux-xlnx -c kernel_configme -f bitbake linux-xlnx -c menuconfig
>>
>> I can't see the DMA drivers in menuconfig. However if I run menuconfig within the linux-xlnx tree (which is referenced by the SRCURI) I can see the DMA drivers. Is there some reason they're hidden in the build menuconfig?
>>
>> Thanks,
>> Toby
>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

