Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A50E0146B
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 20:46:33 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id 16so59712obc.22
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 20:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=g7rgm64GLOnyrggtEodbZIp1vArjBrKqP29Ub2yyH9U=;
	b=ZPrfdD/V5w4JbBsI8QXcnFzrptJtGHv2gJYunBL0b0V/VwDNjC3tBPgYa8COK9jRGC
	Mj1058FxbSf1RSoH5crAcnIAsrTjBWmhzgCoeAvPadraoDbYgRQZDioN9gJgjzKd+HhP
	ygKvHX8gEmOhW+3aKs+FUCblrPXInhvL9uCf4eKaHxxZANdKKJR7WMwRBoEztM2QkGIO
	Fu554MZfggaoSVQ3dVyBsjUWQ9RONQ/lLDyh2gGf71DPk+PaNvRdj1SDb44NsFAMoc9h
	GqoT6wJ5LaM2rUj+j0gCLcnSMzn3jDpee2jz00HfNUkr29OmTI7uLpPtHaP/8BX/4nA0
	6GcA==
MIME-Version: 1.0
X-Received: by 10.182.235.49 with SMTP id uj17mr210333obc.18.1366083993059;
	Mon, 15 Apr 2013 20:46:33 -0700 (PDT)
Received: by 10.76.169.194 with HTTP; Mon, 15 Apr 2013 20:46:32 -0700 (PDT)
Date: Mon, 15 Apr 2013 23:46:32 -0400
Message-ID: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Tue, 16 Apr 2013 03:46:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

If I start with

    $ bitbake core-image-minimal

and then do

    $ runqemu qemux86

a new window opens and qemu runs as expected (i.e. it pops open a new
window and runs in that and not via vnc).

If I then do

    $ bitbake core-image-sato

and try

    $ runqemu qemux86

I then get

    Could not initialize SDL(No available video device) - exiting

But if I use the qemu-system-i386 built and installed natively on my
system, it works just fine (in other words, I don't think this is
caused by my host missing some key libraries).

If I then try to go back and re-run the previously-working
core-image-minimal, now it will fail and give me the same error
message

    $ runqemu qemux86 core-image-minimal
    ....
    Could not initialize SDL(No available video device) - exiting

Any ideas?

I noticed this first on dylan:20269c371eaca7e655d983b8f55e5b3cb021c071
but it appears to also be present on
master:45c8cc1a58e7868f4603be08a86fef178edfc926 too.

Is it caused, perhaps, by some old sstate? I keep my tmp and sstate
directories distinct, and haven't deleted any sstate in weeks
(months?) now.

Best regards,
    Trevor

