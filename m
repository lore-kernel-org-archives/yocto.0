Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4069E00CA2; Fri,  6 Oct 2017 06:37:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7A66E00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 06:37:02 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id l24so1181725pgu.2
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 06:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KYLjRd0jZxVYTaH2eM5Gql5DRsqwIqEhGOfBX3CpqBQ=;
	b=T0l02clySum75kzpLgcbtTzcywf9Qj3y884JgY/0xMpstZLau+gru6YzYIlW8ORsLZ
	8WEzTIQk9X1RxdtANTZ8dGf5WvKZCiqxYyb/BsYOqRrzb8DdEi5yGZGwqIgXC/YyppMX
	njRlUvmn3Rl83MIcfJeKvrbjnsOR5e/lI7tU/AxXa/7L13sXX4xXPYYIwMGYi847LHNz
	sg7BbQ/Em35knAVQYfB2erEjfuQQnee0Qf47pDI/oKl6AMtEy1Xk5vAVazhr5G8d14DH
	/ziFzjAz2FTIUc80stcGWVZHcbObIpjEdoO9vKbWueu/jCDAUnqgekk0oQRA/DcO1TpI
	eKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KYLjRd0jZxVYTaH2eM5Gql5DRsqwIqEhGOfBX3CpqBQ=;
	b=HONZivefjTDolv45urQ3kx2d4/gkGcpEUmIgX1B3nbdWIaKWuSafQFDYqVUNuf72Y+
	X4XFybPQTgzVpIl5MTe3BGb9+SRog99niQ9QGr4Xx30OgicW51aFPxaGtnoQYgs7f460
	AV6qFWp/OOb0gKQciogeyupyYGrzdObdYcPw3PxfRgiwPPChDeWnbCOZeMWTxMokY1fX
	+kyZ6oYWykd1HmMGV81VE4jLnxQwd4oLnonSGMFlLHjtVEVLZVE9QqysBmFvsVws7TE7
	N7JxNp9vIqXuQNG6DX61J8lVgXYSmYj0P+968ibXxOOSBXo9M+OGVfMXcUJoc+yIDs/0
	h5yw==
X-Gm-Message-State: AMCzsaWHnpO4rAgLnZ6I6CbQYvyv2a2cDmPF+GA2nvPWrfC33/JMVWkd
	ILKV1z6StyHzPkz6jgL96jvR978/3jexy9dVJqs=
X-Google-Smtp-Source: AOwi7QDj/yJFizrSu6sp4L1ESyH0ZIc5gTxXfPLIJanLAdv+CfLb50ZNIBrlOtBsxNm+fiw73lpZXhFEI/OpvIEeZag=
X-Received: by 10.84.204.133 with SMTP id b5mr2020035ple.440.1507297021833;
	Fri, 06 Oct 2017 06:37:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.23 with HTTP; Fri, 6 Oct 2017 06:36:31 -0700 (PDT)
In-Reply-To: <947c7792-92d4-780a-e3c5-19dc2fb00706@advancedtelematic.com>
References: <947c7792-92d4-780a-e3c5-19dc2fb00706@advancedtelematic.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 6 Oct 2017 06:36:31 -0700
Message-ID: <CAMKF1sp-KnGeOLOkAdt6aX1b6+KdhpiUwGiLnCAS0-XE-_efUw@mail.gmail.com>
To: Patrick Vacek <patrick@advancedtelematic.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boost + Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 13:37:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 6, 2017 at 5:05 AM, Patrick Vacek
<patrick@advancedtelematic.com> wrote:
> Hello,
>
> I'm trying to understand how Yocto figures out which Boost libraries to
> install in an image. I've been studying the Boost recipes and it looks
> like RRECOMMENDS is used to specify all of the libraries, but yet my
> image only gets a subset of them. It's the subset that I typically need,
> so it's fine, but I want to understand how the process works.
>
> There's an additional tricky detail that got me looking into this. When
> I bitbake a recipe I've written which just lists "boost" in DEPENDS,
> running ldd the compiled executable does not appear to depend on a
> couple of the boost libraries that I'd specified in CMake (although it
> does depend on several others). Only the libraries that are specifically
> mentioned with ldd are installed in the image. However, if I manually
> cross-compile the same code via the native-sdk, ldd indicates that all
> the expected libraries are dependencies. As such, that executable will
> not be able to run on my device until I install the missing libraries.
> Oddly, those libraries are built with bitbake, but not installed! How
> does bitbake manage to remove some of these dependencies?

it could be thst applications dependency detection mechanism is behaving
differently and presenting different set to linker.

Secondly its possible that linker options in play are different e.g.
--as-needed and --copy-dt-needed-entries might be in play

