Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 164CAE0096A; Mon, 20 Aug 2018 17:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95C4EE006AF
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 17:49:07 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id h4-v6so18403053qtj.7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 17:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mwY+66h37EVpR/elv9F6KQpr8uWhi53XGcbjIWlpQHg=;
	b=JM6/yvHozbNgjrqElJ6hrSsEWEt9vmrWqy5I5D6e4f727mftkIQA27ZG8Q1hP0cLIY
	JRXv1vxvJQQT1bXfi2gVpQ4qq9ASSxl6xd9Iju+rNDeXg9eu4pC2B/Y1kpIxKMyDSKv2
	VsG8Uww2oAhyo1CB57Dz00ldiXqNKLCya9UDdY6c371eHlUedX81AXoMed0PF2RjQ0iz
	JZl7Q3iIbDwZyTGwYsCDwHltdGRTqV3cX9RmKwo8VUTYUfdY/B06mlm9coqrBy6+t3iY
	4MV8D8IE+8G02othMY9Bku12mzUETpz3j30pXu+ikEJpScHkifl/1AP5pBYrSPnW0Ea6
	bUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mwY+66h37EVpR/elv9F6KQpr8uWhi53XGcbjIWlpQHg=;
	b=nVLvxqZARFQjHt6LffT3A3Fadd4jXiTi4JuKPAi78HnQCYzHUQy8OHIKXXFUTieNLZ
	ZiRnnPdy0u9LVRSqJ9JrKsesoVmbsWJjRTeXJZ41bWyXAVqyZzrpp2MmUmxYydAQp0HJ
	XYsTRMtpkf+Oyrl3uyoDtbObXnUmtLGlR4dyZ9iVCwKTsliu3/oCgTiG1huN3vcAW3a1
	PpvTZrt/S92RoELSph5FwwEMF2cRwo05nOnCh7mRJFxtE1U3XA56ahbqyrN9to7oX8yY
	sOA6G28GE4WTDb4wVFusZJgbG7v2H0dnaeO7hgqDnHUKCKl7PWOWcDDRxueUcgyMkqO5
	DbIg==
X-Gm-Message-State: AOUpUlH52GSUb3vx2uQD4AmgdxExyFwURQH0egsvgoQoN1OLPxNrdBi9
	K5ZUggLrKjfccpMpqDp+P3D7sOcQpdmr1gI5cCM=
X-Google-Smtp-Source: AA+uWPwvDMVJgZOBLe1Um/Z3Q2zfhx8kuSWKregZPkz8G46VE5PD49ikwLhapOCDo0/fDt+bWOMXNNLjt++FBcYnxZo=
X-Received: by 2002:a0c:f791:: with SMTP id
	s17-v6mr43962740qvn.194.1534812546660; 
	Mon, 20 Aug 2018 17:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOiuRWVW+UFZcQR4MYHW13+VORjooUj6hQUGKu5QG78=bKzpHQ@mail.gmail.com>
In-Reply-To: <CAOiuRWVW+UFZcQR4MYHW13+VORjooUj6hQUGKu5QG78=bKzpHQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Aug 2018 17:48:40 -0700
Message-ID: <CAMKF1sp35VwhX6mPOeQjj7UErk8-8j+jF8g-JzUkm7LQnS+B1Q@mail.gmail.com>
To: warrenphd@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: opkg
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
X-List-Received-Date: Tue, 21 Aug 2018 00:49:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 20, 2018 at 2:41 PM Phillip Warren <warrenphd@gmail.com> wrote:
>
> Hi, I'm currently working on the pyro branch (2.3.4) and have a need
> to support opkg list-upgradable; however, when I execute opkg
> list-upgradable, I receive the following error:
>
> Collected errors:
>  * opkg_list_upgradable_cmd: list-upgradable command not available
> with external solver enabled
>
> The pyro opkg version is:
> ~# opkg --version
> opkg version 0.3.4 (libsolv 0.6.26)
>
> What is the simplest way to enable the list-upgradeable option for opkg?
>
> 1. Write a .bbappend to apply the patch to the 0.3.4 source that
> enables this functionality? Where might I locate this patch?

usually this is ok and upstreamable, but may not be always possible if
change is quite intrusive
you might look into opkg git here
http://git.yoctoproject.org/cgit/cgit.cgi/opkg

particularly this commit
http://git.yoctoproject.org/cgit/cgit.cgi/opkg/commit/?id=cc624806a6179c2d3d7b3eec4260e50ab0653c5d

be aware that it looks like it might need some other commits too.

> 2. Fast-forward opkg 0.3.4 to a newer version? What's the approved way
> to do this within the yocto environment?
>

sometimes this might be fine, we wont accept it upstream without a
solid reasoning but it could serve your
purpose and you can maintain it in your local project. Although be
aware that it has not been integrated with
older versions of yocto so there could be loose ends.

> Thanks!
> Phillip Warren
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

