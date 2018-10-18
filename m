Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 643C4E00994; Thu, 18 Oct 2018 14:13:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.180 listed in list.dnswl.org]
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
	[209.85.221.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA2D0E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:13:22 -0700 (PDT)
Received: by mail-vk1-f180.google.com with SMTP id s129so2597868vke.9
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QgNAzXgaA4D2lycHEG4yLczp4Rr8rfyWB0l7bS10LXg=;
	b=HqOFf+hzicFOexFHf6U6mcKZdke24+LHMvHbN/mfbuAdiGL3zqORCVFFnlUm6jUUhh
	NwUsqNF2oLu5NT9+VXJe6R7QGyCNs0ESeOrn0Hr3htvV/fV+SKAi5g5DNoZzvMzSsfja
	51Sr4mRXyy8FvQZp8hlnthqTWIyeZOi0PBF6ckiwdOeeb94qa8nbotnWQElFsiGRAmmJ
	gXNuLNx41SeieIa1DzUg1TIRfCclNwmRBL3Jytx94c+n7Qu347K+CwFiA+3cPN7d/ky/
	Rp4wABkHJYQU5Ynkjpp09W5vFimEXG4MuzCbJK0f2s13alDUrklq4eR4vIoCE0zdxQlD
	pxjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QgNAzXgaA4D2lycHEG4yLczp4Rr8rfyWB0l7bS10LXg=;
	b=DfN/oTGsrzp3MJKB+Cd2aQdxBYtUQ+UxzPQEsZ5gdRLHeX76rTkYtvRir6Wqf2TSQa
	clEjy2SCW91Al6f9LCWg9rdkB0oxQsXIeh4GMwUGopRE6IwSkznoVCcFFMv5eLhoIZez
	uuKAWKUaxvjdcK77sp6ModqkNrtQWLeLFSGov3rOM3sG5luXMmXWoVtKY5AGt9ssG3TD
	co3w49hI4IQbjzSN2DwUW/5HkmEHR+meCdXd/CTk42Hc+IUQV3DjMhsJUTVrMwNUOh/m
	k/jTfWe90EHRKKrfOx5UfKciJ1/6zqCY474eL0EUlMsAAVr0HCAjCtH5tFRYx72ebLcj
	mkwA==
X-Gm-Message-State: ABuFfoheVh6f9qjXUsRUMSPTaG69L5Ymmlrs2wnFly0IYbBSzKBNr9Zx
	XbcArV80ecorMX62y99SJslZhNO7HhQH1MJnkdE=
X-Google-Smtp-Source: ACcGV6025r4HHXsx4RX20yGOedRI+fPeS1n2noGwEUCrDEqLdgvB+i91+ZmC/hn1sDV/4Am/WPV+fuu07dfsRuSsJ1E=
X-Received: by 2002:a1f:8252:: with SMTP id e79mr13075315vkd.62.1539897202090; 
	Thu, 18 Oct 2018 14:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<da77004b-e0df-82c1-7f87-9ccba1a33ea3@kernel.org>
In-Reply-To: <da77004b-e0df-82c1-7f87-9ccba1a33ea3@kernel.org>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 18 Oct 2018 23:13:10 +0200
Message-ID: <CAKRytNw3JGUrWcm66P1PrEDAsNCUro7st+m2b-4xmxSuL1LWkQ@mail.gmail.com>
To: Sinan Kaya <okaya@kernel.org>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Thu, 18 Oct 2018 21:13:23 -0000
Content-Type: multipart/alternative; boundary="000000000000b8a9910578874151"

--000000000000b8a9910578874151
Content-Type: text/plain; charset="UTF-8"

Thank you

Il gio 18 ott 2018, 22:48 Sinan Kaya <okaya@kernel.org> ha scritto:

> On 10/18/2018 3:08 PM, Joe MacDonald wrote:
> >> Sorry, I thought it had been created.  I'm going to be traveling the
> >> next few days to ELC-E, but I will try to get to it if someone else
> >> does not first.
> > Yeah, Mark and I are both going to be at ELC-E this week, we'll get it
> > sorted out.
>
> thanks.
>

--000000000000b8a9910578874151
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">Il gio 18 ott =
2018, 22:48 Sinan Kaya &lt;<a href=3D"mailto:okaya@kernel.org">okaya@kernel=
.org</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 10/18=
/2018 3:08 PM, Joe MacDonald wrote:<br>
&gt;&gt; Sorry, I thought it had been created.=C2=A0 I&#39;m going to be tr=
aveling the<br>
&gt;&gt; next few days to ELC-E, but I will try to get to it if someone els=
e<br>
&gt;&gt; does not first.<br>
&gt; Yeah, Mark and I are both going to be at ELC-E this week, we&#39;ll ge=
t it<br>
&gt; sorted out.<br>
<br>
thanks.<br>
</blockquote></div>

--000000000000b8a9910578874151--
