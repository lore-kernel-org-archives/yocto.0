Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BECC9E01486; Thu, 14 Jun 2018 12:18:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B72E01228
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 12:18:20 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 74-v6so4879831uav.1
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 12:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MU0S2gtMz8tEQyb6E9ERw6/paWARgcoprqLa6N4V9sc=;
	b=g+D89fZVkMYmou6NuxkSylfndeYimVn6bGcm4rr1N8wcPgqjEtSgN5R+oHSuCgrefM
	hxDqraYnmkymaIWBWjVChlA01ZFOFSaZviXSYDLzHo9jeS6VufNf/95er2HJD7SF2Ey3
	5+s3uzJyyOKwpvIG6N/bO9qhSoruq5MuwUJbEsl7ABJJSnHxQn9Z1i7I6NrFGcHMeixD
	AnnyPn2+2dgEIMwsh1uIk1d/1Qz5VwdKQMQtzejXbsP8HU1bUEr1deG+Y4el6acG2RqT
	G+HXe8pR9QXE+I55GrIQh4xOkuEua748YrVSdlfC5sJuwzbLD2d4R5DI6BAl1Jxo5F/S
	d9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MU0S2gtMz8tEQyb6E9ERw6/paWARgcoprqLa6N4V9sc=;
	b=CmBVdf67fLzJ+o28uKeTxt1tYJz6fY4Jm6Koo28bxS/FNykA4mej5bhPxuDSaCggaP
	UT0zHKH/nhXotHyS/WG2WyVqwFuz6CfH1frhRPm2lkvn6Vh1f1xIqp8A7QNHJzLmV3GN
	A8Ly+rqEEKj8cUkFmQp5aQTtrjTcHRm6RvaJZ6FGr5tDWlXDj8+jX66ubKg7DwOqqjRd
	zpck58qWhSNaep9rQ/EM8xV2razQx6qXsdzckmM+tKLJuViU+RNQOA5AQSj4fS4kc4KH
	IHwHSbVyOC5xe4i3Dtrixfg3AVlg3FRujI9wtzI56H3dtBpj0vLFHSdJeRnyLY3x9wDf
	nqzw==
X-Gm-Message-State: APt69E32Di3lnadwdHpPYdVDRbFwRcHi7qBfqB+72r4NgiCQSWDaFIIB
	TEVbucHRKaBOcSPs03yJHX5I8xPJ/buzJTox6wY=
X-Google-Smtp-Source: ADUXVKJ0W31iyDI6iQLKz8P7lLQDWD6k5o3s5CfBKhINakK7+ASQFHIU88KO8yfq6PMo9Icb6i+9ToEL6RVT5JUu+YM=
X-Received: by 2002:ab0:304e:: with SMTP id
	x14-v6mr2620144ual.80.1529003899218; 
	Thu, 14 Jun 2018 12:18:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
	<aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
	<CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
In-Reply-To: <CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Jun 2018 12:17:53 -0700
Message-ID: <CAMKF1so9RB+wb3TJPYNkFuW_LU4fgW8Hpjhgz0S1+b0QDdwgng@mail.gmail.com>
To: jon.szymaniak@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 19:18:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
>
> On Thu, Jun 14, 2018 at 11:43 Khem Raj <raj.khem@gmail.com> wrote:
> > Do you have capstone development headers/libs installed on your build host ?
> >
>
> No, and I understand that's an easy thing to address on the build host.
>
> However, I don't think this should be necessary build host dependency.
> QEMU includes the capstone codebase as a git submodule, so everything
> that's needed is there.
>
> Maybe it's just a matter of tweaking the recipe to set
> CMAKE_INSTALL_PREFIX appropriately so that when the build dives down
> into the capstone directory, this points to the correct prefix?
>
> It looks like the inclusion and use of capstone is new, as of the QEMU
> version included with sumo. (i.e. This appears not to be the situation
> with the version used in rocko and pyro).

Least intrusive approach would be to disable it if its not something you
depend on.

