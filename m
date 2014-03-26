Return-Path: <trevor.woerner@linaro.org>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3338E00997
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 07:33:06 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id id10so2463482vcb.40
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 07:33:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=3U1KgJg6NFtH83IFB8EWiXMZtg3Y9a6Q2/XZ7y1zZkQ=;
	b=UbBVkGS172Ll8eqKSfDRQn8hnAx7OnMp+QhyYDy5mN4nAL4BVimQ4uEVmf5Ma3nknw
	0YYTCsYlbvreuO1gxxVEoZB1pNNR6uStWM0v83/ZfW5NeXx3tShdxh9A2qSL+UTKH9k3
	21kPIksVL3Hl8otorW0g0Mck/VTDX/J8eZi9gUa0G+Tf1EKPR6bd0OxCIT2CEE/Ghxq1
	4dNy7/FGuKA+OV8+aPZ0/EjK7chdQNJVhWqdTTWXK9vBy6g9zFjne39IS83tAdh0vPEX
	3LRzY+XCy8soUu5NHDYb9Q8Tfbybtxu0Wof2XTo4Mkj86FwavfLWG9vJQh8KuJOgRgFj
	LokA==
X-Gm-Message-State: ALoCoQlGuKBLneMf2Ytjf7bi89hbkeYyi8tENY/LWy4GmVhtIIY8mcuicvbjB/u4KGgnj4ociljF
X-Received: by 10.52.119.197 with SMTP id kw5mr51671396vdb.5.1395844386056;
	Wed, 26 Mar 2014 07:33:06 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id v20sm38608283vdj.0.2014.03.26.07.33.04
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 26 Mar 2014 07:33:05 -0700 (PDT)
Message-ID: <5332E520.5050005@linaro.org>
Date: Wed, 26 Mar 2014 10:33:04 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1395676843.24890.7.camel@ted> <5330C9A8.904@linaro.org>
	<20140325055028.GA3710@jama>
In-Reply-To: <20140325055028.GA3710@jama>
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] --conf Was: Features in Yocto Project 1.7
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
X-List-Received-Date: Wed, 26 Mar 2014 14:33:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/25/14 01:50, Martin Jansa wrote:
> Can you show some example of config you need to have wor wayland and
> cannot have for core-image-minimal? 

Okay, good point. I should have thought harder to come up with a better
example :-) It's funny, actually, that you're the one pressing me on
this, I first encountered this issue and started thinking about it while
trying to reproduce your "State of bitbake world" tests :-)

Let's say you're a board maintainer; some people want to run gstreamer,
some people want to try out systemd, some want to run wayland. Each of
these requires tweaks to a conf/local.conf, no? I'm constantly changing
my set of IMAGE_INSTALL_append's, fiddling with preferred versions, and
distro features.

If I'm just doing a one-off build then sure, adjust conf/local.conf
manually. But if I'm perpetually rotating between a bunch of tests as
repositories are modified, it would be easier to just specify which
configuration I want from the bitbake cmdline.

As I mentioned, maybe I'm doing things wrong? Maybe others have separate
build locations, or maybe others define their own images which
incorporate these adjustments? But I'd be quite surprised to find I'm
the only one having to edit conf/local.conf to comment/un-comment blocks
before every build.

As a concrete example, currently I'm flipping between dora and master
builds. For some reason I can't seem to reuse the same TMPDIR between
them. So every time I "repo init -b <newbranch>" I then also have to
edit conf/local.conf before bitbaking.

