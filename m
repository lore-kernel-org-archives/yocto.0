Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CC3DE00A1C; Sat, 18 Feb 2017 18:56:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B96BE009F6
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:56:49 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id t17so6558824uae.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=W1Fgr0GoLIum/k0rcSxr2Iw5LHs6sU7Eq2vBOlMDcX8=;
	b=Fc8fJDch2zM91LeP2W7RjNpvvLRTKaUJ4CD+QPOL9s1Bwnz84SgA8BzRcDuWDJ+aWe
	LujRvfx/e1XyVeduJ8JGthTY38IzMP54Q3uFAxEdJ0GCAHBdghZfgLEcH702ggJOwBCW
	D7xDd3f4fFxUlP3knrgtnE3Qw1qho2B+uigJ+hHStdkG2dRYl7j4KvmrNhMZBZ8jAQ4p
	TqgtngGvuAaICnpI5+OIPvk9ADNJavodkAfcNfvPDfaXNGXfYRw46UoEb8PWOQkKBezP
	w5BxRKZgQyRM90Unry3B4kp/wSxcis0WdkAehf+WLKIcmMNQfOVuht7bVwTE3gS89kvx
	QWkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=W1Fgr0GoLIum/k0rcSxr2Iw5LHs6sU7Eq2vBOlMDcX8=;
	b=aBqW/rJwELQOJtnIxejEAGSJklJPXHq/jQC36ZvDqVTc3pAS2yEhbcy/BXU207rtI+
	jDbCWl0kRNJZvbBcGRpLQb1TH41zoldIrAuf/EA6D9ekI6i41Q7bdUJY4RC6XJZ4TCDi
	U3pnNu3vNEYU+3HyYF8DvpAyt1TCyV7TfSQdx0b03v3ezoRKfvqOH/WhvlyEycxGLOIi
	xE10pSLxCJyZtd2cQ44L/jSy3sjjw1ABqlXph/fM+YJmcW5ADMI+wS9UWlkA2P12PE9+
	pvplsLf8bDn4MtbPVI2JEL3AhWCZD8aWS/5w6F3mz9ougfZit9ScnMSnLSSpy8LeJ6/w
	OaWA==
X-Gm-Message-State: AMke39l1tWEPfWUaptVAGG7PHM5LQjXQM3CXBmiY001ce/mZ+AYR3bRAsAjpkhvk1nGj9qSq2SkOstIKaNz+/A==
X-Received: by 10.176.83.48 with SMTP id x45mr6606723uax.69.1487473008561;
	Sat, 18 Feb 2017 18:56:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.208 with HTTP; Sat, 18 Feb 2017 18:56:18 -0800 (PST)
In-Reply-To: <20170218195101.29116-1-paul@paulbarker.me.uk>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 18 Feb 2017 18:56:18 -0800
Message-ID: <CAMKF1sr3_rtYKnTaC5JcGKauFTdzKr6CLHm4TfxX=P7CAMjPdg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH RFC 0/3] Use AUTOREV in linux-raspberrypi_dev
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
X-List-Received-Date: Sun, 19 Feb 2017 02:56:53 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 18, 2017 at 11:50 AM,  <paul@paulbarker.me.uk> wrote:
> From: Paul Barker <paul@paulbarker.me.uk>
>
> This is currently an RFC as I'd like some input from Khem and anyone else
> interested in this before these patches get merged.
>
> The hope is that by using AUTOREV we won't have to update the _dev recipe so
> frequently in the future.

for dev I am fine with it.

>
> The third patch depends on a change not yet committed to oe-core. Please apply
> the following patch if you'd like to test this:
>     http://lists.openembedded.org/pipermail/openembedded-core/2017-February/132499.html
>
> Paul Barker (3):
>   linux-raspberrypi_dev: Use AUTOREV
>   linux-raspberrypi_dev: Allow branch override
>   linux-raspberrypi_dev: Disable version sanity check
>
>  recipes-kernel/linux/linux-raspberrypi_dev.bb | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> --
> 2.11.0
>

