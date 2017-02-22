Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4962E00405; Tue, 21 Feb 2017 18:20:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.195 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71021E003D7
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 18:20:37 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id n37so142533qtb.3
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 18:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4JOq7Pxi1B6qOTmL5cL5RwtOsBYARK6YjCD7gt2kneE=;
	b=lQfcDzVJgYofMszVClKTNGbXRdeKCURB4J3vVYxyQG/IXpsST0Jad6ysC0p7VdVywN
	mOxlfomrNbyjfv+5u/dm75q+7DcVBuNpCd0hXxsO1prELZHAGVegqAz4YGJr26Ea3kt9
	p9MOPYRAS11+HlD2Ni/W+omZZDFr2ZuEEXoL+hRHljFFwXSEB92GXKwf8+WAZ3XQXKW0
	0CcxFhrrLSE99yYxxzVoIk3TsPcWQ6fgSzeIpU7kR9SXAlHv7Bj3UOWFvA7i+GJVbCkz
	wlYkcvaHootrGoyDzn37VO8HoQXeQESYgWl4OzaqhHSI+phlgTUSWKkdtkLCNunTEpZt
	/jEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4JOq7Pxi1B6qOTmL5cL5RwtOsBYARK6YjCD7gt2kneE=;
	b=RhbLmnz7+KWYP6jTNFJ0hcGaDCgaaZo7tsjmlkxRos3n3clFk8RxpIqIrAc5D3VIw0
	AY9OGm+kPVc6M3RpEe1n93hqb0+rOy44fp5JN9n34fxvZELUAp4z/p6S21UHp/L20J1O
	bheh8P9RVzBQL3yIzJ5S0ZDicVYSsusEbV20azAMsT/1S60CXumX88WOjcJ2NBgIS6yb
	8SU1pXHHcBM8fjktdGSQVjhOjZIt9SYxHZZxm9Em9ES6QzpdTOZwfdjcEVgpzXXfv5LL
	9I2TBhPZnqBCtwOBd+ZBliP9npzrvBE9nxeeXpaDcAWwCZQi3X/EnxI8qDIWCbaPPp14
	cGbA==
X-Gm-Message-State: AMke39m37TjPis+8+LMcMvZEC5L3fluiJS7/jE15SKB5tyWyZx8iKCw76hU/S9kBcYzxuM3tjZgcugzfRf1EKg==
X-Received: by 10.237.38.197 with SMTP id q63mr30024059qtd.14.1487730037259;
	Tue, 21 Feb 2017 18:20:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Tue, 21 Feb 2017 18:20:36 -0800 (PST)
In-Reply-To: <CAHUNapTE=HmydvTCwD5G-zUGcu8FABNertLu3daz_Gdsp=xhSw@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-2-twoerner@gmail.com>
	<CAJrj+DP3MxzVcvZkN=APegrjydGYQZeE3J4MBoZ7RPMxQ-fkfQ@mail.gmail.com>
	<CAHUNapTE=HmydvTCwD5G-zUGcu8FABNertLu3daz_Gdsp=xhSw@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Wed, 22 Feb 2017 10:20:36 +0800
Message-ID: <CAJrj+DNTLZ7isU9Ng9PXEeY-AEOvp_6Vc3Dri=AzQjLGLwmfhQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 1/5] machine: rk3288: enable SoC-specific assignments
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
X-List-Received-Date: Wed, 22 Feb 2017 02:20:41 -0000
Content-Type: multipart/alternative; boundary=94eb2c076fd264a119054915245a

--94eb2c076fd264a119054915245a
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-22 6:25 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> Almost. The file you created a patch against had  DEFAULTTUNE which
> has been removed so I had to create a new patch that would apply.  If
> you're happy with this patch (which is very similar to yours) I'll add
> your signed-off-by line to it when I commit?
>
Sure, My pleasure.

>
> On Sat, Feb 18, 2017 at 10:40 PM, Eddie Cai <eddie.cai.linux@gmail.com>
> wrote:
> > Hi Trevor
> >
> > Is this the same one i submit before?
> > https://www.mail-archive.com/yocto@yoctoproject.org/msg33572.html
> >
> > 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> >> Enable machine overrides for RK3288.
> >>
> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >> ---
> >>  conf/machine/include/rk3288.inc | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> >> index 86fc567..769e5c1 100644
> >> --- a/conf/machine/include/rk3288.inc
> >> +++ b/conf/machine/include/rk3288.inc
> >> @@ -1,7 +1,10 @@
> >>  # Copyright (C) 2015 Romain Perier
> >>  # Released under the MIT license (see COPYING.MIT for the terms)
> >>
> >> +SOC_FAMILY = "rk3288"
> >> +
> >>  require conf/machine/include/tune-cortexa17.inc
> >> +require conf/machine/include/soc-family.inc
> >>
> >>  PREFERRED_PROVIDER_virtual/kernel = "linux"
> >>  SERIAL_CONSOLES = "115200;ttyS2"
> >> --
> >> 2.12.0.rc1.48.g076c053
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c076fd264a119054915245a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2017-02-22 6:25 GMT+08:00 Trevor Woerner <span dir=3D"ltr">&l=
t;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Almost. The file you cr=
eated a patch against had=C2=A0 DEFAULTTUNE which<br>
has been removed so I had to create a new patch that would apply.=C2=A0 If<=
br>
you&#39;re happy with this patch (which is very similar to yours) I&#39;ll =
add<br>
your signed-off-by line to it when I commit?<br></blockquote><div>Sure, My =
pleasure. =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Sat, Feb 18, 2017 at 10:40 PM, Eddie Cai &lt;<a href=3D"mailto:eddie.cai=
.linux@gmail.com">eddie.cai.linux@gmail.com</a>&gt; wrote:<br>
&gt; Hi Trevor<br>
&gt;<br>
&gt; Is this the same one i submit before?<br>
&gt; <a href=3D"https://www.mail-archive.com/yocto@yoctoproject.org/msg3357=
2.html" rel=3D"noreferrer" target=3D"_blank">https://www.mail-archive.com/<=
wbr>yocto@yoctoproject.org/<wbr>msg33572.html</a><br>
&gt;<br>
&gt; 2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a href=3D"mailto:twoern=
er@gmail.com">twoerner@gmail.com</a>&gt;:<br>
&gt;&gt; Enable machine overrides for RK3288.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail=
.com">twoerner@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 conf/machine/include/rk3288.<wbr>inc | 3 +++<br>
&gt;&gt;=C2=A0 1 file changed, 3 insertions(+)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/i=
nclude/rk3288.<wbr>inc<br>
&gt;&gt; index 86fc567..769e5c1 100644<br>
&gt;&gt; --- a/conf/machine/include/rk3288.<wbr>inc<br>
&gt;&gt; +++ b/conf/machine/include/rk3288.<wbr>inc<br>
&gt;&gt; @@ -1,7 +1,10 @@<br>
&gt;&gt;=C2=A0 # Copyright (C) 2015 Romain Perier<br>
&gt;&gt;=C2=A0 # Released under the MIT license (see COPYING.MIT for the te=
rms)<br>
&gt;&gt;<br>
&gt;&gt; +SOC_FAMILY =3D &quot;rk3288&quot;<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 require conf/machine/include/tune-<wbr>cortexa17.inc<br>
&gt;&gt; +require conf/machine/include/soc-<wbr>family.inc<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;=
<br>
&gt;&gt;=C2=A0 SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
&gt;&gt; --<br>
&gt;&gt; 2.12.0.rc1.48.g076c053<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/y=
octo</a><br>
</div></div></blockquote></div><br></div></div></div>

--94eb2c076fd264a119054915245a--
