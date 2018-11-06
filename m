Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC284E00BFD; Tue,  6 Nov 2018 11:19:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04174E00A6B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 11:19:30 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id l2-v6so13415247wmh.3
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 11:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PqFiANWOmimwL4PP9waoWZ6yYjVmKdMJe2mEOtZK5p0=;
	b=AfBaXrfVYAQ8ar02IRxEeSlhIupQYt4kRkSvLgDp/vIw/S7LDnlj1xtHMke0a5MDRb
	bVi7S6C47XzmTOa3zuZhq2J2Yoz8poJzBOrkNaWdAejB3BVip96KSSrJnNOWYaTlB+FD
	g3DQJA+owiAAu89HZiBiq9fhca/epKidduQHXZ43Fm/oUG51Z5EjswkzxHD+s6k3zHAH
	0ClR7xebKYR+kmcaRYudx3foquzUMxQggBrZVPLI9kJ04Czhjmme8+UOJJZEqB44y2JF
	TeA84xGPaO5yHpV7mP3y/KgK3dYOeWX1RPt7QanNt/JlEQSHMnlgpzsv+V8rxb8/PGZn
	rPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PqFiANWOmimwL4PP9waoWZ6yYjVmKdMJe2mEOtZK5p0=;
	b=sZc0QW6Nguos7CzpmYXlsOByc5yt3jJpLfp32oj5fGizoxPIixq5rfn9fBpwQSv8Vr
	o+JThoFvD8Vpe+3XMb8NWm7hLz9Nla4b9vHTODB5YdC9bxcpbwKj4aheLeNp8jbRzjqk
	NTO2inPTqMOGvNRaznus8SiLgl3Wt76CN/XhcB8GJvRWL5U/q7cJmgACZA4ONihn62Z2
	FID1B4QlhggSBZcJSWU7Lv7UOzfRpIpadxpewQE7qJ37TG1Vz4AjPxn1ijPeT9r+IiQv
	UgNINtYs+Xp4ppiOkjBk5cC2FJ9PCk7m7H4lRzlDsUpp0fw3e7ohW4cKz8TMYylfIJ8g
	+fow==
X-Gm-Message-State: AGRZ1gKOxettIlwzJNA/1jejHOlfXO0kHMZUXuEBrt7ixAsvsor4iEgB
	m7y1o/lknXkA9frOZITvWSZZJpkTLwRatmmmHWc=
X-Google-Smtp-Source: AJdET5eHPSVC5lqS9V+9EnJwu1rxK+AKL0Q61euXYe8fV3DwZx3W79fxw9qWY7foCZRgfEKdf5IAas84z5tVVBcFoKk=
X-Received: by 2002:a1c:9947:: with SMTP id
	b68-v6mr2959699wme.22.1541531970085; 
	Tue, 06 Nov 2018 11:19:30 -0800 (PST)
MIME-Version: 1.0
References: <CAPm8-H7dXa=p7gdUoLw7KutU8nbLpns065-KG5G_5DU+1oQaZg@mail.gmail.com>
In-Reply-To: <CAPm8-H7dXa=p7gdUoLw7KutU8nbLpns065-KG5G_5DU+1oQaZg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 6 Nov 2018 20:19:18 +0100
Message-ID: <CAAfyv36MOx4Z6BS31MiONMQYmX=dAbN0QS0TSyUdCHcsyCjc4Q@mail.gmail.com>
To: Laurentiu-Cristian Duca <laurentiu.duca@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to compute SRCREV for a github project
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
X-List-Received-Date: Tue, 06 Nov 2018 19:19:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,


On Tue, Nov 6, 2018 at 5:10 PM Laurentiu-Cristian Duca
<laurentiu.duca@gmail.com> wrote:
>
> Dear yocto community,
>
>   A basic question regarding yocto and git.
> How to compute the SRCREV for the linux-raspberrypi_4.14.bb recipe:
> $ cat meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.14.bb
> LINUX_VERSION ?= "4.14.68"
> SRCREV = "8c8666ff6c1254d325cfa300d16f9928b3f31fc0"
> SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.14.y"
> ...
>
>   If I want to change to LINUX_VERSION 4.14.74 (for example),
> how will I compute or get the SRCREV for this version
SRCREV is git commit id from 4.14.74 (so if you checkout 4.14.74 tag
just run git log -1 and copy git commit ID to SRCREV and it will
work).
> (please note that I am not interested in AUTOREV)?
> The command "git log -50" lists the latest 50 commits
> and a 40-bit signature for each commit, but does not show the kernel version.
>
>   I have searched google but no response found.
>
> Thank you and best regards,
> Laurentiu-Cristian Duca
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

