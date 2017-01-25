Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FE1EE009D7; Wed, 25 Jan 2017 08:13:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC0E7E009BA
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 08:13:44 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id c85so33119638wmi.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 08:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=6GFBRVdjz2syoVx4EwoEvLU4mazZBHKPTDjXeMdkw/M=;
	b=YId4SHfOdET6n4gx9UXHSPFXLOfzsQ8CzzJjVjN73+OruxwxKQX2AsG0gDGAbRhXKY
	nZBHUSYRwdwig9Gz4VUNGIS68t+1xA63UcFXhv/l6jxR9gBFfKepSJlBIk7pCemV3z0e
	ECmiIKRoTeZ9AGPsxmYgD8Li/a9gHV4i08xRwC1i8kJD0I5ftjsjzD/zxOx3XT42tA6s
	QS2Vs4ANjikDXZKT8WOYBH+vb25SGDnXo3HlU72qYE3Q5ZwQ9K9aMx0KDLgtTQHTdkCK
	d7v0jrqISE4G+xs0Q76UH2kM8GmaDd2B87colfyqVq5kdcZe1XABUg6wzpwJeI9Wf7o3
	Xcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=6GFBRVdjz2syoVx4EwoEvLU4mazZBHKPTDjXeMdkw/M=;
	b=A6c/3DASWdSRuli9aSRWxiGb59C0Jt7A0OdkKBKtQiqwxa8wDJNdJ7NB9dvd7wXj1r
	ODjlY7AMXLXAPvOBSKDUbFsLCf5owPHpF1PTZa/ZZdNnwaE6z8ao49tHxx5PYi/CrOxz
	DfsNYm2S1tLNqN3v0qQd3eLgd4RAciwIZMPEbD45Ug1oP84AhGZStXs/DX4oXB1FDrqm
	9nY6KWy3ALP38yaIbTHrVtIrCjzz0DfIOffoGhW58TqGIpJbWStDw+ZK0g7RA3NqTiq7
	vagzcNJMx81syOn+tFv9Y04kOCXM6cw1ttxmGx1JDeQ2KFEqNk9BecVO9Ye5giPXnI07
	aN+Q==
X-Gm-Message-State: AIkVDXJpYsQKANcRE+cX/q1hic7KA93YAXJXQTmkeBOckTrtZzyXIQF5WPKLCYYsICk2s2As7Tpq99JqzdEfmw==
X-Received: by 10.28.232.91 with SMTP id f88mr22221143wmh.27.1485360823158;
	Wed, 25 Jan 2017 08:13:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.206.76 with HTTP; Wed, 25 Jan 2017 08:13:02 -0800 (PST)
In-Reply-To: <1485334991.6808.3.camel@andred.net>
References: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
	<1485334991.6808.3.camel@andred.net>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Wed, 25 Jan 2017 10:13:02 -0600
Message-ID: <CAJgxT3-QJzTC0p2h0AraYvjxiKuOfieYppwxi1kgjxOE9VWVmA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Wed, 25 Jan 2017 16:13:46 -0000
Content-Type: multipart/alternative; boundary=001a1147bf383a4d2c0546ed84b5

--001a1147bf383a4d2c0546ed84b5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 25, 2017 at 3:03 AM, Andr=C3=A9 Draszik <git@andred.net> wrote:

> On Tue, 2017-01-24 at 11:55 -0600, Matt Hoosier wrote:
> > In order to support a use-case that embeds information about the Git
> > revision of Yocto itself that was used to make a build, I would like to
> > run
> > some arbitrary Python code and dump the results (Git SHA1's, tag names,
> > etc) into a Bitbake variable.
>
> Have you looked at image-buildinfo.bbclass? From your description, it see=
ms
> to do what you want.
>
> INHERIT +=3D "image-buildinfo"
>
> works well for me...
>

Yes, that's close. I have a few extra bits of information from Git that I'd
like to include, but the basic approach you and Khem pointed out to do this
during image construction works well enough.

Thanks.

--001a1147bf383a4d2c0546ed84b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jan 25, 2017 at 3:03 AM, Andr=C3=A9 Draszik <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:git@andred.net" target=3D"_blank">git@andred.net</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=
=3D"gmail-">On Tue, 2017-01-24 at 11:55 -0600, Matt Hoosier wrote:<br>
&gt; In order to support a use-case that embeds information about the Git<b=
r>
&gt; revision of Yocto itself that was used to make a build, I would like t=
o<br>
&gt; run<br>
&gt; some arbitrary Python code and dump the results (Git SHA1&#39;s, tag n=
ames,<br>
&gt; etc) into a Bitbake variable.<br>
<br>
</span>Have you looked at image-buildinfo.bbclass? From your description, i=
t seems<br>
to do what you want.<br>
<br>
INHERIT +=3D &quot;image-buildinfo&quot;<br>
<br>
works well for me...<br></blockquote><div><br></div><div>Yes, that&#39;s cl=
ose. I have a few extra bits of information from Git that I&#39;d like to i=
nclude, but the basic approach you and Khem pointed out to do this during i=
mage construction works well enough.<br></div><div><br></div><div>Thanks.<b=
r></div></div></div></div>

--001a1147bf383a4d2c0546ed84b5--
