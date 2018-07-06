Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D24E00CDC; Fri,  6 Jul 2018 15:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1934E00AD8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 15:02:55 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id 59-v6so8424049uas.5
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 15:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jqW3i/b4g3ZHCqNjDVZAPw8jL9ydjZ/4sHKbWxjHVA8=;
	b=cqPLhDFLugjyixJBEcyWXcKF0kOttAugY+CJwGRx4SJAe7TkMkOlLm/oFN6iI1vfnx
	wEcs4WTLTri31k4JftBFp2MxKGovpSoKsU4LHBb7rY1H83gEj5rTZgu1+isKbm/hM3Rv
	IFGYZhLLexZvett3lqxbAB/D/rvAKNxcp1jpe9RptBpEE+5wI2J1A+3Ghb7zKuJ+f9gk
	LmSosjJxlCjt518TMLw5jUbV0Y56PM+Q1MdQQXT0YsLciyvP5hV19fE9OzTUwd4YZbSi
	tDH22AftbXaAng1vjYaJ3q84Ie0MKIZUvMW6d/Jnvbr/2m0TGc57Sh+4/cZtaibn30Wf
	fDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jqW3i/b4g3ZHCqNjDVZAPw8jL9ydjZ/4sHKbWxjHVA8=;
	b=ITWdiem/5N4uxTQBbJA5iJlda785qnTmDPPySra1+AXaImP9tHPh+L3/4ddAvyXVEg
	EKmbbhBv6FRz7JYPzM4F/xFZbSCZlLrJ9ZjuDwjeBnzFaRu3a7eaTtDqEcobz+P5BQ7b
	U4c43HX6HrLbsDd7LQITf4d/C8DSE0vdSk9lKKyG9wAr6LPghcbbjpT1aVrk/DpN/eFk
	q66QX+6UvIcKdtrIA0fhoBxkad525N0J+YVn2GnSdciw5zHIArzSLcTHlSo/tLNMwLRO
	RJp74GaCGDeY0SBlILHdMZMATuSpOjQGw7FekngWvGedAW+ZbHTWJ6edGaMibt16uOVi
	0Fdg==
X-Gm-Message-State: APt69E2n8QuN5YkV4e26YuGxLZxnIUeTxC+2sAyGeZ0zQhk5QXUujLQB
	A5BLy7VF3VoEO5zPZpwGMCcAjNtIHZucXXV62kI=
X-Google-Smtp-Source: AAOMgpfsQJblOlwiw5eULE/U3OAnc6WM8MYr89UGL7XXGoyYyBM+6dXxCJkxpCvTVgsguPNlt/Kakl4k6FMYM4QLecA=
X-Received: by 2002:ab0:1544:: with SMTP id p4-v6mr7333820uae.81.1530914575066;
	Fri, 06 Jul 2018 15:02:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 15:02:54 -0700 (PDT)
In-Reply-To: <CALh9vaXPQfH1hupu7C3AZv3qNa1Szb9A7_=iEkLvQ8GRn-YuGQ@mail.gmail.com>
References: <CALh9vaXPQfH1hupu7C3AZv3qNa1Szb9A7_=iEkLvQ8GRn-YuGQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 6 Jul 2018 15:02:54 -0700
Message-ID: <CAJ86T=We69Eh0ojPu=i+Dg1Tm8wv7D-5qHevcT9=K+RpV1LKAg@mail.gmail.com>
To: Tim Hammer <tdhammer99@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: (still) struggling with initramfs
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
X-List-Received-Date: Fri, 06 Jul 2018 22:02:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 1:22 PM, Tim Hammer <tdhammer99@gmail.com> wrote:
>
> Thanks for the responses to my first email. I was able to get a working
> initramfs in my kernel image that allowed me to do the initial evaluation of
> my solution.

What was the issue? What was the fix?

> Now I am working to get all of the proper content into the filesystem, but
> am seeing some strangeness that I cannot comprehend. I have updated the
> image recipe that my linux.bbappend is calling out as the INITRAMFS_IMAGE,
> but the bitbake linux command did not see anything as changed so ran no
> tasks.

The kernel's bundle_initramfs task depends on
${INITRAMFS_IMAGE}:do_image_complete, so if the new value you set for
INITRAMFS_IMAGE is an image which had previously been built the
kernel's bundle_initramfs might not get triggered again?

Perhaps try running "bitbake -c cleansstate" for your image and then
"bitbake linux" again.

> As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in
> the recipe and this time it rebuilt a lot, but ended up with the "old"
> initramfs (not an empty one as I kind of expected). I then re-enabled the
> INITRAMFS_IMAGE line and this time got a much smaller Linux image which
> failed to boot (Unable to mount root fs- more what I expected from the last
> build).

A kernel image without the bundled initramfs is always going to be
built as part of the normal build process for the kernel (it's built
by the kernel's compile task - the version with the bundled initramfs
is built by the bundle_initramfs task).

Normally you should be able to tell the difference between the two
kernel images by the .initramfs suffix, however the bug you saw
originally was in the bundle_initramfs code to do that renaming, so
depending on how you resolved the original issue, maybe your kernel
images are still getting mixed up?

