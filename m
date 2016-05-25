Return-Path: <mbroadst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5FBEE00D18; Wed, 25 May 2016 08:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mbroadst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 851A4E00D18
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:08:23 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id k23so83093790oih.0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=4BpguDk0QfVAC2IfNl2/eZ2rxzCnkZ2FDo8FMFWQ59M=;
	b=wQ2gK4ZA/vRrgSO4wmZyt6ENrMDk1JHyg98t1VxZKDaDNe1jY5qdEYD5bZhnLrFf2v
	gKBD7Qw6n8G0pKJX0fUEvtbd32rGdU/dzVMl+DhKGSyNxEaE7tfZBSPjw2Cap+nUTb7B
	MHgLwrjEkczAfBhJ1BXb7KgH4cE92Ra5SOxrrCZWLd/7PeAd786m1etpU5jChXMQiAR7
	+ft0VMpC8qKypYhBCHN/tOvZ7yLKuUWu8wa8IAX1mYdyOp3LJinDo9zK+99cAVWcmIeB
	9QGgU5TOwTjTwAXC6LGLB7H/62JRKEQ4UqWlTEqKwJYkKxITiYw/QQKWyJ1cUWA2SSdf
	sb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=4BpguDk0QfVAC2IfNl2/eZ2rxzCnkZ2FDo8FMFWQ59M=;
	b=Fhp8DpeDH6TW6xswj89MgDEm0ALzU1cBqHjOF4uidpb/z/A/4+TIl9rLQf2OVhEBiJ
	tK8cvuFQ6TLhE8gUdP9IWnaO2KRRn5ihfxprfmfmPb2DtGycFNzEpqG0HtqPn6GGcySK
	jVdhuHu3pNGdlbV+5fzrzdW/WHImh+R2hxDry91wIyzG25oANDVe6VmEDOtUNUC5JqCY
	8wF56G2N7Rq/dD7q+ZTULlCyVtz8EgIDQnaXashWEKwonyQhigmOoyY3mzz+WpRIQIeM
	naSHHw5bwmvkHj+owSuTuE0fjxfbg6/MaQNx4UvZ0/MOWDaH4S+24ayzxgKhVVL07pH7
	8AbA==
X-Gm-Message-State: ALyK8tJvZl4cxChQqfzt4/VhGYySBwRsmgw0Bz6Ky8ei/7G/oRXygNWIGGB3tOY0l+kjQf2rfMFAzAgZXCsF3w==
MIME-Version: 1.0
X-Received: by 10.157.12.184 with SMTP id b53mr2779795otb.45.1464188902589;
	Wed, 25 May 2016 08:08:22 -0700 (PDT)
Received: by 10.202.197.73 with HTTP; Wed, 25 May 2016 08:08:22 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1605251101310.30271@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<5745BE14.7030402@mvista.com>
	<alpine.LFD.2.20.1605251101310.30271@localhost.localdomain>
Date: Wed, 25 May 2016 11:08:22 -0400
Message-ID: <CAMsD-yCy2cyGAwYhF8H1A=_zUQ5Xt8BNBZ3zxU-hVx6_Aeuxkg@mail.gmail.com>
From: Matt Broadstone <mbroadst@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 15:08:37 -0000
Content-Type: multipart/alternative; boundary=001a1140c19e6c5b0b0533ac0b07

--001a1140c19e6c5b0b0533ac0b07
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 25, 2016 at 11:03 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Wed, 25 May 2016, akuster wrote:
>
> > Robert,
> >
> > On 05/25/2016 03:18 AM, Robert P. J. Day wrote:
> > >
> > >   specifically in the context of powerpc systems, are there any
> > > suggestions for an image that could be used to boot an older powerpc
> > > system, running completely out of ram, and using that as an install
> > > utility which would then be responsible for detecting/formatting a
> > > hard drive, creating/formatting filesystems, downloading/installing
> > > the OS, post-install configuration and so on?
> >
> > This sounds like an installer MV has and that I have been given approva=
l
> > to release (just haven=E2=80=99t had the time to submit it).  Its X86 c=
entric ie
> > uses grub and support efi
> >
>

I'm incredibly interested in this, do you have a tentative release plan?

Regards,
Matt


> > It boots up from an iso image and runs a ncurses based interface that
> > allows you to select HD, create partitions and filesystem types. It wil=
l
> > install what ever image you built. It creates grub conf and installs it=
.
> > The installer bit is written in python.
>
>   given that it's based on grub, how compatible would it be with a
> powerpc target? what i need is *specifically* for powerpc. and what
> i'm after can't require a graphical interface, it needs to be
> script-based as it will have to run on remote systems.
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1140c19e6c5b0b0533ac0b07
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, May 25, 2016 at 11:03 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On=
 Wed, 25 May 2016, akuster wrote:<br>
<br>
&gt; Robert,<br>
&gt;<br>
&gt; On 05/25/2016 03:18 AM, Robert P. J. Day wrote:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0specifically in the context of powerpc systems, are t=
here any<br>
&gt; &gt; suggestions for an image that could be used to boot an older powe=
rpc<br>
&gt; &gt; system, running completely out of ram, and using that as an insta=
ll<br>
&gt; &gt; utility which would then be responsible for detecting/formatting =
a<br>
&gt; &gt; hard drive, creating/formatting filesystems, downloading/installi=
ng<br>
&gt; &gt; the OS, post-install configuration and so on?<br>
&gt;<br>
&gt; This sounds like an installer MV has and that I have been given approv=
al<br>
&gt; to release (just haven=E2=80=99t had the time to submit it).=C2=A0 Its=
 X86 centric ie<br>
&gt; uses grub and support efi<br>
&gt;<br></span></blockquote><div><br></div><div>I&#39;m incredibly interest=
ed in this, do you have a tentative release plan?=C2=A0</div><div><br></div=
><div>Regards,</div><div>Matt</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><span class=3D"">
&gt; It boots up from an iso image and runs a ncurses based interface that<=
br>
&gt; allows you to select HD, create partitions and filesystem types. It wi=
ll<br>
&gt; install what ever image you built. It creates grub conf and installs i=
t.<br>
&gt; The installer bit is written in python.<br>
<br>
</span>=C2=A0 given that it&#39;s based on grub, how compatible would it be=
 with a<br>
powerpc target? what i need is *specifically* for powerpc. and what<br>
i&#39;m after can&#39;t require a graphical interface, it needs to be<br>
script-based as it will have to run on remote systems.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></d=
iv><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a1140c19e6c5b0b0533ac0b07--
