Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29129E00B58; Fri, 16 Jun 2017 03:36:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3E7E009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:36:51 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id u19so57234161qta.3
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+tX3EZDbMX6h1PojareO2C4znP1/ijtRZvyEvRbJLr4=;
	b=jAg15SdJixFi+YQrmIMaMU/95IeYwgxqojiwkBTobM81B2DdR2LMy7qBIzY/Tc3JtZ
	VFvMPG0+K+E3n42urzsiP8CYLzD1DJDrL1mzuGCFxCXGvacMja44YHUyDmNE1xgHJfqZ
	+NwZncwyKHGm+5koIDHPSta1O3Vmr0mqg1WOveeTH9lrH1ga5mNTi+xLRujhZr2X7+4b
	sXOeK3nzb1GCCGjCpkJg3pLW4QoVAkS9N8PWoPY8fHY3fGMIv7PKgxRysNTBSkzvfwui
	HMPvUfIyIuyg1+i3QQoUFAfbDuDpTAZ0Y/J6R21boZmonUzEeH755MdumlRi7WlLYMKv
	GnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+tX3EZDbMX6h1PojareO2C4znP1/ijtRZvyEvRbJLr4=;
	b=IugB51rdQGfbeHqcnBd6UGnf1vMK+x6OT0C4LJZxqv1lXWnQF4+jDsiADB56xIS4us
	cN53Ij9HayhIrJ7nQmSGcwBz60dfIEMHRIAUyU3cAwFU3Shn3Sp8EQJjEqTIweo2KL8D
	Pl/u9oiSmjlmzx5EaQCT43kcAnK4ORW/aHwFKilb3e0NgEbLYr0OuWDrdQBlJmMJPQO+
	+XfCtV2+448d/FLXWr0csB+XvpHFdLMwS88Zjclr9lh3XjDzA5QkmkrKRND86S+Bcx1b
	jRGLV5tLyzMRS7qGWjFgaTIkAzbuUD8P2UdHgjHMH6A/q0NdHHWi4JIo26OgnyyuSoEU
	unOw==
X-Gm-Message-State: AKS2vOwXW2oo2f+552pSHXgKlXFwRjQ4iSW0wEP2QgLcPQtJJTqFkYI/
	HIZ8vxjRorC120ydUTg+T9AbVxIa+meM
X-Received: by 10.55.120.1 with SMTP id t1mr11293496qkc.171.1497609410555;
	Fri, 16 Jun 2017 03:36:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Fri, 16 Jun 2017 03:36:30 -0700 (PDT)
In-Reply-To: <f0387fca00764b658bc7d3fa61dfb0b6@HIBDWSMB03.ad.harman.com>
References: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
	<CAJTo0LYAK3yiAgfWOF3q9y2rNeBs1EXaf3sRZ0bCoXqj50zSuw@mail.gmail.com>
	<35df41582d4b4f16a9bddd6a77e186c5@HIBDWSMB03.ad.harman.com>
	<CAJTo0LbKP5dLppYKTMEJg=4dg3wgq0wyN_+=1ruFrqanxh89PA@mail.gmail.com>
	<f0387fca00764b658bc7d3fa61dfb0b6@HIBDWSMB03.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Jun 2017 11:36:30 +0100
Message-ID: <CAJTo0LZ3Yr9OKfgH=+AWfs-ajjUgSht6=-AGe+Oy2-h9NQy04Q@mail.gmail.com>
To: "Pawar, Alok" <Alok.Pawar3@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Yocto VLC compilation
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
X-List-Received-Date: Fri, 16 Jun 2017 10:36:55 -0000
Content-Type: multipart/alternative; boundary="94eb2c06686aedc5ad0552115c57"

--94eb2c06686aedc5ad0552115c57
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 16 June 2017 at 11:32, Pawar, Alok <Alok.Pawar3@harman.com> wrote:

> Ffmpeg contains =E2=80=98 LICENSE_FLAGS =3D =E2=80=9CCommercial=E2=80=9D =
=E2=80=99. Whenever I will hit this
> type of problem, then I need to update each bb file manually?
>
>
You'll need to agree to the license terms for each recipe that has
non-trivial licensing.  This won't be many recipes.

You could just set the whitelist to "commercial" without any recipe
specifiers, but if you're intending on releasing product at some point this
would be a foolish thing to do.

Ross

--94eb2c06686aedc5ad0552115c57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 June 2017 at 11:32, Pawar, Alok <span dir=3D"ltr">&lt;<a href=3D"mail=
to:Alok.Pawar3@harman.com" target=3D"_blank">Alok.Pawar3@harman.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><sp=
an style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;col=
or:#1f497d">Ffmpeg contains =E2=80=98 LICENSE_FLAGS =3D =E2=80=9CCommercial=
=E2=80=9D =E2=80=99. Whenever I will hit this type of problem, then I need =
to update each bb file manually?<u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"></p></span></blockquote></div><br>You&#39;ll need to=
 agree to the license terms for each recipe that has non-trivial licensing.=
=C2=A0 This won&#39;t be many recipes.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">You could just set the whitelist to &quot;=
commercial&quot; without any recipe specifiers, but if you&#39;re intending=
 on releasing product at some point this would be a foolish thing to do.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--94eb2c06686aedc5ad0552115c57--
