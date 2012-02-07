Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3501E01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 08:20:56 -0800 (PST)
Received: by pbcc11 with SMTP id c11so7619409pbc.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 08:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=oaESPpXpjEai2cUOAMu5UHzy0b/QrEcgnFT53lv+FNY=;
	b=d1rI6iOJGkn5S2xjMpc2ipzIufUQPl4T7w17jIghjoSsJ1X5dKR9hB6CD/j1UwgulD
	eXahBRRspV5i8QlaUaIfQw/A7PbCSpXCVqrCxs/LI8jE59fVlEMJNtNCRo8LzMOUY/jD
	pzoqw231BFXxzP5wbeF90oc9q5OdbKieKjWn8=
MIME-Version: 1.0
Received: by 10.68.239.41 with SMTP id vp9mr60289046pbc.17.1328631656664; Tue,
	07 Feb 2012 08:20:56 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Tue, 7 Feb 2012 08:20:56 -0800 (PST)
In-Reply-To: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
Date: Tue, 7 Feb 2012 11:20:56 -0500
Message-ID: <CADzUK1+Mi4E3RD7JcFOgNevUmcW6MT98JWoVdde8X5m2xjuEHg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building your own UI
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
X-List-Received-Date: Tue, 07 Feb 2012 16:20:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> This may be a dumb question, but I'll ask anyway.
>
> Suppose you have a project where you need a very custom user interface. N=
ot
> just a series of applications that appear on a desktop like you see in sa=
to,
> or Gnome, or KDE.=A0 Basically your application becomes the UI.
>
> I can see 2 approaches=A0to this:
>
> Start with core-image-minimal and add the packages you need to support GF=
X,
> X11, and your application plus dependencies.
> Take core-image-sato and change the applications to be your subtasks , an=
d
> the look-and-feel of the desktop.
>
> What are the considerations of both approaches?
> Is one better, or easier=A0than the other?
> How would you do this in Yocto?
> Where do you look for information you need to accomplish this?

We are still in the very early stages of architecture design and developmen=
t

For now we are leaning towards keeping everything that comes with
core-image-sato and writing a full screen app on top of it. Likely to
be written in .NET (mono). A prototype (proof of concept) has been
successfully developed :-)

As I said - still in very early stages of arch/design and dev. So
things may still change.

