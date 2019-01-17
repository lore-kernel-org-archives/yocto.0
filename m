Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03F99E00CE5; Thu, 17 Jan 2019 15:18:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B450EE00C91
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 15:18:04 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id c9so3521090itj.1
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 15:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LkBFQLL8DYDv3jkM8uch+MT8/tP+IMM1kpyz+LhpHEI=;
	b=LZ3r7a3mcYSzSRp0toDQdy8hKdZMaJ8HNGMxHl+VDA4OuBDmP0AsgCxecAGdQc12Qe
	C8xVFxdLcis6s9LFZEwpfZp7Xfs6YJww+1vSwCuqcN7WDOWg+tHPAKfW9XVmUz9jSVdp
	4a5DhaPMEDTM9oF3tQ6zhP/Di6YK/yDJy7P3yf0BmA1Qe+VT+G7VQ9g6ejZzFh7jYUt1
	vXb/hF1LC7om41p4meR/2+aMS7axVKt6pP8jx0FvvePn9V454SNqQvTGVT6pG4kCWYnx
	fnPS0Whsy6B7G5YMOy45rgwImlKzG9jp7NX9Uv1D1c85HgSZeb50DQoIlkxps0pycH6t
	ycvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LkBFQLL8DYDv3jkM8uch+MT8/tP+IMM1kpyz+LhpHEI=;
	b=eZWeqwYRGvYWj3oXn8RifMWWAolo80unxJ+WROTRmENu4UW52aUpN3hxhSDtyYuRaz
	Qb1hTJpsU+LDfnGkuwjgKPsDsngVjUsoU6pRbdz9JxQX8VjqpY8IoTJNXmnL64rJbXH4
	6sTJJ8GHr1RdY4lzmgYqtDUzAY3wHlkleGWclYDrD93027DodXC/6AZZFhRE5u2eLyJo
	sZSq0Q/JYvFdzpJVGOmSuDF2Yp3xjJGlpkwLQ7DDbXdJZNAvOwwN8SQ9MxiEfxxlEUhP
	+O7hvZlFowtuDMWQ0MxpIghucCm5l5UD18Bg3DGFJGQdyBnbxSCVuFSUlfRpdTqTr6+R
	DduA==
X-Gm-Message-State: AJcUukc2NejzvrUU9mwyIm4yOC0MX3wLvx5E1YE/SqRzK9VO4XgQYOmJ
	phYznu7nTCkSogDvAAwWB4iHN3/+O0NeiL6c2A4KgbDf
X-Google-Smtp-Source: ALg8bN4zeByfQE90EGkhBb1M1U3boLKGknWtv0vmwArz0mWIb1tJZi0l0Ie6K5F1nSNAJglZik7XcHS4v8vbfuWrFZA=
X-Received: by 2002:a24:c601:: with SMTP id j1mr5796103itg.130.1547767084263; 
	Thu, 17 Jan 2019 15:18:04 -0800 (PST)
MIME-Version: 1.0
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
In-Reply-To: <1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2019 23:17:53 +0000
Message-ID: <CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Thu, 17 Jan 2019 23:18:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Jan 2019 at 22:50, Ulf Samuelsson <yocto@emagii.com> wrote:
> > We really can't hardcode a list of tasks like this in bitbake :(
> >
> > The list is also incorrect (at a quick look its packagedata and
> > populate_sysroot is missing).
>
> I would say it may be incomplete, but it is only wrong, if they are in the wrong order.

Richard's point was that those task names are oe-core specific.
Bitbake doesn't know or care about the specific names.

Ross

