Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515C0E00B45; Tue, 16 Oct 2018 04:21:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2861CE00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 04:21:13 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id q50so22137833otd.0
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 04:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nW/z+YLM0NiMgA8PMV9OrNIqrrPE0K+nqjiRi0DPEKc=;
	b=tB/mk5CJWfw0R+DHOAvlfN9751Tl3R3RzxWjlLa4lTNSmhujvFs37eGjcvNp3awRry
	P4elK2axoO5Zc2LiiFdmhZe/OjXnZ6/j7YqLJNWqNRw5q7ZLpoLP2sMrEZWSXNwrhR3O
	1rOe/RNL/1E0CnDjJyQlWH3AyDvrg7MryPe1QPS0Hitv5KRbu3t9EfqHtZuw9xX6z2gY
	PFtPFi2rPdr5G70AjmkIs9+pRA3wkdFFClLWo2BHwO8CMMmk7NmBIhIW0Disl0B0MUTC
	DY5+mhWJWdRji6Cte0jDAIAlPr/ms8fYtEtHEX6gVZrCiaC1qjkv+3Ye6z4JvJJedVyt
	+pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nW/z+YLM0NiMgA8PMV9OrNIqrrPE0K+nqjiRi0DPEKc=;
	b=CTKqe3zfeFkx7Fatat2F3JEFtwGC4G/kARfDbGVdttY7FiwuNI4V0ZxLIniNGZ6bk1
	sZ/4rJaSaKagSW6XqfyBQBnohe7Jb2/HXzkKV8TrcdA0y63STPaadDtOXy6gj7uqhaDS
	fAfgMWzT2UMVlb4D0aYPZSG53tlWReUrsP8hV+gR2LyOUTkeY5H9+zG48yrK8fW0Yf//
	fzPYi4JrWf1pno6ho8+OT50h75VvDo30iSS1EmygaUkGs4jRLKGqv0spE9zzisDyofFK
	7DD0nDRbNnwgKMzWNcAkisaImLVGEQTfcBAqDD2mVVLakJWypB6xbnnY0YVXoFLYosQw
	l1GQ==
X-Gm-Message-State: ABuFfoi7YLsuDZwOwKyqTzFyJHyjjWggPPPUalVwE11sfR1XJ2vXuFvl
	aWi7m3VqKt5deyUjw/yy5zpYsJFQBicm+N0vvD7XMg==
X-Google-Smtp-Source: ACcGV636knrj80BK5VYkjTsatMhpKI3Kv3gu7nNQu7NJL+wHAPg2yMnfgDYCFMsBjKGNTXiY9yYsDAUtmt1DvQPwpuI=
X-Received: by 2002:a9d:70d8:: with SMTP id w24mr12557105otj.147.1539688873456;
	Tue, 16 Oct 2018 04:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
In-Reply-To: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 12:21:01 +0100
Message-ID: <CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
To: marwen.brikcha@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Tue, 16 Oct 2018 11:21:15 -0000
Content-Type: text/plain; charset="UTF-8"

Disable the 'python3' PACKAGECONFIG in the opencv recipe.

https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.html#var-PACKAGECONFIG

Ross
On Tue, 16 Oct 2018 at 11:17, Marwen BRIKCHA <marwen.brikcha@gmail.com> wrote:
>
> Hello,
>
> I'm using Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xilinx embedded linux for zcu102 board.
>
> I've integrated OpenCV libraries on my image.
>
> So, I want to remove python3 from image build .
>
> Can you help me here on how to do that ?
>
> ----
> Best regards,
> Marwen
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

