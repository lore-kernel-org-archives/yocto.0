Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24F7E01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:32:00 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id u12so1762714wey.19
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=+bqhHcUuNtVjvjmiy/7NY3vN/jdCE2Z719ayUmihk9Q=;
	b=Vwc+PD/6nDoaxZX6qqx9pR6XQB3vkX7SWWDKdw/Fe++iFfaYDc5Cw+3vIS7htoLpmT
	pFpkD/meKk5fRl9SjX7fKoP6UZLGYnXS767aZCFe/H3UcOhXpuC+g46QrZXwzr4iggGa
	ojwdwlIm+SSj8lEyIb1Gked6PIvlTZog05i/55SKWhwTnmnKUzgnMf7mWMiycWhq1yyC
	KenifLmb80lznCHzEGvEnmLQJkDaPrwbwhM9ZJNUEiqRt7+Xrt12rFbbbuLS0dqHP+77
	fOhbKgJEwOjOkjXchM0GCYnp597zdoDEszyFgkUcvfj/ad9LXmP9yH9jRrkHFs6sXPKE
	Ryqw==
MIME-Version: 1.0
X-Received: by 10.194.240.202 with SMTP id wc10mr15393068wjc.51.1366255919810; 
	Wed, 17 Apr 2013 20:31:59 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 17 Apr 2013 20:31:59 -0700 (PDT)
In-Reply-To: <CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
	<CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
	<CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
Date: Wed, 17 Apr 2013 23:31:59 -0400
Message-ID: <CAHUNapS_dMQnpqCFMLqyGrbch0SQbJZc4aSVxFk+SRO9mU=2rQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 18 Apr 2013 03:32:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 17, 2013 at 11:21 PM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> If you do not have libsdl1.2-dev (Ubuntu) installed on your dev/host system
> then qemu will be built without video support.

I would have assumed that if something was missing from my host, then
I would not have been able to run the virtual machine using the
qemu-system-i386 that I had compiled for my host natively outside of
Yocto? As it happened, using my own qemu the images ran fine, but when
I tried using the runqemu script that's when I'd see problems.

Removing/moving/deleting my sstate fixed the problem, which suggests
to me that there something stored in there that's bad (does that make
sense?).

