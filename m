Return-Path: <karthik.poduval@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8BB9E00D8F; Thu, 24 Oct 2019 13:42:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 708BAE00D4F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 13:42:17 -0700 (PDT)
Received: by mail-vk1-f193.google.com with SMTP id s129so2747037vkh.0
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 13:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=y4FlYWDrjtARvzBu/FHR3jBM920UEXLwcM3xlJLyLXE=;
	b=dErVdt7EiYdGHCqq18ub9RFnh0DnMNTzfcCUX1EPzkpn2fCMvO6ZwNwbwT/jRP4C91
	b+CDccnRyjI14t3oujLA9d9C/cD1gASmUv4m5maK+rm4nV5i2DRs6Hsl8l5wehSq1KMw
	nsCS5PbewS0/1CTdqK+eK1i0yck7y/TeKcPMu2eHLutSOJ57I3cbd8TJ7G6eVqgxwTI5
	S0+GiI5WWnIg9DOXSfC76v86PkRhXXVNqUu8pjv79rEyqgocpwRfoAd8eFxeAVxFpSy1
	ajnQjAgMQbPvp52QcvMzT4YlRIzkWV2zF6PRUK50XO0PR0HaYiRPdzHMiRZBQbA/tmYu
	sI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=y4FlYWDrjtARvzBu/FHR3jBM920UEXLwcM3xlJLyLXE=;
	b=R9XALVUmgP1sRS7xSgE2/ozmc5YFC2z1iA61PZy7jI6LacX27V8dcccrp1tH+akffv
	7puQ2Rb/yHKVkPXaOBSrDqSvnc3/Hgm3g+79NkWonrw5+iRJGYRyw76/qJgMeViB+tHt
	6/BO7b3sB0MJGRl2R/oFssUoEH2AWg3iW3G9H2IZVvoSkae6Z8IvrvwIUAb6I4oeDjDt
	yd8xn3zBXQmEOOJQ+qZahZy0Rk22y0JtD5emua2LG2hSEskaZwqr4KoiNV3yJUmJj3FP
	Axce9KVBoMKalJSWvPt1NT1LwJzwFx52YVOONkpFRukUo61+kh+2+Yh6sot4Wdc1+ouT
	L5kA==
X-Gm-Message-State: APjAAAV0zEByTY5iN8mddxaguMiVETbPyZX3Dy1XzN5k2v+FpmHf98W4
	Kieixu+5QHzbRoq3ciy3MK2sk3eZ7yaXWJa/3xg=
X-Google-Smtp-Source: APXvYqx0W7LTc2yiL/riIL2+DShqxfPRztVc7V7X6h0E80kpi2h+4/iptKZhv6WeA6GkcEwIxxso7J7sDJ8VD7nKOmA=
X-Received: by 2002:a1f:d906:: with SMTP id q6mr185828vkg.25.1571949736369;
	Thu, 24 Oct 2019 13:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok9yJyq+LkDLNNPpiA=BMEwnpEyzT2a00t146rw-93=rkQ@mail.gmail.com>
	<CAP71Wjw1D5Z2Ef3LCWxw7bkiXWYcO0KsSZ6n5mO=RMiNFwUD_g@mail.gmail.com>
In-Reply-To: <CAP71Wjw1D5Z2Ef3LCWxw7bkiXWYcO0KsSZ6n5mO=RMiNFwUD_g@mail.gmail.com>
From: karthik poduval <karthik.poduval@gmail.com>
Date: Thu, 24 Oct 2019 13:42:05 -0700
Message-ID: <CAFP0Ok9EVHeMRp13N6HOCn=gLT474We7EifRRiPVZinFYk3Zeg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: kernel oops/panic stack trace decoding
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
X-List-Received-Date: Thu, 24 Oct 2019 20:42:18 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Nicolas,

Can this be tied to a yocto command, something like by adding a new
stacktrace.bbclass (since yocto knows everything about the cross
compiler, vmlinux path, not kernel modules path though)
bitbake virtual/kernel -c decode_stacktrace < stacktrace.txt

Any thoughts or comments ?

--
Regards,
Karthik Poduval

On Thu, Oct 24, 2019 at 8:55 AM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> On Thu, Oct 24, 2019 at 5:47 PM karthik poduval
> <karthik.poduval@gmail.com> wrote:
> >
> > Hi All,
> >
> > I was wondering if there is any yocto supplied tools/shortcuts to
> > changing kernel oops/panic log to line numbers in source code ?
>
> it's not yocto specific, but i like using scripts/decode_stacktrace.sh
> from the kernel source tree.
>
> >
> > --
> > Regards,
> > Karthik Poduval
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto



-- 
Regards,
Karthik Poduval

