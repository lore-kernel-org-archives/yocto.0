Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E05FCE004A1
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 20:55:27 -0700 (PDT)
Received: by eekd41 with SMTP id d41so3393084eek.35
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 20:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6SEt9lB3tViURXXatmJVGUbBKleexTOXo1oniib18gA=;
	b=uyoWEzFCrsnjCOoZzG0I6tO4YR8w+O4F4LykUg6uHx5WXxCvLrKdg1nIqcewhraRf1
	48JVxtC3WTPQMl1lyE9WXU6kqIplVGlvqsxxnwDq/vCObMb+DFxubKuyWxD7JP5CP/dV
	ufT79jR0RKaBc/OQZgLLrpC+amdCns60TeVJ1ZUiF7XHbxSZQBD1kT3bYfbZHVA/z089
	TIVqUzdSw6i5zsV5Y4vFvjfVOBPiDBodjib39SUWCgPYx+NMZUnkXKaYkbc6qTc8iiJG
	su7qw1UspDOpP+3modCySeSBzU6AsLr0sGtZ/SnPfOFEe+LSzUP9BcqkJkXGgr2nVpNF
	zuFg==
Received: by 10.14.202.71 with SMTP id c47mr9274772eeo.42.1347767726615; Sat,
	15 Sep 2012 20:55:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Sat, 15 Sep 2012 20:54:56 -0700 (PDT)
In-Reply-To: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
References: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 15 Sep 2012 20:54:56 -0700
Message-ID: <CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Dependency walk for busybox recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 16 Sep 2012 03:55:28 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 15, 2012 at 10:59 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
>
> So I added busybox-1.19.4 recipe back into my poky master branch, and the resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh executable is 604.2 kb.

make sure that .config of busybox has not changed even if you have
same version backported

