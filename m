Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77727E0053F; Thu,  5 Jan 2017 19:54:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C3BFE0043B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 19:54:02 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id f4so1594109qte.2
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2017 19:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yHC5m3PfJ1PSMuB2b1mdl5L6QHyImJeeAt88MYStDgE=;
	b=l7jsIyCW23am/l2DUdzawWNQrdMO0emUvM23dCrlriLyXrI8kUDju7AoiT0DcdJoU6
	A6MZu2rdqC7/v2lOi2GJlkJSbuVgf03/vQQOCohH3UuYYDQWfcShdrZL8d1srBSVFgSL
	q2LWk3NyIXjEwXGdsGNAYUYlw/fiyyTA7vqUu1e2Wui5CQIoj+qmIgKmvxSI+Ue7HIaQ
	8DKBW09Zue+U6oCzwvq91pSk2pcyIReu9aCdxtdFxY+8Dap4B/xHBhyPOA89jnCqaEiB
	DfjXcsYAhUcw0SzU7It03G3Uujd+00Thi/pNkaJyRMuJF6+dzyo7Ur/e7v3kWmutq+FK
	7Pbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yHC5m3PfJ1PSMuB2b1mdl5L6QHyImJeeAt88MYStDgE=;
	b=US4bBAZMMZ4pSPIh1Snlb82P3Jd3CObPBltoz5B1dSXRoQ4hBjYZkoEnskB8frSRTY
	u3feZLOv5Iwv+adetb7fOO8UfT3RAeYKcnyKd3OwQ5zg5BIZsGc5rtwWQwtEY7Xh/xa0
	siYdtbSAegMRzpovNgDJWNK3jJodFi9RrIe1JsY9CiyN/VF6afPLJeqTugA0yPGyEOVb
	Z7bpNdwSZxrvMirMTj2KRz38BE+IsODbgNiccCaSlcFBH5YCs/aEJi5IfWgb+w2HWddj
	6MmxYlSCDt16Zr4oZPzvA2YtApNcfhz0fYdh/jZkeU7Et/M7XAoXDQl2ORnlnLKSNQxl
	zp4A==
X-Gm-Message-State: AIkVDXLPGnWHWF9IcPbLvze8nog75Dx9/UH69aBMsXFk41nbbAzPlqzjkwg7Dc4+4yOeKnfmvvfQZ/wwIBm/2A==
X-Received: by 10.237.36.12 with SMTP id r12mr70677483qtc.97.1483674841783;
	Thu, 05 Jan 2017 19:54:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.43.135 with HTTP; Thu, 5 Jan 2017 19:54:01 -0800 (PST)
In-Reply-To: <20170105215916.072b9215@nuc.betafive.co.uk>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
	<20170105215916.072b9215@nuc.betafive.co.uk>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 5 Jan 2017 22:54:01 -0500
Message-ID: <CAHUNapTy3KM_MwRkdXVptjUYR5S344pvXKQDG-5v9+==2tA3sQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Fri, 06 Jan 2017 03:54:04 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 5, 2017 at 4:59 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Thu, 5 Jan 2017 15:16:19 -0500
> Trevor Woerner <twoerner@gmail.com> wrote:
>
>> On Thu 2017-01-05 @ 07:33:38 PM, Paul Barker wrote:
>> > On Thu,  5 Jan 2017 12:42:29 -0500
>> > Trevor Woerner <twoerner@gmail.com> wrote:
>> >
>> > > Add an -rt kernel recipe for Raspberry Pi that includes the FIQ patch which
>> > > adds stability to the -rt kernel (with full preemption enabled) and is an
>> > > improvement to simply disabling FIQ on the kernel cmdline.
>> > >
>> > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> > > ---
>> > >
>> > > changes since v1:
>> > >   - use "make savedefconfig" to generate the defconfig instead of just
>> > >     using the full .config
>> > >
>> > >  .../0001-fix-dtbo-rules.patch                      |    44 +
>> > >  .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
>> > >  .../linux/linux-raspberrypi-rt-4.4/defconfig       |  1249 +
>> > >  .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
>> > >  recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
>> > >  5 files changed, 33061 insertions(+)
>> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
>> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
>> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
>> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
>> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb
>> > >
>> >
>> > Would it be possible to point SRC_URI at kernel.org [1] instead of
>> > including the whole patch in meta-raspberrypi? It feels a bit much to
>> > me to include a >1MB patch file.
>> >
>> > [1]: https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/older/patch-4.4.32-rt43.patch.gz
>>
>> The "virgin" -rt patch from kernel.org doesn't apply cleanly. First off there
>> is a slight version mismatch and secondly this is the raspberrypi kernel, not
>> a pure upstream kernel.
>>
>> Is there a way to patch a patch before it gets applied? If it could be
>> fetched from kernel.org then patched before applying that would be ideal!
>> The diff isn't that big; it's sad to have to provide a >1MB patch for such
>> a small tweak. I guess that's why the yocto kernels/patches have their own
>> repositories on yoctoproject.org?
>
> I think it depends how you want to maintain it going forward. With
> frequent upgrades to linux-raspberrypi I can see that >1MB patch being
> modified very often and I'm not sure how good it will be for the git
> repository size and efficiency.

Okay, agreed.

> A linux-raspberrypi-rt repository on GitLab[1] or some other git hosting
> service may be a good idea. I can see this having value outside the
> OpenEmbedded/Yocto Project world, especially if the vanilla -rt patches
> don't directly apply to linux-raspberrypi. If you decide to go this
> route and need any support to make it happen, let me know and I'll see
> what I can do.

Sounds good... and Wow! GitLab looks awesome! I guess I'll look at how
the yocto kernels are managed and see if it applies.

> Also, are you thinking of moving the -rt recipe to the 4.9 series when
> upstream linux-raspberrypi declares that stable?

Yes.

> When they declared 4.4
> stable they stopped updating the 4.1 series pretty much immediately. I'm
> currently investigating whether there is any value in maintaining the
> 4.4 series ourselves after upstream moves on.

I want to see how managing one goes.

