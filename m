Return-Path: <diwateprashant44@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1F6C982D7
	for <webhook@archiver.kernel.org>; Fri, 18 Sep 2026 18:25:46 +0000 (UTC)
Subject: [ANNOUNCE] NetHogs recipe for Yocto developers
To: yocto@lists.yoctoproject.org
From: "Prashant Divate" <diwateprashant44@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.43.241.30)
X-Originating-Platform: Windows Chrome 153
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Sep 2026 11:25:42 -0700
Message-ID: <MpO1.1789755942115620818.LIa9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7gYoLKxtJ74cWTmjF33c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2026 18:25:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66736

--7gYoLKxtJ74cWTmjF33c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have added a Yocto recipe for NetHogs to my meta-sirius layer.

NetHogs is a lightweight network monitoring utility that groups network
bandwidth usage by process/PID. It is useful when debugging unexpected
network activity on embedded Linux devices and identifying which applicatio=
n
is responsible for transmit/receive traffic.

The recipe is available here: https://github.com/prashantdivate/meta-sirius=
/tree/master/recipes-connectivity/nethogs

The recipe pulls NetHogs from the upstream repository and builds it with it=
s required dependencies such as libpcap and ncurses.

Typical use cases include:

- Finding which process is consuming network bandwidth
- Monitoring per-process TX/RX traffic
- Investigating unexpected background network activity
- Long-duration network usage debugging using NetHogs trace mode
- Debugging network usage on headless embedded Linux devices

I have also included a README alongside the recipe describing the common us=
e cases, runtime dependencies, and debugging examples.

Feedback, review comments, or suggestions for improving the recipe are welc=
ome.

Regards,
Prashant Divate

--7gYoLKxtJ74cWTmjF33c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,<br /><br />I have added a Yocto recipe for NetHogs to my meta-=
sirius layer.<br /><br />NetHogs is a lightweight network monitoring utilit=
y that groups network<br />bandwidth usage by process/PID. It is useful whe=
n debugging unexpected<br />network activity on embedded Linux devices and =
identifying which application<br />is responsible for transmit/receive traf=
fic.<br /><br />The recipe is available here: <a href=3D"https://github.com=
/prashantdivate/meta-sirius/tree/master/recipes-connectivity/nethogs" targe=
t=3D"_blank" rel=3D"noopener">https://github.com/prashantdivate/meta-sirius=
/tree/master/recipes-connectivity/nethogs</a><br /><br />The recipe pulls N=
etHogs from the upstream repository and builds it with its required depende=
ncies such as libpcap and ncurses.<br /><br />Typical use cases include:<br=
 /><br />- Finding which process is consuming network bandwidth<br />- Moni=
toring per-process TX/RX traffic<br />- Investigating unexpected background=
 network activity<br />- Long-duration network usage debugging using NetHog=
s trace mode<br />- Debugging network usage on headless embedded Linux devi=
ces<br /><br />I have also included a README alongside the recipe describin=
g the common use cases, runtime dependencies, and debugging examples.<br />=
<br />Feedback, review comments, or suggestions for improving the recipe ar=
e welcome.<br /><br />Regards,<br />Prashant Divate</div>

--7gYoLKxtJ74cWTmjF33c--

