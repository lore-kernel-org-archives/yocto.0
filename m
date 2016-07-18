Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 195DBE00C37; Sun, 17 Jul 2016 17:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 116E0E00C2D
	for <yocto@yoctoproject.org>; Sun, 17 Jul 2016 17:54:53 -0700 (PDT)
Received: from [10.1.1.92] (c-4ab0e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.176.74]) by mx.zohomail.com
	with SMTPS id 1468803291049144.4921679009841;
	Sun, 17 Jul 2016 17:54:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Martin Bergek <martin@spotwise.com>
In-Reply-To: <20160708134209.GE20442@resin.home>
Date: Mon, 18 Jul 2016 02:54:46 +0200
Message-Id: <50E0E8D3-A682-4D89-B2A2-E3B4F8B1FBC9@spotwise.com>
References: <D37DD58C-C544-4AAA-B130-5BA818C711E4@spotwise.com>
	<20160708134209.GE20442@resin.home>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] PL2303 instability on RPi 3 but not on RPi 2
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
X-List-Received-Date: Mon, 18 Jul 2016 00:54:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Andrei,

I have done some more testing and I have found that - with everything =
else being the same - I can only see the issue on kernel 4.4. On kernel =
4.1 it is stable.

As an alternative workaround I have noticed that disabling USB 2.0 by =
booting with dwc_otg.speed=3D1 makes the system stable on any kernel =
version - albeit of course with much lower USB speeds.

For my particular application either of these alternatives work but I =
would rather use the latest kernel and at full USB speed.

I have tried changing the core frequency (i.e. core_freq=3D250) but that =
didn=E2=80=99t make any difference. The change seems to be mostly =
related to the serial ports on the RPi which is not the same as the =
problem I am experiencing. My problem is that the USB ports on the RPi =
stop working.

/Martin


> On 08 Jul 2016, at 15:42, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Mon, Jun 13, 2016 at 11:24:08PM +0200, Martin Bergek wrote:
>> Hi,
>>=20
>> I am testing an image on a system including a PL2303 (USB to serial =
bridge) and have noticed an issue on the Raspberry Pi 3. The system will =
run fine for an hour or two but then the kernel logs the following =
error:
>>=20
>> 	pl2303 ttyUSB0: usb_serial_generic_read_bulk_callback - urb =
stopped: -32
>>=20
>> After this there is no more data coming from the USB device and I =
have to either reboot or disconnect/connect the USB device - neither of =
which is acceptable in my application.
>>=20
>> This is on kernel 4.4.9 and it happens only on the Raspberry Pi 3. On =
Raspberry Pi 2 the exact same firmware runs flawlessly.
>>=20
>> Has anyone else come across this or have some suggestions on how to =
solve it? Or how to pinpoint the cause?
>>=20
>> Thanks,
>> Martin Bergek
>>=20
>=20
> I'm usign exactly the same chipset and never saw this problem before.
> There might be something related to
> https://github.com/raspberrypi/firmware/issues/553 which you can test
> with a core_freq=3D250
>=20
> As well it might be connected to the USB power supply if you use the =
5V pin
> from PL2303 to power up your board. I do and I experience no issue but
> it might be something there.
>=20
> --
> Andrei Gherzan



