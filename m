Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FC11E00CAA; Mon, 14 Aug 2017 08:57:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9357E00349
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 08:57:14 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id d29so5204802uai.2
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 08:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qIFD6sF1AsKps3EwUx7cmBpBd6KZsswP51dZMVTquBA=;
	b=ocxK+iuShIuo4Xyj1Z77jmE+ccn+bRflMbBCsumkZlbvn3WALxrzXZfm9BNqRSUz08
	JGvnUVy5E/GI8nuPbnaE4533HCstLyxO4QwoR2jUs61pfhhpcI96/ku/VQkvL1WiHy22
	ggOWGUrhYwTbZbif0WS1123/1xpFvcKYf5/7eaKapm6xd8mkpNSxuxr7WLK8k0J5KFGk
	hakfChVRa7fjxmRqsCwAryBMT0XUI7quriogW8Txc9spHqbtsbLekomQEQm+2uSUaqwf
	mZ9WTwn50JpA/l7vt0C4oLMy/aAD2VNXSSzAndLJ+fqJdvnI4p4v5tVrhikhtcKuk1uV
	lKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qIFD6sF1AsKps3EwUx7cmBpBd6KZsswP51dZMVTquBA=;
	b=SzwMcV3SJjaQC9O+B0YnOWZLVaKdG8IPFaI8J/zS21nqHktVrLFPNU4YXt57kB+0eJ
	qCRGHHgR+NJVZrisYSnKOgvGXJuuKZV+BS7FGQb/Kw/Sxi2Nt1khMa2mOdNv+UbNSQ3q
	ilzWaOEb+rj5HnFUbvHLg1af62jNa6o8274dfHwDiXDyrXEtXa4/0IYNfBoGDvnN6VS5
	wfY7l56TT0j1+pagu7GmhaNMreBsTtaqFfkk/zMZEw38ZeCuefle37gwCz0owbbcttFT
	kU8dIysOB00oTyhJk7ryx2H4v0bpjjTyqfEIgdY3/aC7IXkhtwylkOVqHcTzCoGv625e
	5XIQ==
X-Gm-Message-State: AHYfb5giJG9mXGgmY7fV2Aq9c0OcSw1takk8qKZLUZKVl3mwwDPs8IZe
	G8GnlQnasnX/NCkNnVz3nUNYx2+ZiA==
X-Received: by 10.176.74.133 with SMTP id s5mr17896561uae.172.1502726230277;
	Mon, 14 Aug 2017 08:57:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.84.146 with HTTP; Mon, 14 Aug 2017 08:56:49 -0700 (PDT)
In-Reply-To: <1502725740.28941.13.camel@linux.intel.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Mon, 14 Aug 2017 08:56:49 -0700
Message-ID: <CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Riko <antonius.riko@gmail.com>, "N:" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Mon, 14 Aug 2017 15:57:15 -0000
Content-Type: multipart/alternative; boundary="f403045f90582684760556b8b776"

--f403045f90582684760556b8b776
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The openembedded-core root isn=E2=80=99t a layer, openembedded-core/meta is=
.

On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
> > Dear Yocto Members,
> >
> > How can I find this file ?
>
>
> this is a pretty general question. are you running bitbake from the
> build directory? double check your conf/bblayers.conf and make sure
> paths there are pointing correctly.
>
>
> >
> > =3D=3D
> >
> > ERROR: Unable to parse
> > /home/bianchi/poky/openembedded-core/conf/layer.conf: [Errno 2] file
> > /home/bianchi/poky/openembedded-core/conf/layer.conf not found
> >
> >
> > Thanks,
> >
> > Riko
> >
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--f403045f90582684760556b8b776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The openembedded-core root isn=E2=80=99t a layer, openembe=
dded-core/meta is.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=
=3D"_blank">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon, 2017-08-14 at =
15:11 +0800, Riko wrote:<br>
&gt; Dear Yocto Members,<br>
&gt;<br>
&gt; How can I find this file ?<br>
<br>
<br>
</span>this is a pretty general question. are you running bitbake from the<=
br>
build directory? double check your conf/bblayers.conf and make sure<br>
paths there are pointing correctly.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; =3D=3D<br>
&gt;<br>
&gt; ERROR: Unable to parse<br>
&gt; /home/bianchi/poky/<wbr>openembedded-core/conf/layer.<wbr>conf: [Errno=
 2] file<br>
&gt; /home/bianchi/poky/<wbr>openembedded-core/conf/layer.<wbr>conf not fou=
nd<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Riko<br>
&gt;<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot c=
om<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engine=
er, Mentor Graphics</div></div></div></div>
</div>

--f403045f90582684760556b8b776--
