Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7689E0090F; Thu, 13 Nov 2014 05:01:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 95 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Nov 2014 05:01:35 PST
Received: from retry101.mer-nm.internl.net (vif1-retry101.mer-nm.internl.net
	[217.149.192.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0119E0091D
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:01:35 -0800 (PST)
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by retry101.mer-nm.internl.net (Postfix) with ESMTP id 0B51440D2E
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 14:00:04 +0100 (CET)
Received: from amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.114])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id 060393F8BF
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 13:59:59 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 13 Nov 2014 13:59:58 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 13:59:58 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Thu, 13 Nov 2014 14:00:12 +0100
Message-ID: <5464AB4D.8020409@topic.nl>
Date: Thu, 13 Nov 2014 13:59:57 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Sato image runs, but doesn't start its GUI
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
X-List-Received-Date: Thu, 13 Nov 2014 13:01:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFI finally got around to trying to use our custom board's BSP with =
Yocto images.

Since the board has a touchscreen (well, actually it has two) I built the=20
core-image-sato.

I had to tweak the startup a bit, because our framebuffer is in the FPGA it=
=20
won't be available until after programming it and loading the modules.

Setting psplash to S05 instead of S00, and modutils to load at S04 fixes th=
e=20
initialization order problems I saw.

What I get now is a nice Yocto logo on the screen, and a progress bar that=
=20
almost fills up. But nothing else happens. I'd expect the GUI to start then=
,=20
but apparently there's nothing to trigger that?

Display works, touch works, everything seems in perfect working order.

I can't find anything that attempts to start anything. There's nothing in=20
inittab, and there's nothing in rc3.d that resembles an attempt at starting=
=20
something desktop GUI application or so.

Am I missing something, is this a bug, or is this expected behaviour and am=
 I=20
supposed to type some magic command first?


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


