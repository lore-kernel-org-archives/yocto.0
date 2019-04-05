Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4733E00CEA; Fri,  5 Apr 2019 10:17:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93CCDE009A4
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 10:17:55 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id v10so5605992iom.8
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 10:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EJdeB61WfdlBWS9EgOH78mJw+5opeYgXbLvU4uSQ2tY=;
	b=FPcp/RkIzgGAlVAB5anG0+rQKNUxWh6cO5waYwxNv3uivqzUPLsSKjB+w3XP/W63H7
	3Jv0JiMfLaM/kL2whiArepK/19m9peKkFSSyPunIk3bbcZ35ReMFlVjFYyLdvdfT4YEQ
	nPBJxuJh8sSgybeDXo3LTka9sDZniIEb84ZCTINYowG2r0+mDlFozmFSGKOkOFvT5SCc
	Dbv+Vu/IQdTC5dVXymZeUPk7A/Ilzdgt2Rk7Jxx1DRGzlq6AZytETA82oeLkAJtPvwX5
	tQiQh+hXBWeWD1DyZxyDZajw4du8UGSK0iWmpJiPAyV3ug7xa8438keu0sNK6Zi23DvT
	7Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EJdeB61WfdlBWS9EgOH78mJw+5opeYgXbLvU4uSQ2tY=;
	b=HBpHFi9rBmpOYBCk4imzQsBi/HP29c/tZ9nDMScOoP3MQxP1nLNfwxIjVGZHWzmlV6
	yhb15+VYT9LALmdl193xm60g+KhbcrESLT7QyyiooFJg+e51YZwbXxIk58TAB3tx9Pgf
	QXOjTniBHSbGMku/ZV5U4cj8DAsky+o1zMDPi5JN42DBQK+cRqmemrPwu96wHajUgTGh
	7Xi8oh2Ngnfbpx5MhS3KDf2f2KmeNP/wQM6mU8eWievlyRGnKcFpC8HI50QCvY2zA2C3
	YUE1tP8gxUnVUQsP9mAc14w1vmpqu5TPbz4YWTlL/zBvHl5PQ7lTAZbm0JBg5giy8OrB
	6tfQ==
X-Gm-Message-State: APjAAAW3lUdMfuSa+l4FXhE4D0XJPiKwW++Gb06aJE1yVtZV2VxWW4Cg
	1Jje6gxHyDXBY9Ho75zMCsCgtrHfCPYytBfVTQGQjFfl
X-Google-Smtp-Source: APXvYqwD5vXQ/Dfou2uo0yH9xubfLgBGKGXONKy0Nt7yL+75Pwdyt233AZv3jumlFVnyZy+PsZNVL67WnnbYxZhEfVY=
X-Received: by 2002:a6b:7112:: with SMTP id q18mr9841364iog.5.1554484675074;
	Fri, 05 Apr 2019 10:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190404115301.1820604a@phoenix.invalid>
In-Reply-To: <20190404115301.1820604a@phoenix.invalid>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Apr 2019 18:17:43 +0100
Message-ID: <CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
To: Guenther Meyer <d.s.e@sordidmusic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Fri, 05 Apr 2019 17:17:56 -0000
Content-Type: text/plain; charset="UTF-8"

What metadata in particular do you refer to?

Ross

On Thu, 4 Apr 2019 at 11:04, Guenther Meyer <d.s.e@sordidmusic.com> wrote:
>
> Hi,
>
> I added some python recipes for my application, and now I have the
> problem, that in some of the created packages the metadata is missing.
> For example, the package I have for Twisted 18.7 is one of those.
> When I use a python package like daphne, which is dependent on
> Twisted >= 18.7, then it won't work, because daphne checks the version
> before doing anything else.
> I created a workaround by removing this check in the recipe, but that
> doesn't feel right.
>
> Maybe there is something I missed in my recipes?
>
>
> --
> Summer-Hack-Session 2.8
> http://session.pestilenz.org/session2/
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

