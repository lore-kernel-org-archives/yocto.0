Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5EBFE0088B; Tue, 24 Jan 2017 10:20:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0294E00833
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:20:22 -0800 (PST)
Received: by mail-vk0-f41.google.com with SMTP id x75so117672170vke.2
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eluAyBZioEYUrhmjBw4CUSoLUORZts0IOFFKYtTzqrI=;
	b=oZJhI6NO9sTLJjD8qPXgY+RjO60/fUzbhB9KZm+T3OwVOHq7UgA4gwFOG1+Zdgr4JI
	ydjEK4U2GTk3xlXtxaU0o9W++5bNMC3ah1KOi7mLF5VWyHiV0CIHJVaojHkl+/5dtcFv
	6pzer7Q8TBInHJTutI0Z1bNVliJNIsQd/KnXWC9DwcHEjAzo6BgdYqG60Zg2Izif7vxv
	I5VPytLUEujWhSdjXxmPcdpbdPfBF35ZpCqcRZnEcEgIGqichCQ+Pw9nHl2lcLi0KcCP
	rvtOf1tTMk54vv7I59sBM5m/GGa3WSwmmuTB9W8NW3ONtTuX9T4CLbvCYHFCaoejhnBJ
	UWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eluAyBZioEYUrhmjBw4CUSoLUORZts0IOFFKYtTzqrI=;
	b=jttflIr9lFSLwP6b4PHckWbYGTC4aUPMwqZz2DM8OGQiD4mhOooPAEU6zAVHfdkgwh
	MJ0+1vpIbiCrykFEvyXVaHeSiS/krLvtSZwaGQ11yFvfLEt2mJWYO16jcySkWDoQktfN
	j/HRukgItLyPhn0P3mY3sZfmfOmcuQxOcBKs3agUqErMA2X1sxQjj+y0atfHsX7q02xd
	i8y0l0GYJM2tEW5dTQw8+UVOgyTYqGCsdY8dzaHIgFBS0ieayN3Wo1XSOvIDt+ZN8X2U
	O4o9Kj5hE14jh8cEVZH0nC8ItT6E/FB+E6QCoJu/hV2IkRaDvUcpfe91Aj5pOzRLqfbI
	32RQ==
X-Gm-Message-State: AIkVDXITVPru2sZtHsodmevQrqU15H5vkJ9tm4Vu8ZKZb6CF8aadx0hKGPZMzVM5sIbqtWNpXv0BqJks/sEQeg==
X-Received: by 10.31.108.149 with SMTP id j21mr13599926vki.93.1485282022210;
	Tue, 24 Jan 2017 10:20:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Tue, 24 Jan 2017 10:19:51 -0800 (PST)
In-Reply-To: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
References: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Jan 2017 10:19:51 -0800
Message-ID: <CAMKF1sp05mvcfJaQ__dJgEOPRgqQOXNEjrPrkatuDtH2kbUmfQ@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Tue, 24 Jan 2017 18:20:25 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 24, 2017 at 9:55 AM, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> In order to support a use-case that embeds information about the Git
> revision of Yocto itself that was used to make a build, I would like to run
> some arbitrary Python code and dump the results (Git SHA1's, tag names, etc)
> into a Bitbake variable.
>
> The idea is that the variable would get consumed in a do_install() task to
> populate some cookie-crumb file in the package payload.
>
> Something like:
>
>   DEPENDS = "git-native"
>
>   python () {
>     # This pseudocode isn't strictly functional for invoking Git, but you
> get the idea
>     d.setVar('GIT_INFO', subprocess.Popen(['git', 'rev-list',
> ...]).communicate().stdout)
>   }
>
>   do_install () {
>     install -d ${D}/etc
>     echo "${GIT_INFO}" > ${D}/etc/git-info.txt
>   }
>
> This all works on a fresh run, but Bitbake appears not to be evaluating the
> anonymous Python function on each execution. This leads it to have
> out-of-date information about the Git working copy when global state changes
> but happens not to impact the particular recipe holding this logic.
>
> Is there any trick available to cause the Python function to execute (and
> hence update the value of ${GIT_INFO} each Bitbake execution so that the
> up-to-the-moment contents of it filter into the calculation of the signature
> for do_install()? Or am I just trying a wrong-headed approach and doing
> something illegitimate?
>

May be you can do it as a post processing step at image build time.

> -Matt
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

