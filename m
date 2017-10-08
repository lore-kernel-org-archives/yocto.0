Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E556CE00C8F; Sat,  7 Oct 2017 20:39:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 554FDE00C43
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 20:39:43 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id k31so2475453qta.6
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 20:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r0/UNBbsfG5htzw063ydfQipJRUB0tvQQC8CuqeMfxE=;
	b=KcANz/3pT9Yy2pyvDFHIOD5WEPhehv6ARO8dLNZtvKkeNHaXXvU+4eQYGXpc+Gp9Qj
	NSYAQOK79aMwTsJOvuRriUq5ALak9A0TwAnq3QUobZSBQK4uylXDhiX7BTGFY0Kb6Zha
	iS0AXZxjvtI2JsJeWtnC9/4Xoq+9L7iDxK2jjop+4y1ND5m5J5RkpCsrqkOXuNlwkOUk
	37M6WLSLp41pcXwST+OpTXDJLgXUcdDI+9fPYMbcdeRTA/l67ndTjcR31HS+eqgWu/oR
	Bq3KuH8ivH7nZFmkd6bzH1y5ASFRzp0KCT516VqNZ7cHt8bdUFe4bRl10sgffhEms20P
	QSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r0/UNBbsfG5htzw063ydfQipJRUB0tvQQC8CuqeMfxE=;
	b=ees+CitCHz8ROkNm3b016znIanK4lWukWex4CV10114OG2lnJA6KAUHmLAaxlHM2K0
	W3bS/bwb97l4BIUvAq8cr0DdqUa8NZUArFfSPhpOTFDTscW8PHFuOKGq1PeN+o1lWxYf
	PdwlNgDNShLVviPfkkIT7mcoXPhtCMxbUl+RoSlfszpBHxjRgTpgHuwL9pb//tktJDpw
	R8XgDg5GcpuhG16C/Bpd3vDDoLG7J5lhS9D9dDlxOhzruGc5fG8i5I+kdiHYbwGzOa1J
	HXsgZV/f6Moy0GYXngACgJBPmcVEe7r9/ieupBu0ImbBXFc6t9Z/z5kO0ulUc2DIfu8M
	h+PA==
X-Gm-Message-State: AMCzsaXzXcycV1QBnd1HuyXYAwNe+S6IeKFboCF9Wy1Rcl22IIIaY3ij
	f2Bkkd+AZ9wRoQtkXCH6sGzkXrP9EfSy8Yqmjig=
X-Google-Smtp-Source: AOwi7QCGwbVsHWdWMfpogEZZjTpWdtz4JQR9lR5TsJilaakDt5N0wxRmZtubiMErUsZtQSaT+h/XrdqhXa30g64QOYE=
X-Received: by 10.200.23.85 with SMTP id u21mr2462417qtk.200.1507433983204;
	Sat, 07 Oct 2017 20:39:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.104.173 with HTTP; Sat, 7 Oct 2017 20:39:42 -0700 (PDT)
In-Reply-To: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
References: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sat, 7 Oct 2017 23:39:42 -0400
Message-ID: <CAHUNapTF9HTACQU4XZZrFpuSgAZWmLYm8HH4MHVcnKx2Ys_OXw@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] The various rockchip layers
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
X-List-Received-Date: Sun, 08 Oct 2017 03:39:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 7:03 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
> As I started digging to check the current state of the different
> layers it was quite clear to me that there where two different sets.
> One is maintained by Rockchip [1] and the other one by the community
> [2].

Don't forget https://github.com/jackmitch/meta-tinker ;-)

> And it made sense to me initially. I do not know the full background
> story with the Rockchip layers (would be nice if someone could tell it
> :)) on what the intent was with "community" Rockchip layers.

Romain started meta-rockchip initially, then I joined, then people
from Rockchip joined later.

> But as I looked in to it further it was quite clear to me that the
> Rockchip maintained layers are more "up to date" then the community
> ones. And then I started thinking on why are not these merged and we
> could focus effort on maintaining one layer.

The main goal Romain and I have is to have a meta-rockchip that helps
users run upstream code on their rockchip devices. My guess is that
the main goal of the Rockchip meta-rockchip is to demonstrate the
performance of the rockchip SoC (usually via vendor kernels, vendor
bootloaders, binary blobs, etc.)

> There are a couple things that are interesting:
>
> - The Rockchip maintained layers state that they do accept
> contributions trough pull-requests on github. So nothing stopping us
> there?

They are quite friendly, but they have their goals.

> - The Rockchip maintained layers supports more "community" boards then
> the community layers does. Bit odd? :)

The rockchip people are paid to maintain meta-rockchip as part of
their day-jobs, Romain and I aren't. I buy my own boards, I haven't
received any hardware support, so my contributions tend to focus on
boards I actually have. I would rather have support for boards I can
actually test and therefore actually have rather than guessing whether
stuff will work. Not to mention I have to find time to work on this
after other "more important" things are done :-)

> - The community layers are a bit outdated on older Yocto branches,
> master branch seems active though.

Mostly a time issue. I build master with firefly-rk3288 every night
with all the latest master updates and try to fix any issues that come
up. I don't have the resources, unfortunately, to keep my finger on
various past releases.

> - Trevor and Romain (maintainers of the community layers) are listed
> as maintainers of the Rockchip layers? [4]

Initially the Rockchip people would send pull requests for the one
meta-rockchip layer. Many of those pull requests were to add recipes
pointing to vendor kernels/bootloaders and binary blobs. Also they
would send patches for boards that (at those times) weren't available
or sometimes weren't even announced! We pushed back on some of the
contributions, not just for philosophical reasons but sometimes for
technical reasons as well. They weren't happy with our slow response
times and push-back so they just forked and went on their own way.
When they forked they forgot to change some of the boilerplate stuff
that should have been changed (such as the maintainers). So yes,
Romain and I are listed as the maintainers of the Rockchip
meta-rockchip layer, but we're not :-)

It's on my TODO list to send them some patches for things like that :-)

> What I am really after is better understanding the workflow working
> with Rockchip SOC`s and Yocto and that is why I am raising questions
> to do so :).
>
> My plan was getting involved in one of the Rockchip layers as I have
> some improvements and I have some ideas for further improvements. And
> the goal with this email was to figure out where.

Every once in a while I try to carve out some time to try the Rockchip
meta-rockchip layer and see how things are going. Maybe it's just a
coincidence, but often they don't build for me. Looking through their
instructions they seem to want lots of control over a user's
setup/configuration (i.e. by using repo to pull specific versions of a
specific set of layers, then using their own setup tool). My goal is
to have a layer that works any way the user wants to work (e.g.
distroless with openembedded-core, or with poky, or with angstrom,
etc...). When I use their instructions I do have more success (but not
always), but I don't believe that's how BSP layers should work. I
don't think it's a good situation when a user must use a specific
distro, or specific layers at specific commit points, or a specific
setup tool in order to build for a MACHINE successfully.

I'm hoping that one day
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11881 will get
accepted. If/When that happens then it will be theoretically possible
to have both a set of upstream recipes and a set of vendor recipes
within the same BSP layer. Maybe at that point the two (three?) layers
can come together. Unfortunately there doesn't seem to be much
interest in BSP layers outside of the BSP community. I'll probably
just have to add the support to the layer itself in order to gain this
functionality (as do the FSL layers, which is where this idea
originates).

I am hoping for a better situation in the future. I'm glad for any
suggestions, patches, testing, etc. For example, the meta-rockchip I
help maintain still uses a vendor u-boot although I've been told the
upstream should work fine; I just haven't had the time to investigate.
Also, I'd like to add a linux-stable recipe for 4.13 (similar to
meta-odroid) but I can't seem to get the defconfig right. Also, I have
a firefly-rk3399 and a tinker-rk3288, but haven't had the time to get
anything into a state I can push publicly.

Never a dull moment :-D

