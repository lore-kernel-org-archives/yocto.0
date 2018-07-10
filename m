Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98468E00EC3; Tue, 10 Jul 2018 13:05:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBC8E00874
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 13:05:10 -0700 (PDT)
Received: by mail-pl0-f51.google.com with SMTP id c41-v6so8088658plj.10
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 13:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=A7rJuc4yBI+OsUyujKmK/eQQxxNeXYulqnJAfzqvQtQ=;
	b=aZmdUJtxFCW1wykAcVaSQNwuePtnnll7pne1YgULheH4FGWCKSvu3TEBsC/JWwchtf
	oGwDaNuXinU9HkolgeTz2mqeSCoOcbgb2sYZXXh+1ttu20U6CSzlOZVgDde0yToWN+6z
	gF4Ju4TkAsv6HxGWQWJV388FtIOLDj5vxxHW+2vE7yZIfnaR8/n+5KIT2DJT+IrpoTmJ
	yTyFWTbNlZ6jubKl7JhOUj4Q/ygVcw4q8X0d0QaSrQahQCo/ygbXC1LDlg6hbn7HCJqV
	QX2k0T5mQqu9asjvGI5WXZbDZHHe5ucnDZCb7eBcPvGQONhvBRXX5XpyLg0fspHMKLpe
	9JQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=A7rJuc4yBI+OsUyujKmK/eQQxxNeXYulqnJAfzqvQtQ=;
	b=sysXcCAPs1/9BZLWo6GX1VIjQe1Wxw5ao0ILspokfkpDRKTgRNfFUormY2gGOKUD9t
	cgDPkWjlbK2alvA8rgfMSCh92FyB6ukkG71unK9mUS1pphPj+NQxOXDI7hmqGhya/YJz
	NthvyaZd6HUL186ozbNfX81t8KcXsGII/ztZL9TptDMjpUsp80ixW3NJx84pA9RjA8DI
	ZCwhohfK2KfAxC1ZrzCXx/yNPOCDDBfSqNeqssKnuHecWx9J5jXzo3b5uZ9iHtnOWgth
	YnhBt5B9ghus6wtuzp1BKbtWzgRzGS0cEswZTk4itDxLKCfz3RuOoRZgY94jbVQ+hgTZ
	VszQ==
X-Gm-Message-State: APt69E3Dm+dYv3PzUcy8nmHxN+9ITUVbU3BSLLxGbwlh3XRr13PzzBV+
	2frtrKUkpJrBtZJz3YlZTdUxK1BqakaktyGpuZw=
X-Google-Smtp-Source: AAOMgpdtMuOUjgpIh2I5EHSWnRx8ZtkgFA9r4mc61DqRgV7U7pgdYuoBGn9wQzc6yFuZXiCD7OkS1fh6fGSOxFbtx8o=
X-Received: by 2002:a17:902:7481:: with SMTP id
	h1-v6mr26573495pll.183.1531253110653; 
	Tue, 10 Jul 2018 13:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
	<CANNYZj9161QoBpFJ7w3Z-1Pog5fRntsr=7mxNwtRz8y3SQq3_g@mail.gmail.com>
	<CAJTo0LZKArwnjGxbZnhyrY2eTnKL5g7Tp1yvFQhbMu3tNwhoSw@mail.gmail.com>
In-Reply-To: <CAJTo0LZKArwnjGxbZnhyrY2eTnKL5g7Tp1yvFQhbMu3tNwhoSw@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 10 Jul 2018 15:04:59 -0500
Message-ID: <CAOsp8o9U02cT0Y3u0GerispM0RjowviEUxgbxysFPwrdihg53w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Hook for layer-only actions?
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
X-List-Received-Date: Tue, 10 Jul 2018 20:05:11 -0000
Content-Type: multipart/alternative; boundary="000000000000b8c9fe0570aaa5c5"

--000000000000b8c9fe0570aaa5c5
Content-Type: text/plain; charset="UTF-8"

Well I should have just used what I want to actually do as the example, and
not a QA action.

I want to create a new type of manifest that is only my layer, that will
include line items that basically has like: package name, version, download
URL, checksum, license.

I have no idea yet how to implement it, but wanted to make sure it was
feasible.

On Tue, Jul 10, 2018 at 2:27 PM Burton, Ross <ross.burton@intel.com> wrote:

> Hypothetically a new QA action should be added at the distro level, by
> writing a class and adding it to INHERIT.
>
> (I've several new QA tests added in this way)
>
> Ross
>
> On 10 July 2018 at 19:53, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> > Yes. Implement a class and inherit it from the recipes.
> >
> > Alex
> >
> > 2018-07-10 20:50 GMT+02:00 Michael Habibi <mikehabibi@gmail.com>:
> >> I was wondering if there is a way I can apply a global modification to
> all
> >> recipes in a layer? For instance, we have our own layer for our changes
> that
> >> sit on top of the base Yocto/OE layers.
> >>
> >> What if, hypothetically, I wanted to insert a do_package_qa action
> globally,
> >> for everything in our layer. Is there a way to codify that, beyond
> actually
> >> adding this to every recipe in our layer?
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b8c9fe0570aaa5c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well I should have just used what I want to actually do as=
 the example, and not a QA action.<div><br></div><div>I want to create a ne=
w type of manifest that is only my layer, that will include line items that=
 basically has like: package name, version, download URL, checksum, license=
.</div><div><br></div><div>I have no idea yet how to implement it, but want=
ed to make sure it was feasible.</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Tue, Jul 10, 2018 at 2:27 PM Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hypothetically a new QA action should b=
e added at the distro level, by<br>
writing a class and adding it to INHERIT.<br>
<br>
(I&#39;ve several new QA tests added in this way)<br>
<br>
Ross<br>
<br>
On 10 July 2018 at 19:53, Alexander Kanavin &lt;<a href=3D"mailto:alex.kana=
vin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt; Yes. Implement a class and inherit it from the recipes.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; 2018-07-10 20:50 GMT+02:00 Michael Habibi &lt;<a href=3D"mailto:mikeha=
bibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt;:<br>
&gt;&gt; I was wondering if there is a way I can apply a global modificatio=
n to all<br>
&gt;&gt; recipes in a layer? For instance, we have our own layer for our ch=
anges that<br>
&gt;&gt; sit on top of the base Yocto/OE layers.<br>
&gt;&gt;<br>
&gt;&gt; What if, hypothetically, I wanted to insert a do_package_qa action=
 globally,<br>
&gt;&gt; for everything in our layer. Is there a way to codify that, beyond=
 actually<br>
&gt;&gt; adding this to every recipe in our layer?<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000b8c9fe0570aaa5c5--
