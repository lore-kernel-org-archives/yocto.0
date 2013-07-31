Return-Path: <btraynor@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A58E0156C
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:52:52 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hj13so3684333wib.17
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dIC2s1+FHTJOcBf9im8DxDnYLrbZx5DfQS5j3mgfaLY=;
	b=iKxKrSvool7CulKhIPu3VcTlpCHJLtvYKQfPbzLT3cq+mTZ71whm3F5HRQRx3KUZ1E
	epWId015Ey+jST/cBDoK+RQxNc6HyN37IGKl4AvANJEBtiSL0CguLLxRiWr6fAaOI7xS
	NYn44B9TRXyIJa0SQ9lWMhn6vsyYZ7+Nu4HuESnKHWm1fEIJgrG0JD9kkHMTbOfrD+h/
	yyJK8wCJfPdFugDacd4aBbz8VNOnGSSsjOsTXAii8H8bFHvcmqVOArznHAI2GIBm6R0U
	+p7n74a2DqkAV+1ZIS5+eI1SynnyWE4MMO4ZdnuOSCZ7Grvquy9wdnFXDlHemsfCWdS/
	Qriw==
X-Received: by 10.180.10.202 with SMTP id k10mr5088315wib.17.1375293171781;
	Wed, 31 Jul 2013 10:52:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.85.166 with HTTP; Wed, 31 Jul 2013 10:52:10 -0700 (PDT)
In-Reply-To: <CAHv4ZcNerC-VBQhG8m1jTN7tTsncA+tjLaKSBLhAM6TGRoUL9A@mail.gmail.com>
References: <CAHv4ZcNerC-VBQhG8m1jTN7tTsncA+tjLaKSBLhAM6TGRoUL9A@mail.gmail.com>
From: Bill Traynor <btraynor@gmail.com>
Date: Wed, 31 Jul 2013 13:52:10 -0400
Message-ID: <CAN20qYqwgJtyhaiZYS9wN6idESfjXzr4ewPcySvDf+t20QombA@mail.gmail.com>
To: I Love To Get Spamed <ilovetogetspamed@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't seem to get the SD Card working with BBB after building new kernel.
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
X-List-Received-Date: Wed, 31 Jul 2013 17:52:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 31, 2013 at 1:33 PM, I Love To Get Spamed
<ilovetogetspamed@gmail.com> wrote:
> Greetings:
>
> I have used Yocto Project HOB to compile a new kernel using meta-ti (target
> was am335x-evm) layer for my Beaglebone BLACK (not white).
>
> This created the pertinent files for the /boot and /rootfs partitions on the
> SD card.
>
> I've added the files to the said partitions and added the basic uEnv.txt
> file (optargs=quiet).
>
> The system won't boot from the SD Card.
>
> What am I missing?  Anyone?

I assume you've read this?:
http://circuitco.com/support/index.php?title=Updating_The_Software#Image_For_Booting_From_microSD

>
> Thanks in advance.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

