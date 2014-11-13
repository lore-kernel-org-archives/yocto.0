Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE0CE008CC; Thu, 13 Nov 2014 06:09:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A5B7E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 06:09:52 -0800 (PST)
Received: from amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.127])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id E7C113F8A4
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:09:51 +0100 (CET)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 13 Nov 2014 15:09:51 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:09:50 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Thu, 13 Nov 2014 15:10:05 +0100
Message-ID: <5464BBAE.1040507@topic.nl>
Date: Thu, 13 Nov 2014 15:09:50 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <5464AB4D.8020409@topic.nl>	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>	<5464ADD9.1090604@topic.nl>
	<5464AFCC.5010709@topic.nl>	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<5464B833.1060609@topic.nl>
In-Reply-To: <5464B833.1060609@topic.nl>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: Sato image touchscreen calibration is borked
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
X-List-Received-Date: Thu, 13 Nov 2014 14:09:58 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 11/13/2014 02:54 PM, Mike Looijmans wrote:
> On 11/13/2014 02:28 PM, Burton, Ross wrote:
>> Hi,
>>
>> On 13 November 2014 13:19, Mike Looijmans <mike.looijmans@topic.nl
>> <mailto:mike.looijmans@topic.nl>> wrote:
>>
>>     I've been using "ts_calibrate" in the past, and that worked just fin=
e on
>>     this board.
>>
>>
>> Modern X servers don't use tslib, so this won't work since we stopped us=
ing
>> kdrive about two years ago.
>
> Maybe, but it demonstrates that the hardware and drivers are working just=
 fine.
>
>
>>
>>     DEBUG: Adding click 0 (X=3D1023, Y=3D599)
>>     DEBUG: Adding click 1 (X=3D607, Y=3D599)
>>     DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of pr=
evious
>> click
>>     DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of pr=
evious
>> click
>>     DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of pr=
evious
>> click
>>
>>
>> Well, it's not within seven pixels is it...  I wonder if there's a bug i=
n the
>> logic.  It might be worth bumping the xinput-calibrator revision to the =
latest
>> commit in the upstream git repo in case this has been fixed already ther=
e.
>
> Tried, but that did not help, same problem.
>
>> I bought a HDMI display with an integrated touchscreen to test this sort=
 of
>> thing, but the device was so dodgy that it often caused the kernel to ha=
ng on
>> boot...
>
> I have one of those attached to the system as well. Explaining that I hav=
e two
> touch screens might be a bit of a challenge though, so I started with the
> little LVDS screen first.

That one works,

root@topic-miami-florida-med-xc7z015:~# DISPLAY=3D0:0 xinput_calibrator -v =
--devic
e event1
DEBUG: XInputExtension version is 2.3
DEBUG: Skipping virtual master devices and devices without axis valuators.
DEBUG: Selected device: PixArtImaging OpticalTouchScreen
DEBUG: Not usbtouchscreen calibrator: Not a usbtouchscreen device
DEBUG: Evdev Axis Calibration not set, setting to axis valuators to be sure=
.
         Setting calibration data: 0, 32767, 0, 32767
DEBUG: Successfully applied axis calibration.
DEBUG: Read axes swap value of 0.
DEBUG: Read InvertX=3D0, InvertY=3D0.
Calibrating EVDEV driver for "PixArtImaging OpticalTouchScreen" id=3D6
         current calibration values (from XInput): min_x=3D0, max_x=3D32767=
 and=20
min_y=3D0, max_y=3D32767
DEBUG: Found that 'PixArtImaging OpticalTouchScreen' is a sysfs name.
INFO: width=3D1920, height=3D1080
DEBUG: Adding click 0 (X=3D229, Y=3D147)
DEBUG: Adding click 1 (X=3D1699, Y=3D144)
DEBUG: Adding click 2 (X=3D231, Y=3D943)
DEBUG: Adding click 3 (X=3D1685, Y=3D942)

Doing dynamic recalibration:
         Setting calibration data: -233, 33034, 384, 32625


So it seems related to the little I2C touchscreen controller, or some kind =
of=20
rotation. The coordinate system for the small touchscreen looks rotated 180=
=20
degrees, looking at the numbers. xinput cannot handle that?




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


