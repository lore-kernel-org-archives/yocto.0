Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7240CE00BDF; Thu, 12 Jun 2014 12:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85BACE00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:06:41 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id c11so986966lbj.31
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=FSp5mfjEDwBsdN4rpjn2Mypub02hxjy8khIQegUq6sU=;
	b=UJMvldWWTGEOlnKbNdfsBImM1OiLaLE2J9TXuHeoTIlV52XZsbUuXL5inJFBW8186L
	OTxOF40txRrBHxf4J0zyIJ2VI+/6grLhroBdSwQFlemN3xqD3o38PGJU0q/YHYyX9q1U
	SKmvrlYzsljZdVWxuMOmmp9VYQXI1Qenk+K6e8YZpf737MBHghqtuZXngTJ0bT9wgi1K
	wuUh8CYF1c6lzrmj4yrVzjbQgJSDwEglvQL5qLCHEy9jTyIy6tgBhQIGif0eeU7pMDdN
	VoO/SdZw3QoSVbDdxiJvt6kqUTr5YP6dtK3I4heZ/lXv1Tsafj/JMxQCpJloed/bSnob
	yWdA==
X-Received: by 10.112.13.137 with SMTP id h9mr31530034lbc.33.1402600000100;
	Thu, 12 Jun 2014 12:06:40 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.148.170 with HTTP; Thu, 12 Jun 2014 12:06:18 -0700 (PDT)
In-Reply-To: <CAJTo0Lb6mRt6H0fpVVXT_PW8SX1pWrKdE8Z3Avbp7SpY420UGw@mail.gmail.com>
References: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
	<CAJTo0Lb6mRt6H0fpVVXT_PW8SX1pWrKdE8Z3Avbp7SpY420UGw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 12 Jun 2014 12:06:18 -0700
X-Google-Sender-Auth: kc8PnY9mNTuuPkEDsiHkvcAhILk
Message-ID: <CABcZAN=dqyUpOmmFjFifnsyD-RMWP7OkD4NSvqh6RvNA_wKYGQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Thu, 12 Jun 2014 19:06:45 -0000
Content-Type: multipart/alternative; boundary=001a11c3d10ac4a11c04fba84239

--001a11c3d10ac4a11c04fba84239
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2014 at 12:00 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> On 12 June 2014 19:53, Patrick Doyle <wpdster@gmail.com> wrote:
> > As you know, when we bitbake a recipe, we see lots of messages about
> > individual tasks that are run as they are being run (do_fetch,
> > do_configure, etc=E2=80=A6), and then a final summary message that read=
s
> > something like:
> >
> > NOTE: Tasks Summary: Attempted 690 tasks of which 677 didn't need to
> > be rerun and all succeeded.
> >
> > I'm curious:
> > 1) What were the 13 tasks that ran?
> > 2) Why are there 690 tasks for my simple recipe anyway?
>
> You want to see the cooker log.
>
> If you want to see that as it happens, then for a one-off you can
> convince bitbake that it's not running on a vt (bitbake foo | cat -).
>
> After the event, the cooker logs are in
> tmp/logs/cooker/[machine]/[timestamp].log.  For convenience, Chris
> Larson's excellent 'bb' command has a 'log' mode that if given no
> arguments will display the latest cooker log.


The new Toaster is pretty great at examining what your build did, if you
ran your build in toaster context, afaik. I haven't spent much time playing
with it, but it does seem like it's intended to answer just these sort of
questions.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3d10ac4a11c04fba84239
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 12, 2014 at 12:00 PM, Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 12 June 2014 19:53, Patri=
ck Doyle &lt;<a href=3D"mailto:wpdster@gmail.com">wpdster@gmail.com</a>&gt;=
 wrote:<br>


&gt; As you know, when we bitbake a recipe, we see lots of messages about<b=
r>
&gt; individual tasks that are run as they are being run (do_fetch,<br>
&gt; do_configure, etc=E2=80=A6), and then a final summary message that rea=
ds<br>
&gt; something like:<br>
&gt;<br>
&gt; NOTE: Tasks Summary: Attempted 690 tasks of which 677 didn&#39;t need =
to<br>
&gt; be rerun and all succeeded.<br>
&gt;<br>
&gt; I&#39;m curious:<br>
&gt; 1) What were the 13 tasks that ran?<br>
&gt; 2) Why are there 690 tasks for my simple recipe anyway?<br>
<br>
</div>You want to see the cooker log.<br>
<br>
If you want to see that as it happens, then for a one-off you can<br>
convince bitbake that it&#39;s not running on a vt (bitbake foo | cat -).<b=
r>
<br>
After the event, the cooker logs are in<br>
tmp/logs/cooker/[machine]/[timestamp].log. =C2=A0For convenience, Chris<br>
Larson&#39;s excellent &#39;bb&#39; command has a &#39;log&#39; mode that i=
f given no<br>
arguments will display the latest cooker log.</blockquote></div><br></div><=
div class=3D"gmail_extra">The new Toaster is pretty great at examining what=
 your build did, if you ran your build in toaster context, afaik. I haven&#=
39;t spent much time playing with it, but it does seem like it&#39;s intend=
ed to answer just these sort of questions.<br>

</div><div class=3D"gmail_extra">-- <br>Christopher Larson<br>clarson at ke=
rgoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer =
- Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c3d10ac4a11c04fba84239--
