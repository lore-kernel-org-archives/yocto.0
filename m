Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F1BDE00C75; Tue,  4 Dec 2018 08:49:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07DD7E00C4E
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 08:49:35 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id c126so10032828wmh.0
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 08:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=90UVF7oZQR8Sn/ZNKtyMFuXepZlhmK0ySvlPD/hzW5Y=;
	b=SB89ORDVnY3Bsxe8no8IqmCzI5U7tBnChI+X0IHKEpdse53M03wR2B8C9gJnD84oxf
	isk3CC80lVsHhrnk+UfMDY7bunD53hxNhxXHAblvXEVqqBGpIr+7cgzoEwsF56FjuB8D
	LMY0S/gJHqODl+CIJHXuExIRzEUSkrr2Bkg48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=90UVF7oZQR8Sn/ZNKtyMFuXepZlhmK0ySvlPD/hzW5Y=;
	b=HoXe2hptqbfV7ERyhgt6j9tWW7XOdL1afn50lfVhj60czqEtv7fDJz4nWN/pWb/2Ye
	WQJos7bdHLeRGdon0/7vO2wOCJuD8BicSUYGqT1Q+RsJIQpTu4SgzDpj6jUqiqZDDX50
	qzlsZo+2ACevb2UJfmICfcBsbJFnd4u950v39WXDa9yne/3CbxVpWEt8cafRJz9Q317Z
	npsfOkFtZKfrPPWtzPEu9cwe83mSUtSFSVYSvme8voOt+udvCDHuUE9Wh2XB0B9mQmqv
	6je72szNsK4+FrHuJUtUVoey/PZLR9hRTAbMqTx1XaPZq62CxFxP7kzTfbvpysb01jN2
	loOg==
X-Gm-Message-State: AA+aEWbELR0aW+yJ27bJVsklX3OLU/yhMfdIcfKdXPQQgrG5/grLUn/d
	tre7mzX1LVHlM7UOkHWjl8wsRg==
X-Google-Smtp-Source: AFSGD/UV1PYcxa5oQba2/hdFOoVk/wpHAAqR9P1Ij4wveZUGG0FKFC1+E+kUDrDWp4KnqPuUK0Xozg==
X-Received: by 2002:a1c:ad43:: with SMTP id w64mr12527674wme.32.1543942175010; 
	Tue, 04 Dec 2018 08:49:35 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	f192sm11043926wmd.12.2018.12.04.08.49.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 04 Dec 2018 08:49:34 -0800 (PST)
Message-ID: <4e929cbb1e843ee9b17b8309e2b6cbd106355b5e.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 04 Dec 2018 16:49:32 +0000
In-Reply-To: <CAFLxGvx6=A2AyKiDu5VoYVOLGimy+hZnm=kB=3EyJAJwskpScw@mail.gmail.com>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwS5Nbb-omyT6bSEcokF-gRd_-jiwZ9vpbeB5ZChdjS4A@mail.gmail.com>
	<CAFLxGvx6=A2AyKiDu5VoYVOLGimy+hZnm=kB=3EyJAJwskpScw@mail.gmail.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Tue, 04 Dec 2018 16:49:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-12-03 at 09:52 +0100, Richard Weinberger wrote:
> On Wed, Nov 28, 2018 at 9:26 PM Richard Weinberger
> <richard.weinberger@gmail.com> wrote:
> > Richard,
> > 
> > On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > > But it seems that building and SDK is currently
> > > > broken/disabled:
> > > > 
> > > http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e
> > > 
> > > I see a bug was opened for this but its not valid and this
> > > shouldn't be
> > > an issue. Keep in mind that an SDK contains all multilibs so
> > > "bitbake
> > > X-image -c populate_sdk" would be equivalent to "bitbake libXX-X-
> > > image
> > > -c populate_sdk" and be the same thing. One didn't work so we
> > > remove
> > > that.
> > 
> > My idea was having a 32bit only SDK. In my case I really don't need
> > 64bit userspace.
> > On the other hand, having both 32bit and 64bit libs in the SDK is
> > not
> > a big deal right now.
> > 
> > So I did "bitbake my-image -c populate_sdk" but the resulting SDK
> > seems to contain no
> > 32bits libraries.
> > TOOLCHAIN_TARGET_TASK contains "openssl", so I expected libssl.so
> > present.
> > I did a search for libssl.so and found these files in the SDK
> > install directory:
> > 
> > ./tmp/sysroots/mymachine/usr/lib64/libssl.so.1.0.2
> > ./tmp/sysroots/mymachine/usr/lib/libssl.so.1.0.2
> > 
> > Both files are 64bit shared libraries :-(
> > 
> > What do I miss?
> 
> *kind ping*

This is the bug that Qi opened. The code doesn't do what you want right
now and I'm not sure how easy/hard it would be to make it do the above
:(

Sorry, I hadn't realised we had this problem until you dived into it
although it is kind of obvious in hindsight...

Cheers,

Richard



