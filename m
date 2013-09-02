Return-Path: <atamayoarbide@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D936BE01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 07:26:28 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id s9so8043827iec.21
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 07:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OIElxkvWoDYSt48D9hPMY7IrnivCEmBFReHyrYevyTg=;
	b=UVYwugujkwMs6pz2iRHRO3TdZ4mPNqJgWvjLYyUeFThxN9LXAuyV3YXHiScGo7AyEh
	4ceB/YTOjgiHbAIq2q5vzdGLQNhSs3iZd4wGpvt4YCWlTwMJod67nzIbXNRbHGKqjXux
	upMZiuLbrPKRLDZOPbf3d1qSh8upPGK8ik8fc5A5RnvBy9GZdHJ0qPodpbMgpac3zgDf
	14adgCZbJU0nhfy1k++FcqNtkkPtRtb+ESsY5ytRlBlfjHvaBj/ucLK61A2l+2ODSJiv
	mEdPgbWJpnmCTBJIesFLAXwc7HJIUj57t07vUr+W98bGMg8NNnNuWQX7lsjqTGkXfhd1
	NHow==
MIME-Version: 1.0
X-Received: by 10.43.15.68 with SMTP id pt4mr3450309icb.35.1378131988550; Mon,
	02 Sep 2013 07:26:28 -0700 (PDT)
Received: by 10.50.85.76 with HTTP; Mon, 2 Sep 2013 07:26:28 -0700 (PDT)
In-Reply-To: <20130902070203.CBEEB380BF7@gemini.denx.de>
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
	<20130902070203.CBEEB380BF7@gemini.denx.de>
Date: Mon, 2 Sep 2013 16:26:28 +0200
Message-ID: <CAMZj-5NAmkq34+88f71otaMo4C-mFc_GS+EAsfCw4EoS4FTiCA@mail.gmail.com>
From: Asier <atamayoarbide@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Mon, 02 Sep 2013 14:26:30 -0000
Content-Type: multipart/alternative; boundary=bcaec50fdfb1a19a0804e5675bbb

--bcaec50fdfb1a19a0804e5675bbb
Content-Type: text/plain; charset=ISO-8859-1

Thank you for all your answers.

As Robert Berger wrote, Xenomai is a patch that you need to apply to the
kernel and then compile it. I haven't done it yet, but I think there might
be some difficulty if patching an already patched kernel. Is this the case
in the Yocto distributions?

Building the userland stuff may also be quite ardous.

> Out of curiosity, what sort of real-time requirements do you have?
>
I want hard real-time. Really, it might be enough with soft real-time, but
I don't want to take the risk. The real-time system has a 1ms period.


> ELDK adds full Xenomai support starting with release v5.4 (...)
> ELDK primarily supports ARM, MIPS and Power architectures.  We didn't
> test the Xenomai stuff on x86 yet.
>
Wolfgang, do you plan to support x86 architecture?

I'll ask Denx, as well as Wind River and Enea about Xenomai and x86 support
for their Linux distributions. If I get through something, I'll let you
know.

Best regards,

Asier



2013/9/2 Wolfgang Denk <wd@denx.de>

> Dear Asier,
>
> In message <
> CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com> you
> wrote:
> >
> > Is there any Linux distribution based on the Yocto project that lets me
> > configure my embedded kernel with Xenomai? If not, has anybody got any
> > experinece in adding Xenomai to the Yocto project?
>
> ELDK adds full Xenomai support starting with release v5.4 ; please see
> www.denx.de/wiki/view/ELDK-5 for details, or feel free to ask for more
> details on the ELDK mailing list, see
> http://lists.denx.de/mailman/listinfo/eldk
>
> > I'm using an Atom N270 chipset.
>
> ELDK primarily supports ARM, MIPS and Power architectures.  We didn't
> test the Xenomai stuff on x86 yet.
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> Real programmers don't comment their code. It was hard to  write,  it
> should be hard to understand.
>

--bcaec50fdfb1a19a0804e5675bbb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you for all your answers.<br><br></div>As =
Robert Berger wrote, Xenomai is a patch that you need to apply to the kerne=
l and then compile it. I haven&#39;t done it yet, but I think there might b=
e some difficulty if patching an already patched kernel. Is this the case i=
n the Yocto distributions?<br>
<br></div>Building the userland stuff may also be quite ardous.<br><br><div=
><div>&gt; Out of curiosity, what sort of real-time requirements do you hav=
e?<br>&gt;<br></div><div>I want hard real-time. Really, it might be enough =
with soft real-time, but I don&#39;t want to take the risk. The real-time s=
ystem has a 1ms period.<br>
<br></div><div><br>&gt; ELDK adds full Xenomai support starting with releas=
e v5.4 (...)<br>&gt; ELDK primarily supports ARM, MIPS and Power architectu=
res. =A0We didn&#39;t<br>&gt; test the Xenomai stuff on x86 yet.<br>
&gt;<br></div><div>Wolfgang, do you plan to support x86 architecture?<br><b=
r></div><div>I&#39;ll ask Denx, as well as Wind River and Enea about Xenoma=
i and x86 support for their Linux distributions. If I get through something=
, I&#39;ll let you know.<br>
</div><div><br></div><div>Best regards,<br><br></div><div>Asier<br></div><d=
iv><br><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2=
013/9/2 Wolfgang Denk <span dir=3D"ltr">&lt;<a href=3D"mailto:wd@denx.de" t=
arget=3D"_blank">wd@denx.de</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Dear Asier,<br>
<div class=3D"im"><br>
In message &lt;<a href=3D"mailto:CAMZj-5MD%2BkLf3JVS7Mmyq-JfREKPdcoam0NFCTr=
qsFw4bnrx4A@mail.gmail.com">CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bn=
rx4A@mail.gmail.com</a>&gt; you wrote:<br>
&gt;<br>
&gt; Is there any Linux distribution based on the Yocto project that lets m=
e<br>
&gt; configure my embedded kernel with Xenomai? If not, has anybody got any=
<br>
&gt; experinece in adding Xenomai to the Yocto project?<br>
<br>
</div>ELDK adds full Xenomai support starting with release v5.4 ; please se=
e<br>
<a href=3D"http://www.denx.de/wiki/view/ELDK-5" target=3D"_blank">www.denx.=
de/wiki/view/ELDK-5</a> for details, or feel free to ask for more<br>
details on the ELDK mailing list, see<br>
<a href=3D"http://lists.denx.de/mailman/listinfo/eldk" target=3D"_blank">ht=
tp://lists.denx.de/mailman/listinfo/eldk</a><br>
<div class=3D"im"><br>
&gt; I&#39;m using an Atom N270 chipset.<br>
<br>
</div>ELDK primarily supports ARM, MIPS and Power architectures. =A0We didn=
&#39;t<br>
test the Xenomai stuff on x86 yet.<br>
<br>
Best regards,<br>
<br>
Wolfgang Denk<br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk &amp; Detlev Zund=
el<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: <a href=3D"mailt=
o:wd@denx.de">wd@denx.de</a><br>
Real programmers don&#39;t comment their code. It was hard to =A0write, =A0=
it<br>
should be hard to understand.<br>
</font></span></blockquote></div><br></div></div></div></div></div>

--bcaec50fdfb1a19a0804e5675bbb--
