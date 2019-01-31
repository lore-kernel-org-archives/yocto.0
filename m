Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D870E00D16; Thu, 31 Jan 2019 08:59:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAC67E00CB0
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 08:59:58 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id e5so4168700qtr.12
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 08:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xvYXxH9TT7Gr0lz+agKJ/4ge/Tj1/iizb2kowOCfHgU=;
	b=lqJTIdUve7K9vusktcpq+VS3wUB8FsSURoJCdML1+20ml6GKwwnB/mFBEbZOVzCJ9f
	ceFvIYXzOSRizlVXnV/Qw8rgKeoWUNyf0kjfgH9dofW+AiJQwLmfWxdqqupilJHby6Iz
	IHUGTJk5Ey/ljDQAe/NMHFOqpDv6DLrIHp+P7dewPDc/lzPps9n0EKFRQUnXmpAyfc8V
	4U1n5m+csxb1nuQg5pPDBfoOzbKtgX2ZU3yH7tcQAPTqwfHCdL0tvupf16aGkUVhFd0S
	C2LBJqCta5pNAiN2gkL9q5xKrd/HPnxlKOAZWhhAlRdtB4Lsa2c3MnkP05JJ8/nWsmKr
	4lXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xvYXxH9TT7Gr0lz+agKJ/4ge/Tj1/iizb2kowOCfHgU=;
	b=CcBJXYz2szoO/K+fbZ4Bvd7nDABdY9cNzsbXsY/ZftiD/D2nT6TO+gcPVLM1pfOFN2
	szvysq3CjCxsviSJXeNlPQ3x5CSotMADqa123tWt0geqD9JUCccx7BRAyJ3NtzXk9mRo
	hDNWzmjLT3pYQZKOe/8ngTMdpBTT0e7icg7Q6XDGUDjRLi226hvCiv7XdzWXN00i043Y
	o6bBPzxCEhc+VEhO71GPvnZX+By2bw2t3o6HiW9rKruxbHuMpttlf1eVa43D6TfnkIVZ
	HdPJA+IRQ2+lMSAY5nr/kntuZ6MFVqVhhGUsN3n4zToqmDmyIkZWPi55RglUYcjB/akh
	FPfA==
X-Gm-Message-State: AJcUukcghRKxZyFGVlq9nBWLTP4Kn9+cmxQjquVeQxQRVOS3S8agF84v
	/HP3leo4WSzCREk8TTLSONzDz7lydIz3Ipb548h0ng==
X-Google-Smtp-Source: ALg8bN47dYt1H1F4Q1Jmbg1BMlq3QYJrH+8JSZn8BXSR2UnG0+8YtRHgfBNhNJG8yqYSIW54f2+INOqiUWy9tlXDYrA=
X-Received: by 2002:ac8:2a81:: with SMTP id b1mr35320826qta.110.1548953998047; 
	Thu, 31 Jan 2019 08:59:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBS=QgbPQqOJOJ7u4U-a77J7ukpm6vvHFQMXqsrdF80Wuw@mail.gmail.com>
	<CAJTo0LaErhs5snxmxROjaY1LFzQiNGXNaTezoOT=_LbnDdj2SA@mail.gmail.com>
In-Reply-To: <CAJTo0LaErhs5snxmxROjaY1LFzQiNGXNaTezoOT=_LbnDdj2SA@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 31 Jan 2019 08:59:46 -0800
Message-ID: <CAB=6tBRZ0JdnV_8L70gxpJxJu949Pd6=jK3o6Z61WVgJjnjSBA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: pcre-config replacement
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
X-List-Received-Date: Thu, 31 Jan 2019 16:59:59 -0000
Content-Type: multipart/alternative; boundary="000000000000d3bcde0580c3f482"

--000000000000d3bcde0580c3f482
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 31, 2019 at 2:14 AM Burton, Ross <ross.burton@intel.com> wrote:

> pkg-config.  Inherit the pkgconfig class in the recipe if it doesn't
> already, and see for example
>
> meta/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
> in oe-core for an example.
>
> This is an upstreamable change so ideally submit it upstream so you
> don't have to carry a patch around too.
>

Indeed, that is exactly what I have done:
https://github.com/SpiderLabs/ModSecurity/pull/2014

It looks like a few of their automated regression tests are failing, so I
probably have more work to do on the patch.

I did end up finding the patch you referenced, and that got me most of the
way there. I do not use autotools much, so it is hard for me to tell if I
missed something obvious.

..Ch:W..

--000000000000d3bcde0580c3f482
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 31, 2019 at =
2:14 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D=
"_blank">ross.burton@intel.com</a>&gt; wrote:<br></div><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">pkg-config.=C2=A0 =
Inherit the pkgconfig class in the recipe if it doesn&#39;t<br>
already, and see for example<br>
meta/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-dete=
ction.patch<br>
in oe-core for an example.<br>
<br>
This is an upstreamable change so ideally submit it upstream so you<br>
don&#39;t have to carry a patch around too.<br></blockquote></div><div><br>=
</div><div>Indeed, that is exactly what I have done:=C2=A0<a href=3D"https:=
//github.com/SpiderLabs/ModSecurity/pull/2014" target=3D"_blank">https://gi=
thub.com/SpiderLabs/ModSecurity/pull/2014</a>=C2=A0</div><div><br></div><di=
v>It looks like a few of their automated regression tests are failing, so I=
 probably have more work to do on the patch.</div><div><br></div><div>I did=
 end up finding the patch you referenced, and that got me most of the way t=
here. I do not use autotools much, so it is hard for me to tell if I missed=
 something obvious.</div><div><br></div><div>..Ch:W..</div><div><br></div><=
div><br></div></div></div>

--000000000000d3bcde0580c3f482--
