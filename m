Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8027DC433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 20:13:24 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web09.18262.1633032802312142266
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 13:13:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=WwA6LYNE;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=References:To:Cc:In-Reply-To:Date:Subject:
	Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BgdIYnQGD2OCKYSPAVQi04dcU1KsbbgaLIp+vqLhMSk=; b=WwA6LYNEdJogbQFiD+T+/SG7yz
	YoLR67+y2FjfXJT02PTatQYCnFvOd5nYIgEHqYy3wrfefSsVGIWaqUbVczqiexHse3mhb9LcrUgrv
	w4m6ry5sN+mdydOfK99ki9d8c0FPsjxO3Wk94OZwEBB/FqNegYsOUC2LherRESJYvCguafp2vBPT9
	ZzadVUASX7MZluBmkUeMlZriW+9oZf4dGHfhNkcsFfHu9/0yjnV6RRtmn6tB8vdbGcjGtbv/3WDYw
	C3MqlRJ9KNjLgAIrrFeT7hDwqQtL20xQsdfGr8bzbZV+ATpagAd1kaV8kgIrO43l6DEL9jI6w+YeE
	1FS0punQ==;
Received: from durham.keylevel.com ([88.97.77.109]:3242 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mW2Qg-00035a-1a; Thu, 30 Sep 2021 21:13:17 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <1EDB53C4-7C4B-468E-8A5F-A3E21F9DA19A@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_66866B06-5233-47F1-8C26-BB9D5FFE1D27"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [yocto] Meta-respberrypi socketcan - how do I bring up the
 interfaces?
Date: Thu, 30 Sep 2021 21:13:16 +0100
In-Reply-To: 
 <CANnLRdgyY+AcyA_qFSaRLMMRhquB7BEj9QgnDuKNo=aURP2zFQ@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Stephen John Smoogen <smooge@gmail.com>
References: <0F37C22E-D0D7-4250-95F5-74F05E207F9B@keylevel.com>
 <CANnLRdgyY+AcyA_qFSaRLMMRhquB7BEj9QgnDuKNo=aURP2zFQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mW2Qg-00035a-1a
X-4UH-MailScanner: Found to be clean
X-4UH-MailScanner-SpamCheck: 
X-4UH-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hs013.4uh.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hs013.4uh.net: authenticated_id:
 opensource@keylevel.com
X-Authenticated-Sender: hs013.4uh.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 20:13:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54922


--Apple-Mail=_66866B06-5233-47F1-8C26-BB9D5FFE1D27
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Stephen,

I managed to miss some of the output to ip -s -d link show can0, which =
should have shown:

3: can0: <NOARP,ECHO> mtu 16 qdisc noop state DOWN mode DEFAULT group =
default qlen 10
    link/can  promiscuity 0 minmtu 0 maxmtu 0=20
    can state STOPPED restart-ms 0=20
	  bitrate 1000000 sample-point 0.750=20
	  tq 125 prop-seg 2 phase-seg1 3 phase-seg2 2 sjw 1
	  mcp251x: tseg1 3..16 tseg2 2..8 sjw 1..4 brp 1..64 brp-inc 1
	  clock 8000000=20
	  re-started bus-errors arbit-lost error-warn error-pass bus-off
	  0          0          0          0          0          0       =
  numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535=20
    RX: bytes  packets  errors  dropped missed  mcast  =20
    0          0        0       0       0       0      =20
    TX: bytes  packets  errors  dropped carrier collsns=20
    0          0        0       0       0       0      =20

This shows =E2=80=9CDOWN=E2=80=9D as well as =E2=80=9CSTOPPED=E2=80=9D, =
and is different because I have found that I can set the bitrate using:

ip link set can0 type can bitrate 1000000

Note that this does not include =E2=80=98up=E2=80=99 as that is what was =
causing the SSH session to stop responding.

However, any attempt to bring it up:

ifconfig can0 up

stops the SSH session again. If I set a second connection up first and =
run =E2=80=98ps=E2=80=99, I can see:

  480 root      2140 D    ifconfig can0 up
  481 root         0 DW   [irq/65-spi0.1]
  482 root         0 IW<  [mcp251x_wq]

So it=E2=80=99s stuck in an uninterruptible sleep (which explains the =
ssh session behaviour)!

The output of dmesg shows:

[  735.196538] INFO: task irq/65-spi0.1:481 blocked for more than 122 =
seconds.
[  735.196559]       Tainted: G         C        5.10.31-v7l #1
[  735.196578] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" =
disables this message.
[  735.196598] task:irq/65-spi0.1   state:D stack:    0 pid:  481 ppid:  =
   2 flags:0x00000000
[  735.196634] Backtrace:=20
[  735.196671] [<c0ca4808>] (__schedule) from [<c0ca523c>] =
(schedule+0x6c/0xe0)
[  735.196696]  r10:c2e286b8 r9:00000000 r8:c1952000 r7:00000002 =
r6:c1953e4c r5:c1952000
[  735.196717]  r4:c2e35d00
[  735.196742] [<c0ca51d0>] (schedule) from [<c0ca56ac>] =
(schedule_preempt_disabled+0x18/0x1c)
[  735.196763]  r5:c1952000 r4:c2e286b4
[  735.196789] [<c0ca5694>] (schedule_preempt_disabled) from =
[<c0ca6d9c>] (__mutex_lock.constprop.0+0x2e0/0x58c)
[  735.196816] [<c0ca6abc>] (__mutex_lock.constprop.0) from [<c0ca7164>] =
(__mutex_lock_slowpath+0x1c/0x20)
[  735.196840]  r10:ffffe000 r9:c2e28000 r8:c30491c0 r7:c2a3f400 =
r6:c30491e4 r5:c2e285c0
[  735.196861]  r4:c2e286b4
[  735.196885] [<c0ca7148>] (__mutex_lock_slowpath) from [<c0ca71c4>] =
(mutex_lock+0x5c/0x60)
[  735.196915] [<c0ca7168>] (mutex_lock) from [<bf05ab60>] =
(mcp251x_can_ist+0x54/0x434 [mcp251x])
[  735.196937]  r5:c2e285c0 r4:c30491c0
[  735.196969] [<bf05ab0c>] (mcp251x_can_ist [mcp251x]) from =
[<c02975c8>] (irq_thread_fn+0x2c/0x8c)
[  735.196994]  r10:ffffe000 r9:c029759c r8:c30491c0 r7:c270cb00 =
r6:c30491e4 r5:c270cb00
[  735.197014]  r4:c30491c0
[  735.197041] [<c029759c>] (irq_thread_fn) from [<c02978d4>] =
(irq_thread+0x1e0/0x2b4)
[  735.197064]  r7:c270cb00 r6:c30491e4 r5:c1952000 r4:00000000
[  735.197091] [<c02976f4>] (irq_thread) from [<c02486dc>] =
(kthread+0x168/0x16c)
[  735.197116]  r10:c1925c3c r9:c30491c0 r8:c02976f4 r7:c1952000 =
r6:00000000 r5:c18cfe00
[  735.197136]  r4:c316fd80
[  735.197161] [<c0248574>] (kthread) from [<c020010c>] =
(ret_from_fork+0x14/0x28)
[  735.197182] Exception stack(0xc1953fb0 to 0xc1953ff8)
[  735.197205] 3fa0:                                     00000000 =
00000000 00000000 00000000
[  735.197228] 3fc0: 00000000 00000000 00000000 00000000 00000000 =
00000000 00000000 00000000
[  735.197251] 3fe0: 00000000 00000000 00000000 00000000 00000013 =
00000000
[  735.197276]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 =
r6:00000000 r5:c0248574
[  735.197296]  r4:c18cfe00

I think this means the driver is stuck in a wait loop. No idea (yet) on =
how to work this one out ;-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!

> On 30 Sep 2021, at 13:16, Stephen John Smoogen <smooge@gmail.com> =
wrote:
>=20
> On Thu, 30 Sept 2021 at 05:21, Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>> I am trying to get a Waveshare CAN interface[1] running on an RPi4 =
using meta-raspberrypi with hardknott.
>>=20
>=20
> I am looking at getting one of these so do not have final answers.
> However looking at
> http://www.port.de/cgi-bin/CAN/CanFaqErrors
> =
https://stackoverflow.com/questions/64892746/socketcan-device-state-stoppe=
d
> https://www.can-cia.org/can-knowledge/canopen/network-management/
>=20
> The STOPPED state indicates that the device is detecting some sort of
> error and can not continue. My guess is that the iproute2 command
> tried to bring things up and found the bus in a non-workable state or
> too many errors. For other buses this could be due to non-termination
> (aka is the CAN bus connected to anything?) For some buses they have a
> 'self-termination' if the leads do not have the voltages/resistance on
> the end. Others will fail (like removing the end terminator on a
> thinwire ethernet network or not having a good loop on one of the
> RS422? networks (memory is fuzzy if this is the one or it was a
> different one))
>=20
> Sorry I can't be of more help.
>=20
>> I have added ENABLE_SPI_BUS =3D =E2=80=9C1=E2=80=9D and =
ENABLE_DUAL_CAN =3D =E2=80=9C1=E2=80=9D to my local.conf and see the =
following at boot:
>>=20
>> [    2.858284] CAN device driver interface
>> [    2.879431] mcp251x spi0.1 can0: MCP2515 successfully initialized.
>> [    2.891019] mcp251x spi0.0 can1: MCP2515 successfully initialized.
>> [  176.170231] can: controller area network core
>> [  176.178987] can: raw protocol
>>=20
>> So, the interfaces are detected.
>>=20
>> However, I cannot bring the interfaces up. I am expecting to use =
something like:
>>=20
>>  ip link set can0 up type can bitrate 1000000
>>  ifconfig can0 up
>>=20
>> But that results in :
>>=20
>>  ip: either "dev" is duplicate, or "type" is garbage
>>=20
>> This appears to be due to the =E2=80=98ip=E2=80=99 command not =
working with Busybox, so I tried adding iproute2 to the image, but the =
command then hangs the system.
>>=20
>> I have tried skipping the =E2=80=98ip=E2=80=99 command, but ifconfig =
then reports:
>>=20
>>  ifconfig: SIOCSIFFLAGS: Invalid argument
>>=20
>> I can get some information for the interface:
>>=20
>>  ip -s -d link show can0
>>    link/can  promiscuity 0 minmtu 0 maxmtu 0
>>    can state STOPPED restart-ms 0
>>          mcp251x: tseg1 3..16 tseg2 2..8 sjw 1..4 brp 1..64 brp-inc 1
>>          clock 8000000
>>          re-started bus-errors arbit-lost error-warn error-pass =
bus-off
>>          0          0          0          0          0          0     =
    numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535
>>    RX: bytes  packets  errors  dropped missed  mcast
>>    0          0        0       0       0       0
>>    TX: bytes  packets  errors  dropped carrier collsns
>>    0          0        0       0       0       0
>>=20
>> What do I need to do to bring the interface up?
>>=20
>> Chris
>>=20
>> =E2=80=94
>>=20
>> [1] https://www.waveshare.com/wiki/2-CH_CAN_HAT
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>>=20
>=20
>=20
> --=20
> Stephen J Smoogen.
> I've seen things you people wouldn't believe. Flame wars in
> sci.astro.orion. I have seen SPAM filters overload because of Godwin's
> Law. All those moments will be lost in time... like posts on a BBS...
> time to shutdown -h now.
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54916): =
https://lists.yoctoproject.org/g/yocto/message/54916
> Mute This Topic: https://lists.yoctoproject.org/mt/85969475/3617534
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[opensource@keylevel.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_66866B06-5233-47F1-8C26-BB9D5FFE1D27
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Stephen,<div class=3D""><br class=3D""></div><div class=3D"">I managed =
to miss some of the output to <font face=3D"Courier New" class=3D"">ip =
-s -d link show can0</font>, which should have shown:</div><div =
class=3D""><br class=3D""></div><div class=3D""><font face=3D"Courier =
New" class=3D"">3: can0: &lt;NOARP,ECHO&gt; mtu 16 qdisc noop state DOWN =
mode DEFAULT group default qlen 10<br class=3D"">&nbsp; =
&nbsp;&nbsp;link/can&nbsp;&nbsp;promiscuity 0 minmtu 0 maxmtu 0&nbsp;<br =
class=3D"">&nbsp; &nbsp;&nbsp;can state STOPPED restart-ms 0&nbsp;<br =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>&nbsp;&nbsp;bitrate 1000000 sample-point 0.750&nbsp;<br =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>&nbsp;&nbsp;tq 125 prop-seg 2 phase-seg1 3 phase-seg2 2 sjw 1<br =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>&nbsp;&nbsp;mcp251x: tseg1 3..16 tseg2 2..8 sjw 1..4 brp 1..64 =
brp-inc 1<br class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>&nbsp;&nbsp;clock =
8000000&nbsp;<br class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>&nbsp;&nbsp;re-started bus-errors =
arbit-lost error-warn error-pass bus-off<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>&nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;numtxqueues 1&nbsp;numrxqueues 1 gso_max_size 65536 =
gso_max_segs 65535&nbsp;<br class=3D"">&nbsp; &nbsp;&nbsp;RX: =
bytes&nbsp;&nbsp;packets&nbsp;&nbsp;errors&nbsp;&nbsp;dropped =
missed&nbsp;&nbsp;mcast&nbsp; &nbsp;<br class=3D"">&nbsp; =
&nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; =
&nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; =
&nbsp;<br class=3D"">&nbsp; &nbsp;&nbsp;TX: =
bytes&nbsp;&nbsp;packets&nbsp;&nbsp;errors&nbsp;&nbsp;dropped carrier =
collsns&nbsp;<br class=3D"">&nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; =
&nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;0&nbsp;&nbsp; &nbsp; =
&nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp;<br class=3D""></font><br =
class=3D""></div><div class=3D"">This shows =E2=80=9CDOWN=E2=80=9D as =
well as =E2=80=9CSTOPPED=E2=80=9D, and is different because I have found =
that I can set the bitrate using:</div><div class=3D""><br =
class=3D""></div><div class=3D""><font face=3D"Courier New" class=3D"">ip =
link set can0 type can bitrate 1000000</font></div><div class=3D""><br =
class=3D""></div><div class=3D"">Note that this does not include =
=E2=80=98up=E2=80=99 as that is what was causing the SSH session to stop =
responding.</div><div class=3D""><br class=3D""></div><div =
class=3D"">However, any attempt to bring it up:</div><div class=3D""><br =
class=3D""></div><div class=3D""><font face=3D"Courier New" =
class=3D"">ifconfig can0 up</font></div><div class=3D""><br =
class=3D""></div><div class=3D"">stops the SSH session again. If I set a =
second connection up first and run =E2=80=98ps=E2=80=99, I can =
see:</div><div class=3D""><br class=3D""></div><div class=3D""><font =
face=3D"Courier New" class=3D"">&nbsp;&nbsp;480 root&nbsp; &nbsp; =
&nbsp;&nbsp;2140 D&nbsp; &nbsp;&nbsp;ifconfig can0 up</font></div><div =
class=3D""><font face=3D"Courier New" class=3D"">&nbsp;&nbsp;481 =
root&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0 =
DW&nbsp;&nbsp;&nbsp;[irq/65-spi0.1]<br class=3D"">&nbsp;&nbsp;482 =
root&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0 =
IW&lt;&nbsp;&nbsp;[mcp251x_wq]<br class=3D""></font><br =
class=3D""></div><div class=3D"">So it=E2=80=99s stuck in an =
uninterruptible sleep (which explains the ssh session =
behaviour)!</div><div class=3D""><br class=3D""></div><div class=3D"">The =
output of dmesg shows:</div><div class=3D""><br class=3D""></div><div =
class=3D""><font face=3D"Courier New" class=3D"">[&nbsp;&nbsp;735.196538] =
INFO: task irq/65-spi0.1:481 blocked for more than 122 seconds.<br =
class=3D"">[&nbsp;&nbsp;735.196559]&nbsp;&nbsp; &nbsp; =
&nbsp;&nbsp;Tainted: G&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;C&nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;5.10.31-v7l #1<br =
class=3D"">[&nbsp;&nbsp;735.196578] "echo 0 &gt; =
/proc/sys/kernel/hung_task_timeout_secs" disables this message.<br =
class=3D"">[&nbsp;&nbsp;735.196598] =
task:irq/65-spi0.1&nbsp;&nbsp;&nbsp;state:D stack:&nbsp; &nbsp;&nbsp;0 =
pid:&nbsp;&nbsp;481 ppid:&nbsp;&nbsp; =
&nbsp;&nbsp;2&nbsp;flags:0x00000000<br class=3D"">[&nbsp;&nbsp;735.196634]=
 Backtrace:&nbsp;<br class=3D"">[&nbsp;&nbsp;735.196671] =
[&lt;c0ca4808&gt;] (__schedule) from [&lt;c0ca523c&gt;] =
(schedule+0x6c/0xe0)<br =
class=3D"">[&nbsp;&nbsp;735.196696]&nbsp;&nbsp;r10:c2e286b8 r9:00000000 =
r8:c1952000 r7:00000002 r6:c1953e4c r5:c1952000<br =
class=3D"">[&nbsp;&nbsp;735.196717]&nbsp;&nbsp;r4:c2e35d00<br =
class=3D"">[&nbsp;&nbsp;735.196742] [&lt;c0ca51d0&gt;] (schedule) from =
[&lt;c0ca56ac&gt;]&nbsp;(schedule_preempt_disabled+0x18/0x1c)<br =
class=3D"">[&nbsp;&nbsp;735.196763]&nbsp;&nbsp;r5:c1952000 =
r4:c2e286b4<br class=3D"">[&nbsp;&nbsp;735.196789] [&lt;c0ca5694&gt;] =
(schedule_preempt_disabled) from =
[&lt;c0ca6d9c&gt;]&nbsp;(__mutex_lock.constprop.0+0x2e0/0x58c)<br =
class=3D"">[&nbsp;&nbsp;735.196816] [&lt;c0ca6abc&gt;] =
(__mutex_lock.constprop.0) from =
[&lt;c0ca7164&gt;]&nbsp;(__mutex_lock_slowpath+0x1c/0x20)<br =
class=3D"">[&nbsp;&nbsp;735.196840]&nbsp;&nbsp;r10:ffffe000 r9:c2e28000 =
r8:c30491c0 r7:c2a3f400 r6:c30491e4 r5:c2e285c0<br =
class=3D"">[&nbsp;&nbsp;735.196861]&nbsp;&nbsp;r4:c2e286b4<br =
class=3D"">[&nbsp;&nbsp;735.196885] [&lt;c0ca7148&gt;] =
(__mutex_lock_slowpath) from =
[&lt;c0ca71c4&gt;]&nbsp;(mutex_lock+0x5c/0x60)<br =
class=3D"">[&nbsp;&nbsp;735.196915] [&lt;c0ca7168&gt;] (mutex_lock) from =
[&lt;bf05ab60&gt;] (mcp251x_can_ist+0x54/0x434&nbsp;[mcp251x])<br =
class=3D"">[&nbsp;&nbsp;735.196937]&nbsp;&nbsp;r5:c2e285c0 =
r4:c30491c0<br class=3D"">[&nbsp;&nbsp;735.196969] [&lt;bf05ab0c&gt;] =
(mcp251x_can_ist [mcp251x]) from =
[&lt;c02975c8&gt;]&nbsp;(irq_thread_fn+0x2c/0x8c)<br =
class=3D"">[&nbsp;&nbsp;735.196994]&nbsp;&nbsp;r10:ffffe000 r9:c029759c =
r8:c30491c0 r7:c270cb00 r6:c30491e4 r5:c270cb00<br =
class=3D"">[&nbsp;&nbsp;735.197014]&nbsp;&nbsp;r4:c30491c0<br =
class=3D"">[&nbsp;&nbsp;735.197041] [&lt;c029759c&gt;] (irq_thread_fn) =
from [&lt;c02978d4&gt;] (irq_thread+0x1e0/0x2b4)<br =
class=3D"">[&nbsp;&nbsp;735.197064]&nbsp;&nbsp;r7:c270cb00 r6:c30491e4 =
r5:c1952000 r4:00000000<br class=3D"">[&nbsp;&nbsp;735.197091] =
[&lt;c02976f4&gt;] (irq_thread) from [&lt;c02486dc&gt;] =
(kthread+0x168/0x16c)<br =
class=3D"">[&nbsp;&nbsp;735.197116]&nbsp;&nbsp;r10:c1925c3c r9:c30491c0 =
r8:c02976f4 r7:c1952000 r6:00000000 r5:c18cfe00<br =
class=3D"">[&nbsp;&nbsp;735.197136]&nbsp;&nbsp;r4:c316fd80<br =
class=3D"">[&nbsp;&nbsp;735.197161] [&lt;c0248574&gt;] (kthread) from =
[&lt;c020010c&gt;] (ret_from_fork+0x14/0x28)<br =
class=3D"">[&nbsp;&nbsp;735.197182] Exception stack(0xc1953fb0 to =
0xc1953ff8)<br class=3D"">[&nbsp;&nbsp;735.197205] 3fa0:&nbsp;&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;00000000 00000000 =
00000000&nbsp;00000000<br class=3D"">[&nbsp;&nbsp;735.197228] 3fc0: =
00000000 00000000 00000000 00000000 00000000 00000000 =
00000000&nbsp;00000000<br class=3D"">[&nbsp;&nbsp;735.197251] 3fe0: =
00000000 00000000 00000000 00000000 00000013 00000000<br =
class=3D"">[&nbsp;&nbsp;735.197276]&nbsp;&nbsp;r10:00000000 r9:00000000 =
r8:00000000 r7:00000000 r6:00000000 r5:c0248574<br =
class=3D"">[&nbsp;&nbsp;735.197296]&nbsp;&nbsp;r4:c18cfe00<br =
class=3D""></font><br class=3D""></div><div class=3D"">I think this =
means the driver is stuck in a wait loop. No idea (yet) on how to work =
this one out ;-)</div><div class=3D""><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; font-family: Helvetica; font-variant-ligatures: normal; =
font-variant-east-asian: normal; font-variant-position: normal; =
line-height: normal; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none;"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div class=3D"">--</div><div class=3D""><br=
 class=3D""></div><div class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 30 Sep 2021, at 13:16, Stephen John Smoogen &lt;<a =
href=3D"mailto:smooge@gmail.com" class=3D"">smooge@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">On Thu, 30 Sept 2021 at 05:21, Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">I am =
trying to get a Waveshare CAN interface[1] running on an RPi4 using =
meta-raspberrypi with hardknott.<br class=3D""><br =
class=3D""></blockquote><br class=3D"">I am looking at getting one of =
these so do not have final answers.<br class=3D"">However looking at<br =
class=3D""><a href=3D"http://www.port.de/cgi-bin/CAN/CanFaqErrors" =
class=3D"">http://www.port.de/cgi-bin/CAN/CanFaqErrors</a><br =
class=3D"">https://stackoverflow.com/questions/64892746/socketcan-device-s=
tate-stopped<br =
class=3D"">https://www.can-cia.org/can-knowledge/canopen/network-managemen=
t/<br class=3D""><br class=3D"">The STOPPED state indicates that the =
device is detecting some sort of<br class=3D"">error and can not =
continue. My guess is that the iproute2 command<br class=3D"">tried to =
bring things up and found the bus in a non-workable state or<br =
class=3D"">too many errors. For other buses this could be due to =
non-termination<br class=3D"">(aka is the CAN bus connected to =
anything?) For some buses they have a<br class=3D"">'self-termination' =
if the leads do not have the voltages/resistance on<br class=3D"">the =
end. Others will fail (like removing the end terminator on a<br =
class=3D"">thinwire ethernet network or not having a good loop on one of =
the<br class=3D"">RS422? networks (memory is fuzzy if this is the one or =
it was a<br class=3D"">different one))<br class=3D""><br class=3D"">Sorry =
I can't be of more help.<br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">I have added ENABLE_SPI_BUS =3D =E2=80=9C1=E2=80=9D=
 and ENABLE_DUAL_CAN =3D =E2=80=9C1=E2=80=9D to my local.conf and see =
the following at boot:<br class=3D""><br class=3D"">[ =
&nbsp;&nbsp;&nbsp;2.858284] CAN device driver interface<br class=3D"">[ =
&nbsp;&nbsp;&nbsp;2.879431] mcp251x spi0.1 can0: MCP2515 successfully =
initialized.<br class=3D"">[ &nbsp;&nbsp;&nbsp;2.891019] mcp251x spi0.0 =
can1: MCP2515 successfully initialized.<br class=3D"">[ =
&nbsp;176.170231] can: controller area network core<br class=3D"">[ =
&nbsp;176.178987] can: raw protocol<br class=3D""><br class=3D"">So, the =
interfaces are detected.<br class=3D""><br class=3D"">However, I cannot =
bring the interfaces up. I am expecting to use something like:<br =
class=3D""><br class=3D""> &nbsp;ip link set can0 up type can bitrate =
1000000<br class=3D""> &nbsp;ifconfig can0 up<br class=3D""><br =
class=3D"">But that results in :<br class=3D""><br class=3D""> &nbsp;ip: =
either "dev" is duplicate, or "type" is garbage<br class=3D""><br =
class=3D"">This appears to be due to the =E2=80=98ip=E2=80=99 command =
not working with Busybox, so I tried adding iproute2 to the image, but =
the command then hangs the system.<br class=3D""><br class=3D"">I have =
tried skipping the =E2=80=98ip=E2=80=99 command, but ifconfig then =
reports:<br class=3D""><br class=3D""> &nbsp;ifconfig: SIOCSIFFLAGS: =
Invalid argument<br class=3D""><br class=3D"">I can get some information =
for the interface:<br class=3D""><br class=3D""> &nbsp;ip -s -d link =
show can0<br class=3D""> &nbsp;&nbsp;&nbsp;link/can &nbsp;promiscuity 0 =
minmtu 0 maxmtu 0<br class=3D""> &nbsp;&nbsp;&nbsp;can state STOPPED =
restart-ms 0<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mcp251x: tseg1 =
3..16 tseg2 2..8 sjw 1..4 brp 1..64 brp-inc 1<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clock 8000000<br =
class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;re-started =
bus-errors arbit-lost error-warn error-pass bus-off<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numtxqueues 1 =
numrxqueues 1 gso_max_size 65536 gso_max_segs 65535<br class=3D""> =
&nbsp;&nbsp;&nbsp;RX: bytes &nbsp;packets &nbsp;errors &nbsp;dropped =
missed &nbsp;mcast<br class=3D""> &nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br class=3D""> =
&nbsp;&nbsp;&nbsp;TX: bytes &nbsp;packets &nbsp;errors &nbsp;dropped =
carrier collsns<br class=3D""> &nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br class=3D""><br class=3D"">What =
do I need to do to bring the interface up?<br class=3D""><br =
class=3D"">Chris<br class=3D""><br class=3D"">=E2=80=94<br class=3D""><br =
class=3D"">[1] https://www.waveshare.com/wiki/2-CH_CAN_HAT<br =
class=3D""><br class=3D"">--<br class=3D""><br class=3D"">Chris Tapp<br =
class=3D"">opensource@keylevel.com<br class=3D"">www.keylevel.com<br =
class=3D""><br class=3D""><br class=3D""><br class=3D""><br =
class=3D""></blockquote><br class=3D""><br class=3D"">-- <br =
class=3D"">Stephen J Smoogen.<br class=3D"">I've seen things you people =
wouldn't believe. Flame wars in<br class=3D"">sci.astro.orion. I have =
seen SPAM filters overload because of Godwin's<br class=3D"">Law. All =
those moments will be lost in time... like posts on a BBS...<br =
class=3D"">time to shutdown -h now.<br class=3D""><br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
class=3D"">Links: You receive all messages sent to this group.<br =
class=3D"">View/Reply Online (#54916): =
https://lists.yoctoproject.org/g/yocto/message/54916<br class=3D"">Mute =
This Topic: https://lists.yoctoproject.org/mt/85969475/3617534<br =
class=3D"">Group Owner: yocto+owner@lists.yoctoproject.org<br =
class=3D"">Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[opensource@keylevel.com]<br class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-<br class=3D""><br class=3D""></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_66866B06-5233-47F1-8C26-BB9D5FFE1D27--

