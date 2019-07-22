Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF53AE00D2C; Mon, 22 Jul 2019 09:34:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74F7CE0090E
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 09:34:38 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id a15so39101891qtn.7
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 09:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ssk7XANe2LzZxcvloU8QxYIzkwirHpInNREvuU3As7Y=;
	b=aix0UmAX7FTHwiLcUQyqe0BmqPTE7Q8a4prIvwe+JrHvThCL5zDzK1l9KDaDNlQUSr
	cxt5VFcQPgDgkA6ITzwAJczXRb1oBreXi7YkNv7323ACWO2X6MdjrsVgf6BQ3VpCvr2/
	/h7oBoRcmuUPITp4cUNuPS5lz3f3eIwKmUZhpOS1H8YyITLDwsudXsOOKxHP/K9xuzaF
	2ZGMuoXaIV064JViE9gejS0ebQJDuEL6b1X/mj0P9qfLYVmT9UqQ/uqarmtlWPMtZY7e
	uA2tqBBb8/De4Y0QW20zuB0F1Vt7VtA3piHQbs++fLaGv4ks/kvQmYAVMN0OYGU7s+7J
	5PQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ssk7XANe2LzZxcvloU8QxYIzkwirHpInNREvuU3As7Y=;
	b=cohF72G499erI+qcnBT1pSK6HdOyNXK28/AYIEX/MXISZVKZJzAgNGPzdnYMekbhW6
	di2U+xzzloPYfAdfjBuxyPSwPGRY5oA48SXuz1scizQOEpvLIM1PS2zfmjxmxB2MHH4p
	X4HhyxQuEhcwNO3ioFmRuZXamiQEN9H/d9hZIGck+p9jn/wV0lW99JUsloL7YHff/uvS
	57K/p0LVn+gERCMCaw8zLajI5peOY1x9lfzgrcu5XKeeWEYKVXktY3Hs6qz8AoynVv33
	8KL+F7MCfNq38c71ABCMYlHf0iJQ3xoJa/HNRQhXgp8caCCE23O0GxDJnahtTkA5oq0r
	uBNg==
X-Gm-Message-State: APjAAAUoGQN4ig4iaIf+VHNZ7lCAm79g9HpwpskMTPjG/Qj2yCkOqMvN
	N1QnL5VKXiGAcvPxHLSRvkzWFxE1AWX0eNUJSjRCUrXv
X-Google-Smtp-Source: APXvYqxsZZzeWVa0Ba8os4wZhrm3ZrCfkkz731u6sseAz7X8QYrYp0pgABpSvhAO0xboFzV22uT2D1wLJPVy+8Dh+Do=
X-Received: by 2002:ac8:525a:: with SMTP id y26mr50110116qtn.378.1563813277562;
	Mon, 22 Jul 2019 09:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <f9842057-d93a-d6f4-bba2-937f6b44b346@herbrechtsmeier.net>
In-Reply-To: <f9842057-d93a-d6f4-bba2-937f6b44b346@herbrechtsmeier.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Jul 2019 09:34:11 -0700
Message-ID: <CAMKF1sqe=hV1trKzofXr3phL5ZC4LFx-AN11q9y2DofQSBZ_iQ@mail.gmail.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Create an image from deployed files
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
X-List-Received-Date: Mon, 22 Jul 2019 16:34:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 3, 2019 at 12:43 PM Stefan Herbrechtsmeier
<stefan@herbrechtsmeier.net> wrote:
>
> Hi,
>
> what would be the best solution to create an image from deployed files?
>
> The wic bootimg-partition plugin copy over files listed in
> IMAGE_BOOT_FILES and create a partition inside the wic image. The
> image.bbclass creates an image from individual packages.
>
> I want to create an image like the image.bbclass but from deployed files
> like the wic bootimg-partition plugin.
>
> I have add an image_types_vfat.bbclass to create vfat images, move the
> common parts from image.bbclass into image-common.bbclass and add a
> boot-image.bbclass. This class duplicates some code from the wic
> bootimg-partition plugin inside the do_rootfs function and add some
> dummy tasks to minimize the changes in the common code.
>
> I wonder if this is the right direction or if another solution exists.
>

I would think you can add a wic kickstart image to generate your desired image

> Best regards
>    Stefan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

