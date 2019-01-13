Return-Path: <Okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47058E00BFB; Sun, 13 Jan 2019 09:19:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A83E00B92
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 09:19:01 -0800 (PST)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6DA4E205C9
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 17:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1547399941;
	bh=nURtXqK7v53b3BLzD+pMBLPsR23a6/PcKTFOyGySjAw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kcbLi5RXKGyA5GANQjyXzCPkIiyTgspzHSSrHIZOqfuqRXCFjOZxRhc4mkz00zfeX
	bfoRCtPDDv0OE/4jlBs6nplaQyPQNMlvqwOx+2w4S0+7UhVG15rE2aRHt5ui9zeWOQ
	wSYAt0e4gxbIw/vZFSwlt1gsoRpB/cKT+vGvXCTg=
Received: by mail-oi1-f175.google.com with SMTP id j21so16074149oii.8
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 09:19:01 -0800 (PST)
X-Gm-Message-State: AJcUukfXeF1ceBdNZHA4SKSiGbokEVa1fJDqEsHvRETkxYpk7NQnJCYS
	TUlzVFZ5CAgRcSmd9G2KnsIXzFxd1dEKZvr+7nM=
X-Google-Smtp-Source: ALg8bN7Z+GzVjAVTNg9orq5OdaDhQQ97iDAPUYPi6C5XRQr+7eNiqM/uQqPb/suObs1KeqpoSCZOdLrvNQZB9mYVUE4=
X-Received: by 2002:aca:5e09:: with SMTP id s9mr13129723oib.153.1547399940754; 
	Sun, 13 Jan 2019 09:19:00 -0800 (PST)
MIME-Version: 1.0
References: <CAK9iUCPKMYD-qCwmycGi8swuy_xLyGdL7eiHTbKBT0DSfRaRTQ@mail.gmail.com>
	<CAJdd5GY+CS5vF0_i_Q62TQTFXd_qixsKVq1W4FTMgLEUfDGq1Q@mail.gmail.com>
In-Reply-To: <CAJdd5GY+CS5vF0_i_Q62TQTFXd_qixsKVq1W4FTMgLEUfDGq1Q@mail.gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
Date: Sun, 13 Jan 2019 12:17:59 -0500
X-Gmail-Original-Message-ID: <CAK9iUCOF38pzTAd8+vGXmnVkQaQud0+Hspy+84X+L-fDUaW5Yg@mail.gmail.com>
Message-ID: <CAK9iUCOF38pzTAd8+vGXmnVkQaQud0+Hspy+84X+L-fDUaW5Yg@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-mingw and cmake
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
X-List-Received-Date: Sun, 13 Jan 2019 17:19:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jan 12, 2019 at 2:41 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> CC'ing yocto@yoctoproject.org
>
> On Sat, Jan 12, 2019 at 1:02 PM Sinan Kaya <Okaya@kernel.org> wrote:
> >
> > Hi Joshua,
> >
> > I have this instruction to build cmake as part of the SDK.
> >
> > +# Add the CMake binary to the SDK
> > +TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
> > +
> >
> >  When I add this, windows SDK build is failing to compile.
> >
> > I'm using the sumo branch. Do you have any ideas?
>
> I believe that compiling cmake for mingw works on master, can you give
> that a try?

I'll test.

> Also, be aware that while it compiles, it may not actually
> work in the SDK depending on your use case. See
> https://lists.yoctoproject.org/pipermail/yocto/2018-November/043344.html
> for more details.
>

I tried this patch already. The compilation succeeds but the SDK
installation script
gets broken (it complains about missing environment script).

> >
> > Sinan

