Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D78CE017C5
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:05:19 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id hn9so1916424wib.17
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:05:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=z3K79satw5aa2AqWBcm/eOOjxhGZv7bn9+SRGdsud9I=;
	b=WJ0hfmY0gG/b0zyKOGmEV5kXpvRdzHjbO1ELuLSQF83dJC8/P1+L+dolRMRkPTQFkv
	WBvzK8nUwEpHXyPicXEEH0upc9KZQCUTdNVG9eR3vc76PW8TfD8FMi7sattTcjbV0sJV
	SZjJ8mCDp2jCFtH0KmZYqYkUHRC5LhgadKPvPJUneisi+BSNmFTcIRpfTzyFnXUk7Lhm
	KUokrqChnaFtV78yVad9szi7tgRaSmRyeae/+UYCq6waq9HwW/fd53TJs9/X4hZ5c8/y
	X57ngX1MiyjHzzC3j9swqH2ndsYq/GP5gHTGI5MCy+/iLBLC5FWe0rkkMEijqSXrAfhC
	KoeA==
X-Gm-Message-State: ALoCoQnzef7v+ayFQ3aS7vEw+iylOTC6uh7kXOfic9GE77E6AeNZbUepNubFx3ze1fsbcNR1l4Rj
X-Received: by 10.180.188.49 with SMTP id fx17mr11570600wic.33.1384164318924; 
	Mon, 11 Nov 2013 02:05:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Mon, 11 Nov 2013 02:04:58 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAHyyKNnzt8N5xC310TePNpjDE7vUyb0jWN+7P4xWmMF5a2owyw@mail.gmail.com>
References: <CAHyyKNnzt8N5xC310TePNpjDE7vUyb0jWN+7P4xWmMF5a2owyw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Nov 2013 12:04:58 +0200
Message-ID: <CAK18fxEQ+B41Na8O+Ytj7mP-sxH9smkHQZ9+Pg8TGmw7NjPHrQ@mail.gmail.com>
To: Alex M <0xf777@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: can't build meta-raspberrypi with latest Yocto or oe-core
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
X-List-Received-Date: Mon, 11 Nov 2013 10:05:23 -0000
Content-Type: multipart/alternative; boundary=001a11c25bda8a5d8f04eae3de4c

--001a11c25bda8a5d8f04eae3de4c
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Nov 10, 2013 at 11:01 AM, Alex M <0xf777@gmail.com> wrote:

> Hello!
> I'm using latest https://github.com/djwillis/meta-raspberrypi
> repository for raspberry-pi layer.
> Can't build any of two basic images, bitbake reports the following error:
>
> ERROR: No recipes available for:
>
> /media/usb_yocto/yocto/meta-raspberrypi/recipes-graphics/mesa/mesa_9.1.6.bbappend
> ERROR: Command execution failed: Exited with 1
>
> I tried with latest Yocto git, and latest oe-core from
> openembedded.org - results the same. Possibly mesa_9.1.6.bb is removed
> from both repositories.
>
> Please, could you fix this problem, or how I can overcome this error,
> which actions I should do to fix that?
>

Fix merged in master.

Thanks,
ag

--001a11c25bda8a5d8f04eae3de4c
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><br><div class="gmail_extra"><br><br><div class="gmail_quote">On Sun, Nov 10, 2013 at 11:01 AM, Alex M <span dir="ltr">&lt;<a href="mailto:0xf777@gmail.com" target="_blank">0xf777@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello!<br>
I&#39;m using latest <a href="https://github.com/djwillis/meta-raspberrypi" target="_blank">https://github.com/djwillis/meta-raspberrypi</a><br>
repository for raspberry-pi layer.<br>
Can&#39;t build any of two basic images, bitbake reports the following error:<br>
<br>
ERROR: No recipes available for:<br>
/media/usb_yocto/yocto/meta-raspberrypi/recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
ERROR: Command execution failed: Exited with 1<br>
<br>
I tried with latest Yocto git, and latest oe-core from<br>
<a href="http://openembedded.org" target="_blank">openembedded.org</a> - results the same. Possibly <a href="http://mesa_9.1.6.bb" target="_blank">mesa_9.1.6.bb</a> is removed<br>
from both repositories.<br>
<br>
Please, could you fix this problem, or how I can overcome this error,<br>
which actions I should do to fix that?<br>
</blockquote></div><br>Fix merged in master.</div><div class="gmail_extra"><br></div><div class="gmail_extra">Thanks,</div><div class="gmail_extra">ag</div></div>

--001a11c25bda8a5d8f04eae3de4c--
