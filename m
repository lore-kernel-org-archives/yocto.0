Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E30B5E00CC4; Fri, 16 Sep 2016 09:55:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
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
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCCE0E00CBA
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:55:15 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id g9so1459570vkg.1
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oIlElrC7esJmjM6BSP2wEb8lf2I9txcnD6E4/+tooao=;
	b=ZbeRvodGo/jrK9KH/lNZ4KJFwOespaDdh28k0/2YfODQuPtUQkbTfXvY4bkrqukz7s
	UZNKsKMNZQDHh0tLggXKhCs8Ti96aNwXgJhnFgXq5uGNlp4P3xGDSaWtc4dS32ZWyHF1
	ucA5G6nT0RW6+Y9FiAtrbl8XdArYW1U7n5/R5XXA6fd6GHpXIokXP327UOX6kh37sDGE
	iosFck4Tn9EV9Fxjmt1EdVFB/f6Vppck1JL0glpRKeILz/XEMj7l3jInxZQG81Oi8aIT
	DRaYHitcIALMDTDrI02EakB6n4wosTaX+f4hPTZBTtfC6GUVzTksv8pq6jBbu6Dc4Ynm
	WKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oIlElrC7esJmjM6BSP2wEb8lf2I9txcnD6E4/+tooao=;
	b=SHOqbSQPaDu1HGAZbNYi3+RUM2fqH8z6Nf27/lMvkX95oiSu1h5qDJyDrvDjb0iXi9
	60s3WJPUSkg2ZJZUBm3xJtZGY1yz/JfsDYwesX8qJMit1g1tfp62OPvOwMVbTGHCoNX2
	AWRTrmNnQMbOF1V/nXoro5wzs8iFeZ+FIJXIC4h7OkgsQlZs3uq/IkWbt5jwuwJDJ4og
	4sk74y6rHW1uFBpe8kdNEc9GNQvm+fGUc6ObXwumiAYofvqpRkduoF19jLRtEf20cxs4
	Iv4MjL2Imvonfu2mnvJ4lONHF4Pjn4G4k0VDLHnoihZbJ5p+wTDqobzOL8s8HAHaIuT7
	P0tQ==
X-Gm-Message-State: AE9vXwMw283/N995rV4aWINPjQwP1PWx8KKcMn2WNk8Zu7theB4x3I3eLX5bEiZRGLd0yOd9XlC+iht4msJ4YQ==
X-Received: by 10.31.81.66 with SMTP id f63mr4644300vkb.109.1474044914447;
	Fri, 16 Sep 2016 09:55:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.67.136 with HTTP; Fri, 16 Sep 2016 09:55:13 -0700 (PDT)
In-Reply-To: <1474036666.2923.6.camel@linux.intel.com>
References: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
	<1474027656.2923.0.camel@linux.intel.com>
	<CA+n--H_scFqtfah2QPxJfZON+wGDW3=O-T3ZVPXtz0+5527sFQ@mail.gmail.com>
	<1474036666.2923.6.camel@linux.intel.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 16 Sep 2016 09:55:13 -0700
Message-ID: <CANx9H-CKr67hQnx0gsTqpMeRe7ffLhSV_HbH=HdGQpKbwinfkg@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Fri, 16 Sep 2016 16:55:32 -0000
Content-Type: multipart/alternative; boundary=001a114e2312823d19053ca2d31e

--001a114e2312823d19053ca2d31e
Content-Type: text/plain; charset=UTF-8

Thank you all for jumping on this. Very much appreciated.

--Tim

On Fri, Sep 16, 2016 at 7:37 AM, Joshua Lock <joshua.g.lock@linux.intel.com>
wrote:

> Great catch, thanks Bill.
>
> I've pushed a patch to make this change.
>
> Thanks,
>
> Joshua
>
> On Fri, 2016-09-16 at 07:24 -0700, Bill Randle wrote:
> > Also, buildset-config.controller/nightly.conf needs to be edited and
> > the rule for luna removed.
> >
> >     -Bill
> >
> > On Fri, Sep 16, 2016 at 5:07 AM, Joshua Lock
> > <joshua.g.lock@linux.intel.com> wrote:
> > >
> > > On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:
> > > >
> > > > We are no longer supporting kepler or luna. Remove the build set
> > > > for
> > > > those and
> > > > remove luna from yoctoAB.conf.
> > >
> > > Pushed to master, thanks!
> > >
> > > >
> > > >
> > > > Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> > > > ---
> > > >  buildset-config.controller/eclipse-plugin-kepler.conf | 10 ---
> > > > ----
> > > > ---
> > > >  buildset-config.controller/eclipse-plugin-luna.conf   | 11 ---
> > > > ----
> > > > ----
> > > >  buildset-config.controller/yoctoAB.conf               |  1 -
> > > >  3 files changed, 22 deletions(-)
> > > >  delete mode 100644 buildset-config.controller/eclipse-plugin-
> > > > kepler.conf
> > > >  delete mode 100644 buildset-config.controller/eclipse-plugin-
> > > > luna.conf
> > > >
> > > > diff --git a/buildset-config.controller/eclipse-plugin-
> > > > kepler.conf
> > > > b/buildset-config.controller/eclipse-plugin-kepler.conf
> > > > deleted file mode 100644
> > > > index 9948852..0000000
> > > > --- a/buildset-config.controller/eclipse-plugin-kepler.conf
> > > > +++ /dev/null
> > > > @@ -1,10 +0,0 @@
> > > > -[eclipse-plugin-kepler]
> > > > -builders: 'example-worker'
> > > > -repos: [{'eclipse-poky-kepler':
> > > > -            {'repourl':'git://git.yoctoproject.org/eclipse-
> > > > poky',
> > > > -             'branch':'kepler-master'}}]
> > > > -steps: [{'SetDest':{}},
> > > > -        {'CheckOutLayers': {}},
> > > > -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
> > > > kepler'}},
> > > > -        {'PublishLayerTarballs':{}},
> > > > -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
> > > > kepler']}}]
> > > > diff --git a/buildset-config.controller/eclipse-plugin-luna.conf
> > > > b/buildset-config.controller/eclipse-plugin-luna.conf
> > > > deleted file mode 100644
> > > > index d745af3..0000000
> > > > --- a/buildset-config.controller/eclipse-plugin-luna.conf
> > > > +++ /dev/null
> > > > @@ -1,11 +0,0 @@
> > > > -[eclipse-plugin-luna]
> > > > -builders: 'example-worker'
> > > > -repos: [{'eclipse-poky-luna':
> > > > -            {'repourl':'git://git.yoctoproject.org/eclipse-
> > > > poky',
> > > > -             'branch':'luna-master' }}]
> > > > -steps: [{'SetDest':{}},
> > > > -        {'CheckOutLayers': {}},
> > > > -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
> > > > luna'}},
> > > > -        {'PublishLayerTarballs':{}},
> > > > -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
> > > > luna']}}]
> > > > -
> > > > diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
> > > > config.controller/yoctoAB.conf
> > > > index fe9750b..309a5ab 100644
> > > > --- a/buildset-config.controller/yoctoAB.conf
> > > > +++ b/buildset-config.controller/yoctoAB.conf
> > > > @@ -1,6 +1,5 @@
> > > >  [BuildSets]
> > > >  order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars',
> > > > -        'eclipse-plugin-luna',
> > > >          'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb',
> > > >          'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',
> > > >          'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
> > > > --
> > > > 2.7.0
> > > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114e2312823d19053ca2d31e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you all for jumping on this. Very much appreciated.<=
div><br></div><div>--Tim</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, Sep 16, 2016 at 7:37 AM, Joshua Lock <span dir=
=3D"ltr">&lt;<a href=3D"mailto:joshua.g.lock@linux.intel.com" target=3D"_bl=
ank">joshua.g.lock@linux.intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Great catch, thanks Bill.<br>
<br>
I&#39;ve pushed a patch to make this change.<br>
<br>
Thanks,<br>
<br>
Joshua<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Fri, 2016-09-16 at 07:24 -0700, Bill Randle wrote:<br>
&gt; Also, buildset-config.controller/<wbr>nightly.conf needs to be edited =
and<br>
&gt; the rule for luna removed.<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0-Bill<br>
&gt;<br>
&gt; On Fri, Sep 16, 2016 at 5:07 AM, Joshua Lock<br>
&gt; &lt;<a href=3D"mailto:joshua.g.lock@linux.intel.com">joshua.g.lock@lin=
ux.intel.com</a><wbr>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; We are no longer supporting kepler or luna. Remove the build=
 set<br>
&gt; &gt; &gt; for<br>
&gt; &gt; &gt; those and<br>
&gt; &gt; &gt; remove luna from yoctoAB.conf.<br>
&gt; &gt;<br>
&gt; &gt; Pushed to master, thanks!<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Graydon, Tracy &lt;<a href=3D"mailto:tracy.gr=
aydon@intel.com">tracy.graydon@intel.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; =C2=A0buildset-config.controller/<wbr>eclipse-plugin-kepler.=
conf | 10 ---<br>
&gt; &gt; &gt; ----<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; =C2=A0buildset-config.controller/<wbr>eclipse-plugin-luna.co=
nf=C2=A0=C2=A0=C2=A0| 11 ---<br>
&gt; &gt; &gt; ----<br>
&gt; &gt; &gt; ----<br>
&gt; &gt; &gt; =C2=A0buildset-config.controller/<wbr>yoctoAB.conf=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0<wbr>1 -<br>
&gt; &gt; &gt; =C2=A03 files changed, 22 deletions(-)<br>
&gt; &gt; &gt; =C2=A0delete mode 100644 buildset-config.controller/<wbr>ecl=
ipse-plugin-<br>
&gt; &gt; &gt; kepler.conf<br>
&gt; &gt; &gt; =C2=A0delete mode 100644 buildset-config.controller/<wbr>ecl=
ipse-plugin-<br>
&gt; &gt; &gt; luna.conf<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/buildset-config.controller/<wbr>eclipse-plugin-=
<br>
&gt; &gt; &gt; kepler.conf<br>
&gt; &gt; &gt; b/buildset-config.controller/<wbr>eclipse-plugin-kepler.conf=
<br>
&gt; &gt; &gt; deleted file mode 100644<br>
&gt; &gt; &gt; index 9948852..0000000<br>
&gt; &gt; &gt; --- a/buildset-config.controller/<wbr>eclipse-plugin-kepler.=
conf<br>
&gt; &gt; &gt; +++ /dev/null<br>
&gt; &gt; &gt; @@ -1,10 +0,0 @@<br>
&gt; &gt; &gt; -[eclipse-plugin-kepler]<br>
&gt; &gt; &gt; -builders: &#39;example-worker&#39;<br>
&gt; &gt; &gt; -repos: [{&#39;eclipse-poky-kepler&#39;:<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0{&#39;repourl&#39;:&#39;git:/<wbr>/<a href=3D"http://git.yoc=
toproject.org/eclipse-" rel=3D"noreferrer" target=3D"_blank">git.yoctoproje=
ct.org/eclipse-</a><br>
&gt; &gt; &gt; poky&#39;,<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0&#39;branch&#39;:&#39;<wbr>kepler-master&#39;}}]<br>
&gt; &gt; &gt; -steps: [{&#39;SetDest&#39;:{}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Check=
OutLayers&#39;: {}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Build=
EclipsePlugin&#39;<wbr>: {&#39;eclipsedir&#39;: &#39;eclipse-poky-<br>
&gt; &gt; &gt; kepler&#39;}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;<wbr>=
PublishLayerTarballs&#39;:{}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Publi=
shArtifacts&#39;: {&#39;artifacts&#39;: [&#39;eclipse-plugin-<br>
&gt; &gt; &gt; kepler&#39;]}}]<br>
&gt; &gt; &gt; diff --git a/buildset-config.controller/<wbr>eclipse-plugin-=
luna.conf<br>
&gt; &gt; &gt; b/buildset-config.controller/<wbr>eclipse-plugin-luna.conf<b=
r>
&gt; &gt; &gt; deleted file mode 100644<br>
&gt; &gt; &gt; index d745af3..0000000<br>
&gt; &gt; &gt; --- a/buildset-config.controller/<wbr>eclipse-plugin-luna.co=
nf<br>
&gt; &gt; &gt; +++ /dev/null<br>
&gt; &gt; &gt; @@ -1,11 +0,0 @@<br>
&gt; &gt; &gt; -[eclipse-plugin-luna]<br>
&gt; &gt; &gt; -builders: &#39;example-worker&#39;<br>
&gt; &gt; &gt; -repos: [{&#39;eclipse-poky-luna&#39;:<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0{&#39;repourl&#39;:&#39;git:/<wbr>/<a href=3D"http://git.yoc=
toproject.org/eclipse-" rel=3D"noreferrer" target=3D"_blank">git.yoctoproje=
ct.org/eclipse-</a><br>
&gt; &gt; &gt; poky&#39;,<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0&#39;branch&#39;:&#39;luna-<wbr>master&#39; }}]<br>
&gt; &gt; &gt; -steps: [{&#39;SetDest&#39;:{}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Check=
OutLayers&#39;: {}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Build=
EclipsePlugin&#39;<wbr>: {&#39;eclipsedir&#39;: &#39;eclipse-poky-<br>
&gt; &gt; &gt; luna&#39;}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;<wbr>=
PublishLayerTarballs&#39;:{}},<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{&#39;Publi=
shArtifacts&#39;: {&#39;artifacts&#39;: [&#39;eclipse-plugin-<br>
&gt; &gt; &gt; luna&#39;]}}]<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt; diff --git a/buildset-config.controller/<wbr>yoctoAB.conf b/=
buildset-<br>
&gt; &gt; &gt; config.controller/yoctoAB.conf<br>
&gt; &gt; &gt; index fe9750b..309a5ab 100644<br>
&gt; &gt; &gt; --- a/buildset-config.controller/<wbr>yoctoAB.conf<br>
&gt; &gt; &gt; +++ b/buildset-config.controller/<wbr>yoctoAB.conf<br>
&gt; &gt; &gt; @@ -1,6 +1,5 @@<br>
&gt; &gt; &gt; =C2=A0[BuildSets]<br>
&gt; &gt; &gt; =C2=A0order: [&#39;nightly&#39;, &#39;eclipse-plugin-neon&#3=
9;, &#39;eclipse-plugin-mars&#39;,<br>
&gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;eclips=
e-plugin-luna&#39;<wbr>,<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;n=
ightly-arm&#39;, &#39;nightly-arm64&#39;, &#39;nightly-arm-lsb&#39;,<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;n=
ightly-mips&#39;, &#39;nightly-mips64&#39;, &#39;nightly-mips-lsb&#39;,<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;n=
ightly-ppc&#39;, &#39;nightly-ppc-lsb&#39;, &#39;nightly-no-x11&#39;,<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.7.0<br>
&gt; &gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; ______________________________<wbr>_________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/=
yocto</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114e2312823d19053ca2d31e--
