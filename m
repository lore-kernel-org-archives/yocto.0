Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50013E00C7B; Sat,  7 Oct 2017 17:05:19 -0700 (PDT)
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
	*      [74.125.83.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3F57E00B1B
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 17:05:17 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id s184so9901265pgc.0
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 17:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IO2In3qGJ4CVZhDi9G00TnSFiwY9Bky342VSSMa/Ww8=;
	b=qprCqT4LOBYAsjhP2P4N2mOYlAgdVgVV1ZrNBqHKzCM8WayX7Y6PNLZhTJzWoFFn3z
	tZn1Jel6eZHYCA7cLkqjzw86BqqPlHctLqSZtQJdZ0wG+AwXpsw9EMN1NcZSWsfAmUcS
	B8FiWbHPzvDvykUVXL7Yf90jvNW72PX2/lqy8h730rpSyUwo1C+RLXmRd/HjJW7oZTM1
	GypLFCr0aHN6bg32g5P+atipiQOzboZLqkH9k9pCkUjaykMg8h8e4Wm01roBZkOrdLB3
	iLNQmb2uk6eFubG1PkoLMsHXH6rBNZOxMWZl2COxCz4Ff0mUzID4SV7WAzQPxwSQCpV2
	Y5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IO2In3qGJ4CVZhDi9G00TnSFiwY9Bky342VSSMa/Ww8=;
	b=iabr4U75j+cGfS5CplWCWRGnkvam/xRxmVh36FKxMuNH5m/Mox6ZYRqsnLpvAQrvlN
	U2AeGuYo46qjCZzwGVr74yharYYLChD1DQBDjCUD7ZsDVTDg3Z74z9YcxtuBIUQAxkMY
	0ZpnhqQ5Js1Ysk9zOea4P1UKCx3bfUpS0lSEYBlOx1hnvKB3neN8ctqJsQBVOSNt1a6i
	yqqx7oDNc7nSq6gE1ZcHXJgyqfdWarJTonbuMtfzwMdI21oE3mUwatNgR4+PPy+eVyXK
	FaYF3PgPEwLX+Z62or63x6zr0DaBq4ioZckNAgzuxlFDZUR+u+xoCFN3/SIotGVgbdac
	5gKg==
X-Gm-Message-State: AMCzsaWcBhimJdpfm5SSaK0bstxZYyLQfRohVP+qZeBUPynW3S87CL5J
	xTAX3HGAdBlqtbDvTXb75mb0o+7kEoxYCWNvIz0=
X-Google-Smtp-Source: AOwi7QC84Z1aJ8VRQ2dwIBCBdb3enWXz3iDjeN8Np96bEK1SMoz7w1PPU8T/HeM12QGn9VNHlxQP8QYEebYddePtP3w=
X-Received: by 10.98.19.24 with SMTP id b24mr6282749pfj.168.1507421117030;
	Sat, 07 Oct 2017 17:05:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.23 with HTTP; Sat, 7 Oct 2017 17:04:46 -0700 (PDT)
In-Reply-To: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
References: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 7 Oct 2017 17:04:46 -0700
Message-ID: <CAMKF1srTEz0XFh6fKgwxXi1k1bxo95oH8px9B_uK9OL1+pxU3w@mail.gmail.com>
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
X-List-Received-Date: Sun, 08 Oct 2017 00:05:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 4:03 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
> Hi all.
>
> I recently started working with Rockchip SoC`s and I currently have a
> Tinkerboard and a FireFly-RK3288 board. And as I recently enter the
> Yocto Rockchip world I have some comments and questions on the current
> setup/workflow which I found a bit confusing when starting out.
>
> As I started digging to check the current state of the different
> layers it was quite clear to me that there where two different sets.
> One is maintained by Rockchip [1] and the other one by the community
> [2].
>
> And it made sense to me initially. I do not know the full background
> story with the Rockchip layers (would be nice if someone could tell it
> :)) on what the intent was with "community" Rockchip layers.
>
> But as I looked in to it further it was quite clear to me that the
> Rockchip maintained layers are more "up to date" then the community
> ones. And then I started thinking on why are not these merged and we
> could focus effort on maintaining one layer.
>
> There are a couple things that are interesting:
>
> - The Rockchip maintained layers state that they do accept
> contributions trough pull-requests on github. So nothing stopping us
> there?
>
> - The Rockchip maintained layers supports more "community" boards then
> the community layers does. Bit odd? :)
>
> - The community layers are a bit outdated on older Yocto branches,
> master branch seems active though.
>
> - Trevor and Romain (maintainers of the community layers) are listed
> as maintainers of the Rockchip layers? [4]

Its not a good situation, While it is good that both layers are maintained, it
should be clear in its purpose. It could be that github layer supports products
and might have binary stuff and may not work with latest upstreams and the
community layer while supporting lesser number of boards is kept uptodate
with respective upstreams. Ideally, it would be good if both layers were
in sync.

>
> What I am really after is better understanding the workflow working
> with Rockchip SOC`s and Yocto and that is why I am raising questions
> to do so :).
>
> My plan was getting involved in one of the Rockchip layers as I have
> some improvements and I have some ideas for further improvements. And
> the goal with this email was to figure out where.
>
> [1]. https://github.com/rockchip-linux
> [2]. http://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/
> [3]. http://freescale.github.io/doc/release-notes/2.2/#the-differences-between-project-name-and-freescale-release-name
> [4]. https://github.com/rockchip-linux/meta-rockchip/blob/master/README#L65-L66
> --
> Best Regards
> Mirza
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

