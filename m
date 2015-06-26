Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85966E00A45; Fri, 26 Jun 2015 07:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B311E00A2C
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:46:39 -0700 (PDT)
Received: by qkeo142 with SMTP id o142so56255396qke.1
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TFeRb4UcWr+Fr8o8mbn+JumSovS8x3gi1wjmJP8c/yw=;
	b=EMHi+nQIw8KkkoohAQa+71x9YICcG4Near9S7OBnUvYRNRJ7h2Un1s2ZhfPHbp2W8q
	cLPcL0oIk33q4+A3PHGUMIMmMtvgAqG/Z1tglP18/qecUyVUUHMDFIZ7f3xiKXQ1B6xg
	8zB4ueUfelg8+O8fAryg5rfnwNsiISShPoIVPmIsN2BO0479yd4emF0T69C0hdUsI8Mh
	MU6JEZzYRfcv9UuQi22Nq2zwi8OQM0lWC5YDj9v705rofQd0R9UPiso82DeB5EowsQhi
	UiVOoXxqigb7/6GPWaJp4ywsARC9y/kvjtHh8I+wPxtNHTPP3XVm8vv8w2+GzPDs/GrX
	1eBw==
X-Gm-Message-State: ALoCoQnzAT1fD1JjSbmcfFwqdoy3QHGpsiXV74axH3zfa8A/rFs60Uax5ALg+K4pdgaTIjbwM5te
X-Received: by 10.140.43.199 with SMTP id e65mr2691587qga.80.1435329999241;
	Fri, 26 Jun 2015 07:46:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 07:46:19 -0700 (PDT)
In-Reply-To: <CANge7vX_DE2vaBrhuc1qyr75AsM8gFaZLYsSbZzwtiYA8oK6vQ@mail.gmail.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
	<CAJTo0LaJuRxg86a9rF8LiW2xB=cjt9px4+7NLQ0fdy94PwXLVA@mail.gmail.com>
	<CANge7vX_DE2vaBrhuc1qyr75AsM8gFaZLYsSbZzwtiYA8oK6vQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 15:46:19 +0100
Message-ID: <CAJTo0LZ94O0f1Msx=u2B79mixjAiHCre5pcea0W+mSC8Z0uN6g@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 14:46:41 -0000
Content-Type: multipart/alternative; boundary=001a113a9baabd9cd205196cce09

--001a113a9baabd9cd205196cce09
Content-Type: text/plain; charset=UTF-8

On 26 June 2015 at 15:42, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:

> Back to the git depth point... why is "--depth 1" not the default for all
> cases?  Could anyone elaborate on some use cases where we'd actually want
> the entire history for builds?
>

I'm sure I've been told that it's not as simple as you'd expect when it
comes to varying SHAs and existing clones and so on.  I may be wrong.
There's one way to find out ;)

Ross

--001a113a9baabd9cd205196cce09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 June 2015 at 15:42, Jon Szymaniak <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jon.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Back to the git d=
epth point... why is &quot;--depth 1&quot; not the default for all cases?=
=C2=A0 Could anyone elaborate on some use cases where we&#39;d actually wan=
t the entire history for builds?</div></blockquote><div><br></div><div>I&#3=
9;m sure I&#39;ve been told that it&#39;s not as simple as you&#39;d expect=
 when it comes to varying SHAs and existing clones and so on.=C2=A0 I may b=
e wrong.=C2=A0 There&#39;s one way to find out ;)</div><div><br></div><div>=
Ross=C2=A0</div></div></div></div>

--001a113a9baabd9cd205196cce09--
