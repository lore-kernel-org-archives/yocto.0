Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE75FE00B58; Thu, 22 Jun 2017 11:43:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.6.128.153 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic328-27.consmr.mail.bf2.yahoo.com
	(sonic328-27.consmr.mail.bf2.yahoo.com [74.6.128.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13DEFE00B53
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 11:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1498156978; bh=gz7WJ782OJcwxY5UxsrlyDU6PmdLfJ6bn1cTayhyCDo=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=RB5sj/TDM2ZAu7TI4UFMtfweLKMsHvLsOQ2Sj0GCX9jWQlL8dfI6jlR1ktps3J86pY+VtsmqNv0VHOdmolvTxb75gwL1Qa4J58KjhsVy+3nEePrTsa8KvVp7pMg2qVDpeBxVf6uakfGJByEZEjYXREHEunSrfJVTyUyoHFxiHN5Qu9AuKQ6ozA0INy9MNNagaL9u/Gkeg7rFL0qXpG4PFO4D0pCL7xPwCwV2/Saq5ekdO0SjaicYt43vaw+PrMYWOArSL/Ew5qj9rDtXRClIelh7pUz0Rb8lGMVxBwysCwN2pD5I3F4B5M/2TUgIk8RrBO2jV3sJ4WS5II/X0wVv5A==
X-YMail-OSG: O2UXfLYVRDvUiY0ySSaww7.66D3J3JCo0fN5.TOhz_0uxFqX7VBg0xQPUCic7Ks -
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic328.consmr.mail.bf2.yahoo.com with HTTP;
	Thu, 22 Jun 2017 18:42:58 +0000
Date: Thu, 22 Jun 2017 18:42:50 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <395133194.1602564.1498156970538@mail.yahoo.com>
MIME-Version: 1.0
References: <395133194.1602564.1498156970538.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.9911 YahooMailNeo Mozilla/5.0 (X11;
	Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/56.0.2924.84 Safari/537.36
Subject: Raspberrypi bare-metal interfaced to PMod GPS receiver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Jun 2017 18:43:02 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1602563_1105189253.1498156970536"

------=_Part_1602563_1105189253.1498156970536
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All
Just completed the interface of a http://store.digilentinc.com/pmod-gps-gps=
-receiver/$39.99 with RPi 2B=C2=A0Running Ultibo Bare metal on Raspberrypi2=
B & PMOD GPS with just 4 fileskernel7.img, start.elf, bootcode.bin, and fix=
up.dat.Receives GPS data on UART and sends message on Ethernet using UDP.Mo=
re information see https://ultibo.org/=C2=A0on bare metal project and=C2=A0=
https://github.com/develone/ultibo_serial_testingOn what creates the kernel=
7.img, see the README.md
One of many messages sent by GPS receiver.
$GPGGA,132531.000,3145.5590,N,10620.5407,W,2,9,0.89,1209.1,M,-26.2,M,0000,0=
000*5Btime  132531.000Latitude 3145.5590 NLongitude 10620.5407 WElevation 1=
209.1 MThe program calls C to compute the checksum.
The Check sum of the character between the "$" and the "*"81 bytes readThe =
checksum of ch_sum_test.dat is 0x5bComputed by taking the checksum Exclusiv=
e or with each character.
Let me know if this of interest..
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1602563_1105189253.1498156970536
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:13px"><div id=3D"yui_3_16_0_ym19_1_1498146432552_132436">Hello All</d=
iv><div id=3D"yui_3_16_0_ym19_1_1498146432552_132437"><br id=3D"yui_3_16_0_=
ym19_1_1498146432552_132438"></div><div id=3D"yui_3_16_0_ym19_1_14981464325=
52_132439">Just completed the interface of a http://store.digilentinc.com/p=
mod-gps-gps-receiver/</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_13244=
0">$39.99 with RPi 2B&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_1498146432552=
_132441">Running Ultibo Bare metal on Raspberrypi2B &amp; PMOD GPS with jus=
t 4 files</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132442">kernel7.i=
mg, start.elf, bootcode.bin, and fixup.dat.</div><div id=3D"yui_3_16_0_ym19=
_1_1498146432552_132443">Receives GPS data on UART and sends message on Eth=
ernet using UDP.</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132444" di=
r=3D"ltr">More information see <a href=3D"https://ultibo.org/" id=3D"yui_3_=
16_0_ym19_1_1498146432552_132615">https://ultibo.org/</a>&nbsp;on bare meta=
l project and&nbsp;<a href=3D"https://github.com/develone/ultibo_serial_tes=
ting" class=3D"" id=3D"yui_3_16_0_ym19_1_1498146432552_132530">https://gith=
ub.com/develone/ultibo_serial_testing</a></div><div id=3D"yui_3_16_0_ym19_1=
_1498146432552_132579" dir=3D"ltr">On what creates the kernel7.img, see the=
 README.md</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132605"><br></di=
v><div id=3D"yui_3_16_0_ym19_1_1498146432552_132445">One of many messages s=
ent by GPS receiver.</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132446=
"><br id=3D"yui_3_16_0_ym19_1_1498146432552_132447"></div><div id=3D"yui_3_=
16_0_ym19_1_1498146432552_132448">$GPGGA,132531.000,3145.5590,N,10620.5407,=
W,2,9,0.89,1209.1,M,-26.2,M,0000,0000*5B</div><div id=3D"yui_3_16_0_ym19_1_=
1498146432552_132449">time <span style=3D"white-space:pre-wrap;" id=3D"yui_=
3_16_0_ym19_1_1498146432552_132450">=09</span>132531.000</div><div id=3D"yu=
i_3_16_0_ym19_1_1498146432552_132451">Latitude<span style=3D"white-space:pr=
e-wrap;" id=3D"yui_3_16_0_ym19_1_1498146432552_132452">=09</span>3145.5590<=
span style=3D"white-space:pre-wrap;" id=3D"yui_3_16_0_ym19_1_1498146432552_=
132453">=09</span>N</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132454"=
>Longitude<span style=3D"white-space:pre-wrap;" id=3D"yui_3_16_0_ym19_1_149=
8146432552_132455">=09</span>10620.5407<span style=3D"white-space:pre-wrap;=
" id=3D"yui_3_16_0_ym19_1_1498146432552_132456">=09</span>W</div><div id=3D=
"yui_3_16_0_ym19_1_1498146432552_132457">Elevation<span style=3D"white-spac=
e:pre-wrap;" id=3D"yui_3_16_0_ym19_1_1498146432552_132458">=09</span>1209.1=
<span style=3D"white-space:pre-wrap;" id=3D"yui_3_16_0_ym19_1_1498146432552=
_132459">=09</span>M</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132457=
">The program calls C to compute the checksum.</div><div id=3D"yui_3_16_0_y=
m19_1_1498146432552_132457"><br></div><div id=3D"yui_3_16_0_ym19_1_14981464=
32552_132460">The Check sum of the character between the "$" and the "*"</d=
iv><div id=3D"yui_3_16_0_ym19_1_1498146432552_132461">81 bytes read</div><d=
iv id=3D"yui_3_16_0_ym19_1_1498146432552_132462">The checksum of ch_sum_tes=
t.dat is 0x5b</div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132463">Compu=
ted by taking the checksum Exclusive or with each character.</div><div id=
=3D"yui_3_16_0_ym19_1_1498146432552_132464"><br id=3D"yui_3_16_0_ym19_1_149=
8146432552_132465"></div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132368"=
></div><div id=3D"yui_3_16_0_ym19_1_1498146432552_132466">Let me know if th=
is of interest..</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_149814643255=
2_132467"><br id=3D"yui_3_16_0_ym19_1_1498146432552_132468"></div><div></di=
v><div id=3D"yui_3_16_0_ym19_1_1498146432552_132384">&nbsp;</div><div class=
=3D"signature" id=3D"yui_3_16_0_ym19_1_1498146432552_132740">Edward Vidal J=
r. e-mail develone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_1602563_1105189253.1498156970536--
