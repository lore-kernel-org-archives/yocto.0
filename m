Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2957FE00B57; Thu, 29 Jun 2017 08:49:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A08E0048B
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 08:49:56 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id h64so9454021iod.0
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 08:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CurN29iSgh27NK94CjmoDem+xPnK5xkQOFNCTZ6/YAo=;
	b=aFc4LJFxeRy1WrisrEVWkYll11fAL80V6FqU8JVZvztTKmBUwXW/nta1jqzL4o2nUL
	ZYqjEFSY1Lb1V9yY192RL0W5OZQyuUsB07yw7mZUeXQIgV64u5RitZij0Y2460HbOJlL
	bohLCWTIBJ/9HfFUmSybp+ils1A5rhLxDqq+I39LFct9wzqL/3HYHKYiSvWrb0580lYS
	BPZ1UCLw2GAhVxt3Z9QC/iU4P4ksMNJKosSbM14vm1KfGekWThhgLi+CrmlwVCcb4vle
	M7R9Bs9QOM1BpWvlRx4XcZU+/L2zGvFCYhbBpe6kpgR4ORqJRzNv65jJJdQiZHbPA+Gp
	wdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CurN29iSgh27NK94CjmoDem+xPnK5xkQOFNCTZ6/YAo=;
	b=AG2rT2b/T8JSYsPjeSZHykfMZtVcOJA93DW3dYo7ggQ2jOo7YT795xuSdOd/GRNXFQ
	/kypSHKDNpsm/y+Yu7P5HkTyrV/jCrK6yEUfjKwLTaVaIWQ7Z3yM49ZIyP0xGi3MgMRH
	01cdVpJMF6tlgJGg2Nr4yUb74e3wFb8X9oQvWCJW8WxAHdWnuVSryd6wBPkxuxy7LqEd
	MnBjgypthAXRfxaKEL5bJWo7GJ2LtvxWlLUPCOZLovoZMmYxUMC2GIEj005pYdG2jqft
	7LKa9nkaR/fgQ4OJY+WnmY6eWV3VkNp3ZiLkBCX9TAtQYhDTGIM2sZg1kQc+l5/f7d3k
	aQvg==
X-Gm-Message-State: AKS2vOxwJw3Njz7ofON8ZK+lxp+TTqxR1l5BHtkx3C9Ia0pjEgngL/H4
	51Z0wYILuGQDJyF9on7R7w315C49BYxisPyhdQ==
X-Received: by 10.107.167.199 with SMTP id q190mr17759466ioe.110.1498751396496;
	Thu, 29 Jun 2017 08:49:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Thu, 29 Jun 2017 08:49:16 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <1498537093.5949.5.camel@technux.se>
References: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
	<CAHUNapSrkQSNUA9hRmw+wH0rN3zNcxSdQmoP-=WG-pegFW9qnA@mail.gmail.com>
	<CAK18fxFB7oLwTQ93wYQXV6JZZ0OZ6jaNNfgKzSBeqdFc6qGfLQ@mail.gmail.com>
	<1498537093.5949.5.camel@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 29 Jun 2017 16:49:16 +0100
Message-ID: <CAK18fxGzJORL2=iFVJBHq3SkR5Ddn-Qcc7wLT6iv=9ouWWNwZQ@mail.gmail.com>
To: Petter Mabacker <petter@technux.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Jenkins, reviews and mailing list
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
X-List-Received-Date: Thu, 29 Jun 2017 15:49:58 -0000
Content-Type: multipart/alternative; boundary="001a1141f3be98acc805531b406a"

--001a1141f3be98acc805531b406a
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 27, 2017 at 5:18 AM, Petter Mabacker <petter@technux.se> wrote:

> On Mon, 2017-06-26 at 17:12 +0100, Andrei Gherzan wrote:
>
> On Mon, Jun 26, 2017 at 2:29 PM, Trevor Woerner <twoerner@gmail.com>
> wrote:
>
> On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > We've been testing a setup with meta-raspberrypi which seems to work
> fine:
> > PR to github integrated with a jenkins server and use mailing list for
> > discussions.
> >
> > I propose to copy the same setup to meta-chip too.
>
> That's all fine. As the maintainer (thank you!) you're welcome to use
> whatever workflow with which you're the happiest... as long as you
> update the "Contributing" section of the README :-)
>
>
> Sure. That makes sense.
>
>
> Hi Andrei,
>
> I fully agree with Trevor, just update the README and lets rock! :) But
> like you say I also believe it's good if people can take the time to also
> send the patches to mailing list, so we don't risk losing those valuable
> discussions that often is initated through the mailing list (since more
> people will track the changes that way). My opinion is that this have work
> good for meta-raspberrypi, so cannot see any reasons why it should work
> great for meta-chip as well.
>
> Let us know when jenkins is up-and-running!
>

All is up and running. README updated too
https://github.com/agherzan/meta-chip/pull/13 .

Cheers,
Andrei

--001a1141f3be98acc805531b406a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jun 27, 2017 at 5:18 AM, Petter Mabacker <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:petter@technux.se" target=3D"_blank">petter@technux.se</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div s=
tyle=3D"word-wrap:break-word"><span class=3D"gmail-"><div>On Mon, 2017-06-2=
6 at 17:12 +0100, Andrei Gherzan wrote:</div><blockquote type=3D"cite" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);paddin=
g-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail=
_quote">On Mon, Jun 26, 2017 at 2:29 PM, Trevor Woerner <span dir=3D"ltr">&=
lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote type=3D"cite" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding-left:1ex"><span=
 class=3D"gmail-m_-6557609428159982415gmail-">On Mon, Jun 26, 2017 at 9:21 =
AM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blan=
k">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; We&#39;ve been testing a setup with meta-raspberrypi which seems to wo=
rk fine:<br>
&gt; PR to github integrated with a jenkins server and use mailing list for=
<br>
&gt; discussions.<br>
&gt;<br>
</span><span class=3D"gmail-m_-6557609428159982415gmail-">&gt; I propose to=
 copy the same setup to meta-chip too.<br>
<br>
</span>That&#39;s all fine. As the maintainer (thank you!) you&#39;re welco=
me to use<br>
whatever workflow with which you&#39;re the happiest... as long as you<br>
update the &quot;Contributing&quot; section of the README :-)<br>
</blockquote></div><div><br></div><div>Sure. That makes sense.</div></div><=
/div></blockquote><div><br></div></span><div>Hi Andrei,</div><div><br></div=
><div>I fully agree with Trevor, just update the README and lets rock! :) B=
ut like you say I also believe it&#39;s good if people can take the time to=
 also send the patches to mailing list, so we don&#39;t risk losing those v=
aluable discussions that often is initated through the mailing list (since =
more people will track the changes that way). My opinion is that this have =
work good for meta-raspberrypi, so cannot see any reasons why it should wor=
k great for meta-chip as well.</div><div><br></div><div>Let us know when je=
nkins is up-and-running!</div></div></blockquote><div><br></div><div>All is=
 up and running. README updated too=C2=A0<a href=3D"https://github.com/aghe=
rzan/meta-chip/pull/13">https://github.com/agherzan/meta-chip/pull/13</a> .=
=C2=A0</div><div><br></div><div>Cheers,</div><div>Andrei</div></div><br></d=
iv></div>

--001a1141f3be98acc805531b406a--
