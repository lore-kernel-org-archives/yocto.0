Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E6FE00ACE; Tue,  6 Jun 2017 10:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032A2E0080F
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 10:30:45 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id v104so10874877wrb.0
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 10:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d7QScEXpZAptRLD2NS2yRCtQJ5QgyqbdZh+8HljzqB8=;
	b=mUDinB7o9W//mL5zKCqTvhcQwB56VwjjtzhYR+TSz/3yCCreq4YNa3S3ytA4bgYuJh
	I0zmF+VhzRDqz5DYVQK2KP3RaNny1LKE1+AWfD2eJJyYnO0vvFeMg/3oLx4QGspwLkGZ
	FHrjrHutl18srvviT/h/i02nUbGkH+xJA2AyMHj545YA1AG8xV/EM3BgJ1MKnrXMRu9S
	kCpMf1NvbWHluFYG80w72FIllsO4hYOJGPYO31zdKvS3jK+q/pWISEEm5/q0vDndHR98
	HrQp9NFNlOMFeHsmpNvC2/t7vwE0Fq5aOGyRuHJX1CW0yD2W9ui/U+OrplzHWq/leoO3
	R1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d7QScEXpZAptRLD2NS2yRCtQJ5QgyqbdZh+8HljzqB8=;
	b=Mij9BgJGG0AtGHBBSO/ouL0Xis2kb+sL9kSIhL0tRB6hwiBm9z7VrO1VWNhx5vB8Zz
	Jk8hKmnDYoxtCL7ijhdhPqropHbQqE29BwpYxBoFGNwKqrGE8zqC/tjK20obBRqk2gZi
	7ji8UuAVZ2kh4zUrgzQRELR1NUzlzwZ4Wv8aDoFmU3E1+yE6SvhGST8p1G18JB2FG0WD
	/zZVWWO8eVsccy+JMOYrddzD5dcydMGAHlQwNL7r41HwKF+KV7NRyReLOT+l6sWT8HGq
	iepOINGwWNTG/J7thOF3TbPKE4ANF03tk98J5f1qu1ex3f63BC46peodgkJLZtuDLqX1
	JoCA==
X-Gm-Message-State: AODbwcDlI/WGuUXL1SVVowI6zNu4GcpR1Du5/akwUl7FzuhGbuWIBTw9
	yMR7DBT+qaTL4wivwMqFrV8LT8uiOw==
X-Received: by 10.223.179.199 with SMTP id x7mr20556459wrd.72.1496770244916;
	Tue, 06 Jun 2017 10:30:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Tue, 6 Jun 2017 10:30:44 -0700 (PDT)
In-Reply-To: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
References: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 6 Jun 2017 10:30:44 -0700
Message-ID: <CAJ86T=UKHVqKXtUNTWamKwTd0-oSLWVYn3K06AeUbRwYcHR_fQ@mail.gmail.com>
To: Zhuoqun Cheng <czq@bu.edu>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 17:30:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 6, 2017 at 5:42 AM, Zhuoqun Cheng <czq@bu.edu> wrote:
> Hi Yocto Experts,
>
> I'm fairly new to Yocto and I've already tried my best to search for
> answers, but not happy with what I found.
>
> So here's the situation I've got:
>
> I'm using yocto to build the intel aero board image, following this link:
> https://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Guide#yocto-for-intel-aero
>
> Everything worked fine, until I wanted to change the target architecture
> from the default 64-bit x86 to 32-bit x86. What I did is three steps:
> 1. do a clean: bitbake -c clean intel-aero-image

Note that running the clean task for the final image doesn't have any
affect on the packages which go into that image, so this step doesn't
actually do very much.

> 2. change configuration, from "require conf/machine/intel-corei7-64.conf" to
> "require conf/machine/intel-core2-32.conf" in the file
> "meta-intel-aero/conf/machine/intel-aero.conf"

Here you are changing the target architecture but keeping the machine
name the same. In theory it should work, but it probably isn't well
tested...

> 3. do a build: bitbake intel-aero-image
>
> Unfortunately, I got loads of errors, like "ERROR:
> linux-yocto-4.4.60+gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue:
> Architecture did not match (3 to 62) on
> work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+gitAUTOINC+2cc78e92f4-r0/packages-split/kernel-module-gspca-kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb/gspca/gspca_kinect.ko
> [arch]
> "
>
> Then I tried deleting all the files in the packages-split directory and
> rebuilding.

Manually deleting anything within a recipe's working directory isn't
really recommended. Better to run the clean (or cleansstate) task for
that recipe instead, e.g. in this case:

  bitbake -c cleansstate linux-yocto

> It passed building the kernel (even though failed because some
> other package's arch mismatch), but those file I deleted never got generated
> again! Now I'm a bit worried.

It's quite normal that build artefacts will not be generated again if
a recipe has been successfully built once before, since build results
are stored in sstate cache. To force a particular recipe to be
rebuilt, you can use:

  bitbake -c cleansstate <recipe>
  bitbake <recipe>

> So I guess my question is:
> What is the correct procedures to follow to reuse a poky folder (already
> built once) for a different target architecture? I'm happy to accept any
> links and suggested readings.

The normal way to recover from the kind of problems you are seeing
would be to remove the entire tmp directory (and if that still doesn't
work, then manually run the cleansstate task for any individual
recipes which still fail to build).

> Thanks a lot!
> Tom.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

