Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5080DE0097C; Fri, 19 Oct 2018 15:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25221E00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 15:04:50 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id c11so590582uan.5
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 15:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xJK/U0XqGHzbEpL8T8BrX4K4lPE+K3bFwA1NH0padgw=;
	b=irlx/KR1Q4NKODo+/AYR7FE9sv0dC0re1siToEzQExnbHpy48fTxwUdva0R3DHpVfL
	7sl+spQe5SbN+SUAfi6zl+2oZPAUDEb1AfpUAk1RdvPd4sRwHlW+L8aISIpvgALLwJVw
	i4fj/mxg/6s2AAhbuCxinOZXlV2S5ybEKw+nkLpKIsQ1X4gp1l790xLpDDSZvsSQY0mM
	HjRYGwP5PBWTM7ao2u4jcyFTOzhJwInmIt+MBcsDLNXAP3J021KT0OiYB1oNSu9VkZvC
	NXUpK9WsU+KHqG/ITbmo+9Krq8B1EEM88SY8N0nCxCG8so1PQADigQ84GMz544pC3rgo
	8GFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xJK/U0XqGHzbEpL8T8BrX4K4lPE+K3bFwA1NH0padgw=;
	b=TZsp+5UIrywjcD9T4xp1lnG+vNRJfUkJGs2sqwj6q1vTINx/rZ9gLUcdslLwQK9IJw
	cwuXeJpehQUVIPYrWbrSBdLf8TO7gG9g0hVexKEdKWqrJhmVSRyg4m6QmhvGEmrKgTz1
	2I9ztIZXFg1m8twwbw33XELcEGY7c9apmo7TAmAwrdnfpNxHkD1kKAPKEWI7Yz8KJvL0
	QdbaEKiwVvOQ9NheDkequ79p4SuK0VRVqCdbWo0+3iLfmHHbraaWPV69e61vrKEdtXSf
	GdywyJCxPrYTrnE97UGyJEUh5RK0PdSDst2Jt2dgmfU9/FMgjoP9rh1jaz5aDdbfDZvM
	horw==
X-Gm-Message-State: ABuFfohjOn2pB1ssaV0HvMaUqAZB6sUmiRfkzIqBlm0E/dgsbdUlMOi/
	1oCfqSxrcf6uTRUYOSRpe0koi6gozGA9X/MWaq224Q==
X-Google-Smtp-Source: ACcGV62nGZtBPlzHRcsTPkPwJcmUQ/uhK/RnY6YI4ysW3+DYXvTTQEJL1GjHkrpQlRhazRHSM7Bn1ZVtaVfTY29m8rM=
X-Received: by 2002:ab0:2505:: with SMTP id j5mr16380168uan.88.1539986690259; 
	Fri, 19 Oct 2018 15:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2=eSqSqREuVatD=oHfDYcYODt=p2+Rw3K+UPWx11K5zYQ@mail.gmail.com>
In-Reply-To: <CAK4Yt2=eSqSqREuVatD=oHfDYcYODt=p2+Rw3K+UPWx11K5zYQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 20 Oct 2018 00:03:28 +0200
Message-ID: <CAK18fxFxB62gR8+0neuyYzZTNeZuDuJQorJqritXgtfB8HxpWw@mail.gmail.com>
To: zoleelikesdebian@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: meta-layer raspberry
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
X-List-Received-Date: Fri, 19 Oct 2018 22:04:52 -0000
Content-Type: multipart/alternative; boundary="000000000000a1da3105789c17bf"

--000000000000a1da3105789c17bf
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Oct 19, 2018 at 11:39 PM Zolee K <zoleelikesdebian@gmail.com> wrote:

> Hello,
>
> Do you know if I include tha raspberrypi layer it would compile to a
> raspberry pi 1 machine as well or only to the later models?
>
>
RaspberryPi 1 should work just fine.
--
Andrei Gherzan

--000000000000a1da3105789c17bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div>Hi,</div><div><br></di=
v><div dir=3D"ltr">On Fri, Oct 19, 2018 at 11:39 PM Zolee K &lt;<a href=3D"=
mailto:zoleelikesdebian@gmail.com">zoleelikesdebian@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Hello,</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Do you know if I include tha ras=
pberrypi layer it would compile to a raspberry pi 1 machine as well or only=
 to the later models?</div><div dir=3D"auto"><br></div></blockquote><div><b=
r></div><div>RaspberryPi 1 should work just fine.</div><div><div>--</div>An=
drei Gherzan</div></div></div>

--000000000000a1da3105789c17bf--
