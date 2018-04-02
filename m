Return-Path: <celledge@digitallumens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40308E00BB6; Mon,  2 Apr 2018 13:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F3EE00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 13:15:16 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id g8so4346573wmd.2
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 13:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=digitallumens-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=L9mZE1HJVDKMVdYtCDSdslmIpXB6pN4hofeMCAaF8Ww=;
	b=zEl5STd4CbjevOJffNfuG9lMTgh1U+IdUvlsIBDRiYq4yCZJipXoGj64G4BCnagcUv
	VtCgN/XhfU3LdatmIafuvdaPNHxCs8zbsSGdJF34GCE5egK7zc71M/1Tul92OORv70ce
	XJSUuZ+uKg2k9qlS/gBiwrgsKF6IBdHUZrjUtV8uwfOXmDF+o35GV83F8EPxINxX5WyA
	W4N7WdZ6LUGs7mwfwvrxtGGihljtibc+T3UwOrfQYqfBsUx2tqZXKHEYcB15L1Q+F3l/
	5fl3nMOPcfqAs5th8kWN41s4LelNNWY1UcRNlAW/VOT5LllDI0b7bjts+0NWleZsaJZD
	HnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L9mZE1HJVDKMVdYtCDSdslmIpXB6pN4hofeMCAaF8Ww=;
	b=VaqDycfKg6y2C+4EIZmaQJ5p2+5lEns/xWVLVpEgNzd8/0NOh0vDfnWtoqyb1m0PlW
	pVAeOLyBzudGzoEMiDmvmbp25dtBCzQN4D4rAE4NE5zCXxp9ap5GXsQNgc64ibg5fFLM
	dMIeQzvBmgyJvq9Sxt8NkeWm95wezyRISiLUBtRyLPhbsqHW3M9go8OZ5x5bncqEIRDf
	rnb+O7XpETjFIZwcv01qw1emA2dDrdECcYStEoSVnyXH/rPXwiNBxfvv41yO/6AnHRSd
	QXYq2S6tWkFULGJoylWD5y3BrxVvVJAgtWSPrYuocR1G3vMnsxmmwF3JhszBZjh+CoFl
	Ss7A==
X-Gm-Message-State: AElRT7FKnGDNx7lNqVfO9JMG/2Ef+qz0wKBif0wDEQ37g8kftV+8maXX
	lY+DqTcXF8FgO5qK6lbW8JYwP0W88T2yA9ZUYxUOQQsZfvA=
X-Google-Smtp-Source: AIpwx49VRR4X6AOplOxyipsrX8yl/uGo0sJ2y/fZ+782vA0BGSL/IC/8tLbe6wfsl9PQ7CzrKvB+mn/8w/75vjxxVRQ=
X-Received: by 10.46.16.1 with SMTP id j1mr6980058lje.102.1522700115728; Mon,
	02 Apr 2018 13:15:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.146.85 with HTTP; Mon, 2 Apr 2018 13:15:14 -0700 (PDT)
From: Chris Elledge <celledge@digitallumens.com>
Date: Mon, 2 Apr 2018 16:15:14 -0400
Message-ID: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Mon, 02 Apr 2018 20:15:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a69327f724d0568e33f5e"

--94eb2c1a69327f724d0568e33f5e
Content-Type: text/plain; charset="UTF-8"

I recently upgraded my Yocto based project to Yocto 2.4.2, and I
encountered a problem when building my custom kernel for an AT91 SAMA5D3X
platform. I've been using an ARM Thumb2 kernel for a while successfully
until this release. It appears that the issue stems from the change to
binutils version 2.29.1.

Here's a good description of the problem:
https://patchwork.kernel.org/patch/10072695/

I tried out their test script, and it flagged the arm-poky-linux-gnueabi-
toolchain built by Yocto 2.4.2 as being buggy. Has anyone else encountered
this problem and figured out a way around it without disabling Thumb
compilation of the kernel?

Thanks,
Chris

The bug showed up in my kernel with the following oops at kernel boot:
Internal error: Oops - undefined instruction: 0 [#1] PREEMPT THUMB2
Modules linked in:
CPU: 0 PID: 1 Comm: init Not tainted 4.9.91-custom #53
Hardware name: Atmel SAMA5
task: df448000 task.stack: df44a000
PC is at ret_fast_syscall+0x2/0x54
LR is at SyS_brk+0xe9/0x104
pc : [<c0105e62>]    lr : [<c016bca1>]    psr: 60000013
sp : df44bfa8  ip : 50c5387d  fp : 00001000
r10: 00000000  r9 : df44a000  r8 : c0106044
r7 : 0000002d  r6 : b6f3e050  r5 : 00010034  r4 : 00000008
r3 : df448000  r2 : ffff0001  r1 : 00000000  r0 : 00bda000
Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 50c5387d  Table: 3ec84059  DAC: 00000051
Process init (pid: 1, stack limit = 0xdf44a210)
Stack: (0xdf44bfa8 to 0xdf44c000)
bfa0:                   00000008 00010034 00000000 00000001 beddcfb8
00000000
bfc0: 00000008 00010034 b6f3e050 0000002d 00000000 00000001 00000001
00001000
bfe0: 00000001 beddce3c b6f54cf4 b6f55b28 20000010 00000000 ec846eac
80cafe65
Code: 0000bd08 00000000 00000000 b6720000 (1000f8d9)

--94eb2c1a69327f724d0568e33f5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recently upgraded my Yocto based project to Yocto 2.4.2,=
 and I encountered a problem when building my custom kernel for an AT91 SAM=
A5D3X platform. I&#39;ve been using an ARM Thumb2 kernel for a while succes=
sfully until this release. It appears that the issue stems from the change =
to binutils version 2.29.1.<div><br></div><div>Here&#39;s a good descriptio=
n of the problem:</div><div><a href=3D"https://patchwork.kernel.org/patch/1=
0072695/">https://patchwork.kernel.org/patch/10072695/</a><br></div><div><b=
r></div><div>I tried out their test script, and it flagged the arm-poky-lin=
ux-gnueabi- toolchain built by Yocto 2.4.2 as being buggy. Has anyone else =
encountered this problem and figured out a way around it without disabling =
Thumb compilation of the kernel?</div><div><br></div><div>Thanks,</div><div=
>Chris</div><div><br></div><div>The bug showed up in my kernel with the fol=
lowing oops at kernel boot:</div><div><div>Internal error: Oops - undefined=
 instruction: 0 [#1] PREEMPT THUMB2</div><div>Modules linked in:</div><div>=
CPU: 0 PID: 1 Comm: init Not tainted 4.9.91-custom #53</div><div>Hardware n=
ame: Atmel SAMA5</div><div>task: df448000 task.stack: df44a000</div><div>PC=
 is at ret_fast_syscall+0x2/0x54</div><div>LR is at SyS_brk+0xe9/0x104</div=
><div>pc : [&lt;c0105e62&gt;]=C2=A0 =C2=A0 lr : [&lt;c016bca1&gt;]=C2=A0 =
=C2=A0 psr: 60000013</div><div>sp : df44bfa8=C2=A0 ip : 50c5387d=C2=A0 fp :=
 00001000</div><div>r10: 00000000=C2=A0 r9 : df44a000=C2=A0 r8 : c0106044</=
div><div>r7 : 0000002d=C2=A0 r6 : b6f3e050=C2=A0 r5 : 00010034=C2=A0 r4 : 0=
0000008</div><div>r3 : df448000=C2=A0 r2 : ffff0001=C2=A0 r1 : 00000000=C2=
=A0 r0 : 00bda000</div><div>Flags: nZCv=C2=A0 IRQs on=C2=A0 FIQs on=C2=A0 M=
ode SVC_32=C2=A0 ISA ARM=C2=A0 Segment none</div><div>Control: 50c5387d=C2=
=A0 Table: 3ec84059=C2=A0 DAC: 00000051</div><div>Process init (pid: 1, sta=
ck limit =3D 0xdf44a210)</div><div>Stack: (0xdf44bfa8 to 0xdf44c000)</div><=
div>bfa0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A000000008 00010034 00000000 00000001 beddcfb8 00000000</div><div>bfc0: 00=
000008 00010034 b6f3e050 0000002d 00000000 00000001 00000001 00001000</div>=
<div>bfe0: 00000001 beddce3c b6f54cf4 b6f55b28 20000010 00000000 ec846eac 8=
0cafe65</div><div>Code: 0000bd08 00000000 00000000 b6720000 (1000f8d9)</div=
></div><div><br></div></div>

--94eb2c1a69327f724d0568e33f5e--
