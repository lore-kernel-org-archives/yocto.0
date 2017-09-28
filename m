Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F409E00C45; Thu, 28 Sep 2017 00:10:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.46 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B780E009F5
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 00:10:18 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id i1so281879vke.12
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 00:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ViCEucmgj5l+6SWWMP4dIpo60KGktDFQYk3NbJDe80w=;
	b=UVxPkMpmUN/O65EfKujV63tTwSw0xhQWJDYmJ6ocEQaEDZOPIMzrN4oqjj3raDzYvL
	uBCbNuZYh/M6/Qua9Cw5jv9835jbBZS4m1C7ZWxaLfMdaO/bhR7x6CVVaUE0zPWgW9Yf
	oxCH7SABG8G+GkbWf7sOetWG7cCsuVxZCGtaPeHJ0gxfdkx0J1mXk84smpt2MWZpfRQh
	rvEM6hS7azHfIcylWWcj9mbL+6VEZuT/G3MlbfM0jLXdjtZdbivfC34xzQald/Kn054a
	iBouEkMUJllq1d/jyNi4TOQfaRo1b1iSEXyx708h0ypyFnkLfJHYF2B+NyrEipIsClMH
	pyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ViCEucmgj5l+6SWWMP4dIpo60KGktDFQYk3NbJDe80w=;
	b=E/tzsaHJ8SGiTLXJ82b/9gNs7qj6uR5Mmcrytus90CQrp40YSKwONWBUny8hfegBPK
	Edm6Pd9zGu4Zc0CGfIh3ZEE04/I1KXzSz/gTppjbApfKnWDxHyR+7tt0InCbH40f4GBV
	bWVqnBb3YJgI79csYHNPPBnOO0xpGK+kkHwKD02lRyJYytr4GbfbkMf4+T7U8/OMI4ux
	jyBqXz1kHoh+hb9KRHiX9h0HvhVG1MVOw90OvJ0reVYlEiK06pdErOmmZG6IB0a07E7L
	Ufd8gGNxV1xEcioVy7b/C6bUuvIrCNoDbkE07e3SkpfgHZxzhgQ1BvZ+fh1qAaeplhwU
	/qMg==
X-Gm-Message-State: AHPjjUic580ENk7nd5bUtRFDbVTa3y+08ZrYVItTfiDBH9YnAoGY+6ZF
	pjh8WF4+tUA5PVIMwJUm7qLAfUNDnOt6wHbHUhM=
X-Google-Smtp-Source: AOwi7QDsJVc5MFhOZuUdQ+eQd/RuueQZvBtoKTvOgl61ZH9J9byryU31N59mi2KfFpHAnS95uZTMfJnPP/QkKZIQc3M=
X-Received: by 10.31.4.131 with SMTP id 125mr1950278vke.88.1506582617777; Thu,
	28 Sep 2017 00:10:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Thu, 28 Sep 2017 00:10:17 -0700 (PDT)
In-Reply-To: <3797533.hTcS1boT4l@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW29EEDcrdz+bvD82fnDSV8Q0siUmXqq0GVcWKAe7W0vYA@mail.gmail.com>
	<3797533.hTcS1boT4l@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 28 Sep 2017 09:10:17 +0200
Message-ID: <CAC+thW205txgbhRQ37GoR79Ekt1BzacybaR3V67UUYv08tKB3w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_populate_sdk_ext always being triggered
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
X-List-Received-Date: Thu, 28 Sep 2017 07:10:20 -0000
Content-Type: multipart/alternative; boundary="001a11465e14c20a9d055a3a9959"

--001a11465e14c20a9d055a3a9959
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 9:52 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Andrea,
>
> On Wednesday, 27 September 2017 10:17:42 PM NZDT Andrea Galbusera wrote:
> > I noticed that periodically running 'bitbake -c do_populate_sdk_ext' for
> an
> > image in my CI loop does always trigger the task to be executed even if
> no
> > changes where applied either to metadata or to the configuration between
> > two iterations. Is this expected? If so, why? Shouldn't SDK artifacts
> > exploit the sstate as i.e. images do?
>
> Ideally yes, but it's hard for us to tell if the metadata has changed or
> not,
> given that we care not just about the actual metadata but also any other
> files
> (scripts etc.) that come with it. Thus we've erred on the side of making it
> build every time.
>

Fair enough! Thanks Paul for confirming and clarifying it is intended
behaviour.

--001a11465e14c20a9d055a3a9959
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Sep 27, 2017 at 9:52 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Andr=
ea,<br>
<div><div class=3D"h5"><br>
On Wednesday, 27 September 2017 10:17:42 PM NZDT Andrea Galbusera wrote:<br=
>
&gt; I noticed that periodically running &#39;bitbake -c do_populate_sdk_ex=
t&#39; for an<br>
&gt; image in my CI loop does always trigger the task to be executed even i=
f no<br>
&gt; changes where applied either to metadata or to the configuration betwe=
en<br>
&gt; two iterations. Is this expected? If so, why? Shouldn&#39;t SDK artifa=
cts<br>
&gt; exploit the sstate as i.e. images do?<br>
<br>
</div></div>Ideally yes, but it&#39;s hard for us to tell if the metadata h=
as changed or not,<br>
given that we care not just about the actual metadata but also any other fi=
les<br>
(scripts etc.) that come with it. Thus we&#39;ve erred on the side of makin=
g it<br>
build every time.<br></blockquote><div><br></div><div>Fair enough! Thanks P=
aul for confirming and clarifying it is intended behaviour.</div></div><br>=
</div></div>

--001a11465e14c20a9d055a3a9959--
