Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2253E01430
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 01:47:36 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5223555yhf.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 01:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=FUZKcjn8xAJ8T6JEw4C/zBamRKULz5kr5JFVaOKX3PQ=;
	b=jZhYhCtRfONe7dyNZROhqtFoE+bzraVa0rLeLq/GGgoCkt6B1n+UVds99QLXU1u6jl
	NQjgfhmN507NVfHx7KlGIaAO49ms9J8fUOD6wOz7JmIr9yISWoFrn7iWAYCRfGp5T19w
	0iD0nh/3OiZjY9dJ4xNJh+4stdOj4eTKLpl7zwa2izXGaze8r7XQODYjxtF9PdMr+Le4
	6rwkGtkvod3Ja3jMih9yFtWK946hXCpoBo6PvoN518sOfwNNbgQnFSR5k/HTL8LouqDv
	NqmWc1vb5pxXJ/reg0a2YNdCKTLE1b2D0Kw5/f/kKeR2gP7Z4YCJWdaxk4Zqr/FeV/6w
	U6+w==
Received: by 10.50.46.195 with SMTP id x3mr6124201igm.54.1337590055807; Mon,
	21 May 2012 01:47:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 01:47:15 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <4FB9F2FD.3060200@r-finger.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<4FB9F2FD.3060200@r-finger.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 21 May 2012 11:47:15 +0300
Message-ID: <CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQn/B0Lwha3edO5lPFp1gXdL1E1jxBz0IsKUOBzpHRcL/jaZ9t/aWqTH4AYf2Rb0YWYaHklv
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 08:47:37 -0000
Content-Type: multipart/alternative; boundary=14dae9340e5721a9a204c087f405

--14dae9340e5721a9a204c087f405
Content-Type: text/plain; charset=ISO-8859-1

On Mon, May 21, 2012 at 10:47 AM, Tomas Frydrych <
tf+lists.yocto@r-finger.com> wrote:

> Hi,
>
> On 19/05/12 22:51, Andrei Gherzan wrote:
> > After an exchange of messages with Richard, Saul and John Willis (he
> > already started a layer for oe and did a good job in it) i want to
> > announce that i started start a fork from his layer and with Florin
> > Sarbu will prepare a layer for RaspberryPi to work upon poky.
>
> Why a fork? This is a bsp layer so it should be sufficiently generic to
> work both with Poky and OE, it is really undesirable that there should
> be more than one m-rpi layers in circulation.
>
>
There are issues that cannot be solved with just one layer. A distro is a
workaround but still. More about this, rpi layer will be included in yocto
project repos as  Richard plans so it makes sense to have a yocto specific
layer. It could be a discussion here about using a core layer and above
that some distro specific layers but in my opinion this would be a little
too complicated for this. Right now i use a distro file which inherits poky
distro in order to BBMASK some bbappends which we don't have in poky. Clear
now?



> > Until a stable version of this layer we will keep this layer on
> > bitbucket: https://bitbucket.org/agherzan/meta-raspberrypi.
>
> Considering that John Willis's work is on github, where a number of
> people follow it already, why move this somewhere else? This just makes
> it harder for anyone interested in this work to track what is going on.
>
>
I'm not a github user. But this wouldn't be a problem. I find bitbucket a
better place to hold any kind of git repo: it has collaborative options,
you can have private repos (free) and a bunch of other stuff. And after all
it is a git. You can clone it, fetch and pull anywhere on your computer. So
i don't find this a problem.


> My suggestion is to set up a github project for this, move John's repo
> under that as the master, and then any temporary tweaking for poky and
> otherwise can be done branches rather than separate repositories.
>
> > I don't know if a mailing list is needed but if there are any others who
> > want to contribute on this, we can adopt meta-fsl-arm's solution of a
> > google group and use it as a way of communicating.
>
> I think mailing list is needed; please do not use a group for this, and
> certainly not one that requires a google login. Perhaps Yocto could let
> us have a meta-rpi list?
>
>
Richard could tell us about this. If it's possible.

@g

--14dae9340e5721a9a204c087f405
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Mon, May 21, 2012 at 10:47 AM, Tomas Frydrych=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:tf+lists.yocto@r-finger.com" targe=
t=3D"_blank">tf+lists.yocto@r-finger.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">

Hi,<br>
<div class=3D"im"><br>
On 19/05/12 22:51, Andrei Gherzan wrote:<br>
&gt; After an exchange of messages with Richard, Saul and John Willis (he<b=
r>
&gt; already started a layer for oe and did a good job in it) i want to<br>
&gt; announce that i started start a fork from his layer and with Florin<br=
>
&gt; Sarbu will prepare a layer for RaspberryPi to work upon poky.<br>
<br>
</div>Why a fork? This is a bsp layer so it should be sufficiently generic =
to<br>
work both with Poky and OE, it is really undesirable that there should<br>
be more than one m-rpi layers in circulation.<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>There are issu=
es that cannot be solved with just one layer. A distro is a workaround but =
still. More about this, rpi layer will be included in yocto project repos a=
s =A0Richard plans so it makes sense to have a yocto specific layer. It cou=
ld be a discussion here about using a core layer and above that some distro=
 specific layers but in my opinion this would be a little too complicated f=
or this. Right now i use a distro file which inherits poky distro in order =
to BBMASK some bbappends which we don&#39;t have in poky. Clear now?</div>

<div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"i=
m">
&gt; Until a stable version of this layer we will keep this layer on<br>
&gt; bitbucket: <a href=3D"https://bitbucket.org/agherzan/meta-raspberrypi"=
 target=3D"_blank">https://bitbucket.org/agherzan/meta-raspberrypi</a>.<br>
<br>
</div>Considering that John Willis&#39;s work is on github, where a number =
of<br>
people follow it already, why move this somewhere else? This just makes<br>
it harder for anyone interested in this work to track what is going on.<br>
<br></blockquote><div><br></div><div>I&#39;m not a github user. But this wo=
uldn&#39;t be a problem. I find bitbucket a better place to hold any kind o=
f git repo: it has collaborative options, you can have private repos (free)=
 and a bunch of other stuff. And after all it is a git. You can clone it, f=
etch and pull anywhere on your computer. So i don&#39;t find this a problem=
.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
My suggestion is to set up a github project for this, move John&#39;s repo<=
br>
under that as the master, and then any temporary tweaking for poky and<br>
otherwise can be done branches rather than separate repositories.<br>
<div class=3D"im"><br>
&gt; I don&#39;t know if a mailing list is needed but if there are any othe=
rs who<br>
&gt; want to contribute on this, we can adopt meta-fsl-arm&#39;s solution o=
f a<br>
&gt; google group and use it as a way of communicating.<br>
<br>
</div>I think mailing list is needed; please do not use a group for this, a=
nd<br>
certainly not one that requires a google login. Perhaps Yocto could let<br>
us have a meta-rpi list?<br>
<br></blockquote><div><br></div><div>Richard could tell us about this. If i=
t&#39;s possible.=A0</div><div><br></div><div>@g</div></div>

--14dae9340e5721a9a204c087f405--
