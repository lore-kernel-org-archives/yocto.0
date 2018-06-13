Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C55E00E84; Wed, 13 Jun 2018 13:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC31E00D64
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 13:00:49 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id a12-v6so1979830pfi.3
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 13:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DUeVzmnzDVfXpC9SQTvkXrX7CW0/k4o3dXs5Yz6ehlw=;
	b=I9i2w/4kED5U+0Fn6q1/sFpMU5RyvMQAes4c/+juemhWfwQAf3seMwLJudcenDZJac
	Ks72Zz+sPRQo3Mv6oA1NY3FMZa6DUMp32abJCFfij5lEabW9SVZEBNNIESADwmvtYM6l
	CqFjUVDtIUIvB20o7tNnZqz8jCToixNClLa502XYLIsL/dxtkgUE7MzYi/WSEpuINyYr
	GugaVXBPfuA9MvMbmphfwfQlxVHVpePaB9aMp6BBDgNU8riSTnJN9AkAHT2p+gk2DMlS
	bZmlFNgWXyE5difnWA2VEwzxF5QZfioc5gdW3VEynnme4cqmXhv/Y6/+Ajq6SG4LV3cj
	PWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DUeVzmnzDVfXpC9SQTvkXrX7CW0/k4o3dXs5Yz6ehlw=;
	b=qhJDhfa8sZErieej7NB8e1GuYUnYDmJRHgn3tcOJpNCgkhbpy7XwVNXRSenE94kFQR
	LaNCyF7S5Y4gA+sBhvLJmxcwzYpBw3SAQhCOlaBCnHCaLmoc1+TPgBsAfkDyHWqjwd3Y
	rlJAyTZMc7pI0a63wP6jHl3+vfjl1NROd8wQ1sHcTl5uuCCi2/n5/RbFqV7J7CDH2TRi
	5aXWXa7pAt3u05zeHNFaErV93EVg3PkD986HimDLg2ypWEaJ1aOTJu4AlNyZt39LzLJL
	1bl3139I5v7Znr8NTwhO2Rbb0d0tzzpJlTCisiIOxpp6eZ2rQzhYxPLtgD5X37qdT7o1
	NQJQ==
X-Gm-Message-State: APt69E1qOUbNkLc6zyKv/lpif8yY9jYNraqOqF9Ri45M+T3ZMrXqkQx3
	ezaqhJJ1pjJV26MBx54ssnlgyIdF38Q8R7DVFOHHlQ==
X-Google-Smtp-Source: ADUXVKJ8mw53WUXC/HGw2fFnPlR6RouayQQ3/SJkuIoAFNnXxoOrvq959ccId649jz2JVcs3Ka8MiFl+7aTbDULjrcw=
X-Received: by 2002:a65:5006:: with SMTP id
	f6-v6mr5255883pgo.116.1528920048610; 
	Wed, 13 Jun 2018 13:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
	<CANik3vGehMFhJZdReNZ3eJo=bp8SRFBRnP1G2ntqB8xri009eA@mail.gmail.com>
	<CAOsp8o98NbO=55Y-8i2Ld6pv=ck2Qnxtb9rKXyKWku-kVXUSjQ@mail.gmail.com>
	<CANik3vF3cOGqQDHuiYYJLcDw-=y9nHb6KNP9ipOzyz9i6Y6F4Q@mail.gmail.com>
In-Reply-To: <CANik3vF3cOGqQDHuiYYJLcDw-=y9nHb6KNP9ipOzyz9i6Y6F4Q@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Wed, 13 Jun 2018 15:00:37 -0500
Message-ID: <CAOsp8o_uOdD3kN9_+7frgNx=iVfGTytGEq0V=RsBvBpSQo4QJg@mail.gmail.com>
To: pidge@toganlabs.com
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Wed, 13 Jun 2018 20:01:10 -0000
Content-Type: multipart/alternative; boundary="000000000000633104056e8b70b1"

--000000000000633104056e8b70b1
Content-Type: text/plain; charset="UTF-8"

So to clarify your question, basically everything we would want in the
custom manifest would be in our own layer: both bbappends and new bb
recipes. Given that, you think I could still modify it like you suggest to
get what I want?

On Wed, Jun 13, 2018 at 8:59 AM Beth Flanagan <pidge@toganlabs.com> wrote:

> Ok, I guess my question there then would be is how you'd determine
> where a recipe "lived". Like, if meta-foo has a bbappends for
> something in core, would you include it or not in your manifest?
>
> If so, then taking the original manifest and just doing some text
> manipulation in a ROOTFS_POSTPROCESS_COMMAND would be the way I'd
> probably look at tackling it.
>
> On Wed, Jun 13, 2018 at 2:42 PM, Michael Habibi <mikehabibi@gmail.com>
> wrote:
> > Beth,
> >
> > This is for internal consumption. We want to be able to generate a full
> > manifest, and also one that reflects how we diverged from base Yocto
> > distribution.
> >
> > On Mon, Jun 11, 2018 at 10:55 AM Beth Flanagan <pidge@toganlabs.com>
> wrote:
> >>
> >> On Mon, Jun 11, 2018 at 2:46 PM, Michael Habibi <mikehabibi@gmail.com>
> >> wrote:
> >> > Our use case is to capture the license files, manifest
> >> > (package/version),
> >> > and download information only for packages we modify/add. We use our
> own
> >> > layer to modify/add packages, everything coming from standard Yocto
> >> > layers
> >> > are untouched.
> >> >
> >> > Is there a way to generate this information on a layer-by-layer basis,
> >> > instead of a full manifest that includes all standard, unmodified
> >> > packages?
> >>
> >> The easy (cheating) way, would be to modify the tmp/deploy/licenses
> >> artifact post build (I do it to remove -native- and -cross- from
> >> things I distribute as I'm not actually distributing them) or put in a
> >> post do_rootfs function that does it.
> >>
> >> I guess my question would be (and this is less a technical question
> >> and more of a legal one) is why would you want to only include a
> >> manifest for only part of what you're distributing (or am I
> >> misunderstanding what you're trying to do here?)
> >>
> >> -b
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
>

--000000000000633104056e8b70b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So to clarify your question, basically everything we would=
 want in the custom manifest would be in our own layer: both bbappends and =
new bb recipes. Given that, you think I could still modify it like you sugg=
est to get what I want?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Wed, Jun 13, 2018 at 8:59 AM Beth Flanagan &lt;<a href=3D"mailto:pidge=
@toganlabs.com">pidge@toganlabs.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Ok, I guess my question there then would be is how you&#39;=
d determine<br>
where a recipe &quot;lived&quot;. Like, if meta-foo has a bbappends for<br>
something in core, would you include it or not in your manifest?<br>
<br>
If so, then taking the original manifest and just doing some text<br>
manipulation in a ROOTFS_POSTPROCESS_COMMAND would be the way I&#39;d<br>
probably look at tackling it.<br>
<br>
On Wed, Jun 13, 2018 at 2:42 PM, Michael Habibi &lt;<a href=3D"mailto:mikeh=
abibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt; wrote:<br>
&gt; Beth,<br>
&gt;<br>
&gt; This is for internal consumption. We want to be able to generate a ful=
l<br>
&gt; manifest, and also one that reflects how we diverged from base Yocto<b=
r>
&gt; distribution.<br>
&gt;<br>
&gt; On Mon, Jun 11, 2018 at 10:55 AM Beth Flanagan &lt;<a href=3D"mailto:p=
idge@toganlabs.com" target=3D"_blank">pidge@toganlabs.com</a>&gt; wrote:<br=
>
&gt;&gt;<br>
&gt;&gt; On Mon, Jun 11, 2018 at 2:46 PM, Michael Habibi &lt;<a href=3D"mai=
lto:mikehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt;<br=
>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Our use case is to capture the license files, manifest<br>
&gt;&gt; &gt; (package/version),<br>
&gt;&gt; &gt; and download information only for packages we modify/add. We =
use our own<br>
&gt;&gt; &gt; layer to modify/add packages, everything coming from standard=
 Yocto<br>
&gt;&gt; &gt; layers<br>
&gt;&gt; &gt; are untouched.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there a way to generate this information on a layer-by-lay=
er basis,<br>
&gt;&gt; &gt; instead of a full manifest that includes all standard, unmodi=
fied<br>
&gt;&gt; &gt; packages?<br>
&gt;&gt;<br>
&gt;&gt; The easy (cheating) way, would be to modify the tmp/deploy/license=
s<br>
&gt;&gt; artifact post build (I do it to remove -native- and -cross- from<b=
r>
&gt;&gt; things I distribute as I&#39;m not actually distributing them) or =
put in a<br>
&gt;&gt; post do_rootfs function that does it.<br>
&gt;&gt;<br>
&gt;&gt; I guess my question would be (and this is less a technical questio=
n<br>
&gt;&gt; and more of a legal one) is why would you want to only include a<b=
r>
&gt;&gt; manifest for only part of what you&#39;re distributing (or am I<br=
>
&gt;&gt; misunderstanding what you&#39;re trying to do here?)<br>
&gt;&gt;<br>
&gt;&gt; -b<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;&gt; &gt;<br>
</blockquote></div>

--000000000000633104056e8b70b1--
