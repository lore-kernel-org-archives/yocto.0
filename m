Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF986E00303
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 08:45:44 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so262377vcb.35
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 08:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pPF9/tBTNhGZktHAD0VnS5eSaf8IBmvjS6MRZoZIaBE=;
	b=Ow6eOOKyWw+KfwSgXI6Ug6W4wpCWJu6Csn58Ys3boIU9Si5fxvo94nHfN6Q5owodM3
	t2jfUuhIlucimR5JTZTL4Iq9kWu7BLni+mvjBGZQrVsuN3GKZe2zeVAWXSGSUjiIVGG/
	0KCx9c7S+MGqtKd5jVnkd3cCiSLFQXAXZGM5g=
MIME-Version: 1.0
Received: by 10.220.227.74 with SMTP id iz10mr12802690vcb.8.1328028344031;
	Tue, 31 Jan 2012 08:45:44 -0800 (PST)
Received: by 10.52.180.102 with HTTP; Tue, 31 Jan 2012 08:45:43 -0800 (PST)
Date: Tue, 31 Jan 2012 11:45:43 -0500
Message-ID: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: How do I patch the kernel before it is built?
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
X-List-Received-Date: Tue, 31 Jan 2012 16:45:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

I could not find a way to patch the kernel source before its is built.

I promise to update the Yocto wiki's How do I section when I have a
working solution for the following :-)

Here is what I am trying to do:

1) Patch the kernel (add VID/PID to hid_ignore_list in
drivers/hid/hid-core.c and also to add the VID/PID to .h file)
2) Build the kernel - no change here - standard kernel build
3) Build a kernel module

I have a meta layer where I am keeping my changes. I am guessing that I need to:

a) write a bbappend file to accomplish #1
b) write a recipe to accomplish #3

I have written recipes before, but just for libraries and autotools
based applications. Not for a kernel module. If there is a recipe out
there for some other module, I would be happy to steal from it.

Please advise how I can go about patching the kernel and if there is a
recipe for a kernel module - please point me to it.

Thank you

Autif

