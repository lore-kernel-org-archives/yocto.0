Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1CD2E00B01; Wed, 31 May 2017 17:01:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34384E00992
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 17:01:38 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id 67so3303805itx.2
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 17:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZYihcbOhUEnXXPvOsT+6xanK8nBFS849ZlDTA0YRyek=;
	b=G9jEJC8LGCHvReodiMeV682g1cqZpYRhl1alsU+756hxiuOTw/PbYzU4p9RQggRu8Y
	3gVRl6zpwhaTviqvLjE6LAjlNL4+AiVEJbZw9nzI+rLF0J4EDhkMRMDD+q1LXmq6oPoV
	iYZYZiybO2eunJxseLgekAUA/cwhH+1Qwup5tyfMX7jWzGnXxV9ejqoW6YtRIFVGO5+r
	Pg/GsAVSRBUGFhOd/PHdXBebf3IRk8quTzffExCyFevTSt4+XRqpGRzNL71MwHh2QrOc
	LDU7vtkCvUmOL2EH53Ical9ckYe9g0lIDbJxE1aQ4HfqlM+R3Vo/i99b/x43IB1Tzscm
	//1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZYihcbOhUEnXXPvOsT+6xanK8nBFS849ZlDTA0YRyek=;
	b=eL6GsFmK20dCh2ns5YQPoZbnDK/c/HFVb2WhxKOivHnbbl5p8cCrgN2yDHZi6Cif2K
	9lD/5oMV9zXK22WNg0JinXBnrNYhuB5SGELnvinoMxuQRRAS1u/PYAOsanPoyLwOdZyf
	v9NKTB3/FEx8npFefY6HDSD+6yZq4Ko5oji+8t218xTqFT9LO3yMXJ8aq9b5zF9GvYvq
	Q9ZHXM+S5Xt7dlGHA/LJnGBsghCIGc5NB8I7buESZ/6SwwnvErxn11NT8Wd25SBpuuQN
	o4fF4JWC4RQWe3CQ+xNuF+N0wJczmOrtBmgLnxqRo5Ad+ilZrdthyW9W979GNCmG8dhd
	Ob6Q==
X-Gm-Message-State: AODbwcDNiBVNi91o7X8WKqlUoduwzMVv3Of9JGXfrvAnl259qEM31X2x
	7cQthXpOcio4URa0U233VymNy2lQfpr2
X-Received: by 10.107.134.211 with SMTP id q80mr26011482ioi.127.1496275297515; 
	Wed, 31 May 2017 17:01:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.33.129 with HTTP; Wed, 31 May 2017 17:00:56 -0700 (PDT)
X-Originating-IP: [86.186.204.183]
In-Reply-To: <CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 1 Jun 2017 01:00:56 +0100
Message-ID: <CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 00:01:40 -0000
Content-Type: multipart/alternative; boundary="001a113ec278986d590550dabdb0"

--001a113ec278986d590550dabdb0
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com>
> wrote:
> > On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.com>
> wrote:
> >> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
> >>
> >> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com>
> >> wrote:
> >>> * use latest revision in rpi-4.11.y branch
> >>> * using AUTOREV causes bitbake to run git ls-remote on the github.com
> >>> repository in order
> >>>   to convert AUTOREV to currently latest SRCREV even when you don't use
> >>> linux-raspberrypi_dev
> >>>   at all, just happen to have meta-raspberrypi layer in your
> >>> bblayers.conf, that's bad for
> >>>   people who want to be able to build without network access
> (completely
> >>> from premirror)
> >>>
> >>
> >> These branches get rebased often so locking SRCREV caused another
> >> kind of problem. what we can do is.
> >>
> >> 1. Let user like you override the SRCREC via a bbappend or conf file.
> >> so change the assignment to ?=
> >> 2. Delete the recipe completely. We lose some of upstream testing.
> >>
> >> We should be able to skip the recipe if it isn't selected as the
> preferred
> >> version and/or provider of "virtual/kernel". I'm out at the minute so
> can't
> >> look at it now but will try to take a look later this week.
> >
> > The linux-yocto-dev.bb recipe contains an example of doing that.
> >
>
> ah perfect. Thats what we need here
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/
> recipes-kernel/linux/linux-yocto-dev.bb?h=master#n28
>
> please rename the recipe to be linux-raspberrypi-dev.bb and add the magic
> above and send a v2
>
>
Using the magic above we still hardcode a revision there. So if a user
wants to compile the recipe without setting the preferred provider it will
fail.

--
Andrei Gherzan

--001a113ec278986d590550dabdb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, May 30, 2017 at 6:29 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=
=3D"gmail-">On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy &lt;<a href=3D"=
mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br>
&gt; On Tue, May 30, 2017 at 10:15 AM, Paul Barker &lt;<a href=3D"mailto:pb=
arker@toganlabs.com">pbarker@toganlabs.com</a>&gt; wrote:<br>
&gt;&gt; On 30 May 2017 5:08 p.m., &quot;Khem Raj&quot; &lt;<a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, May 30, 2017 at 12:57 AM, Martin Jansa &lt;<a href=3D"mail=
to:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt; * use latest revision in rpi-4.11.y branch<br>
&gt;&gt;&gt; * using AUTOREV causes bitbake to run git ls-remote on the <a =
href=3D"http://github.com" rel=3D"noreferrer" target=3D"_blank">github.com<=
/a><br>
&gt;&gt;&gt; repository in order<br>
&gt;&gt;&gt;=C2=A0 =C2=A0to convert AUTOREV to currently latest SRCREV even=
 when you don&#39;t use<br>
&gt;&gt;&gt; linux-raspberrypi_dev<br>
&gt;&gt;&gt;=C2=A0 =C2=A0at all, just happen to have meta-raspberrypi layer=
 in your<br>
&gt;&gt;&gt; bblayers.conf, that&#39;s bad for<br>
&gt;&gt;&gt;=C2=A0 =C2=A0people who want to be able to build without networ=
k access (completely<br>
&gt;&gt;&gt; from premirror)<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; These branches get rebased often so locking SRCREV caused another<=
br>
&gt;&gt; kind of problem. what we can do is.<br>
&gt;&gt;<br>
&gt;&gt; 1. Let user like you override the SRCREC via a bbappend or conf fi=
le.<br>
&gt;&gt; so change the assignment to ?=3D<br>
&gt;&gt; 2. Delete the recipe completely. We lose some of upstream testing.=
<br>
&gt;&gt;<br>
&gt;&gt; We should be able to skip the recipe if it isn&#39;t selected as t=
he preferred<br>
&gt;&gt; version and/or provider of &quot;virtual/kernel&quot;. I&#39;m out=
 at the minute so can&#39;t<br>
&gt;&gt; look at it now but will try to take a look later this week.<br>
&gt;<br>
&gt; The <a href=3D"http://linux-yocto-dev.bb" rel=3D"noreferrer" target=3D=
"_blank">linux-yocto-dev.bb</a> recipe contains an example of doing that.<b=
r>
&gt;<br>
<br>
</span>ah perfect. Thats what we need here<br>
<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/recipes=
-kernel/linux/linux-yocto-dev.bb?h=3Dmaster#n28" rel=3D"noreferrer" target=
=3D"_blank">http://cgit.openembedded.org/<wbr>openembedded-core/tree/meta/<=
wbr>recipes-kernel/linux/linux-<wbr>yocto-dev.bb?h=3Dmaster#n28</a><br>
<br>
please rename the recipe to be <a href=3D"http://linux-raspberrypi-dev.bb" =
rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb</a> and add t=
he magic<br>
above and send a v2<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><div class=3D"gmail-h5"=
><br></div></div></div></blockquote><div><br></div><div><div>Using the magi=
c above we still hardcode a revision there. So if a user wants to compile t=
he recipe without setting the preferred provider it will fail.</div><div><b=
r></div><div>--</div><div>Andrei Gherzan</div></div></div></div></div>

--001a113ec278986d590550dabdb0--
