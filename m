Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 508E7E01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:37:54 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x13so281387vbb.20
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=hvUv39pFRKw9u/2IlM/MLn4JyFbOtdGwWAm1EvkD9UQ=;
	b=eRSs4Q4efbV+7N1syTPdC8bykr0pr0up2o6SQSTugP+lvRX5sPWhb7CD1+ktC5siGU
	rYSmFx5DTem3E7DAJMyLQzIroKSyrablXl3mn6vciV9hJuobAR5m+C16L5UqCz9xcmjc
	NPy5b10zM937fTssK72WuVNSUHgSKQ/B31/cXJT9338ngLbX6D5dHVGBmkBKjvgG/G+H
	e3P2kJ9m1Y484v79VMVoMJ4lF2Q11yMiAoCoCLrrUaVOHZEjJkNhjSjYLmRYDtSkw5IA
	nGB8HneJSg9vJAANZTjT65G8uImnDnAU7WjfhTSshju+MaWv42BGDgNvehPitEONYMXj
	o4qg==
X-Received: by 10.58.56.161 with SMTP id b1mr629455veq.42.1369132673675; Tue,
	21 May 2013 03:37:53 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Tue, 21 May 2013 03:37:33 -0700 (PDT)
In-Reply-To: <CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
	<CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
	<CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 21 May 2013 11:37:33 +0100
X-Google-Sender-Auth: -0Xs8XwTmNMmXC6f1sIB0K6hVEs
Message-ID: <CANyK_8dYMkL8j5nu781+V-LvpiLnExJQ4VLTLoVkMt+ckESSQw@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Hello world package error
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
X-List-Received-Date: Tue, 21 May 2013 10:37:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 May 2013 11:35, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 21 May 2013 11:12, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
>> I sourced oe-init-build-env and ran bitbake helloworld from build directory.
>> Then i get this error. previously, i ran bitbake core-image-minimal and was
>> successful. No idea where i am doing wrong?
>
> Ok, I guess that it's bitbake itself that throws the error then? Could
> you try adding 'inherit externalsrc' to the top of your recipe, that
> class is there to prevent do_fetch, do_unpack etc being called which
> may be failing as there isn't a SRC_URI set.
>

Ah no, there is a SRC_URI. But you don't really need it and it's
probably looking in the wrong place for hello.c. The externalsrc class
is designed for this case. See
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/externalsrc.bbclass
or the equivalent file in your local clone of poky.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

