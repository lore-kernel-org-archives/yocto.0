Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B3BAE008B0; Sun, 19 Oct 2014 22:42:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72EFCE0071C
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 22:42:15 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id p9so3293103lbv.33
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 22:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Nh9vOqVDrCHrZsjR0qJ5hporLM3nKDh3zcsgmhYJxB8=;
	b=tWfn+cFyZmGyPeOUWJoB1w9/06FMDWrLvgpixBlO7zsOmJYyKKqUm797wJEVQRJCKh
	Lkaj40lKVFXKfsM6/0Y5WTn4SZItTvXgcwWUR62fWtAmLo2a7KokQK8UdtHLtDbX4FsL
	jw1XAT70frk9QXkxYMpATiy1vq8vD8VYP9G1F7VTrCQAbwbW2fIv1ASAA5rucBM7fMyd
	bBO7QQwajnoCZzvZAiQQ6DFVKQuecA7KjlqB+AqEe+5IqafDIKk/mC129UG5fzKl9G65
	TVEeU40n5RuqxsM1chpDSCBK3yInS9zmQScb3DNLH+bTZmYyTYPIJn1ZJFz7iF4dcKIY
	R47Q==
MIME-Version: 1.0
X-Received: by 10.153.7.107 with SMTP id db11mr25034239lad.35.1413783733638;
	Sun, 19 Oct 2014 22:42:13 -0700 (PDT)
Received: by 10.112.53.166 with HTTP; Sun, 19 Oct 2014 22:42:13 -0700 (PDT)
Date: Sun, 19 Oct 2014 22:42:13 -0700
Message-ID: <CAG6mzOOD3ry2VY_SiWGR534oDp0hdN80j6L1TGOmMP9Jd9w-aQ@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Remote Debug Issue
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
X-List-Received-Date: Mon, 20 Oct 2014 05:42:19 -0000
Content-Type: multipart/alternative; boundary=001a113456a03b9d1f0505d42dfc

--001a113456a03b9d1f0505d42dfc
Content-Type: text/plain; charset=UTF-8

Hi, I am trying to remote debug on my Atmel SAMA5D3 Xplained board which
"Poky (Yocto Project Reference Distro) 1.5.1" is prebuilt. First I tried to
use TCP/IP. I connected my board to my laptop and type "ifconfig", I got
following information:
eth0      Link encap:Ethernet  HWaddr
2e:da:b6:48:b6:47
          inet6 addr: fe80::2cda:b6ff:fe48:b647/64
Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500
Metric:1
          RX packets:3 errors:0 dropped:0 overruns:0
frame:0
          TX packets:4 errors:0 dropped:0 overruns:0
carrier:0
          collisions:0
txqueuelen:1000
          RX bytes:138 (138.0 B)  TX bytes:328 (328.0
B)
          Interrupt:26 Base
address:0x8000


lo        Link encap:Local
Loopback
          inet addr:127.0.0.1
Mask:255.0.0.0
          inet6 addr: ::1/128
Scope:Host
          UP LOOPBACK RUNNING  MTU:65536
Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0
frame:0
          TX packets:0 errors:0 dropped:0 overruns:0
carrier:0
          collisions:0
txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

It seems there is only ipv6 address for eth0. Then I type "gdbserver
localhost:2001 Test3", I got :
Process Test3 created; pid = 937
Listening on port 2001

Then on my laptop I started arm-poky-linux-gnueabi-gdb of 1.5.1 toolchain.
In the gdb command line I typed "target remote
fe80::2cda:b6ff:fe48:b647:2001". I got error information :
fe80: unknown host
fe80::2cda:b6ff:fe48:b647:2001: No such file or directory.

Actually I can use this ipv6 address to establish ssh remote target in
eclipse, so I don't know why it doesn't work for remote debug using TCP/IP.

After that I tried to use serial port to establish remote debug. I connect
my board to laptop through usb serial port. When I start minicom in
terminal, I get "Poky (Yocto Project Reference Distro) 1.5.1
sama5d3_xplained /dev/ttyGS0". So I typed "gdbserver /dev/ttyGS0 Test3".
Then in gdb command line I typed "target remote /dev/ttyACM0". "ttyACM0" is
the port of the usb serial port. However, in the minicom window it kept
printing:

Remote dRemote debugging using /dev
/ttyGS0
       Remote side has terminated connection.  GDBRemote side has
terminated connectiRemote side has terminated coRemote debugging using
/dev/ttyGS0

readchar: Input/output error

Now I can't remote debug on my board.

Thanks for any help!

Kevin

--001a113456a03b9d1f0505d42dfc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PjxkaXY+PGRpdj5IaSwgSSBh
bSB0cnlpbmcgdG8gcmVtb3RlIGRlYnVnIG9uIG15IEF0bWVsIFNBTUE1RDMgWHBsYWluZWQgYm9h
cmQgd2hpY2ggJnF1b3Q7UG9reSAoWW9jdG8gUHJvamVjdCBSZWZlcmVuY2UgRGlzdHJvKSAxLjUu
MSZxdW90OyBpcyBwcmVidWlsdC4gRmlyc3QgSSB0cmllZCB0byB1c2UgVENQL0lQLiBJIGNvbm5l
Y3RlZCBteSBib2FyZCB0byBteSBsYXB0b3AgYW5kIHR5cGUgJnF1b3Q7aWZjb25maWcmcXVvdDss
IEkgZ290IGZvbGxvd2luZyBpbmZvcm1hdGlvbjo8YnI+ZXRoMMKgwqDCoMKgwqAgTGluayBlbmNh
cDpFdGhlcm5ldMKgIEhXYWRkciAyZTpkYTpiNjo0ODpiNjo0N8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBpbmV0NiBh
ZGRyOiBmZTgwOjoyY2RhOmI2ZmY6ZmU0ODpiNjQ3LzY0IFNjb3BlOkxpbmvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBVUCBCUk9BRENB
U1QgUlVOTklORyBNVUxUSUNBU1TCoCBNVFU6MTUwMMKgIE1ldHJpYzoxwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBSWCBwYWNrZXRz
OjMgZXJyb3JzOjAgZHJvcHBlZDowIG92ZXJydW5zOjAgZnJhbWU6MMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoMKgwqAgVFggcGFja2V0czo0
IGVycm9yczowIGRyb3BwZWQ6MCBvdmVycnVuczowIGNhcnJpZXI6MMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBjb2xsaXNpb25zOjAgdHhx
dWV1ZWxlbjoxMDAwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKgwqDC
oMKgIFJYIGJ5dGVzOjEzOCAoMTM4LjAgQinCoCBUWCBieXRlczozMjggKDMyOC4wIEIpwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKg
wqDCoMKgIEludGVycnVwdDoyNiBCYXNlIGFkZHJlc3M6MHg4MDAwwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5sb8Kg
wqDCoMKgwqDCoMKgIExpbmsgZW5jYXA6TG9jYWwgTG9vcGJhY2vCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoMKgwqAgaW5ldCBhZGRyOjEyNy4wLjAuMcKg
IE1hc2s6MjU1LjAuMC4wwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBpbmV0NiBh
ZGRyOiA6OjEvMTI4IFNjb3BlOkhvc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoCBVUCBMT09QQkFDSyBSVU5OSU5HwqAgTVRVOjY1NTM2wqAgTWV0cmljOjHCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxi
cj7CoMKgwqDCoMKgwqDCoMKgwqAgUlggcGFja2V0czowIGVycm9yczowIGRyb3BwZWQ6MCBvdmVy
cnVuczowIGZyYW1lOjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+
wqDCoMKgwqDCoMKgwqDCoMKgIFRYIHBhY2tldHM6MCBlcnJvcnM6MCBkcm9wcGVkOjAgb3ZlcnJ1
bnM6MCBjYXJyaWVyOjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKg
wqDCoMKgwqDCoMKgwqAgY29sbGlzaW9uczowIHR4cXVldWVsZW46MMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoCBSWCBieXRlczowICgwLjAgQinC
oCBUWCBieXRlczowICgwLjAgQik8YnI+PGJyPjwvZGl2Pkl0IHNlZW1zIHRoZXJlIGlzIG9ubHkg
aXB2NiBhZGRyZXNzIGZvciBldGgwLiBUaGVuIEkgdHlwZSAmcXVvdDtnZGJzZXJ2ZXIgbG9jYWxo
b3N0OjIwMDEgVGVzdDMmcXVvdDssIEkgZ290IDo8YnI+UHJvY2VzcyBUZXN0MyBjcmVhdGVkOyBw
aWQgPSA5MzfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8YnI+TGlzdGVuaW5nIG9uIHBvcnQgMjAwMSA8YnI+PGJyPjwvZGl2PlRo
ZW4gb24gbXkgbGFwdG9wIEkgc3RhcnRlZCBhcm0tcG9reS1saW51eC1nbnVlYWJpLWdkYiBvZiAx
LjUuMSB0b29sY2hhaW4uIEluIHRoZSBnZGIgY29tbWFuZCBsaW5lIEkgdHlwZWQgJnF1b3Q7dGFy
Z2V0IHJlbW90ZSAgZmU4MDo6MmNkYTpiNmZmOmZlNDg6YjY0NzoyMDAxJnF1b3Q7LiBJIGdvdCBl
cnJvciBpbmZvcm1hdGlvbiA6PGJyPmZlODA6IHVua25vd24gaG9zdDxicj5mZTgwOjoyY2RhOmI2
ZmY6ZmU0ODpiNjQ3OjIwMDE6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkuPGJyPjxicj48L2Rp
dj5BY3R1YWxseSBJIGNhbiB1c2UgdGhpcyBpcHY2IGFkZHJlc3MgdG8gZXN0YWJsaXNoIHNzaCBy
ZW1vdGUgdGFyZ2V0IGluIGVjbGlwc2UsIHNvIEkgZG9uJiMzOTt0IGtub3cgd2h5IGl0IGRvZXNu
JiMzOTt0IHdvcmsgZm9yIHJlbW90ZSBkZWJ1ZyB1c2luZyBUQ1AvSVAuPGJyPjxicj48L2Rpdj5B
ZnRlciB0aGF0IEkgdHJpZWQgdG8gdXNlIHNlcmlhbCBwb3J0IHRvIGVzdGFibGlzaCByZW1vdGUg
ZGVidWcuIEkgY29ubmVjdCBteSBib2FyZCB0byBsYXB0b3AgdGhyb3VnaCB1c2Igc2VyaWFsIHBv
cnQuIFdoZW4gSSBzdGFydCBtaW5pY29tIGluIHRlcm1pbmFsLCBJIGdldCAmcXVvdDtQb2t5IChZ
b2N0byBQcm9qZWN0IFJlZmVyZW5jZSBEaXN0cm8pIDEuNS4xIHNhbWE1ZDNfeHBsYWluZWQgL2Rl
di90dHlHUzAmcXVvdDsuIFNvIEkgdHlwZWQgJnF1b3Q7Z2Ric2VydmVyIC9kZXYvdHR5R1MwIFRl
c3QzJnF1b3Q7LiBUaGVuIGluIGdkYiBjb21tYW5kIGxpbmUgSSB0eXBlZCAmcXVvdDt0YXJnZXQg
cmVtb3RlIC9kZXYvdHR5QUNNMCZxdW90Oy4gJnF1b3Q7dHR5QUNNMCZxdW90OyBpcyB0aGUgcG9y
dCBvZiB0aGUgdXNiIHNlcmlhbCBwb3J0LiBIb3dldmVyLCBpbiB0aGUgbWluaWNvbSB3aW5kb3cg
aXQga2VwdCBwcmludGluZzo8YnI+PGJyPlJlbW90ZSBkUmVtb3RlIGRlYnVnZ2luZyB1c2luZyAv
ZGV2PGJyPi90dHlHUzA8YnI+wqDCoMKgwqDCoMKgIFJlbW90ZSBzaWRlIGhhcyB0ZXJtaW5hdGVk
IGNvbm5lY3Rpb24uwqAgR0RCUmVtb3RlIHNpZGUgaGFzIHRlcm1pbmF0ZWQgY29ubmVjdGlSZW1v
dGUgc2lkZSBoYXMgdGVybWluYXRlZCBjb1JlbW90ZSBkZWJ1Z2dpbmcgdXNpbmcgL2Rldi90dHlH
UzA8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlYWRjaGFyOiBJbnB1dC9vdXRwdXQgZXJyb3I8YnI+PGJyPjwvZGl2
Pk5vdyBJIGNhbiYjMzk7dCByZW1vdGUgZGVidWcgb24gbXkgYm9hcmQuPGJyPjxicj48L2Rpdj5U
aGFua3MgZm9yIGFueSBoZWxwITxicj48YnI+PC9kaXY+S2V2aW48YnI+PC9kaXY+DQo=

--001a113456a03b9d1f0505d42dfc--
