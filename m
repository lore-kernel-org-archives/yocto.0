Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DD8EE008CC; Thu, 13 Nov 2014 05:19:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BB1E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:19:10 -0800 (PST)
Received: from amavisd-new (mailscanner07.wrt-nm.internl.net [217.149.192.117])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id B41D63F913
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 14:19:09 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner07.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 13 Nov 2014 14:19:09 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 14:19:08 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Thu, 13 Nov 2014 14:19:23 +0100
Message-ID: <5464AFCC.5010709@topic.nl>
Date: Thu, 13 Nov 2014 14:19:08 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <5464AB4D.8020409@topic.nl>	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl>
In-Reply-To: <5464ADD9.1090604@topic.nl>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Sato image touchscreen calibration is borked
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
X-List-Received-Date: Thu, 13 Nov 2014 13:19:13 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 11/13/2014 02:10 PM, Mike Looijmans wrote:
> Next challenge is to calibrate the touch screen...

Hmm. That's a big disappointment.

I've been using "ts_calibrate" in the past, and that worked just fine on th=
is=20
board.

Sato uses an X application for this, and it's apparently borked or so.

It does not run at startup, as I'd expect it to do (though it seems to be=20
setup for that).

running "DISPLAY=3D0:0 xinput_calibrator_once.sh" displays it, but it doesn=
't=20
really work. I can only "touch" the crosses in the upper left and right=20
corner, but it does not accept the lower right one.

I ran it with the "-v" option to get some more info, and this is what it=20
displays when I click the crosses. The lower left one causes the "Not=20
adding..." output.


root@topic-miami-florida-med-xc7z015:~# xinput_calibrator -v
DEBUG: XInputExtension version is 2.3
DEBUG: Skipping virtual master devices and devices without axis valuators.
DEBUG: Skipping device 'Virtual core XTEST pointer' id=3D4, does not report=
=20
Absolute events.
DEBUG: Selected device: AD7879 Touchscreen
DEBUG: Not usbtouchscreen calibrator: Not a usbtouchscreen device
DEBUG: Read axes swap value of 0.
DEBUG: Read InvertX=3D0, InvertY=3D0.
Calibrating EVDEV driver for "AD7879 Touchscreen" id=3D6
         current calibration values (from XInput): min_x=3D0, max_x=3D1024 =
and=20
min_y=3D0, max_y=3D600
DEBUG: Adding click 0 (X=3D1023, Y=3D599)
DEBUG: Adding click 1 (X=3D607, Y=3D599)
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click




Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Systems
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: (+31) (0) 499 33 69 79
Telefax:  (+31) (0) 499 33 69 70
E-mail: mike.looijmans@topic.nl
Website: www.topic.nl

Please consider the environment before printing this e-mail

Visit us at Bits & Chips Smart Systems 20th November, 1931 Congrescentum Br=
abanthallen 's-Hertogenbosch, stand number 34
http://bc-smartsystems.nl


