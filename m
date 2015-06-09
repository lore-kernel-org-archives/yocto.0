Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 349B3E009CA; Mon,  8 Jun 2015 21:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC22E00960
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 21:45:28 -0700 (PDT)
Received: by laew7 with SMTP id w7so4258440lae.1
	for <yocto@yoctoproject.org>; Mon, 08 Jun 2015 21:45:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=KA3NS8Ftif4QzV7FHsYXnrGgDAfDSo0wqVwKLQ77yXo=;
	b=cAyGfllTAqC8Ubu4nvy2UBjKzKl6d8ksysDtAZnwPHxyh2797OmB1FuFLVZJYxmprG
	/pWyHFnMf2buTRx/nJc3c0LpGpY35pxXsd2Xniqe7mL4jX1VERdJ/kYAqbJVrKnkVXfz
	d9FofPQlpjk47Fxc0qJMI7EtQD4tyYGdZaci2UoDscRwr2rqHj4z8WgMwvOLB0f9PqG1
	2gB1XFdY2HcyyEsWAl2nA2PUAoJz+XKokSGYMSgp113wr5e+bJWkWQb021c5DIFmB2E1
	Z28QFrvIu5HT0JLZUNDOwlYq13k1SmLTFwpo7akX3fIWsB44ArH9xF7VW1XuwhqQce3L
	RVQw==
X-Gm-Message-State: ALoCoQnffFTzPVk8rhfo88Ydkn6fkL7u7QD5t2t23KQd68LGwyhcCGNINchXHINMlLNr2k+GFGjL
MIME-Version: 1.0
X-Received: by 10.112.131.98 with SMTP id ol2mr20933997lbb.56.1433825126511;
	Mon, 08 Jun 2015 21:45:26 -0700 (PDT)
Received: by 10.25.141.16 with HTTP; Mon, 8 Jun 2015 21:45:26 -0700 (PDT)
In-Reply-To: <CAGMdoFnO-ikosPoL8ZRn6QDYxp=re3Mp6CxpEKOVQAR8Hqn_4Q@mail.gmail.com>
References: <CAGMdoFnO-ikosPoL8ZRn6QDYxp=re3Mp6CxpEKOVQAR8Hqn_4Q@mail.gmail.com>
Date: Tue, 9 Jun 2015 14:45:26 +1000
Message-ID: <CA+aJhH0RO8MTvXOt-F1x_YCTVmaPnsv6gf7hKU0Oqfoi4WVWjQ@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Limit RAM for Linux
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
X-List-Received-Date: Tue, 09 Jun 2015 04:45:36 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 9, 2015 at 4:06 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>
> I am using Yocto with meta-xilinx layer to create a distribution for a
> custom Zynq 7000 board with 512MB RAM. In my uEnv, I'm loading the
> kernel to 0x0010_0000, device tree to 0x0190_0000 and ramdisk image to
> 0x0210_0000.
>
> Later in the boot process, I see this:
>     Loading Kernel Image ... OK
>     Loading Ramdisk to 1e16f000, end 1ed221fc ... OK
>     Loading Device Tree to 1e166000, end 1e16ef40 ... OK
>
> I'd like to restrict Linux to the lower 256MB out of 512MB of RAM.
> When I add mem=256MB to boot arguments, the kernel doesn't boot.  I
> can specify "mem=" down to only 494M, I assume to get it just over
> those 0x1exx_xxxx addresses. Any lower and the kernel doesn't boot.
> Where do the 0x1exx_xxxx come from and how can I change those?

Those values are generated via u-boot based on the value of fdt_high
and initrd_high which are set in the u-boot environment. (At least for
Zynq)

If you have a look at the default environment you will see them set to
0x20000000:
http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/zynq-common.h;h=1a52e7d538261a9d36b078d61e00e60bf8918227;hb=HEAD#l217

You can override those environment variables with your uEnv.txt file,
setting it to 0x10000000 will make sure they fdt/initrd is loaded into
the first 256M.

Regards,
Nathan

>
> I also tried changing the memory in device tree.  It was originally:
> ps7_ddr_0: memory@0 {
>     device_type = "memory"
>     reg = <0x0 0x200000000>;
> }
>
> I changed reg to <0x0 0x10000000> thinking this would limit the RAM
> that Linux sees to the lower 256MB, but Linux still reports seeing all
> 512MB of RAM.
>
> Can anyone point me to where else my configuration needs to change?
> Thanks for your help.
>
> Edward
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

