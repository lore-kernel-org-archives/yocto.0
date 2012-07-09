Return-Path: <andrei@gherzan.ro>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF46E0027D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 13:20:55 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so11918897ggn.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 13:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=woMvFD+z6Eq5wpBttYCFzBlnBe99CKsucXkALu9+FpE=;
	b=VfKbqi6Ijpd29zUvprzoaytIrW9ueXLobwDM7OoeheDaQNYfgyLPrv1CGHOJOP9/LE
	qJNJtdAZ7pXyKk/uMuA6wWDozENimuLSsuxl0XcCYWD5BAs1Ry3JjBG9tZcpjR9XvuJ+
	66DSIUQy/yvIEenxk06t1JhhV9yj54tDDEhelVHQbMBgJWxJ9HIpeWK+05nogr7S7txZ
	buMLpJZupdUsuHxX5DIG95oCyv0VonmWjFFuo6Ens09mB9uxuzQET2/44ZnZZBdcIhn2
	+hf8P1KtTy4iDJGYE7O5DqGDhjoG6NSarYAdxYOmx34eeDBwUH2WIt4sUEJK1S9hLvDQ
	QySw==
Received: by 10.43.70.71 with SMTP id yf7mr21159822icb.14.1341865254583; Mon,
	09 Jul 2012 13:20:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 13:20:33 -0700 (PDT)
X-Originating-IP: [79.117.115.156]
In-Reply-To: <CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<CAMKF1soaqxAO5+m6D+fYv6e=WPw4PmuwLR-FSTfz6N657+=11w@mail.gmail.com>
	<CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 9 Jul 2012 23:20:33 +0300
Message-ID: <CAK18fxEctPhDy6hTKTrKxjcXHGeZJ-fGfTno2-6-XSs+_Yc3Dw@mail.gmail.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
X-Gm-Message-State: ALoCoQkE1ILi64k3DE9qNUttiaGyIYsu1LWDaqD52AQdNRe1p16jx/kgZj9dMh4Wl0NpEeztT+RG
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi mailing list?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jul 2012 20:20:55 -0000
Content-Type: multipart/alternative; boundary=bcaec51d2212d5fd3c04c46b5931

--bcaec51d2212d5fd3c04c46b5931
Content-Type: text/plain; charset=ISO-8859-1

Cheers John,

On Mon, Jul 9, 2012 at 8:02 PM, r10kindsofpeople <r10kindsofpeople@gmail.com
> wrote:

> On Mon, Jul 9, 2012 at 10:56 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> > On Monday, July 9, 2012, r10kindsofpeople <r10kindsofpeople@gmail.com>
> > wrote:
> >> There was some discussion of setting up a mailing list for Raspberry
> >> PI back in May...did anything come of this?
> >>
> >> Or is this [Yocto] the best place to post build questions regarding
> >> meta-raspberrypi ?
> >
> > Build related makes sense for yocto to ml I think
> >
>
> I suspect they're more tightly related to the meta-raspberrypi than
> general Yocto, but here goes with an example.  (Apologies in advance
> if I have terminology wrong, I'm still getting up to speed with
> Yocto).
>
>
No worries about this.


> To begin, I did a git clone of the Yocto master, then a git-clone of
> meta-raspberrypi from github djwillis, then (after setting MACHINE and
> DISTRO per readme) bitbake rpi-hwup-image.
>
> Is this a silly thing to do?  Should I be using an earlier release of
> Yocto?  Or...?
>
>
I will modify readme to advise the user to checkout a specific commit known
as working. Good hint!


> The first sign of trouble was an error message saying there were no
> recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).
> Noting that meta was at netbase-5.0 and that the .bbappend at a glance
> did not look to be version specific, I renamed the meta-raspberrypi
> recipe and directory to netbase-5.0, and the build was off and
> running.
>

Fixed and merged


> Now I'm getting fetch failures for a variety of libraries, and, I
> think kernel-3.1.9.
>
> I can probably sort out some of these using the same process, but the
> larger question is whether I'm on the right track.
>
>
Definitely you are. All you need now is a git pull as i pushed all the
changes and you should be able to bake an image without any problems. Let
me know if everything is OK.


@g

--bcaec51d2212d5fd3c04c46b5931
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">Cheers John,</div><div class=3D"gmail_quote"><br=
></div><div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 8:02 PM, r10kindso=
fpeople <span dir=3D"ltr">&lt;<a href=3D"mailto:r10kindsofpeople@gmail.com"=
 target=3D"_blank">r10kindsofpeople@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Mon, Jul 9, 2012 at 10:=
56 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.co=
m</a>&gt; wrote:<br>


&gt;<br>
&gt;<br>
&gt; On Monday, July 9, 2012, r10kindsofpeople &lt;<a href=3D"mailto:r10kin=
dsofpeople@gmail.com">r10kindsofpeople@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt; There was some discussion of setting up a mailing list for Raspber=
ry<br>
&gt;&gt; PI back in May...did anything come of this?<br>
&gt;&gt;<br>
&gt;&gt; Or is this [Yocto] the best place to post build questions regardin=
g<br>
&gt;&gt; meta-raspberrypi ?<br>
&gt;<br>
&gt; Build related makes sense for yocto to ml I think<br>
&gt;<br>
<br>
</div>I suspect they&#39;re more tightly related to the meta-raspberrypi th=
an<br>
general Yocto, but here goes with an example. =A0(Apologies in advance<br>
if I have terminology wrong, I&#39;m still getting up to speed with<br>
Yocto).<br>
<br></blockquote><div>=A0</div><div>No worries about this.=A0</div><div>=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
To begin, I did a git clone of the Yocto master, then a git-clone of<br>
meta-raspberrypi from github djwillis, then (after setting MACHINE and<br>
DISTRO per readme) bitbake rpi-hwup-image.<br>
<br>
Is this a silly thing to do? =A0Should I be using an earlier release of<br>
Yocto? =A0Or...?<br>
<br></blockquote><div>=A0</div><div>I will modify readme to advise the user=
 to checkout a=A0specific=A0commit known as working. Good hint!</div><div>=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">


The first sign of trouble was an error message saying there were no<br>
recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).<br>
Noting that meta was at netbase-5.0 and that the .bbappend at a glance<br>
did not look to be version specific, I renamed the meta-raspberrypi<br>
recipe and directory to netbase-5.0, and the build was off and<br>
running.<br></blockquote><div>=A0</div><div>Fixed and merged=A0</div><div><=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
Now I&#39;m getting fetch failures for a variety of libraries, and, I<br>
think kernel-3.1.9.<br>
<br>
I can probably sort out some of these using the same process, but the<br>
larger question is whether I&#39;m on the right track.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Definitely you are. All you need now is a git pull as i pushe=
d all the changes and you should be able to bake an image without any probl=
ems. Let me know if everything is=A0OK.</div>

<div></div></div><br><div><br></div><div>@g</div>

--bcaec51d2212d5fd3c04c46b5931--
