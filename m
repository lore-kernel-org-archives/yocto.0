Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0D8AE0096A; Tue,  9 Jun 2015 00:23:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5DD4E00496
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 00:22:57 -0700 (PDT)
Received: from a88-115-135-95.elisa-laajakaista.fi ([88.115.135.95]
	helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.71) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1Z2Ds4-0001g2-7L; Tue, 09 Jun 2015 10:22:52 +0300
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: "'Andrei Gherzan'" <andrei@gherzan.ro>
References: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
	<20150605151129.GF1829@gmail.com>
In-Reply-To: <20150605151129.GF1829@gmail.com>
Date: Tue, 9 Jun 2015 10:22:52 +0300
Message-ID: <000601d0a285$19143850$4b3ca8f0$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFjZkRpfOEq+YvyVLzT7aEdq58mdAOJnonknmHvLmA=
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
X-List-Received-Date: Tue, 09 Jun 2015 07:23:00 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Hello Andrei,

I attempted to compile the driver as a module, and ismod it after using
wiringPi to configure the pins for uart1 (bcm pins 32/33), however the
system still freeze (freeze occurs when attempting to close Minicom, and
when attempting to switch off hardware flow control which of some reason =
is
enabled by default when connecting to /dev/ttyS0). I am using kernel
3.18.5+, could this have some impact? Or could some addresses for uart1
require modifications in the driver?

Best regards,
Andreas Enbacka

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: 5. kes=E4kuuta 2015 18:11
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Issue with 8250/16550 UART1 =
access
in raspberrypi (meta-raspberrypi)

Hello Andreas,

I don't have a Compute module to test anything so I'll just say some =
hints
that might help.

On Thu, Jun 04, 2015 at 03:01:26PM +0300, Andreas Enbacka wrote:
>    Hello,
>
>
>    After a long break, I have returned to the Yocto project, and =
generally
>    very pleased. A lot of progress has been done since I last used the
>    project (two years ago), and now in my opinion everything works =
very
>    smoothly.
>
>
>    I have used yocto to build a custom image for the RaspberryPi =
Compute
>    Module. Generally everything works ok, however I am experiencing
>    problem with accessing the UART1 port on the raspberryPi. I am =
using a
>    library called wiringPi to put the appropriate GPIO pins in the =
correct
>    mode (alt5) for RXD1/TXD1 (pins 32/33). Also I have used menuconfig =
to
>    enable the 8250/16550 serial port support in the kernel (3.18.5+).
>    After booting the image I examined the dmesg output, and it shows
>    following information related to 8250/16550:
>
>    ..
>
>    [   1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sharing =
disabled
>
>    [   1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq =3D 29,
>    base_baud =3D 7812500) is a 8250

You will need to configure the pins before starting the driver. And this =
can
be done either by messing with the DTS or my compiling the driver as =
module
and insmod it after you configure the pins.

>    Then I put the pins 32/33 into alternative mode alt5, and try to
>    connect to the port /dev/ttyS0 using minicom (baud 115200). Trying =
to
>    enter something into the Mincom terminal does not give any =
indications
>    on our connected oscilloscope (connected to the relevant pins), =
however
>    change of the alt mode earlier was observed correctly. The serial =
port
>    should not be using any flow control, but when trying to disable =
the
>    flow control using Minicom (it was on by default) freezes the =
complete
>    RaspberryPi system (requiring to disconnect and reconnect power).

I'm not sure about the pin configuration of UART1 function but the
documentation seems to be covering this topic:
https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2835/BC=
M28
35-ARM-Peripherals.pdf

Hope this helps,

--
Andrei Gherzan


