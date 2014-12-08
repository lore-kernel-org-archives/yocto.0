Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4EFAE0084A; Mon,  8 Dec 2014 12:05:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E9F2E007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 12:05:45 -0800 (PST)
Received: by mail-ob0-f179.google.com with SMTP id va2so4219674obc.24
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 12:05:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ITMH/A/u7+0p1z15O6baDwnEydqbxvfmUh5yfNsg4yM=;
	b=d+9i6n0RG+MQW1U9ZVAf7vXi37NWJau+O60LoV7y52P755xvI6IwXRJz9QMoAfgb/4
	nHb4o0n92D1OMRmsULcTlZbBsWrV9D8PaS3MIcLX0suhjSZq+weEOab8chliWEUxXKz6
	NbzL8WKKwPDJVPvvQ68f0yqr5XL69ujnc9suDILtDd4eitB4VMJGCVlKkD4BYVc9LQow
	8lK7JpqN9tLuLYLJlR4qDLwn5IcdsTr/r0sUkzTxJ4vM+muERMiH1XnuggiUMXzNwplP
	vXPFDSurwB67rZVSmfxeLuG0LUBRdK/E3kOdtvSC6SvP8uDb4qHKZB/G6wB1lN8MxD1V
	B48Q==
X-Gm-Message-State: ALoCoQkQFVNvcrHGM6e7eGxLH2IhelR1B8XfzK/AKnhB08xqLIg8OMPtc8SX8jk/tNWTECSc51sO
X-Received: by 10.60.62.4 with SMTP id u4mr9022487oer.74.1418069144502; Mon,
	08 Dec 2014 12:05:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.159.138 with HTTP; Mon, 8 Dec 2014 12:05:24 -0800 (PST)
In-Reply-To: <5485FBB4.4020501@mlbassoc.com>
References: <5485FBB4.4020501@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 8 Dec 2014 21:05:24 +0100
Message-ID: <CAP71WjxDUxfAMFULXPWOed-hj7FPKEii2z10KXbEN163bbM7CQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .bbappend and require
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
X-List-Received-Date: Mon, 08 Dec 2014 20:05:48 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 8, 2014 at 8:27 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I have a base image in my distribution (e.g. xyz-image-base.bb).
> Many of my layers will build on this using 'require', e.g.
>   require recipes-base/images/xyz-image-base.bb
>
> Sometimes a given layer may create many such image recipes, each
> using 'require' to fill in the base.  It would be nice to be able
> to adjust the base recipe using a .bbappend in the layer so that
> all images built by that layer use the same changes.  I've found
> that this doesn't work as .bbappend files do not seem to be used
> by 'require'.
>
> It's easy to see this bug in action - just create a file
> 'core-image-minimal.bbappend' which contains:
>   CORE_IMAGE_EXTRA_INSTALL += " non-existent-package"
> With this, you *can* build core-image-minimal-dev (which uses
> 'require' to build on core-image-minimal) but not core-image-minimal.
>
> Is there some [good] reason for this behaviour or a bug?

this isn't a bug. a .bbappend is to append content to a recipe. when
you build core-image-mininal-dev, this is the actual recipe name. so
if you want a .bbappend it would be core-image-minimal-dev.bbappend.

if you actually try to build core-image-minimal, then the .bbappend
would be applied.

this is good behavior here. nothing wrong.

> Could it be made to work the way I had hoped/expected?

i don't see any easy way to do that.
- you might be able to get something to work using layer priorities ,
but even if it works it's quite fragile.
- you can create another level of indirection, in the layer that
requires customization, you create xyz-image-base-layer-foo.bb, and
require that file in all your images, so that you can introduce
changes at one place.
- you can use variables in the generic image to offer several
configurations, and set these variables at the layer level
- maybe using a class instead of a recipe might make sense easier to
manage as well.

