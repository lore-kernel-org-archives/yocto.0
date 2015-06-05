Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 603A6E009EB; Fri,  5 Jun 2015 08:11:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 418FDE009E7
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 08:11:38 -0700 (PDT)
Received: by lbcue7 with SMTP id ue7so47971513lbc.0
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 08:11:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=U2UbiffzoUwmfHke3yd+/sRH/qX/e+W19cpFLhIvQIg=;
	b=bHp9s+9tLVqFIHxNdT/4wjOs+yu032b3sF3Tt/Ef+331CT7kIHXYJxbhhLlkEzhC0R
	eb+UWcZjgrr7DZUp7rhgfSoqEzHouDAC52DODvqTUEV+nrlOzxxGYQc17F8xyg4W9wap
	BZLX9z5g1cyPXgUkqx6btG/cm0tnwE8+FqkYMzfdnJkCoXYFCXNQVN6SwKuqmExDeX7r
	PGuKnxmWlNdnzM8QJumJicO4fDNUwVhdSry1R6tH5fY30Yt6wmZZcPX6yo274WaN0QgU
	Y1NRd5D40iHIXU8Jl5a+4UI0vASYKSoDK6JbrgvqbAmSUfMCCu2GOVJGrtat0UM+UJHL
	dsrA==
X-Gm-Message-State: ALoCoQmui7RTWlHblmceYXZA9LQIDANjqdPvJTcg4GdMu4YnTqvI4XXEFnB6GLmJjm6kHSC9UEr8
X-Received: by 10.112.119.139 with SMTP id ku11mr3690872lbb.49.1433517096267; 
	Fri, 05 Jun 2015 08:11:36 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id oy3sm1833619lbb.1.2015.06.05.08.11.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 08:11:35 -0700 (PDT)
Date: Fri, 5 Jun 2015 17:11:29 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>
Message-ID: <20150605151129.GF1829@gmail.com>
References: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
MIME-Version: 1.0
In-Reply-To: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Issue with 8250/16550 UART1 access in raspberrypi (meta-raspberrypi)
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
X-List-Received-Date: Fri, 05 Jun 2015 15:11:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Andreas,

I don't have a Compute module to test anything so I'll just say some hints that
might help.

On Thu, Jun 04, 2015 at 03:01:26PM +0300, Andreas Enbacka wrote:
>    Hello,
>
>
>    After a long break, I have returned to the Yocto project, and generally
>    very pleased. A lot of progress has been done since I last used the
>    project (two years ago), and now in my opinion everything works very
>    smoothly.
>
>
>    I have used yocto to build a custom image for the RaspberryPi Compute
>    Module. Generally everything works ok, however I am experiencing
>    problem with accessing the UART1 port on the raspberryPi. I am using a
>    library called wiringPi to put the appropriate GPIO pins in the correct
>    mode (alt5) for RXD1/TXD1 (pins 32/33). Also I have used menuconfig to
>    enable the 8250/16550 serial port support in the kernel (3.18.5+).
>    After booting the image I examined the dmesg output, and it shows
>    following information related to 8250/16550:
>
>    ..
>
>    [   1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>
>    [   1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq = 29,
>    base_baud = 7812500) is a 8250

You will need to configure the pins before starting the driver. And this can be
done either by messing with the DTS or my compiling the driver as module and
insmod it after you configure the pins.

>    Then I put the pins 32/33 into alternative mode alt5, and try to
>    connect to the port /dev/ttyS0 using minicom (baud 115200). Trying to
>    enter something into the Mincom terminal does not give any indications
>    on our connected oscilloscope (connected to the relevant pins), however
>    change of the alt mode earlier was observed correctly. The serial port
>    should not be using any flow control, but when trying to disable the
>    flow control using Minicom (it was on by default) freezes the complete
>    RaspberryPi system (requiring to disconnect and reconnect power).

I'm not sure about the pin configuration of UART1 function but the
documentation seems to be covering this topic:
https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2835/BCM2835-ARM-Peripherals.pdf

Hope this helps,

--
Andrei Gherzan

