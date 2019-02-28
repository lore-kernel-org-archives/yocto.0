Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B443CE00CCE; Thu, 28 Feb 2019 06:55:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10490E0090C
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:55:21 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id q187so9561892wme.5
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=XljJmXlww6NK5CORdD1FwEjiSdUSlxAZUCN780BQ/L0=;
	b=iPL7xImVLxtaXJvifRa0A58N2sgzajETqkFVg5WLyak4WQPGfVFZkjqV/Zzd2Ildd9
	XZkg1qrjoNbB03ZYCR5qbBRUtjIvZsIcjuJeMVLHFK6vFOzbO5gtBrI+YUBq0Nz14sCf
	hdTtG98Dag3ROFJyX62ywvmXYWI1UedbrMu00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=XljJmXlww6NK5CORdD1FwEjiSdUSlxAZUCN780BQ/L0=;
	b=ox04nq7xBZc3c7Pnh7a49R8BkxDOofKONApfC8tOYX9vJ0qJkubgkwi7r3Amn0K5Z0
	z0VjcYsJ1dFZCjr9SJ8Uln52vvnaTaRck8/NEem/AFns/o+RjvJK9FOYhCJBjQUI6dHx
	b//NDCfqvRuPryEGTnuHmIFkAnKCWm+nPqaJ46MkmM5gOGat8FkMbW+facl2N0sSuxvB
	pcKsUxWl6PWFnN18YMeE5EwPhKMxeE4eGqQLZR1UmZRsDfc8SM3o7oqhfLRGNGDkLbPu
	DRtlTlvXRc9mAP84cAG4O7oD7lpcFFbT36tNstkmZd6zFRLp0UClGstgVbo/qmuaCANT
	dlPQ==
X-Gm-Message-State: APjAAAWHGiPElXwOTUUkOghePLKYzLIFKFCVz9MMa6ec9CI7shfwScZV
	EVkFLhlAw9Git7Q3l/JSUMmdHw==
X-Google-Smtp-Source: APXvYqwoj0BTx/+T/IvtcTRSxWB9gozM29i4FPqECCEcCrtbWwq/QdOexyDM3bUgPvqfKJ8b8oimkg==
X-Received: by 2002:a1c:2743:: with SMTP id n64mr38865wmn.143.1551365721118;
	Thu, 28 Feb 2019 06:55:21 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	w24sm3500113wmi.40.2019.02.28.06.55.19
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 28 Feb 2019 06:55:20 -0800 (PST)
Message-ID: <0d317287e30d7e2fea511bfa5ee19d68b3ca785b.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <trini@konsulko.com>
Date: Thu, 28 Feb 2019 14:55:19 +0000
In-Reply-To: <20190228143717.GL12046@bill-the-cat>
References: <93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<20190228051945.GB11051@localhost>
	<CAJTo0LY8H_FGXQ9sqHco4jmuiDxpY0bGE3rLZcc8=16UqRgTeQ@mail.gmail.com>
	<29f822dba34962a0220b01ab098281a14fdda2ec.camel@linuxfoundation.org>
	<20190228143717.GL12046@bill-the-cat>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Adrian Bunk <bunk@stusta.de>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 14:55:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-02-28 at 09:37 -0500, Tom Rini wrote:
> On Thu, Feb 28, 2019 at 02:27:37PM +0000, Richard Purdie wrote:
> > On Thu, 2019-02-28 at 12:05 +0000, Burton, Ross wrote:
> > > I thought we had some other editor in core, but can't see
> > > one.  Worse
> > > case we still use busybox for its vi... :)
> > 
> > This could be an argument for pulling a small number of things into
> > OE-
> > Core too...
> 
> Moving the vim recipe (which doesn't have further depends) over and
> then
> putting VIRTUAL-RUNTIME_vim and ?= "vim-tiny" in this packagegroup
> should be flexible enough, yes?

Yes.

Cheers,

Richard


