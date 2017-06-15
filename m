Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 940F6E00B83; Thu, 15 Jun 2017 05:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C495AE00B57
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 05:39:37 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id i7so11230666ioe.1
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 05:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P08CzJF3l3iYqIuENl88KtDLjdcHXbSspcOA2qmG50Y=;
	b=m91yv19nEeMAvr8QqNNg7kdSqLXDD9D6f5V0WUKJRA/+WpZDx0OmLRir4fL/AybAIu
	wju7sPiYI5i8mfyV7tHmaOpJfDP+1v+pq04giSyQNsFpVsQUOjf5td+FGlw90owueKaK
	sB6PrGq+hOi+oCKnX9g03FdZr0r711+Spn2yL5IuK43bxJvOwT+LscUzv9r9Yv6Fqc4C
	4BmBZ72hjhi46zFO1+P+i8NbaNFUreIP9yxWahh1NO85cV2nROu/HyFXoFfINdrWLHdg
	WOnF2H2eOm/E118Q2LsY49AlG0hKCf4YhhINtlU4f50JY6aex6zAtCf/W0ZjU7DhrWp1
	ROXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P08CzJF3l3iYqIuENl88KtDLjdcHXbSspcOA2qmG50Y=;
	b=DFbQakP0hm+GmRgcVbh544VIq1XCb6kU7TKATScloBNAygU3/90w43poDgB+HSIT1k
	490o3gf5DJ5Z2JEci3NbZcULlgJiaNw+cYr+e4EyNrCY4q480sZLudfngf6unfWthgxU
	W1kbCJW8MzZyeEGQM6GgSvtrc2wxMws0aDVlPu2NuJbuu8jMYOuQqcKuV8rXyJ6HD9Im
	YfDiDZRapIT/6F3/lmRYWK4po/3TMSWAETF7ykGo2oe4nCjnOlDDlnkWy5pcvEhu04zf
	f4hx+wt9p09nDYN3wMTly2dAiaqY5G0eevHEPgyPIQRTPnVmMMHLvBEoG+JqEXt9QQZ4
	pCNA==
X-Gm-Message-State: AKS2vOyD/jCb86ZLoCtw2MYQY8B1Gqu8eVJAu1Q8IogpufO1UCqyNhaS
	DNrEJqSoJ4FtCB7QioQEqw/KIt4DKKvhlRJ5Ug==
X-Received: by 10.107.167.199 with SMTP id q190mr4933296ioe.110.1497530377005; 
	Thu, 15 Jun 2017 05:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Thu, 15 Jun 2017 05:38:56 -0700 (PDT)
X-Originating-IP: [86.186.203.134]
In-Reply-To: <1497268608-5218-1-git-send-email-drew.moseley@mender.io>
References: <1497268608-5218-1-git-send-email-drew.moseley@mender.io>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 15 Jun 2017 13:38:56 +0100
Message-ID: <CAK18fxE0PqRotbv3bisgpDPKXOgaCPpjpoA_9=4zS5SEJY0ciA@mail.gmail.com>
To: drew.moseley@mender.io
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][PATCH] chip: Make sure to append to MACHINE_EXTRA_RRECOMMENDS rather than overwriting
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
X-List-Received-Date: Thu, 15 Jun 2017 12:39:40 -0000
Content-Type: multipart/alternative; boundary="001a1141f3be2996f80551fef612"

--001a1141f3be2996f80551fef612
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 12, 2017 at 12:56 PM, <drew.moseley@mender.io> wrote:

> From: Drew Moseley <drew.moseley@mender.io>
>
> Signed-off-by: Drew Moseley <drew.moseley@mender.io>
> ---
>  conf/machine/chip.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Looks good. Merged to master. Thanks.

--
Andrei Gherzan

--001a1141f3be2996f80551fef612
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jun 12, 2017 at 12:56 PM,  <=
span dir=3D"ltr">&lt;<a href=3D"mailto:drew.moseley@mender.io" target=3D"_b=
lank">drew.moseley@mender.io</a>&gt;</span> wrote:<br></div></div></div></d=
iv><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">From: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">drew.=
moseley@mender.io</a>&gt;<br>
<br>
Signed-off-by: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">d=
rew.moseley@mender.io</a>&gt;<br>
---<br>
=C2=A0conf/machine/chip.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br></blockquote><div><b=
r></div><div>Looks good. Merged to master. Thanks.</div><div><br></div><div=
>--</div><div>Andrei Gherzan=C2=A0</div><div>=C2=A0</div></div></div></div>

--001a1141f3be2996f80551fef612--
