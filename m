Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA81FE00777; Sat, 15 Apr 2017 09:35:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96502E00524
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 09:35:40 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id k87so105629222ioi.0
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 09:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=o8asnQY8IDq1Abpcd5/20Q90eIQqlrm04wTkluLfhNU=;
	b=rE2NUnev9EFmmBDnKky71DscDZSufk/ue/072ZzVS5/QHNgFwrXEzNsMbbOfpgXvx+
	+P6uZANJaRw7VBWoGDYA+vz/S6+5CaUhPCRkb1qGqCLDIuIyxUCyTZD+D/5ToykMhl6U
	eLQImz7ThsnuUlGXZ7TU+8FpDZQYxdZPKzzwJUkD2u4i3ixwzK6R9yKHuhal04jAUQuP
	VRLF+H9GYQSasgIAN5IghyBchawbYTCKYLao9HLhgtmRucW+EeM0ZaFDuEtHzP+SG8ZT
	3mHEKrWbg0XifcOrEnZXWASVRlr+/R86SejVrMkcrIk7RNb80vX7hxqDilRgK+eJHrmr
	/cLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=o8asnQY8IDq1Abpcd5/20Q90eIQqlrm04wTkluLfhNU=;
	b=BFCono7NnSjK8lfEnQ16/OZlDxXB/Fs0fKPVfOPOnu2AOaVQwUdIpENsv8jotoZL1x
	IrhnMYMJgrEuenqARVMpfVbpw0Lg16CuEBvdwOeuGHxV375nQIxAUeF+mSLlluZoCX/x
	qC/uc+vlUJIu7QK2CWkZ3gyHPvz7JbrAl5laPkfaO2mxiRiGTE+/9rraEt29Cnqgseff
	uBlpQCB9Dq9n0gjdwUeLYmd5C7N+Gwl6as5Y5SjWdH3HKwIOHBXsb54NTNlezUWAWV4k
	zhiza7fAgOwgXXGrhQxush0b14cggSFfU07l+AtyPaH1edVImQkFOqFiQm1ZezxLK1WB
	yi1A==
X-Gm-Message-State: AN3rC/521XJdHbyciGxyik7r5E0MQHNSd4ryO5EhKwrImtRAXQ1Et97x
	DoCYtqrxYEoWUQ==
X-Received: by 10.107.130.104 with SMTP id e101mr3084898iod.118.1492274139835; 
	Sat, 15 Apr 2017 09:35:39 -0700 (PDT)
Received: from linux-uys3 (69-165-142-50.dsl.teksavvy.com. [69.165.142.50])
	by smtp.gmail.com with ESMTPSA id
	141sm2572298ioe.47.2017.04.15.09.35.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Apr 2017 09:35:39 -0700 (PDT)
Date: Sat, 15 Apr 2017 12:35:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170415163537.GA23175@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sat, 15 Apr 2017 16:35:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat 2017-04-15 @ 04:46:14 PM, Andreas Müller wrote:
> > Does anyone have any of these (or something else?) working?
> >
> Ehm userland gles2 on X11? I would not expect that to work. Experts
> correct me but userland acceleration works for fullscreen apps only.

I have made this work before (which, as you'll see later in this email,
doesn't imply that's how it's supposed to work!):
https://twoerner.blogspot.ca/2015/09/oe-build-of-glmark2-running-on.html

Oh, and I did try both with and without "--fullscreen".

> Why not using FOSS VC4+mesa?

Now's probably a good time to point out I only have a vague idea of what I'm
doing ;-)

I didn't try vc4 because the raspi recipes implied (to me) it was for aarch64
only. The "vc4graphics" MACHINE_FEATURES is only added for raspberrypi3-64.
I'll give this a try though.

Here's another question that only shows my inexperience in this area... does
using mesa always imply software-only rendering? mali (for example) would be
hardware rendering (though through a binary blob) and mesa is the software
fallback?

By the way, with my current setup I have been able to run openGL apps (e.g.
glmark2 by itself) albeit most definitely non-accelerated!

A lot of google searches talk about setting environment variables. Are there
any that might apply?

Best regards,
	Trevor

