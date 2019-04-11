Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47662E00CD5; Thu, 11 Apr 2019 06:59:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AFDCE00B5C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 06:59:51 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id u15so5284318otq.10
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 06:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=bD9Tl7JwQKxRVdO1wKS54G6iTKCQ8w6iTdFrj9CiFSY=;
	b=jpneFCgB7wl3Ko1I3TuNWkcodaehm9h1iUwmXDnYeDeipNSo4uy8rrX3owqwQghAsP
	Yv99Xb5831P0v0AwKLByLWpG9hWUTjnPC874jcUx6Qd2wOPzFMjd5z1XgIbaecyNJchO
	PrMrz2gE5PTAalHD8pF+5imMSOau+VrYzTDdX8tY/0IQl4NFpLGHWDea08OoYqFApIvE
	V+0HVx8SfGEjJF7f61U4n9Ka1IdqSj8N2ztsGMcsh3B35kk4AGRNE/+X4l56hCsuAFZp
	rl2Pk9pbnYIgl+lsmk1xY/FRcP3bfUCsEaeZurcm5J0t5y0DJhkyAnEHSeTYj5ro2znX
	Gcaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bD9Tl7JwQKxRVdO1wKS54G6iTKCQ8w6iTdFrj9CiFSY=;
	b=COzpBs87VDYlUvU5omSYL6lK+b+ZX3M1UmIlgikUzxSh4EotoOgcRopIBnV5TzlJr0
	lhes9vfrrmkH86795hHDY4Qrgyhq+8gI1eBIByvw+I9D+TQUAdxxB2v9Rf8WssyE1pqC
	fcnX5x87+uxOoBLBDyDwoUh7PC48rN/ycn/GY0aVNH9pRoAPZcL2Ab0pkL773xTy7koe
	NS6PGBLjIRdAMWyLnLVaeTYUJ5tu7cdzEe99rI3cd8NUHN37m5aO3tSjz+G9826o6tCR
	WIXg0VZLQaNOdRzA8IjUtQy5pOYl6XApdJxOq3vWww7iROEm4HLBTO4BJpZyC7+1PX6B
	E06A==
X-Gm-Message-State: APjAAAWpzY/EDKIFWhTpsLCxJ+5ww3ox9D98pFxpdDA/oIJBPZEWz5+y
	Lt6X95duHRLlHZQB/vk7kXLLK0m9TKbzTDBXhIl5shK2VX0=
X-Google-Smtp-Source: APXvYqzLgtWW2vpAVeuTtmaMkNrI+c8TyNPAMF0uQtnWePL/I/DPm8W1lAzYL9LrXGv6jXm3YoTg1wyH7Q9qNhmZBLY=
X-Received: by 2002:a9d:7342:: with SMTP id l2mr32253594otk.56.1554991189955; 
	Thu, 11 Apr 2019 06:59:49 -0700 (PDT)
MIME-Version: 1.0
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 11 Apr 2019 15:59:39 +0200
Message-ID: <CAOT_U5a+FLBZgD55usLwxRhyWMKp6OmhpVeRJY0YPk5B0nv_rg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Listing files/packages a packagegroup creates
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
X-List-Received-Date: Thu, 11 Apr 2019 13:59:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
when searching for the files a package creates I find it very
practical to use `oe-pkgdata-util`. i.e.

oe-pkgdata-util list-pkg-files busybox

However the same method doesn't work when applied to
packagegroups.

