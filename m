Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C656DE01445
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 19:30:10 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id fn20so8304224lab.28
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 19:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7aI4Uut3D6OZ+Fc1mO7FNmb4IiH1Smm2ILe3jIOTuE0=;
	b=j2lhoKtd0bJtH8upIzyn72lW0Y1CLfHT9Uz7Q1eP70m0UXm4Edv6SVVKgKKwoautVy
	78nwEnxKXaVX33ZV8qJTE+X4nnrOT+870UKhpZayL9qLXxwi3c5AsrqGJmh6RwheES9J
	knvqTb+xXyHM2XkXWBd/6qQW8ALWE5213TRfBoMiiNpejftUjEtCRK9pFo4dL8gPgrmF
	KxPqDM4tbAbW1hM9odkmjBx/evOTDHtG/gteiiF5veSGRi70f8A8VzJ8Qz60RTG21kWW
	Eal5/4kfY63zgzle7hmL+TWE0InAgxi6ZlFIXe9SddLtB8FBzFZ+/QFmTWLTVyckw/Tx
	y60w==
MIME-Version: 1.0
X-Received: by 10.152.27.40 with SMTP id q8mr20505934lag.75.1373682608387;
	Fri, 12 Jul 2013 19:30:08 -0700 (PDT)
Received: by 10.112.133.234 with HTTP; Fri, 12 Jul 2013 19:30:08 -0700 (PDT)
In-Reply-To: <6E525492-7C48-4AE0-8F90-C910E194FD41@keylevel.com>
References: <6E525492-7C48-4AE0-8F90-C910E194FD41@keylevel.com>
Date: Fri, 12 Jul 2013 22:30:08 -0400
Message-ID: <CADkTA4NYXP4O_gGMVkOtZ-xo76vJKRtAz0ZMWSbD21jv+UevRQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: CONFIG_HID_APPLE
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
X-List-Received-Date: Sat, 13 Jul 2013 02:30:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 12, 2013 at 4:39 PM, Chris Tapp <opensource@keylevel.com> wrote:
> Can CONFIG_HID_APPLE=m please be added to the kernel defconfigs? Apple keyboards don't work without it.
>

That's not something that most boards need. So it belongs in a feature
fragment that can
be activated via a custom layer (KERNEL_FEATURES), or the entire
fragment can exist in
recipe space (via a bbappend).

Cheers,

Bruce

> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

