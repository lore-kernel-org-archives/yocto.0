Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD53EE00D10; Sun, 15 May 2016 11:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f66.google.com (mail-qg0-f66.google.com
	[209.85.192.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 113F6E00CFF
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:30:47 -0700 (PDT)
Received: by mail-qg0-f66.google.com with SMTP id e35so12101001qge.1
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V0hIpof/AmwyMkFvicH5Jn0PodMlUHhqW5R/VoyECzg=;
	b=YiuMdOKb0eel6pNM41lq6uoVCS7zQHD7tWBL8SGqtpuqgNaYTq/XMKLecPqyMswOph
	RuybwHH3m7pVJpTU5fyQRn2rB4pBsQJdMj+UNRmFaBg9LJzfeaz75P0DxhFIUra2EDK0
	Tz+2J4FGjHi46kaOjV7iQMgJxA1IKBmv8LvsYoh08BJT+xhJS8k218GwmcPwzAm9O8HO
	9PfzZoNU3A50HSSfi3IHgW7Wuz4F3GOFctWnvtdkFM2w3C0dq+0NkXskBXDWjmU2C/wQ
	7u875hMw9eblaFFcuX2b2+ySOrQa0hTh11xzkgRZZ+JRJUwIHt3XFeJPKZERNVYSi+jA
	9yEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V0hIpof/AmwyMkFvicH5Jn0PodMlUHhqW5R/VoyECzg=;
	b=aAIWdqJLy2yx1rzz+UFejt/qRqCuBNOO6+IJXF87GT8pzS4+0KNVpS0XPKqbPhs1jN
	X/UBa3VYugCXFE90zqJGVwMNcV/C4fygZulsQqr0CSs5dWYZnSDb11LM9Dsef/JpWZOM
	OxZyjUYjfy5gGjj93RgZlmOOAt/6DLfw6f2lY2E9OZt1xV8+MmAfJKKGtSXiB7hzirZ6
	O8l/AUkyk8LJea7oOrmqh3G0mdP3psofQuH+Mi1FPZ1ReqaMyA8q58LSfzDY35edMPlu
	MTKTFeuIklZDQ7Ca2IBUME+Vi7j7EdORE0WoA0SBwZZcS811isdTNH0qpaz3OL0gELQL
	wVfw==
X-Gm-Message-State: AOPr4FVWf0DnsLbFPqBW4bPI+btq15BtEaG+YNRX3l9dfGNQqkpK/IoWPHfZkRd/sU+fawHXw5b2Z6uEibVb2g==
X-Received: by 10.140.199.8 with SMTP id u8mr26682367qha.5.1463337047308; Sun,
	15 May 2016 11:30:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 15 May 2016 11:30:17 -0700 (PDT)
In-Reply-To: <5738BBBD.3050407@gmail.com>
References: <5738BBBD.3050407@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 May 2016 11:30:17 -0700
Message-ID: <CAMKF1sqdAyY7dSt0gJAcYA8c=gcsFZ_25qru1VKgmYjUodMbgA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: Branch Maintenance process clarification
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
X-List-Received-Date: Sun, 15 May 2016 18:30:48 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 15, 2016 at 11:11 AM, akuster808 <akuster808@gmail.com> wrote:
> Hello,
>
> I am reviewing the stable branch maintenance for Yocto and would like
> some clarification on a few steps.
> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
>
> 6. Split out any bitbake changes and send them to the bitbake-devel
> mailing list (marking them with the appropriate stable version in the
> subject line e.g. [1.20])
>
> AK] I have not seen this being done in the past. Should we start doing
> this or update the process ?

I would also suggest to add OE-Core branchname along with bitbake version
[1.20][krogoth] or [krogoth/1.20] some thing like that

>
> 7. Split out OE-Core changes and create an openembedded-core-contrib
> branch containing them; send the cover letter only (marking it as such
> in the subject) to the openembedded-core mailing list.
>
> AK] I don't have write access to do this, so this will be a problem.

Ask Michael to add your keys to contrib repo.

>
> 8. Split out any meta-yocto changes and create a poky-contrib branch
> containing them; send the cover letter only (marking it as such in the
> subject) to the poky mailing list.
>
> AK] Is this required?

yes.

>
> I do agree that the downstream repos are where the changes should be
> pushed first  then feed poky. This is not what I have seen happen in the
> past nor did I do it for dizzy either.

Usually changes flow into upstream layers and then get merged into
downstream distros
like poky and others.

>
> regards,
> Armin
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

