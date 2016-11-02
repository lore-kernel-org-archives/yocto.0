Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFA88E00ACE; Wed,  2 Nov 2016 06:59:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.209.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bongo.birch.relay.mailchannels.net
	(bongo.birch.relay.mailchannels.net [23.83.209.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F60E009FA
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 06:59:44 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id DEBC0127336;
	Wed,  2 Nov 2016 13:59:36 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-2-62.us-west-2.compute.internal
	[10.229.2.62])
	by relay.mailchannels.net (Postfix) with ESMTPA id 635171261F9;
	Wed,  2 Nov 2016 13:59:34 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.22.43.236])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Wed, 02 Nov 2016 13:59:36 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1478095174849:3616205814
X-MC-Ingress-Time: 1478095174848
Received: from [37.228.247.203] (port=27242 helo=[192.168.0.60])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1c1w4j-003jed-SO; Wed, 02 Nov 2016 14:59:34 +0100
Message-ID: <1478095170.32080.10.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: yocto@yoctoproject.org
Date: Wed, 02 Nov 2016 13:59:30 +0000
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: yocto-announce@yoctoproject.org
Subject: =?UTF-8?B?Rmlyc3QgcmVsZWFzZSBtZXRhLWFyZHVpbm8gbGF5ZXIgZm9yIHRoZSBBcmR1aW5vIFnDum4=?=
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Nov 2016 13:59:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

A few weeks ago at ELCE, Paul Barker and I decided to create a layer
for the Arduino Y=C3=BAn. We are now releasing the 0.1 version for Morty =
to
the wider community. Patches welcome of course.

-b

--------

Hello,

We are pleased to announce the 0.1 release of our meta-arduino layer
for the Yocto Porject 2.2 "Morty" release.

It is available for download at:

https://www.toganlabs.com/downloads/bsp/meta-arduino/0.1/meta-arduino-0
.1-morty-2.2.tar.bz

or via github at:

https://github.com/toganlabs/meta-arduino


Name: https://www.toganlabs.com/downloads/bsp/meta-arduino/0.1/meta-ard
uino-0.1-morty-2.2.tar.bz
Hash: 20c65dee2d091f4f5797c869720ad339aca96f49
Tag: 0.1-morty
md5sum: 882fa547011fad0530978f4496ca2f3f
sha256sum:
cc0a72a4e90b6423e7cc1cb93f47f742d001b2276640d5577170dbb3a3eff2a3

This OpenEmbedded BSP layer supports the Arduino Y=C3=BAn board and is ba=
sed
on previous work from OpenWRT.

Future support is planned for the Arduino Industrial 101 board and the
Arduino Y=C3=BAn Shield.

Maintainers:

Beth 'pidge' Flanagan pidge@toganlabs.com
Paul Barker paul@paulbarker.me.uk
Primary repository: https://github.com/toganlabs/meta-arduino

Please send any questions and patches to the yocto@yoctoproject.org
mailing list with "[meta-arduino]"=C2=A0
in the subject.

We are not associated with Arduino LLC in any way. This is solely a
community supported alternative to the LininoOS OpenWRT based solution.
Support requests and bug reports should go directly to the maintainers
and not the nice folks at Arduino.


