Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 827C3E01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:14:38 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id l13so1756354wie.6
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=WsjlBPvNO7FB0Lyeb205qQrFFz7nEV3Qf3+9hwcOsXg=;
	b=yFyxar6jwesqXbQhqOhCgMo6WQBb55v8MixNg1dU1A7OgCX27fmF1opIB41Gf0lU0V
	+kB4Pm5uat/xPwdPefSRuPKv1KD6WhaZhhR6XRKSRzmhIhIUG3ufCPB0BYBo/B2/ERXi
	kgqkMEiSVbHlmpGD0gvLCdluH+zRGj2SjkdR7IEW0LEqlK++PHXfJy9xhLyLKjcRtmsS
	fedqqMkMPA36PrlBSBlQGspGl96Eq0tBCRoge3fqsZ0Y2VkADFAhrKAsdFiJL2U/Igx/
	9YfWQmuhDPGRFyBpIZUM+kc4QxbDem+PLzbgqXSyhqhXIC9U308f26zMHWKcWlLMVt0M
	kzEg==
MIME-Version: 1.0
X-Received: by 10.194.10.129 with SMTP id i1mr15493201wjb.21.1366254876983;
	Wed, 17 Apr 2013 20:14:36 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 17 Apr 2013 20:14:36 -0700 (PDT)
In-Reply-To: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
Date: Wed, 17 Apr 2013 23:14:36 -0400
Message-ID: <CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Thu, 18 Apr 2013 03:14:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Apr 15, 2013 at 11:46 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>     Could not initialize SDL(No available video device) - exiting

I was able to "solve" my problem by moving my SSTATE_DIR and starting
over. Conversely, clobbering my SSTATE_DIR would have solved the issue
too. That's a lot of sstate that I'd rather not delete; anyone have
any ideas which package should be cleansstate'd to fix this problem in
my full SSTATE_DIR? qemu-native?

