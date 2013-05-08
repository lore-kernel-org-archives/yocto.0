Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A28C1E0146E
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 02:18:04 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id b10so1581631vea.3
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 02:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=HjKZXDJvY08j0yrQ2jmLy2u8kI4bqKDPMtUyZq7hcsQ=;
	b=iW21LxlDjD65YWmaj3W4L+ZD3hrCFbiwFdqTyOyAN8HQansDwYaeziv4VxXjKzZpk/
	+FPtS5NQkmBeNqxYGSSRDuc4cV0MJRprTkntikUb4DCkx9sstC9UAfeC7GQaDjT82ast
	Y/F5SIbXm5kaVDwJ7T2ENeQ5D/Tkyq7c9VK+MuOIqVSnwM6Ne8Ggz/4tZDrkp//ZRDWL
	Ucu2+H9rElhxlvCy23qdnEObPtt0YdPaMOU76H+9jy/S1ta8x/0r4wwz9gkwdHU1cMCs
	zVG/wtbZlBwtMFq5WniLNRAIJe9FQ8VIUDGE76zK9n36Zr6ZqWxZATsRCefdqC2jh/CI
	loOQ==
X-Received: by 10.52.172.73 with SMTP id ba9mr3403406vdc.16.1368004683613;
	Wed, 08 May 2013 02:18:03 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Wed, 8 May 2013 02:17:43 -0700 (PDT)
In-Reply-To: <CAK18fxE3h2mH6N3y4+jsjCDQci4X1bvtQXd8=PvOGL1XoB+0qw@mail.gmail.com>
References: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
	<CAK18fxE3h2mH6N3y4+jsjCDQci4X1bvtQXd8=PvOGL1XoB+0qw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 8 May 2013 10:17:43 +0100
X-Google-Sender-Auth: _hDWcNBUB4EUND7ciAgTgIXr3C0
Message-ID: <CANyK_8fdJg9PehiJ4mG+ES4nfYfJR+ML0FhCQf0nfAMeF0jnuQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Wed, 08 May 2013 09:18:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 7 May 2013 12:45, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Could you please resend it with - M?
>

Done, still not entirely used to git format-patch and git send-email.
Will try putting it in my config as the default.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

