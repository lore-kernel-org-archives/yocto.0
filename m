Return-Path: <jefro.net@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F18E0140D
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 16:17:12 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id t13so8183506lbd.15
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 16:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=QFq79YyMysnDfc0AtIQh3SC+b763rNro2A0aWDIihaw=;
	b=D/sMuOlQd9dsjEwDNaSWMdi3OJnPlERv1xciu4GL9sfNtYZSuszWpcatCIWU6dj0Fz
	0HbVlNOkuumCkQOlPfvArh3UIgnjWcHX+r3Hu1pyYg0YmX2eVFWeLQxAHLFzDFcaBwmE
	ZOo/MXyWlLmFwJKNnYcieyXCro4RcCNR3TjnaBG9FHDF8aZHBoqv+alW18dyCv84+V5i
	6gkHIsLkAq6r1JUeBr+1pro0rrzBcDPi+0SOta/MPo0xWfTcStw5Yy1vQR3KVjbMgVwD
	5hqp9B2jdeYtymgE01J7LUMRyyTeSzU6e00stDJn1SuZsjudpqQZGMjETf7WepIpS7yX
	zYoQ==
X-Received: by 10.152.4.163 with SMTP id l3mr20421093lal.60.1373671031297;
	Fri, 12 Jul 2013 16:17:11 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.30.146 with HTTP; Fri, 12 Jul 2013 16:16:51 -0700 (PDT)
In-Reply-To: <CAF0cEJQOHYwO1eiyoyCbsSbw929DD=2jjOB2Ses5ejzZk+wSyA@mail.gmail.com>
References: <CAF0cEJTK9Y-HZaYev37a82v9Ys9BqukCcfK4hqvCHtL7bcSzzA@mail.gmail.com>
	<CAF0cEJQOHYwO1eiyoyCbsSbw929DD=2jjOB2Ses5ejzZk+wSyA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Fri, 12 Jul 2013 16:16:51 -0700
X-Google-Sender-Auth: fKWqrv-syOz9mLIFywk5id70BHs
Message-ID: <CA+YB3rYsaB8=B2YZb454yqvJo0GcdV-V=D+Hp=QjQk=VZ1XeZQ@mail.gmail.com>
To: Piotr Ziomacki <ziomackipiotr@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: DO PACKAGE QA error during compilation of FireFox OS on Raspberry Pi
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
X-List-Received-Date: Fri, 12 Jul 2013 23:17:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Piotr - thanks for posting, I hope we can help.

I see this error in the log that might be a clue to the problem:

ERROR: QA Issue: ntp: Files/directories were installed but not shipped
  /lib/systemd/system/ntpd.service
  /lib/systemd/system/sntp.service

I'm not sure I have seen this before. Can anyone help?


On Fri, Jul 12, 2013 at 12:57 AM, Piotr Ziomacki
<ziomackipiotr@gmail.com> wrote:
> Hi,
>
> I try to compile source code for FF OS released by Philipp Wagner at
> http://www.philipp-wagner.com/blog/2013/04/firefox-os-for-raspberry-pi-now-available/#more-251.
> Unfortunately i get error during compilation. I was suggested that it seems
> like anOpenEmbedded/Yocto issue so I'm sending post it here. I attached the
> log file for this. Can someone please help me get rid of this error?
>
> Regards,
> Piotr Ziomacki
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

