Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B784AE0098D; Thu, 30 Apr 2015 00:46:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAFB6E007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 00:46:03 -0700 (PDT)
Received: by igblo3 with SMTP id lo3so5958119igb.0
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 00:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6kGxeu9oa57zvaQhf3mbVkFk4Qu/O/mOmo9HajdwTms=;
	b=CMNjyqAmNiYLrIbgNEnGGUOLDATnxNcpU5swo4q4mg6zsYF42bcA7qPrYeX95Fjoq1
	Mz3CXE5Q/1E2FiTWEQduHsXsDOHQp/PDh8Y09JwoDZu4TDd5+wYo+8eRf1LOpLy8Ss5Y
	sVXLQ+kVx5FQ/ii9sdt9SwiRhfTjCDuEMGJExFV8m1qT71B+OC90+JomV8zOrMqq2kw1
	LUyayZUvvIr+cKS0/s5KJx83KvL1KJYVxcbjahURdKI6YAhOLWn92sKXFvKMpM+jdAfV
	En9qdSFnMnOeeT0twTl/k9bYReKxJgIpVB6JHro2KSHFDD6oh28FxKXAbIdvKqOAk+tN
	FMJA==
X-Received: by 10.50.29.110 with SMTP id j14mr1932778igh.4.1430379963288; Thu,
	30 Apr 2015 00:46:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.230.178 with HTTP; Thu, 30 Apr 2015 00:45:33 -0700 (PDT)
In-Reply-To: <5540E846.5010202@mlbassoc.com>
References: <5540E846.5010202@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Apr 2015 00:45:33 -0700
Message-ID: <CAMKF1sqjwfh=LYAJu781B-JjBEYuBk6OohkqXu+B7YrYpC6HtQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Heads up
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
X-List-Received-Date: Thu, 30 Apr 2015 07:46:05 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 29, 2015 at 7:18 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> This is just a note that the recent upgrade of util-linux
> to version 2.26.1 (from 2.25.2) was much more major than
> the version change implies.  The 'sfdisk' tool changed a
> lot and will no longer be compatible with many scripts out
> there that still use it.

Can we document the needed differences and info for users ?
may be it will handy in release notes too eventually when release time comes


>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

