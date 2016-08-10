Return-Path: <dfldashgkv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E83E01026; Wed, 10 Aug 2016 00:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shiftee[at]eircom.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A71E00C81
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 00:28:54 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o80so7787818wme.0
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 00:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=pzmRgUxG3cj+XWNT3ppfO50/qd41deY414wi0U2ptgU=;
	b=F29q1a/MGKgjfCu5gzjSaDQy86y2indFbbURVSACPtLle5B52o6Y0+Ux3in35CSSE9
	peq5Z5RE598BqAq2vrQsTZSVH8xgOTNPLfVIqkZVD3qC5nAQjxBe3qh57Or4T8tuqKK/
	kYeWKBUEBjpXg15SlmmHnHreV5YXc37c2MAlUBUEbTmNUjmztYY8+wJA8a2+dweNwzU7
	5b10YFzNNXyrRvI6yL+vsnOr4rPPEAsiYLwcg9Du9nh4kcBAsrkF3JAsYR4onNqnSwIl
	eWBUglCntprSqfl2/7LvZecG1wGzobtVV259scz5BYZoOh8/1OVk56OBgSQfmQGZZXoY
	Ph9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=pzmRgUxG3cj+XWNT3ppfO50/qd41deY414wi0U2ptgU=;
	b=Zwaod5ZaUKNkBBuNyStwbHf5w1loTMirUwzCL+gTYFk2wm5R9XTYUT8CDUTpChfpeJ
	NZCoB0LTLBesIY7j2GO75BgVv65lFNWT3tcvGMH/ojiL4Gu4wqEJ6lz8/gV8Iqbsjtjj
	IE7l9x+k1WFTpQYxIG0Qg8MoEhTNMRr6hhTZBs5UFv22IaB9K3wJNtFIrBuGeTGojDNm
	bs17s6N8IdmgmkC3Yl7CzsVCPSegIV+qm3KeDL2F79gudHSOqwt/9PDs2j/mPHyg4tgT
	WW3tVSR1JYBxtuYMoEX11VQ6reCdgcIVcE7Z416Cdtdel0/V7/K7tJeTsrXG5v4PrSIb
	ORSg==
X-Gm-Message-State: AEkooutBkzs1BBwOqAwqoKNaBNg6TLEYYZ2nmZo45X3+cwxAP1EQvf0VJlR9uuhW8uHHuqCHiO4fM2xuKZu6Sg==
X-Received: by 10.194.15.130 with SMTP id x2mr2404812wjc.122.1470814133942;
	Wed, 10 Aug 2016 00:28:53 -0700 (PDT)
MIME-Version: 1.0
Sender: dfldashgkv@gmail.com
Received: by 10.28.187.135 with HTTP; Wed, 10 Aug 2016 00:28:53 -0700 (PDT)
In-Reply-To: <CABfz71fWnF9_=eED8YTp5VceYEU_tKrTOCVNC9esnf4L81YBig@mail.gmail.com>
References: <CABfz71fWnF9_=eED8YTp5VceYEU_tKrTOCVNC9esnf4L81YBig@mail.gmail.com>
From: "Mark O'Donovan" <shiftee@eircom.net>
Date: Wed, 10 Aug 2016 08:28:53 +0100
X-Google-Sender-Auth: ItE_XQMw9KM9D6YVK_RB2VlpugI
Message-ID: <CAJv4cO3fR=JeouMpuyG-H2TQ9f2CSi5WhusG7HetjmcDbxW-9Q@mail.gmail.com>
To: Paul Knopf <pknopf@medxchange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Power button not shutting down the OS
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
X-List-Received-Date: Wed, 10 Aug 2016 07:28:58 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 9, 2016 at 8:51 PM, Paul Knopf <pknopf@medxchange.com> wrote:
> Hey guys,
>
> I am having an issue with trying to get my power button (i.MX6) to shutdown
> the OS.
>
> My kernel has no configuration options for acpi, and acpid gives me the
> following error:
>
> -------
> root@seco-uq7-dl-256mbx4:~# /usr/sbin/acpid
> RTNETLINK1 answers: No such file or directory
> acpid: error talking to the kernel via netlink
> -------
>
> So, my guess is that I have to use udev. If I use udevadm monitor, no events
> get raised when I press the power switch.
>
> After digging through the kernel source code (Linux seco-uq7-dl-256mbx4
> 3.0.101 #1 SMP PREEMPT Thu Jun 2 10:49:45 PDT 2016 armv7l GNU/Linux) and the
> imx6 drivers, I finally found something that may help me.
>
> 1. I found the power button driver in the OS at
> /sys/bus/platform/drivers/imx_seco_pwrb.
>
> 2. Some more info that may be helpful.
>
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/power_button/enable
> disable
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/power_button/en_flash
> disable
> root@seco-uq7-dl-256mbx4:~# ls /sys/bus/platform/drivers/imx_seco_pwrb/
> bind    uevent  unbind
> 3. I found /proc/ectrl/events/event_state/power_button which stores the
> current state of the power button.
>
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> active
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> active
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> active
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> inactive
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> inactive
> root@seco-uq7-dl-256mbx4:~# cat /proc/ectrl/events/event_state/power_button
> inactive
> My embedded operating system is using sysvinit, if that helps.
>
> I effectively need the power button to perform a shutdown -h now. Any ideas
> why it isn't currently?
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

From what I read online this should be done in userspace.
As I am not familiar with udev I made the following script:

#!/bin/sh
echo "monitoring poweroff key"
cat /dev/input/by-path/platform-gpio-keys-event | read -n 1
echo "shutting down"
/sbin/shutdown -hP now

Regards,
Mark

