Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77498E00BAB; Thu, 24 Aug 2017 07:34:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFC9E00B87
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 07:34:36 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id u15so2987512wrg.5
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 07:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9vtIJS4F8KRbNe02ic/1bhnraou+8VkY2lIXGoYrilA=;
	b=Kcs/CeF4ePpUv0PtCbY0ckhYUYdE2dsqN3C4OylvgMjIYrQzhG8cxnCftrjt4ifd8W
	aXB7eQf96XHq2th2/3SQuANa+7Fy52WjRKAV6jRK+rpcXTO8g/cNnvhhnOioi+RJTHVv
	Mnbf4Mb9EQwOQ8KDFZouCY5FVvWVizztjHqtYb0t8+ZlGGFTwaJ704yGgALLmyoU28KG
	yjOdfwsi7sGp1HvgahIhiVx96FwNqUWNnzKINkDmfSZqQvjE7TssrpX11WgF+euBnI7+
	l/giDcv5YB0SmUKAeoHfwiGktE+fYFruUSnIsrzaMC5buPIwhgy3f5CUy3rt3jKYUjzM
	4lgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9vtIJS4F8KRbNe02ic/1bhnraou+8VkY2lIXGoYrilA=;
	b=qdYe3Mk7hEUxVNKWOe/N/rLhoSEatBfJO3fIK4ajY5mIDy08SaXvunwAFnduFarlWf
	BNiFOzGvo0WUO9JMhjppKL8BQlTbPMjuzwdJLDPZ7K2pOpYSHPrtNsFgM3RSEICEGNUA
	BHSY9wwqFJ2UVsTjxfHDdtUHtdSP27w4kBGSf2ydC5pnLj4EEocur62Vi7Wcjdt/MLao
	TnKpklHhc4VnTrcy+yp/LgzOfzrF4/1jf6f+0dVhxEVITNw4rrOPUztawfpTxkbm36eV
	PPpPAr96hBlPef14hIVERq+7eN9047xmpX3fqlPLoAvbl/b+KbDLrmiNtUWd5/T98uh8
	gWZg==
X-Gm-Message-State: AHYfb5itENgC4fMQMzrRK1NFgiC7adPubwtNrxh0y6QIk1RsOWL9u3zf
	BHCPNMWn8Hvz9nCflPHyeeQuHUlGaA==
X-Received: by 10.223.175.21 with SMTP id z21mr4802503wrc.145.1503585275253;
	Thu, 24 Aug 2017 07:34:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.138.18 with HTTP; Thu, 24 Aug 2017 07:34:34 -0700 (PDT)
In-Reply-To: <CAHiDW_EUWtZ6LOEL=yNNbyvp=59i4QRqusknwQJ43PPXa+Diyg@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
	<CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
	<CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
	<CAHiDW_EUWtZ6LOEL=yNNbyvp=59i4QRqusknwQJ43PPXa+Diyg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 24 Aug 2017 16:34:34 +0200
Message-ID: <CAGAf8LxofVx8TQgrgHFsLhZF5_ROUb6GXR8mAWs7xxxv1iBOKA@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Thu, 24 Aug 2017 14:34:37 -0000
Content-Type: multipart/alternative; boundary="f403045f4fd23896ea055780bac7"

--f403045f4fd23896ea055780bac7
Content-Type: text/plain; charset="UTF-8"

> No. Yocto is not an operating system, it's a toolset that can be used to
build many wildly different operating systems. An rpm repo would
> only be compatible with one of those OSes.

YOCTO is a custom made distro for eLinuxes, on this I agree with you. At
least, you should keep DNF (instead smartpm) as package representative for
dealing with .rpms, in all future YOCTO releases. This should be (as
considering embedded use cases) enough.

And, yes, I see your point, if anybody has so big project that he would
like to make master servers and maintain his own source code packages
(.src.rpm), and plain .rpm (as Fedora does, I just run there on Fedora 26
command: dnf list all | wc -l and got package # around 60K), he should do
this on his own. ;-)

Do you agree to continue keeping DNF package (in .../meta/recipe_devtools/)
for handling of .rpm type of packages in the future releases of YOCTO (it
is, after all, much better and more mature tool that smartpm)?

Thank you,
Zoran

On Thu, Aug 24, 2017 at 12:40 PM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 24 August 2017 at 10:33, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Jussi,
> >
> > I would like to thank you very much for the useful reply. It was a bit
> different with me, but most boiled down as you said/explained (the
> difference are in client/server IP addresses, but everything else is almost
> the same - I guess, I do not have complete set of .rpms on my server side).
> >
> > I issued the following comand on client (qemux86-64): dnf list all | wc
> -l, and got the following response:
> > Repository 'oe-packages' is missing name in configuration, using id.
> > Last metadata expiration check: 0:42:56 ago on Thu Aug 24 06:13:31 2017
> UTC
> > 7909
> >
> > Regarding the command's answer, I have two questions to ask: one easy,
> and one tough. ;-)
> >
> > Easy one. What is the reason for this message: Repository 'oe-packages'
> is missing name in configuration, using id???
>
> I'm not a yum/dnf expert at all but the error seems to be saying that
> oe-packages.repo is missing a line like "name =  OpenEmbedded packages".
>
> > Tough one: 7909 packages overall on server. Could you (YOCTO
> maintainers), please, keep DNF (for .rpm packages) onwards indefinitely in
> YOCTO, and make/create master YOCTO download servers, the same what Fedora
> distro does for almost two decades (with YUM, prior DNF)?
> >
> > The positive answer on the second question will make (for many thousand
> people using .rpms in YOCTO) life much easier, won't it?!
>
> No. Yocto is not an operating system, it's a toolset that can be used to
> build many wildly different operating systems. An rpm repo would only be
> compatible with one of those OSes.
>
> If a Yocto user builds and maintains a specific OS with Yocto, it might
> make sense for them to maintain rpm repos for that OS. It does not make
> sense for Yocto project.
>
>  - Jussi
>

--f403045f4fd23896ea055780bac7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; No. Yocto is not an =
operating system, it&#39;s a toolset that can be used to build many wildly =
different operating systems. An rpm repo would</span><div><span style=3D"fo=
nt-size:12.8px">&gt; only be compatible with one of those OSes.</span><br><=
/div><div><span style=3D"font-size:12.8px"><br></span></div><div><span styl=
e=3D"font-size:12.8px">YOCTO is a custom made distro for eLinuxes, on this =
I agree with you. At least, you should keep DNF (instead smartpm) as packag=
e representative for dealing with .rpms, in all future YOCTO releases. This=
 should be (as considering embedded use cases) enough.</span></div><div><sp=
an style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-siz=
e:12.8px">And, yes, I see your point, if anybody has so big project that he=
 would like to make master servers and maintain his own source code package=
s (.src.rpm), and plain .rpm (as Fedora does, I just run there on Fedora 26=
 command: dnf list all | wc -l and got package # around 60K), he should do =
this on his own. ;-)</span></div><div><span style=3D"font-size:12.8px"><br>=
</span></div><div><span style=3D"font-size:12.8px">Do you agree to continue=
 keeping DNF package (in .../meta/recipe_devtools/) for handling of .rpm ty=
pe of packages in the future releases of YOCTO (it is, after all, much bett=
er and more mature tool that smartpm)?</span></div><div><span style=3D"font=
-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">Thank =
you,</span></div><div><span style=3D"font-size:12.8px">Zoran</span></div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Aug 2=
4, 2017 at 12:40 PM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto=
:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span c=
lass=3D"">On 24 August 2017 at 10:33, Zoran Stojsavljevic &lt;<a href=3D"ma=
ilto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@g=
mail.com</a><wbr>&gt; wrote:<br>&gt;<br>&gt; Hello Jussi,<br>&gt;<br></span=
><span class=3D"">&gt; I would like to thank you very much for the useful r=
eply. It was a bit different with me, but most boiled down as you said/expl=
ained (the difference are in client/server IP addresses, but everything els=
e is almost the same - I guess, I do not have complete set of .rpms on my s=
erver side).<br>&gt;<br>&gt; I issued the following comand on client (qemux=
86-64): dnf list all | wc -l, and got the following response:<br>&gt; Repos=
itory &#39;oe-packages&#39; is missing name in configuration, using id.<br>=
&gt; Last metadata expiration check: 0:42:56 ago on Thu Aug 24 06:13:31 201=
7 UTC<br>&gt; 7909<br>&gt;<br>&gt; Regarding the command&#39;s answer, I ha=
ve two questions to ask: one easy, and one tough. ;-)<br>&gt;<br>&gt; Easy =
one. What is the reason for this message: Repository &#39;oe-packages&#39; =
is missing name in configuration, using id???<div><br></div></span><div>I&#=
39;m not a yum/dnf expert at all but the error seems to be saying that oe-p=
ackages.repo is missing a line like &quot;name =3D =C2=A0OpenEmbedded packa=
ges&quot;.</div><span class=3D""><div><br>&gt; Tough one: 7909 packages ove=
rall on server. Could you (YOCTO maintainers), please, keep DNF (for .rpm p=
ackages) onwards indefinitely in YOCTO, and make/create master YOCTO downlo=
ad servers, the same what Fedora distro does for almost two decades (with Y=
UM, prior DNF)?<br>&gt;<br>&gt; The positive answer on the second question =
will make (for many thousand people using .rpms in YOCTO) life much easier,=
 won&#39;t it?!</div><div><br></div></span><div>No. Yocto is not an operati=
ng system, it&#39;s a toolset that can be used to build many wildly differe=
nt operating systems. An rpm repo would only be compatible with one of thos=
e OSes.</div><div><br></div><div>If a Yocto user builds and maintains a spe=
cific OS with Yocto, it might make sense for them to maintain rpm repos for=
 that OS. It does not make sense for Yocto project.</div><span class=3D"HOE=
nZb"><font color=3D"#888888"><div><br></div><div>=C2=A0- Jussi</div></font>=
</span></div>
</blockquote></div><br></div>

--f403045f4fd23896ea055780bac7--
