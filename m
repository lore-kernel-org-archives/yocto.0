Return-Path: <ashcharles@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2811EE00925
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:41:44 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id lg15so4839vcb.40
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JZrP3IdoqMbKujpXsLnhliWoa9J8oIAsFxf3SNWhRtE=;
	b=T4bp4+FAk7vLUVN33Mm7Ank29whwF1sExLtulfMjDaarh5hg6n/UJeFUfqBro/3C0e
	fStsKKDcv1ypYrZg6XgBjcC/aF9iU7LW+mJdOdNxqwjAw7J+U96nVhHSqzTWXlDW9ztr
	VqpfvKdse5jLBv3OrKGWUG16CvN2Q2ewP8BIHnNhfUAiAlASzC8rfhVKcVkVP/fiSPiz
	qi5+gJFQZUUohW0xjsd+urzVxg+ql2pvdUDC19tKvIHpoilTSfcH+3Iq+2fjFhjweVqX
	tDB8Rk8XtCk6jSM1x/grvBqjRyaEKloDzZROKzTPE59vop8L7Zx889vGrMAHO6qfijNJ
	5FXQ==
X-Received: by 10.52.191.9 with SMTP id gu9mr3130115vdc.37.1393548103750; Thu,
	27 Feb 2014 16:41:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.45.134 with HTTP; Thu, 27 Feb 2014 16:41:13 -0800 (PST)
In-Reply-To: <CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
	<CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 27 Feb 2014 16:41:13 -0800
Message-ID: <CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Fri, 28 Feb 2014 00:41:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

Thanks for your response.
On Thu, Feb 27, 2014 at 4:26 PM, Khem Raj <raj.khem@gmail.com> wrote:
> it seems this module is installing/overwriting a file thats coming
> from some other recipe
> that you omitted from the errors above so cant tell which one exactly.
I've posted a more complete log: http://pastebin.com/zydaCXe2

I looked in the work directory to see which other recipe might be
trying to supply a duplicate file and see both linux-firmware and my
kernel recipe (based on linux-yocto.inc) e.g.
ash@gumstux:~/Store/Yocto/yocto/build/tmp/work$ find . -name whiteheat.fw
./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/git/whiteheat.fw
./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/packages-split/linux-firmware/lib/firmware/whiteheat.fw
./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/package/lib/firmware/whiteheat.fw
./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/image/lib/firmware/whiteheat.fw
./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/sysroot-destdir/lib/firmware/whiteheat.fw
./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/linux-overo-standard-build/firmware/whiteheat.fw
./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/packages-split/kernel-firmware-whiteheat/lib/firmware/whiteheat.fw
./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/package/lib/firmware/whiteheat.fw
./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/image/lib/firmware/whiteheat.fw
./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/sysroot-destdir/lib/firmware/whiteheat.fw

This makes me think that linux-firmware shouldn't be getting pulled in
as the kernel recipe is providing the right firmware.  But without
MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686", no firmware is
included in the image at all.

--Ash

