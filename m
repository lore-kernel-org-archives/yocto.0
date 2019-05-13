Return-Path: <ralph.siemsen@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8076E00D9B; Mon, 13 May 2019 06:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1F3DE00D52
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:35:02 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id y10so9091225lfl.3
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=C7VGDV+yOqBOQ/RmqwED6ix5qXcIosLWzp9H5HROKbw=;
	b=SVvjOSffJDwfh19CWq5vNaXKlghArQ/Pf+BUV03DphRjb0s3sGS6vdvThYUiJ1LrR7
	0wzXJOCoc0C/bxCj7/hXcK8sb9KW0pIDdJamwBLzM8Mc9yhOag17MYA27vWdLydBre9t
	B0x9RL8KGsipy893i9YDxtTScp7I5+LlmajLS+KWdWmbJJltLmgfRtM/yhZhIq9zAO0f
	5sDAx8BvNwopbSGQWldStMmUNvhQPWET0CqtJ1oe5onlOqKfcaZIZoLk7XSgkSfk/vkG
	1TqaDMJv7yTSo6SGJV3y56sjrzyFOFC2Idq+0RZPMINeCOUh+PoMq65RBR4NyMPCGVq1
	mBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=C7VGDV+yOqBOQ/RmqwED6ix5qXcIosLWzp9H5HROKbw=;
	b=EgTyzXWvyr/qvoHtuBUlL2YJlJ7VV5QF1bUZgwAKounII0wr4c0oI367hT6IK+aryC
	AZOzgfILKMMdnbg7Wp75t1pMHX35oFD/nP6Gb3KGUhZB8wrK3m3n8JCplrfh30nrmlhL
	VZSt5DJ8kLNRi4g/AYHeWEwA9etKojirYEkbuAdDGR3sWeNl9x2UgmFcNSItA6LMI+VO
	KQO2doALG7mgTAejvGHH2qXh3fvnhBuo3nijBXxwlOjgRuAss9weGUluK7qBmmGwRrmH
	DH46P6LNs8b7nIcInmbJdhGxP2wWV1GRF1VMqrEUg1j+9+AcyfctSrl7sHET5mheYFKF
	YbqA==
X-Gm-Message-State: APjAAAWp6xZtzlac5GLc7pjsvoBr2mrMd/ZAekaZVzhFgIS9gCwd5W7P
	UcT2C4s5s6BcD+ETXt8xcEiAFjoOhifk5exZN5Wh3A==
X-Google-Smtp-Source: APXvYqzH7qkEeORimpPscNtLr5c0Enu1MZtP4YWGk0Kj7Iqzr6qJ7H97LDijQJIK98LuPDH/pHqg/2Vyv4gQwNd9j9w=
X-Received: by 2002:a19:750b:: with SMTP id y11mr14584074lfe.6.1557754501722; 
	Mon, 13 May 2019 06:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
	<4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
	<CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
	<4a8c7bbf-e0e9-dd0b-af5f-ed3ff6df5562@gmail.com>
	<CAOe0dAXhkzhQZO2zOPtM4s5pO-t9VFOPsWt_h-5P+4rT=Hzhog@mail.gmail.com>
In-Reply-To: <CAOe0dAXhkzhQZO2zOPtM4s5pO-t9VFOPsWt_h-5P+4rT=Hzhog@mail.gmail.com>
From: Ralph Siemsen <ralph.siemsen@linaro.org>
Date: Mon, 13 May 2019 09:34:49 -0400
Message-ID: <CANp-EDYmzPbafstpL60UtjtiznDtv02ZvTxH5Mnarr4c6NTQcg@mail.gmail.com>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Cc: "yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Mon, 13 May 2019 13:35:04 -0000
Content-Type: multipart/alternative; boundary="000000000000b905fb0588c4fb34"

--000000000000b905fb0588c4fb34
Content-Type: text/plain; charset="UTF-8"

Hi Ashish,

On Mon, May 13, 2019 at 5:57 AM AshishKumar Mishra <
ashish.emailaddress@gmail.com> wrote:

> So , time shown by "uname -a" is retains older value even though
> i had compiled the linux multiple times .
>

This is normal behaviour, even when building the kernel directly (eg. not
using Yocto). It is a bit surprising at first, but it all comes down to
dependencies in the Makefile for the kernel.

The version string displayed by "uname -a" comes from init/version.c in the
kernel source tree. Specifically the symbol UTS_VERSION, which is defined
in include/generated/compile.h. This file is produced when you first build,
and remains thereafter, unless you do "make clean" or equivalent.

Currently , only way i am able to bypass this behavior is to do bitbake -c
> cleanall linux-yocto
> before every compilation.
>

You can delete the include/generated/compile.h file in your kernel build
directory. Upon rebuild of kernel, the file will be re-created with the
current date/time.

Regards
Ralph

--000000000000b905fb0588c4fb34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Ashish,</div><div><br></div></div=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, M=
ay 13, 2019 at 5:57 AM AshishKumar Mishra &lt;<a href=3D"mailto:ashish.emai=
laddress@gmail.com">ashish.emailaddress@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">So , time shown by &quot;uname -a&quot; is retains older value eve=
n though <br>i had compiled the linux multiple times .<br></div></div></blo=
ckquote><div><br></div><div>This is normal behaviour, even when building th=
e kernel directly (eg. not using Yocto). It is a bit surprising at first, b=
ut it all comes down to dependencies in the Makefile for the kernel.</div><=
div><br></div><div>The version string displayed by &quot;uname -a&quot; com=
es from init/version.c in the kernel source tree. Specifically the symbol U=
TS_VERSION, which is defined in include/generated/compile.h. This file is p=
roduced when you first build, and remains thereafter, unless you do &quot;m=
ake clean&quot; or equivalent.</div><div><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Currently , onl=
y way i am able to bypass this behavior is to do bitbake -c cleanall linux-=
yocto <br></div><div dir=3D"ltr">before every compilation.<br></div></div><=
/blockquote><div><br></div><div>You can delete the include/generated/compil=
e.h file in your kernel build directory. Upon rebuild of kernel, the file w=
ill be re-created with the current date/time.</div><div><br></div><div>Rega=
rds</div><div>Ralph<br></div></div></div>

--000000000000b905fb0588c4fb34--
