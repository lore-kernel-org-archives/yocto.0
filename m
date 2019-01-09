Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 631B6E00C5F; Wed,  9 Jan 2019 10:33:01 -0800 (PST)
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
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF412E008C6
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 10:33:00 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id s12so8727386wrt.4
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 10:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=I/Rb5wWDcJ4N2xeCDYh1vlQFqN+g/V4h97t/3LzO/t4=;
	b=YBX33oYa/+gNuD2520Wpwcq6mhtmx6cmXFii2yNmkIRdeDYPlWoa9NU2Mx1zE4SfCp
	5UZ1BhBauCZtCjyLjDy0qK8MFrNoTDU4F4WVaotfdIx59A+kGA1DmVVijQ4O81s3FPqC
	uDoik6VHp7KCC7mJJREgvLXMnhAZSR5kQvN+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=I/Rb5wWDcJ4N2xeCDYh1vlQFqN+g/V4h97t/3LzO/t4=;
	b=f1sv34/iLHzHAs7Ee7AXcCTPGaxzRqgJs+caxnLbnTzY2C8lP1PpE0fTCc//CICxrV
	hZ4GeKO8yCHxrJsWnLAcMYKLKDbFfdrlvZA7M2/zejFxkBzTWblXg/T1rrVgCsv1N2cz
	6Dtd+HYkz9X7S4PoonolG6gnlBMGSaPi2fpueOpcFDPw9TluCDKHQOLWgO6+ORW5X9Fs
	ftTg5CR7ghB1LlLy5Ms8mPbCX0598awL8rJPzHubPncsQm97qQx4cLtjcTPzzVGrnTNF
	4wUrfYqILyuFvDHXzWYJLw0YhRVhmtYr11vOa1ZbFWxsVfRb93glacJNFxrdl2wk52Um
	eBMQ==
X-Gm-Message-State: AJcUukf6X4CBAlY+L9kznpQzxTG9M08bvDm1d+rnGARABnz8lm8X2BUY
	RTHXoR4SgNcZuZCEWQmH8oa02Q==
X-Google-Smtp-Source: ALg8bN7OOtkORO31NizFYH/amGgzlBt3emRdPoNExLu1WZk8QjnZZuqegAN/BxzWQ1f4EqiNATYJGg==
X-Received: by 2002:adf:e08c:: with SMTP id c12mr5779883wri.199.1547058779819; 
	Wed, 09 Jan 2019 10:32:59 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	m193sm14986348wmb.26.2019.01.09.10.32.58
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 09 Jan 2019 10:32:58 -0800 (PST)
Message-ID: <6e9238953be46e0f510646c05fb350638d088b35.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Anibal Limon <anibal.limon@linaro.org>
Date: Wed, 09 Jan 2019 18:32:57 +0000
In-Reply-To: <CA+_AqiuJ7XenDosBWi_xZ=UMiBf8f8A50zUbvfUjxLiZgaC7GQ@mail.gmail.com>
References: <20190107211837.25225-1-anibal.limon@linaro.org>
	<2807dd3a7edf71f4b1d14e385d54184cd07cbc0d.camel@linuxfoundation.org>
	<CA+_AqiuJ7XenDosBWi_xZ=UMiBf8f8A50zUbvfUjxLiZgaC7GQ@mail.gmail.com>
User-Agent: Evolution 3.30.3-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Wed, 09 Jan 2019 18:33:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2019-01-09 at 12:00 -0600, Anibal Limon wrote:
> 
> 
> On Tue, 8 Jan 2019 at 14:00, <richard.purdie@linuxfoundation.org>
> wrote:
> > On Mon, 2019-01-07 at 15:18 -0600, Aníbal Limón wrote:
> > > In stdout reported as,
> > > 
> > > ...
> > > BEGIN: ptest-dir
> > > ...
> > > DURATION: N
> > > END: ptest-dir
> > > ...
> > > 
> > > In XML reported as,
> > > 
> > > ...
> > > <testcase classname='test1' name='run-ptest'>
> > >       <duration>N</duration>
> > > </testcase>
> > > ...
> > > 
> > > Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
> > > ---
> > >  tests/data/reference.xml |  2 ++
> > >  tests/utils.c            | 20 ++++++++++++--------
> > >  utils.c                  | 19 ++++++++++++-------
> > >  utils.h                  |  2 +-
> > >  4 files changed, 27 insertions(+), 16 deletions(-)
> > 
> > I've not looked at the code detail but the above looks good to me
> > and
> > will significantly help ptest usage! :)
> > 
> > Once this is in are you able to help update the recipe and pass
> > this
> > data through to the the oe-selftest json report?
> 
> I will send the recipe upgrade, What is the selftest json report?,
> I'm not aware.

Sorry, its not from selftest, its from testimage running against an
image where ptests are present. It generates something like:

https://autobuilder.yocto.io/pub/releases/yocto-2.7_M1.rc1/testresults/qemux86-64-ptest/testresults.json

Cheers,

Richard




