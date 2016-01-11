Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B43B1E0079A; Mon, 11 Jan 2016 07:03:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4997E004A1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:03:52 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id f206so26681837wmf.2
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9uldU/P0wi1pzC1PAETUitoPP7JgWat+cbVyeEjlFtI=;
	b=i9nx6vXvxbEEtVDy94rZzvpRPC7K7RoOGyNfy7FqMRxUs7QyGaDn/M455MP678Qdd4
	6t2UQunIRVzn2tLq4Q2YbVtBZ8+0RNAUyfRLsy/95WWrVAK91dYY7zkSzOb0RDAInr6V
	ccVLgilClxTvKfqgkm1j/EPEaV/Z5F3Ch+ob5IMw7IYdeFzjm1IgbqB8T/DGX3dmaxhp
	lSWJ4eBOa59hdyG4dYasSaYBnkP6vAUF72ZeNJNdzaUYLEZ3vCcrs407mid4qC2EGqMG
	x4eHeIuQ4vEQrUvsm4OaPWuB01lUXNNibxo+rkWUGJWWq57824ousqn8gc79EkidTXuO
	Bdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9uldU/P0wi1pzC1PAETUitoPP7JgWat+cbVyeEjlFtI=;
	b=axG2AQCzksHRxTJ07ogswUGVJyPM/WZRiZLps9cEwgiC2vjk8z3kjsVKuITSipeZoO
	gNRfQ/kAzD4XSSJWs/UCKro08kWoA7ZXv3p91U120Gm9EEqvZ2jpRXqlwq+zeJ+C+vg3
	6/ql1A5mhn5h1pD5PhMGGbQyC1/c3gOaOuoMAUlRpBBh6MIRSOwfLCXPNvpQXnLsKA8v
	Nh9fHOC3Zl2I9cRmVGmZ9ZXC+Ctrpiq/moMCe6j2FalimJwIenvQu0TrZnLKGVuD/hVc
	27Chh4rgaGgvlCkBwE/ynvv9eAoVpV5fG7pZ3va2IDdtXBFUM9N9+E3Ulu4v5qfVskzf
	HC/Q==
X-Gm-Message-State: ALoCoQkRit8N6jaFZZBjdu+xZVimfHnMsYEJ/rco+iUSf6K77AVqkasrGeMalA6mCWAgzsbNDR+6wGTKhqaLa4p/+J1iGhrsgg==
X-Received: by 10.194.246.134 with SMTP id xw6mr18649717wjc.158.1452524631629; 
	Mon, 11 Jan 2016 07:03:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Mon, 11 Jan 2016 07:03:12 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
	<1452480913-15282-1-git-send-email-j.madieu@expemb.com>
	<1452480913-15282-3-git-send-email-j.madieu@expemb.com>
	<CAK18fxG9EkNONhESoZsKtbY8DexAKNKTy6nWyAoLEejsQbRdVg@mail.gmail.com>
	<CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 16:03:12 +0100
Message-ID: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
To: john madieu <j.madieu@expemb.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] qtbase bbappend: cleanned recipe
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
X-List-Received-Date: Mon, 11 Jan 2016 15:03:56 -0000
Content-Type: multipart/alternative; boundary=089e01681d94b2563c0529103e27

--089e01681d94b2563c0529103e27
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 11, 2016 at 3:21 PM, john madieu <j.madieu@expemb.com> wrote:

> On Mon, Jan 11, 2016 at 2:49 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > Hi John,
> Hello Andrei
> >
> > On Mon, Jan 11, 2016 at 3:55 AM, John Madieu <j.madieu@expemb.com>
> wrote:
> >>
> >> Signed-off-by: John Madieu <j.madieu@expemb.com>
> >> ---
> >>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------
> >>  1 file changed, 3 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> index ac158a9..8b77bfa 100644
> >> --- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> @@ -1,12 +1,12 @@
> >>
> >
> > I can't follow these patches. Can you squash them to include cleanups
> and so on and have clean patches sent? As well, can you send them tagged as
> v2 so I can easily see them?
> Of course.
> I will send you back all patches directly from the beginning, by
> tagging them all v2
>
>
Brilliant. Thank you.

Andrei

--089e01681d94b2563c0529103e27
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Mon, Jan 11, 2016 at 3:21 PM, john madieu=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:j.madieu@expemb.com" target=3D"_bl=
ank">j.madieu@expemb.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">On Mon, =
Jan 11, 2016 at 2:49 PM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherza=
n.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi John,<br>
Hello Andrei<br>
<span class=3D"">&gt;<br>
&gt; On Mon, Jan 11, 2016 at 3:55 AM, John Madieu &lt;<a href=3D"mailto:j.m=
adieu@expemb.com">j.madieu@expemb.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: John Madieu &lt;<a href=3D"mailto:j.madieu@expemb.c=
om">j.madieu@expemb.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------<=
br>
&gt;&gt;=C2=A0 1 file changed, 3 insertions(+), 8 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-laye=
r/recipes-qt/qt5/qtbase_%.bbappend<br>
&gt;&gt; index ac158a9..8b77bfa 100644<br>
&gt;&gt; --- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
&gt;&gt; +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
&gt;&gt; @@ -1,12 +1,12 @@<br>
&gt;&gt;<br>
&gt;<br>
&gt; I can&#39;t follow these patches. Can you squash them to include clean=
ups and so on and have clean patches sent? As well, can you send them tagge=
d as v2 so I can easily see them?<br>
</span>Of course.<br>
I will send you back all patches directly from the beginning, by<br>
tagging them all v2<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Brilliant. Thank you.</div><div><br></div><div>Andrei=C2=A0</=
div></div><br></div></div>

--089e01681d94b2563c0529103e27--
