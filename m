Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0AC0E00872; Mon, 12 Nov 2018 01:35:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EEA3E00754
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 01:35:31 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id y3-v6so8470340wrh.10
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 01:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ieQAVebDFuRoc8GctIQwheKDT90FTCzHvoT/xUG15Ls=;
	b=SnVaD2D0xN/L8aeIULv5V2y10aCyiQlZOIfrb2ceDz0h87VgFAjZ1FtpUjE4Navc0y
	5ZUQxgwCtp/OAcvu9uJAswFAeoYitWZdZgsm08j05Bqf9QkLmKptRYpwaMRv3hqQ0azG
	Womb/pMcCyKxCrK+yfhmmJr+QsMQMMOKP76/Aj4mWvC5QY44TjSH0LnFtARYcav1A7Fb
	F1Xpc9lbb90DSe7HCxaYQT1SbydIOLpG+tXmvLppJy/z81MHJVl/xtiXHagKZEeFmaMr
	q5ol9iACC0UmqvTZHJtN+xnAonOaqYxkl3fkfrFnfsRMr4BqfL2zVPk+fK8kXC4MFTgs
	rnQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ieQAVebDFuRoc8GctIQwheKDT90FTCzHvoT/xUG15Ls=;
	b=EePqMhBArK0y97SMswxH/TR9akFNvvoGB/eBhs5g86a6LuldAQYK01CZ0KHEeJHPHO
	ZOJ9fiHuTMBPZbbgSlK/Ng9E4yyvX0CPHz1JvpyJzxJn7j3CdOUQkWSnhcaRN8cgtydO
	CxqETLCYQ1swrohtg/p/JOMkRz2cWqGK5QKLzhtNbHXzO22kqXWzz/mlLdQtPoSdv/RD
	tb1E6bJjT/OmWYISL3j6NDktTqZUOtcpUOKukDPWUqR0f2uJM9ey3CX+y0vpSX2zoecp
	HEmFApTTUrQIuS6579HEIYTOcCfMnVmCVfpa5efAmwJiyxE18J8y+ZN+RT+4YeOzJfj2
	IXkw==
X-Gm-Message-State: AGRZ1gJoe3zCn2zGCk2ulXnQDtNKr6WBFNF9zNKWl179kuCjf27NA6l1
	8Fy5JtcHMWFHaErKr7cjOTrYIy9nvMbXqnnzVr4=
X-Google-Smtp-Source: AJdET5diAy66Hom8o2UpwwuHna6/uTLfv/iI5kAgVQSKoo9oiW751r/BEvqHxOeFtSPUWlSX4QhJ+gyY3a4YtZG/R9A=
X-Received: by 2002:adf:e388:: with SMTP id e8-v6mr215672wrm.321.1542015329996;
	Mon, 12 Nov 2018 01:35:29 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34hdgkOrO0JB0ADVDYsZfBoNULDu9k9w7RLjg4LcZTdYw@mail.gmail.com>
In-Reply-To: <CAAfyv34hdgkOrO0JB0ADVDYsZfBoNULDu9k9w7RLjg4LcZTdYw@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 12 Nov 2018 16:34:53 +0700
Message-ID: <CAKYr3zzd_k-DJvZQ-zSG4WGUUMh6rmwm4w0Vrv_ov1HxRWbFnw@mail.gmail.com>
To: marek.belisko@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: using pip3-native to install python requirements
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
X-List-Received-Date: Mon, 12 Nov 2018 09:35:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 12, 2018 at 3:22 PM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm having recipe for custom python3 application whcih need to install
> ~20 python dependencies. I've create requirements.txt and using pip on
> PC I can install necessary python packages. When try to use
> pip3-native (as DEPENDS) and call pip3 I get some errors:
>
> pkg_resources.VersionConflict: (pip 8.1.1
> (/usr/lib/python3/dist-packages), Requirement.parse('pip==9.0.1'))
>
> I would like to ask it pip3 can be used (didn't find any other
> occurrence in poky) or should I add python dependencies as RDEPENDS ?

i believe you just need to add inherit setuptools3 to the recipe your
trying to use pip3 for

> Thanks.
>
> BR,
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

