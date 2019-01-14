Return-Path: <Okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 720BDE00CE0; Mon, 14 Jan 2019 09:11:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 053A1E0048C
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 09:11:34 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EF6F20659
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 17:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1547485893;
	bh=tchAfpBnnCOEbPw5ghBuNjIZikzH9UM5PmMTAmwi3Uk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gyIXEbXPXWXwSOJqK6aJ2v35PIqhh5AYGRe4ijRjvSTfS1VjrmElFokfyAuPYxvOt
	bWu8AqgM7KGq0fZYPJ3Q8OfHvNKKSVFzMeF2hu70rN6GE7taJZLi7xI7y6IHl/fOeH
	5g9opx2zDRzS7kFoJxyKGvFz/H+qk0SpsVUZfJdM=
Received: by mail-ot1-f47.google.com with SMTP id s5so19945515oth.7
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 09:11:33 -0800 (PST)
X-Gm-Message-State: AJcUukdMn1ZWb2dZzZPtAPT1wkkwVVMdIx4waES0LeMo6RYZrQ36s4YX
	hW+Or0vf4Xo1urHGKrl8NTIYxv//m1WC0SOhXY8=
X-Google-Smtp-Source: ALg8bN4Ppfs+e741fLi5QVS5lmdSE22JcN/BMyFWZtNY8je/c2H3PytWdhjOsemfWWFWFwC6GsY9guZy2aJpq/Jp6rM=
X-Received: by 2002:a9d:2c5:: with SMTP id 63mr17596888otl.271.1547485892934; 
	Mon, 14 Jan 2019 09:11:32 -0800 (PST)
MIME-Version: 1.0
References: <CAK9iUCPKMYD-qCwmycGi8swuy_xLyGdL7eiHTbKBT0DSfRaRTQ@mail.gmail.com>
	<CAJdd5GY+CS5vF0_i_Q62TQTFXd_qixsKVq1W4FTMgLEUfDGq1Q@mail.gmail.com>
	<CAK9iUCOF38pzTAd8+vGXmnVkQaQud0+Hspy+84X+L-fDUaW5Yg@mail.gmail.com>
In-Reply-To: <CAK9iUCOF38pzTAd8+vGXmnVkQaQud0+Hspy+84X+L-fDUaW5Yg@mail.gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
Date: Mon, 14 Jan 2019 12:11:21 -0500
X-Gmail-Original-Message-ID: <CAK9iUCOFya4UpkOBxZSqYkKOCata210AUpK+FXah_FxH=gVGaw@mail.gmail.com>
Message-ID: <CAK9iUCOFya4UpkOBxZSqYkKOCata210AUpK+FXah_FxH=gVGaw@mail.gmail.com>
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
X-List-Received-Date: Mon, 14 Jan 2019 17:11:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jan 13, 2019 at 12:17 PM Sinan Kaya <Okaya@kernel.org> wrote:
>
> On Sat, Jan 12, 2019 at 2:41 PM Joshua Watt <jpewhacker@gmail.com> wrote:
> >
> > CC'ing yocto@yoctoproject.org
> >
> > On Sat, Jan 12, 2019 at 1:02 PM Sinan Kaya <Okaya@kernel.org> wrote:
> > >
> > > Hi Joshua,
> > >
> > > I have this instruction to build cmake as part of the SDK.
> > >
> > > +# Add the CMake binary to the SDK
> > > +TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
> > > +
> > >
> > >  When I add this, windows SDK build is failing to compile.
> > >
> > > I'm using the sumo branch. Do you have any ideas?
> >
> > I believe that compiling cmake for mingw works on master, can you give
> > that a try?
>
> I'll test.
>
> > Also, be aware that while it compiles, it may not actually
> > work in the SDK depending on your use case. See
> > https://lists.yoctoproject.org/pipermail/yocto/2018-November/043344.html
> > for more details.
> >
>
> I tried this patch already. The compilation succeeds but the SDK
> installation script
> gets broken (it complains about missing environment script).
>

OK. Here is the story. My google search revealed this option for
including cmake into SDK.

TOOLCHAIN_HOST_TASK += "nativesdk-cmake"

Apparently, this option breaks the Linux SDK without any of the mingw
patches above and
cmake is already included into the Linux SDK. There is no point in
adding this option to
sumo.

Pulling just the mingw patch above made the Window SDK build successfully.

It is possible to pull this patch from master into the sumo branch as
it fixes a real issue?

> > >
> > > Sinan

