Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F58E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 13:27:31 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id fe20so10466134lab.29
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 13:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=f96Orv6jSyxBle8EFCoicvMpPCnnZwsbAuw5zkSWufo=;
	b=Gd3p15FWgD91i5pSp6HfBpaqhp1gPH2QNf4Ei1lkFS2xt5KtAE9DJgDkU1qbK91L1s
	D8SFZZqtwqtbC0lZvG3ZmIPDuKJNjQiydWnPh+3bICzQCATXOCvgdMBseGhA1EODXv+I
	bkMLU0YAKK8iVX4ZqSEm5yEHg9guEfsoRQcpHqXn6rcQjrmKTIERDDu7sp2vU9VHIm2y
	ortoWbguHQUbX5CWS/PI3cdwocYFtLejwoYkBNXzLazJNMXxzSK+sri0gmFX0jjKNrnK
	7KrPRHERSzzbOEbT4k8rjIuFIkbDElGtRBIeM1IS7yYp1Zh5lc/9ZTz7rU6azMhN3iIe
	J9AA==
Received: by 10.152.124.68 with SMTP id mg4mr50308866lab.51.1357334850949;
	Fri, 04 Jan 2013 13:27:30 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.34.10 with HTTP; Fri, 4 Jan 2013 13:27:10 -0800 (PST)
In-Reply-To: <50E746F7.6000306@dynamicdevices.co.uk>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
	<50E746F7.6000306@dynamicdevices.co.uk>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 4 Jan 2013 14:27:10 -0700
X-Google-Sender-Auth: aho2YM5wjTNvlYFAW6Z-n99Ey1U
Message-ID: <CABcZAN=itXmpVoa1Rm+f9wPAV+kisM3hvVP2LOpYiAxhsbxeJA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Jan 2013 21:27:32 -0000
Content-Type: multipart/alternative; boundary=f46d043bd8fea1d20904d27d2518

--f46d043bd8fea1d20904d27d2518
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 4, 2013 at 2:17 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> Where would one start to look in the bitbake code to add this kind of
> support in?
>

See the subclasses of RunQueueExecute in bb.runqueue, this is what executes
the tasks. For an idea of how to implement opting in to a different class,
see how BB_SCHEDULER is implemented.
-- 
Christopher Larson

--f46d043bd8fea1d20904d27d2518
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Fri, Jan 4, 2013 at 2:17 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dy=
namicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":bv">Where would one start to loo=
k in the bitbake code to add this kind of<br>
support in?</div></blockquote></div><br>See the subclasses of RunQueueExecu=
te in bb.runqueue, this is what executes the tasks. For an idea of how to i=
mplement opting in to a different class, see how BB_SCHEDULER is implemente=
d.<br>

-- <br>Christopher Larson</div></div>

--f46d043bd8fea1d20904d27d2518--
