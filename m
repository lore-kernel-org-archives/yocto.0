Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B11E00D07; Thu,  4 Apr 2019 23:46:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C00E009A0
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 23:46:03 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id h18so5903642wml.1
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 23:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=BAAOkJMcjHN7Mv+PljVyUxS5xTKNfiMbKAbkLyK0PnU=;
	b=Pg4EO4RnR3Jk7lx8OPahapbE3UnuXJZrqlViLddGeLDkq873GQ0c1cx2Ecvhekh9KM
	2icx7GqJXCIpnlKhDZ3nF2cZZgMx+KbjJ98mN8pO1Tic4U0564NsvAnq7QWpi/UJm0M5
	Sy5Y8LXL8AtGElkxlBE3DJEfmJbciB/6/Y1iY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=BAAOkJMcjHN7Mv+PljVyUxS5xTKNfiMbKAbkLyK0PnU=;
	b=ax3oo+wkKO5qOjo0oLLO9fajmQabnTHpbAZiZx7VNKuuL8PPq7ujgX2XvMu14DeucF
	ZLmcnO+ddXp/F2v11/s2IeqC1PMyTPCfc4+BwtKrdqG/S5WrJ/43fw239RSCew/do1GD
	/ZFBYiNHkdrzMyjOX1STYp9+6vZWU7AjbHJsWAW4fnT3wBIYgmgvko7fr1eszoSSM6nf
	+UfeaTYhR5aoR96dW+XWP1SdjSj8emxeZCRN9k4ce/bypkx87XD63TkNg33v6EfaOUPA
	QYcaCdHYoe1X0g3bLKqlz1PWMXcmElvsDDH6X1iieZ7pCrR8SAVB4/UFLIjkpvY0koc0
	c4Qw==
X-Gm-Message-State: APjAAAW45+5SN19ayh/JhmwfniNsc9r3dFaGzu4j+ToGl2Z13Gx3faIX
	v1uAoWMKsP2c27X8VEezkP2JWg==
X-Google-Smtp-Source: APXvYqyhqSxJOOGUUSOKTVH/J0jvH/CQ+MblarYe19AO6r9C2L0e5IKX9Oxgudfh9+drqwSFBm7Nng==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr6374631wmc.107.1554446763033; 
	Thu, 04 Apr 2019 23:46:03 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	y125sm2691510wmc.39.2019.04.04.23.46.01
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 23:46:02 -0700 (PDT)
Message-ID: <a3d54bdd1bd6a674bc67deb32d5c824f0275c61e.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Mikko.Rapeli@bmw.de
Date: Fri, 05 Apr 2019 07:46:00 +0100
In-Reply-To: <20190405061640.GT20077@hiutale>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
	<8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
	<20190405061640.GT20077@hiutale>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner] Run ptests via stdbuf configured to line-buffering
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
X-List-Received-Date: Fri, 05 Apr 2019 06:46:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-04-05 at 06:16 +0000, Mikko.Rapeli@bmw.de wrote:
> On Thu, Apr 04, 2019 at 10:48:17PM +0100, Richard Purdie wrote:
> > On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> > > As ptest-runner communicates with child processes via pipe2(),
> > > the corresponding channels are not attached to a pty. In that
> > > situation stdio facilities like printf() or fwrite() are fully
> > > buffered. If a ptest would use them, without bothering
> > > to fflush() the output, ptest-runner will only receive what
> > > was written by the child ptest process after a buffer gets
> > > filled.
> > > If the unit tests are proceeding slowly, this may mean that
> > > ptest-runner will erroneously timeout due to an apparent lack of
> > > 'signs of life' from the child process.
> > > 
> > > stdbuf utility from coreutils adjusts the buffering to a line-
> > > buffered
> > > one, and so ptest-runner will get the lines as soon as they are
> > > written.
> > > 
> > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > ---
> > >  utils.c | 7 ++-----
> > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > 
> > I'm a little torn on this. I noticed some of the run-ptest scripts
> > use
> > "| sed -u" whilst the one you were seeing problems with uses "|
> > sed"
> > without -u.
> > 
> > We may want to consider strongly recommending -u. I'm testing a
> > patch
> > with some tweaks like that in it...
> 
> Please no. I'm running images without sed and using busybox sed
> instead, and that
> doesn't support -u. I'd rather be compatible with sed from busybox to
> keep changes
> to images minimal (e.g. install of additional packages) before
> executing ptests.

The other alternative option being proposed is for ptest-runner to
depend on coreutils which is worse?

I did test the -u option to sed in the openssh ptest runner and it did
fix the problems we've been seeing.

I'm open to other alternatives but the -u option to sed is looking like
the best one we have right now. These bugs are making our testing of
ptests effectively useless and unpredictable so this is a serious
issue...

Cheers,

Richard






