Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AAAEB64D9
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 09:08:41 +0000 (UTC)
Subject: /dev/kmsg buffer overrun, some messages lost
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.124)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Jul 2023 02:08:36 -0700
Message-ID: <Egwb.1689152916203359586.bE54@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JjDFpHhoCrGFm5tAyiGs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 09:08:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60553

--JjDFpHhoCrGFm5tAyiGs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there...

Hope all are doing well

I'm dealing with the Yocto Hardknott version with the Linux kernel version =
5.10

Along with the default device driver packages, i have added external driver=
 packages for the Micrel KSZ8795, 4 port LAN switch support
I have also applied the patches for the Kconfig and Makefile to integrate t=
he drivers with the mainline kernel

For me, The driver working well and i got the all 4 LAN port working!

However, I'm facing the issue with the booting time!

As during the booting i got the following message continuous
---------------------------------------------------------------------------=
--------------------------------------

[=C2=A0 448.652491] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 449.112732] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 449.625573] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 449.641618] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 451.156241] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 451.182373] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 451.662724] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 451.732552] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

[=C2=A0 453.705702] systemd-journald[325]: /dev/kmsg buffer overrun, some m=
essages lost.

---------------------------------------------------------------------------=
-----------------------------------------------

From my side, i have updated the manuconfig as follows

CONFIG_LOG_BUF_SHIFT=3D19

CONFIG_LOG_CPU_MAX_BUF_SHIFT=3D14

CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=3D14

CONFIG_CONSOLE_LOGLEVEL_DEFAULT=3D3

CONFIG_CONSOLE_LOGLEVEL_QUIET=3D2

CONFIG_MESSAGE_LOGLEVEL_DEFAULT=3D2

apart from that, in bootargs i have updated, log_buf_len=3D65536

still, it's not working for me!

Apart from that, because of the buffer overrun,

Journal services taking too long time to start

here is the logs from the kernel

"A start job is running for the Journal service"

And over all it's increasing the boot time!

Can anyone help me here with the best solution

Thanks
Mahendra

--JjDFpHhoCrGFm5tAyiGs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello there...</p>
<p>Hope all are doing well&nbsp;<br /><br />I'm dealing with the Yocto Hard=
knott version with the Linux kernel version 5.10<br /><br />Along with the =
default device driver packages, i have added external driver packages for t=
he Micrel KSZ8795, 4 port LAN switch support&nbsp;<br />I have also applied=
 the patches for the Kconfig and Makefile to integrate the drivers with the=
 mainline kernel&nbsp;<br /><br />For me, The driver working well and i got=
 the all 4 LAN port working!<br /><br />However, I'm facing the issue with =
the booting time!<br /><br />As during the booting i got the following mess=
age continuous<br />-------------------------------------------------------=
----------------------------------------------------------</p>
<p>[&nbsp; 448.652491] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 449.112732] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 449.625573] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 449.641618] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 451.156241] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 451.182373] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 451.662724] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 451.732552] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p>[&nbsp; 453.705702] systemd-journald[325]: /dev/kmsg buffer overrun, som=
e messages lost.</p>
<p><br />------------------------------------------------------------------=
--------------------------------------------------------<br /><br />From my=
 side, i have updated the manuconfig as follows&nbsp;<br /><br /></p>
<p>CONFIG_LOG_BUF_SHIFT=3D19</p>
<p>CONFIG_LOG_CPU_MAX_BUF_SHIFT=3D14</p>
<p>CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=3D14</p>
<p>CONFIG_CONSOLE_LOGLEVEL_DEFAULT=3D3</p>
<p>CONFIG_CONSOLE_LOGLEVEL_QUIET=3D2</p>
<p>&nbsp;</p>
<p>CONFIG_MESSAGE_LOGLEVEL_DEFAULT=3D2<br /><br /><br />apart from that, in=
 bootargs i have updated,&nbsp;<span style=3D"color: #e6007e; background-co=
lor: #f9f9f9; font-family: Courier, 'monospace';">log_buf_len=3D65536</span=
></p>
<p>still, it's not working for me!<br /><br />Apart from that, because of t=
he buffer overrun,&nbsp;</p>
<p>Journal services taking too long time to start&nbsp;<br /><br />here is =
the logs from the kernel<br /><br />"A start job is running for the Journal=
 service"<br /><br />And over all it's increasing the boot time!</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Can anyone help me here with the best solution&nbsp;<br /><br />Thanks&n=
bsp;<br />Mahendra&nbsp;</p>

--JjDFpHhoCrGFm5tAyiGs--

