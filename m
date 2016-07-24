Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA1AE01080; Sat, 23 Jul 2016 23:05:40 -0700 (PDT)
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
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7460E0107A
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 23:05:38 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id x25so82265727qtx.2
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 23:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qz2rxdt1e5hABBnApq/ioV6qdb10oSuRJMvg+efcKSQ=;
	b=lSxqU1yPGS6C7TFR4Nzawlp336BOLQ/P0taU6z1txzOHBFdQiA8IYPKKp05gCi4IH8
	g7gkImHyma7UL2YvJEdv0HlFWRZ1r0mNwwVfDBRVZdBC2HeRdEuGPs576RPgtqdWCvaM
	hXJmAQNu3+fDcfudeYA13BMv2PAb7mGgy6sMYnhRXT+TlOgZANHX+DBYv2UyjKsEOc+3
	5JCvp7TFOnDs9iYjkRLRqNxaktru7NYesZyVNHoejMZmZWekU4+5ZrfNaE+tScp/QAuZ
	2MvBNPaPKTWXzTnrvSb9OPcWxGZpFiC6LCcnMe1SG8vS2D1WWcfSfKMkrjJbmGw3zIf2
	y18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qz2rxdt1e5hABBnApq/ioV6qdb10oSuRJMvg+efcKSQ=;
	b=bpNPAvmLR8Lbf/7gSPtXYndHzGgRwQw8/Yh6FAuPyHK/xsUvbCk9FeiRPR8k2FOv4C
	JWVbDazJFvOzF97cDeBpu/XiHNhm6jzkgR26tqXvW8mU0sEBymnuFCmSuG4ECLshqU2T
	wDL+eblJamB8wARfbY3JxktA0xyy5DbXMaDxKgq29o5Vzl2kg6cN+gVhF0itkDJNYZTA
	rYWBN0A15/dXZfH6oBaTXDyZXPZYHut3kipqWAHsxd/+/PfwsweP2urKIKpCIpvNRjml
	WXjERuJyTdb0qLf9Qgi8U2OkcGHeTbrymMkPuNghNwlPQn6OU0qm0FhADWaYv4Bp6Txj
	EjfQ==
X-Gm-Message-State: AEkoousVoZKBTDMEh98lLb9WHCXdIwVH3CON2hYgOyUWXeiiEAHxfSHFGi6MBaH+H8l9F6QxOZ9WhGsXMCH0mQ==
X-Received: by 10.237.35.76 with SMTP id i12mr19443395qtc.41.1469340337994;
	Sat, 23 Jul 2016 23:05:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sat, 23 Jul 2016 23:05:08 -0700 (PDT)
In-Reply-To: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Jul 2016 23:05:08 -0700
Message-ID: <CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Sun, 24 Jul 2016 06:05:40 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 23, 2016 at 10:49 PM, Edward Wingate <edwingate8@gmail.com> wrote:
> This is in my layer's conf/distro/mydistro.conf file:
>
>     require conf/distro/poky.conf
>     DISTRO = "mydistro"
>     DISTRO_NAME = "MyDistro"

Move these DISTRO settings above require conf/distro/poky.conf

>
> These variables took effect before, but now bitbake is reverting back
> to DISTRO="poky" and DISTRO_NAME = "Poky (Yocto Project Reference
> Distro)" (used for /etc/issue) for some reason.
>
> How can I determine what is reverting it?  I don't know what I might
> have changed to make it do this. Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

