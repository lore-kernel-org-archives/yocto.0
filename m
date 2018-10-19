Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EACC2E0097C; Fri, 19 Oct 2018 14:43:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34F5BE00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:43:27 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id p4-v6so23860302iom.3
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:43:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aXjy3Ci/gzXxILBHquPb9quT+OBR7HEmyHnxbM3LnKo=;
	b=LgDOpNYDG/QDT9YiqZhhOY2J6QCkAf9ZJ62FC6u8z0aTy194HBd5c4ocWUZPIueZJl
	0WlaYFayqc/YMcYwcJpFbjFsSjpaBWbrNGZUsrs9fQ878ZvaqYjHKQX6IDz7ejNJ+OkY
	8vTUvrq6g7ePy7SA9kpZqst7e90IunHB7FgytLb9wFZFBRMe3w2NZZKi9yepLaqzVCjd
	FgzwEO31mCo7cpViE3cWaeaR3JfDzAMyOHznbk4TybKAoUAXBdaUxt7KSErtlOlG7U2d
	VLSP6ng9+Ylxec/n7iZxlzdKriX4Ns4ozSBMMJ6WOiMxv37sbgY0KiQ9xT7f5OnggCoD
	jEXw==
X-Gm-Message-State: AGRZ1gIJn8lMDX6h81rjVMGnOCoTLMC7gDUCXlUmZAoH/HN5OHpvquJV
	meuYz5E71K4t6aBOHscPSkAFHtcPdY1r1o05Kw==
X-Google-Smtp-Source: AJdET5dmz470rXbD1kWI4gnM33BJJWbMoXjk6GQhx4rdOZffy908IR+QsV3IHcCj1H0oFpXZGDOX4PU0i7OMvpk5GkA=
X-Received: by 2002:a6b:15c2:: with SMTP id
	185-v6mr4372157iov.161.1539985406572; 
	Fri, 19 Oct 2018 14:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
	<2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
In-Reply-To: <2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Fri, 19 Oct 2018 17:43:16 -0400
Message-ID: <CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
To: imdibene@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Fri, 19 Oct 2018 21:43:28 -0000
Content-Type: multipart/alternative; boundary="0000000000001e429905789bcbb9"

--0000000000001e429905789bcbb9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, unfortunately, I mean SLES.

Your answer implies that to create a minimal SLES build I will have to
abandon Yocto and look for another build (or reduction) solution as I know
this has been done by non-SUSE entities.


On Fri, Oct 19, 2018 at 5:33 PM Ismael Mart=C3=ADnez Dibene <imdibene@gmail=
.com>
wrote:

> Do you mean OpenSuse? Since SLES is only build/provide to you by SUSE
> directly, it would be the same as trying to build your own RHEL instead o=
f
> fedora. That would be difficult without theirs repositories ;-)
>
> Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosamente
> Ismael Mart=C3=ADnez Dibene
>
> > Am 19.10.2018 um 16:17 schrieb Joe Flowers <joe.flowers@nofreewill.com>=
:
> >
> > Hello everyone,
> >
> > I need to get started on a Yocto set that will build a minimal core for
> a target OS of SUSE Linux Enterprise Server on x64 target hardware like a
> MinnowBoard.
> >
> > I have scoured the web, SUSE, and this list's (Yocto Project) archives,
> but have run into no pointers.  My guess is that it is right under my nos=
e
> that can be seen with more experience rather than being hidden behind
> private walls.
> >
> > Will someone please get me started on the pointers and downloads I need
> to get started?
> >
> > I have already run through a tutorial on creating a core OS using Yocto
> for a WandBoard target hardware.
> >
> >
> > Thank you !
> >
> > Joe
> > --------------
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000001e429905789bcbb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, unfortunately, I mean SLES.<div><br></div><div>Your a=
nswer implies that to create a minimal SLES build I will have to abandon Yo=
cto and look for another build (or reduction) solution as I know this has b=
een done by non-SUSE entities.</div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr">On Fri, Oct 19, 2018 at 5:33 PM Ismael Mart=
=C3=ADnez Dibene &lt;<a href=3D"mailto:imdibene@gmail.com">imdibene@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Do you mean OpenS=
use? Since SLES is only build/provide to you by SUSE directly, it would be =
the same as trying to build your own RHEL instead of fedora. That would be =
difficult without theirs repositories ;-) <br>
<br>
Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosamente<br>
Ismael Mart=C3=ADnez Dibene<br>
<br>
&gt; Am 19.10.2018 um 16:17 schrieb Joe Flowers &lt;<a href=3D"mailto:joe.f=
lowers@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&gt;=
:<br>
&gt; <br>
&gt; Hello everyone,<br>
&gt; <br>
&gt; I need to get started on a Yocto set that will build a minimal core fo=
r a target OS of SUSE Linux Enterprise Server on x64 target hardware like a=
 MinnowBoard.<br>
&gt; <br>
&gt; I have scoured the web, SUSE, and this list&#39;s (Yocto Project) arch=
ives, but have run into no pointers.=C2=A0 My guess is that it is right und=
er my nose that can be seen with more experience rather than being hidden b=
ehind private walls.<br>
&gt; <br>
&gt; Will someone please get me started on the pointers and downloads I nee=
d to get started?<br>
&gt; <br>
&gt; I have already run through a tutorial on creating a core OS using Yoct=
o for a WandBoard target hardware.<br>
&gt; <br>
&gt; <br>
&gt; Thank you !<br>
&gt; <br>
&gt; Joe<br>
&gt; --------------<br>
&gt; <br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000001e429905789bcbb9--
