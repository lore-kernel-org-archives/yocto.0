Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57046E004F1; Mon, 13 Jun 2016 14:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0165]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jun 2016 14:39:19 PDT
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4E6E004F1
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 14:39:19 -0700 (PDT)
Received: from [10.1.1.92] (c-4ab0e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.176.74]) by mx.zohomail.com
	with SMTPS id 1465853054631205.18428755735215;
	Mon, 13 Jun 2016 14:24:14 -0700 (PDT)
From: Martin Bergek <martin@spotwise.com>
Message-Id: <D37DD58C-C544-4AAA-B130-5BA818C711E4@spotwise.com>
Date: Mon, 13 Jun 2016 23:24:08 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [meta-raspberrypi] PL2303 instability on RPi 3 but not on RPi 2
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
X-List-Received-Date: Mon, 13 Jun 2016 21:39:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,=20

I am testing an image on a system including a PL2303 (USB to serial =
bridge) and have noticed an issue on the Raspberry Pi 3. The system will =
run fine for an hour or two but then the kernel logs the following =
error:

	pl2303 ttyUSB0: usb_serial_generic_read_bulk_callback - urb =
stopped: -32

After this there is no more data coming from the USB device and I have =
to either reboot or disconnect/connect the USB device - neither of which =
is acceptable in my application.

This is on kernel 4.4.9 and it happens only on the Raspberry Pi 3. On =
Raspberry Pi 2 the exact same firmware runs flawlessly.

Has anyone else come across this or have some suggestions on how to =
solve it? Or how to pinpoint the cause?

Thanks,
Martin Bergek



