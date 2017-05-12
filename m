Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0272E00852; Fri, 12 May 2017 13:42:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED29E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 13:42:03 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id p85so413078vkd.3
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 13:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3brYfYvegJ9q9Dt6PhZUUBnMsKwUQJXvwgBEejxlYSw=;
	b=KL1JqhfTbV2PUKsFnjRG6vn/LKBxdOkCue0F1GLouv4j2Bwfjagg0lfGZmcCJOJVtk
	Q5QEm03hnZ9Cqdz0nvKbriPTj7xdNmByM7m4zM25BNgtHpsDdZluN3lnUM3J/Fgix9Yu
	8F/aL7jUoFf8ziVELNjaZ+YdYkCO/UEnxEfsIC3wKYCWMdbuYmTzja3HvD0tVkB8v2bI
	LesPejQAu/cxW4I0YzPiOdzTEpjolVVp47MU251r4PWV6SxnvCf0Anq6O1lR1F2mNfoU
	WMrobANfCCSw9K3SmmJiR0ByhLq3JkpTB19APsKQWTsUsNUq87Ce4hVA+brOReMC3s68
	fl9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3brYfYvegJ9q9Dt6PhZUUBnMsKwUQJXvwgBEejxlYSw=;
	b=Ym/LL9bIQtN9IdU2dAxdpEfM8YyaFGVuwW1UnzRgM4MWx8/hOOIMF8+umkLkTaOfnR
	o71LAvLLKHZNzvo0Ie5xCAGtwzpV10Ic2huYwQTFS4xykkb0OtLnil8VzeBZEJuhbutk
	9hdQ5E7k0dXNTMutEScaVpuww0skhccA1nA9z3ybZJ9w4P/jgwlx4VH/zLG8p9BVWizx
	OEkbcii6vKJFLubQgZViz1QZrf0i63e0J4q1Cx7RVqIJk/2ANog0C87ejlcWeQJdbtwM
	taxI63eS1yw/eXiU94B5udpFZYeBVc7IntOMhJByHngY4WvjrzlzpeR701Am230K2ScL
	o8sg==
X-Gm-Message-State: AODbwcA/pxvLL3gvmZzwnNNGjXd7cEjV/NAFeHingY4nHiFZczhfBJV2
	VtbJhgWNNW5KXp8lBJizUDMpGBzeuUhb/8s=
X-Received: by 10.31.21.143 with SMTP id 137mr2903479vkv.0.1494621722423; Fri,
	12 May 2017 13:42:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Fri, 12 May 2017 13:42:01 -0700 (PDT)
In-Reply-To: <CAK18fxEWzsEfZKRuof6bSnPx2-ESqee3m6qUGyiD9qxVLxKkeg@mail.gmail.com>
References: <CAK18fxGut3dLRm+9O5kBc701aHfp_t+jVXDZN6gPVUSrqTMX2w@mail.gmail.com>
	<CAPyrkgxJUR0mcRHpemP9-h-sxMwLWasmuY-mq_uTdKL6Nx5FRg@mail.gmail.com>
	<CAK18fxEWzsEfZKRuof6bSnPx2-ESqee3m6qUGyiD9qxVLxKkeg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 12 May 2017 16:42:01 -0400
Message-ID: <CAHUNapSgzCBwbnzaSVT49xtx58hwe=LVNe=9KvAWq_Cfr4YB0A@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Pull requests and jenkins
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
X-List-Received-Date: Fri, 12 May 2017 20:42:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 12, 2017 at 4:00 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, May 12, 2017 at 7:34 PM, Paul Barker <pbarker@toganlabs.com> wrote:
>> On Fri, May 12, 2017 at 7:05 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>> Hi all,
>>>
>>> I know I promised long ago but finally I took a Friday to invest into
>>> github pull requests integrated with a jenkins server.

yay!
+1

(my inbox has been going nuts today!)

>> I'm doing nightly builds of my setup but that's a bit non-standard
>> (custom distro, musl libc, u-boot enabled, etc). For meta-raspberrypi
>> itself I think you've got it right - test against the appropriate
>> branch of poky without changing the default configuration too much.

I have a couple nightly builds too for the things that interest me.

>> For the readme, I think we should split off
>> "docs/optional-build-configuration.md", "docs/board-configuration.md"
>> and maybe "docs/contributing.md" files to shorten the top-level file.
>> Does that sound sensible?
>
> We did touch this subject a little bit in private but in summary this
> is a topic that I really want to address in the near future:
> documentation. We start to have a pretty big readme and on the long
> term that is not feasible.

Maybe (just throwing this out there) the README in the layer could be
very basic (maintainers, layer dependencies, ...) and then point users
to a more elaborate documentation wiki setup on github?

https://github.com/agherzan/meta-raspberrypi/wiki

