Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB756E00D15; Thu,  4 Apr 2019 23:59:45 -0700 (PDT)
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
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05839E00BB7
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 23:59:43 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id j9so6608994wrn.6
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 23:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=IjjhdM4XhYqhSdHTa1EMMwIATvCjZqwQMGRD2cI0OgU=;
	b=RjM5B8YHGRVXKbinDev9eu5U9/HWkEcOSL1JrYQQSB6BDWcga54Skl9rmgMGesN2Cs
	tGpFK+WADeA6p6TDP1ulnd37o+6IsSNTQcgVmyZwsMiSzg6xF8Zw80YDIhzDh8CWTfgh
	6H7/rRKKxdRQqE5wHcQqH9ELGT+H6afSsrkzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=IjjhdM4XhYqhSdHTa1EMMwIATvCjZqwQMGRD2cI0OgU=;
	b=SI3kBISgstv+7oTcgf8hN4r5suwHIj8wedQn6pxys7rQwrt/7p3RMaHNDp5oSNUPvI
	2lnW7ggz4d5lqAQ/kLRotcKX7zite49+g9LvRn1rkDqYYN4adKZrm3+eLm+G4oveI9JF
	nKNO/kjxXPe6ml9aKhxdzqeegADvfAgWGviZbWp9GOy8YYj0IXMjoh88ZcIi9qrQtL4Q
	6q+EDH6D0EZSUrBT9xBXVFF80n0rOXkOiT7bDA6Q3gziynHYCylypufyAuHN1wdgJonw
	0bh3sj9fChu9WKP8YIocKRDqeTOw1iIWhkpCUzgbENwH0QE5kRxDCsAwjzL+WW+3/sil
	d9zQ==
X-Gm-Message-State: APjAAAUQ74ZicmnQXlzORsaQU/KKYv5O2fvkypCZifI0foiW66ugCTT9
	OM/DvP8XIX0lMAvJRrQZW6Vq7A==
X-Google-Smtp-Source: APXvYqzjqbDYJjkqPT6Xw4O3YeUuxruoX0V6m/n9i3ix1/dz721ZZ1qDz6iIyaA2ipwPudvFx+jvSg==
X-Received: by 2002:a5d:4683:: with SMTP id u3mr7225900wrq.200.1554447583177; 
	Thu, 04 Apr 2019 23:59:43 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	z14sm28330931wrv.78.2019.04.04.23.59.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 23:59:42 -0700 (PDT)
Message-ID: <2fa5e79d7b6a04b29c14622ffff6637a93303f18.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Mikko.Rapeli@bmw.de
Date: Fri, 05 Apr 2019 07:59:41 +0100
In-Reply-To: <20190405065421.GX20077@hiutale>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
	<8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
	<20190405061640.GT20077@hiutale>
	<a3d54bdd1bd6a674bc67deb32d5c824f0275c61e.camel@linuxfoundation.org>
	<20190405065421.GX20077@hiutale>
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
X-List-Received-Date: Fri, 05 Apr 2019 06:59:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-04-05 at 06:54 +0000, Mikko.Rapeli@bmw.de wrote:
> On Fri, Apr 05, 2019 at 07:46:00AM +0100, 
> richard.purdie@linuxfoundation.org wrote:
> > On Fri, 2019-04-05 at 06:16 +0000, Mikko.Rapeli@bmw.de wrote:
> > > On Thu, Apr 04, 2019 at 10:48:17PM +0100, Richard Purdie wrote:
> > > > On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> > > > > As ptest-runner communicates with child processes via
> > > > > pipe2(),
> > > > > the corresponding channels are not attached to a pty. In that
> > > > > situation stdio facilities like printf() or fwrite() are
> > > > > fully
> > > > > buffered. If a ptest would use them, without bothering
> > > > > to fflush() the output, ptest-runner will only receive what
> > > > > was written by the child ptest process after a buffer gets
> > > > > filled.
> > > > > If the unit tests are proceeding slowly, this may mean that
> > > > > ptest-runner will erroneously timeout due to an apparent lack
> > > > > of
> > > > > 'signs of life' from the child process.
> > > > > 
> > > > > stdbuf utility from coreutils adjusts the buffering to a
> > > > > line-
> > > > > buffered
> > > > > one, and so ptest-runner will get the lines as soon as they
> > > > > are
> > > > > written.
> > > > > 
> > > > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > > > ---
> > > > >  utils.c | 7 ++-----
> > > > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > > 
> > > > I'm a little torn on this. I noticed some of the run-ptest
> > > > scripts
> > > > use
> > > > "| sed -u" whilst the one you were seeing problems with uses "|
> > > > sed"
> > > > without -u.
> > > > 
> > > > We may want to consider strongly recommending -u. I'm testing a
> > > > patch
> > > > with some tweaks like that in it...
> > > 
> > > Please no. I'm running images without sed and using busybox sed
> > > instead, and that
> > > doesn't support -u. I'd rather be compatible with sed from
> > > busybox to
> > > keep changes
> > > to images minimal (e.g. install of additional packages) before
> > > executing ptests.
> > 
> > The other alternative option being proposed is for ptest-runner to
> > depend on coreutils which is worse?
> 
> GNU sed does not come from coreutils but from sed recipe.
> 
> Your call in the end. I just provided my point of view.

The original patch in this thread from Alex needs stdbuf which would
add a coreutils depends to ptest-runner for everything as I understand
it.

> > I did test the -u option to sed in the openssh ptest runner and it
> > did
> > fix the problems we've been seeing.
> > 
> > I'm open to other alternatives but the -u option to sed is looking
> > like
> > the best one we have right now. These bugs are making our testing
> > of
> > ptests effectively useless and unpredictable so this is a serious
> > issue...
> 
> Understood. I hope you could also add 'set -eux' to all ptest shell
> scripts. Many of them seem to be missing shell script error handling
> and failures like providing -u to busybox sed may go unnoticed.

Patches would be welcome to help clean up some of these scripts. I feel
like I'm fighting a lonely battle trying to get any of this to work at
times :(

The good news is the automated monitoring of the ptest results should
catch problems like that as if a chunk of ptests "disappear", the new
testing should quickly highlight that.

(We should improve the scripts, we just also have another way to spot
problems)

Cheers,

Richard




