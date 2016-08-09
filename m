Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB664E00AD8; Tue,  9 Aug 2016 12:51:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAFC8E0096A
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 12:51:55 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id n59so35792678uan.2
	for <yocto@yoctoproject.org>; Tue, 09 Aug 2016 12:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=flmw694Iqh2EdgpTclXg69SKyInNEvWRBkBXTO5ue6E=;
	b=skZ2EKwWL1aADFVTMgCcSbNc5MiNdMiGIjkpVcFDZWIDyrl4uFf0lzcgBWapjXLQww
	vx4ylz+ZJxcE9tIFnp6L/tvHVw+Ve3+201E7B8bWesGXCAVbojS6okcphUk0AT8rwdm6
	5N5Wd3dm8R8HPKt3VIeA9veviOl/E9lQacR4+ZZ7mz7Wa8TSNyVEo3pac1KtHCu9yIVh
	nVK/YZ+y6ywGbTfPMMJK93wZY6sG+A86WyXv0NL7vzH1d3NMxH3pvHRBPWMOJ9D9NJGT
	aiHyJNFbCsxfA3C3JqMBYwmTXnpzbsMpNJ8QIkGNXrUh7e69oPWzA5iXc+JAa4LMDH3L
	uonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=flmw694Iqh2EdgpTclXg69SKyInNEvWRBkBXTO5ue6E=;
	b=WNNqzzxoOFoaD7Cfepr8WVQpl7B+Mkek+dS4/qw0ViHQFoa6SSoRa3z7GrL4SlWuzI
	l4hcyxF4cX1yVFGHKmHYufPpPfAUIN6s7l0nrGKtI+uxda53Gx1m+x9+1pKl+ytKstnB
	vHoQMs2hA7mul4RiCdq+IzghVqGCbrWin2a80Q+gYo5hZcZAcq7IRQzvMKQGHYx+WK/F
	TVxWAdZ45DkGP1OopIGN4bqKSyR+nOJYVAx7iMUM+Atwo+PJOy1RAaUJMbr76dolrdyC
	Qn5r3sqrIyRULOcGhh5WvdDcptvy3utNkyJh2csPHiK2e9rOw6lPFs8ig3NjR95H8w4K
	8xKA==
X-Gm-Message-State: AEkoouvzWiimQYs5AbQBiFtv1d3P4i+iLhQdNJ9ypd3H+XYCZLDklRioGl3xJcjd4nvw40yQ0q97p1oDMLBALg==
X-Received: by 10.31.163.78 with SMTP id m75mr18402vke.115.1470772314373; Tue,
	09 Aug 2016 12:51:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.179.76 with HTTP; Tue, 9 Aug 2016 12:51:53 -0700 (PDT)
From: Paul Knopf <pknopf@medxchange.com>
Date: Tue, 9 Aug 2016 15:51:53 -0400
Message-ID: <CABfz71fWnF9_=eED8YTp5VceYEU_tKrTOCVNC9esnf4L81YBig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Power button not shutting down the OS
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
X-List-Received-Date: Tue, 09 Aug 2016 19:51:56 -0000
Content-Type: multipart/alternative; boundary=001a1142e67a581b280539a8dda4

--001a1142e67a581b280539a8dda4
Content-Type: text/plain; charset=UTF-8

Hey guys,

I am having an issue with trying to get my power button (i.MX6) to shutdown
the OS.

My kernel has no configuration options for acpi, and acpid gives me the
following error:

-------
root@seco-uq7-dl-256mbx4:~# /usr/sbin/acpid
RTNETLINK1 answers: No such file or directory
acpid: error talking to the kernel via netlink
-------

So, my guess is that I have to use udev. If I use udevadm monitor, no
events get raised when I press the power switch.

After digging through the kernel source code (Linux seco-uq7-dl-256mbx4
3.0.101 #1 SMP PREEMPT Thu Jun 2 10:49:45 PDT 2016 armv7l GNU/Linux) and
the imx6 drivers, I finally found something that may help me.

1. I found the power button driver in the OS at
/sys/bus/platform/drivers/imx_seco_pwrb.

2. Some more info that may be helpful.

root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/power_button/enable
disable
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/power_button/en_flash
disable
root@seco-uq7-dl-256mbx4:~# ls /sys/bus/platform/drivers/imx_seco_pwrb/
bind    uevent  unbind
3. I found /proc/ectrl/events/event_state/power_button which stores the
current state of the power button.

root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
active
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
active
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
active
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
inactive
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
inactive
root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
inactive
My embedded operating system is using sysvinit, if that helps.

I effectively need the power button to perform a shutdown -h now. Any ideas
why it isn't currently?

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a1142e67a581b280539a8dda4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey guys,</div><div><br></div><div>I am having an iss=
ue with trying to get my power button (i.MX6) to shutdown the OS.</div><div=
><br></div><div><div>My kernel has no configuration options for acpi, and a=
cpid gives me the following error:</div><div><br></div><div>-------<br></di=
v><div>root@seco-uq7-dl-256mbx4:~# /usr/sbin/acpid</div><div>RTNETLINK1 ans=
wers: No such file or directory</div><div>acpid: error talking to the kerne=
l via netlink</div><div>-------</div><div><br></div><div>So, my guess is th=
at I have to use udev. If I use udevadm monitor, no events get raised when =
I press the power switch.</div><div><br></div><div>After digging through th=
e kernel source code (Linux seco-uq7-dl-256mbx4 3.0.101 #1 SMP PREEMPT Thu =
Jun 2 10:49:45 PDT 2016 armv7l GNU/Linux) and the imx6 drivers, I finally f=
ound something that may help me.</div><div><br></div><div>1. I found the po=
wer button driver in the OS at /sys/bus/platform/drivers/imx_seco_pwrb.</di=
v><div><br></div><div>2. Some more info that may be helpful.</div><div><br>=
</div><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/power_button/=
enable</div><div>disable</div><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ec=
trl/events/power_button/en_flash</div><div>disable</div><div>root@seco-uq7-=
dl-256mbx4:~# ls /sys/bus/platform/drivers/imx_seco_pwrb/</div><div>bind =
=C2=A0 =C2=A0uevent =C2=A0unbind</div><div>3. I found /proc/ectrl/events/ev=
ent_state/power_button which stores the current state of the power button.<=
/div><div><br></div><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events=
/event_state/power_button</div><div>active</div><div>root@seco-uq7-dl-256mb=
x4:~# cat /proc/ectrl/events/event_state/power_button</div><div>active</div=
><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_=
button</div><div>active</div><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ect=
rl/events/event_state/power_button</div><div>inactive</div><div>root@seco-u=
q7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button</div><div>=
inactive</div><div>root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event=
_state/power_button</div><div>inactive</div><div>My embedded operating syst=
em is using sysvinit, if that helps.</div><div><br></div><div>I effectively=
 need the power button to perform a shutdown -h now. Any ideas why it isn&#=
39;t currently?</div></div><br clear=3D"all"><div><div class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,</div=
><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Change, Inc</d=
iv><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@m=
edxchange.com</a></div></div></div></div>
</div>

--001a1142e67a581b280539a8dda4--
