Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7643CE00DE6; Thu, 24 Oct 2019 04:01:43 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3813FE00D47
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 04:01:42 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id q13so2323325wmj.0
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 04:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=jyxmca9GfFiEmnvX0GT4YJ+vWx5GWrAwqlfpkt75v28=;
	b=KKFwirED9geudAQJu03zJm+NHYuLXDRlQZLeUJaIToKqsqy6U1+YXX2a9X73h0FMpC
	/Be2ft9StMNwKkz6+p2TezT9XY9V8ab8mNqf1IGp5MkQOUw/6uZGK8veYK2FRN/o+Kek
	hjSjY+jBLeHO/4poJnOMocj4rwv0gZMQg3kdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=jyxmca9GfFiEmnvX0GT4YJ+vWx5GWrAwqlfpkt75v28=;
	b=J3SZHi6yLeD8gHQjicDZn22g6qmRd9E3+ud5I4QGiqac4X4kmCQ+1eC98UCcTGCWOn
	skC+qfMbIw8q6FSzhqEUGSnMr9DRbX6l9nr+5HPmZHl42JSHESrrgbWhN7rZbdn3vWUr
	c23VBarwRnJGlsyL+kMOMYjMzS9pCKAXFVhut693MjU0s8QHvz1pith/M1Jgq+u2nGjS
	AKPAiZ9EesbMI8r+VWZWFJLKmOsNZiREk0dI4SlSEKBNLb/iuYuJzSdO/InxKDac/4J7
	SEz4v3YOVOuyMBAikZKxDuJixo4WWntL8+n45YPrd0EpvANv+K/4fXdYucl6lLZsNJcM
	KYiQ==
X-Gm-Message-State: APjAAAVOOFFgcTxDYetCMfQ2qxfXjMTFuvtvO1o+DKpDuYXodHgXSmIl
	WwvcbKRfTM6FQhmhf49XPX//JQ==
X-Google-Smtp-Source: APXvYqyqt74j0c426BKR3LIBP9yqpJRSE3W6j1Ey9GeExMUJVlv9gbSBY32evCir45ZJaHlGkN1DDw==
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr4050330wmk.173.1571914901271; 
	Thu, 24 Oct 2019 04:01:41 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	v6sm28459555wru.72.2019.10.24.04.01.39
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Oct 2019 04:01:40 -0700 (PDT)
Message-ID: <e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 24 Oct 2019 12:01:37 +0100
In-Reply-To: <BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 11:01:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-10-24 at 10:03 +0000, Westermann, Oliver wrote:
> > On Wed, 2019-10-23 at 15:34 +0000, Richard Purdie wrote:
> > > On Wed, 2019-10-23 at 11:23 +0000, Westermann, Oliver wrote:
> > > Hey,
> > > [...]
> > > Any suggestions on what I'm doing wrong or how to debug this
> > > further?
> > Sounds like the sysroot filtering code doesn't know about this
> > directory and therefore doesn't pass it through to the recipe
> > sysroot?
> 
> Sorry to ask dumb questions, but what do you mean by "this
> directory"?
> The toolchain directory created by the TI recipe? Shouldn't that be
> handled by FILES_${PN}?

If its a target recipe, FILES makes sense.

If its a native recipe, there are no packages and therefore FILES
doesn't make sense.

> > The recipe you link to is for an on target compiler, not one in the
> > sysroot.
> 
> Again, might be a stupid missunderstanding on my side: The recipe I
> linked extracts a precompiled toolchain that is suitable only for
> x86_64 systems and  allows a "native" package. From my current
> understanding, a native package is to be used on the build host,
> which is what I'm intending to do here.

You are correct, that recipe disables the target version and appears to
provide a native binary. I can't actually see how it can work though.
Can you confirm that recipe does work?

> I managed to sucessfully add a native recipe for the NXP code signing
> tool (which is only provided as a precompiled binary as well) which
> works as expected.

If you install the binaries into ${bindir} they will. If you place them
somewhere else which the system doesn't know about, they probably
won't.

There are ways to make alternative locations work but I don't see any
of that in the above recipe.

> > I'm actually a little surprised you can't use our standard cross
> > compiler assuming this M4 core is on an ARM chip? It should be a
> > case
> > of passing the right options to the compiler to target the M4?
> 
> I'm totally up for any infos on how to do this! I did google around
> for recipes for examples that build a non-linux binary using yocto,
> but I couldn't really find anything or any documentation. But maybe
> my searchterms (along "build baremetal  arm binary using yocto") were
> off target. Can you point me at documentation, examples,
> searchterms..?

I'm saying I don't think you need a second toolchain. I think you could
use your existing arm toolchain with the right compiler options.

See https://stackoverflow.com/questions/28514507/what-makes-bare-metal-tool-chains-special

So you'd just add the right flags to the compiler, something like:

XXX-gcc -mcpu=cortex-m4 -march=armv7e-m -ffreestanding -nostdlib -nostdinc

i.e. tell it which processor to target and not to use standard
libraries/includes.

There isn't anything that special about a baremetal compiler except it
sets some different default flags and is missing the library support.

Cheers,

Richard





