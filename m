Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F28E01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 06:04:22 -0800 (PST)
Received: by dadp13 with SMTP id p13so599889dad.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 06:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=9GVkbVwhWNRuUEeGftPQjDJNOf4DTTOQoJPu/wYkEjo=;
	b=dp6mJ/BlOXTvudf98VEb2qsmgvwHTCttI1l+OD4WNWe/KLpbCRC24o0acFh8ZD9non
	5WacLbpclHkhTcP3b72CRyhW5NFspKRhCla/lCslQ6FoENRytfbIG9kszo19zSndkY1D
	jsjky3DDdbiw7psZWchIxoy8IabEsWFRoo6yU=
MIME-Version: 1.0
Received: by 10.68.75.11 with SMTP id y11mr68932950pbv.51.1328709861333; Wed,
	08 Feb 2012 06:04:21 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Wed, 8 Feb 2012 06:04:21 -0800 (PST)
In-Reply-To: <000a01cce628$a16df500$e449df00$@sjjmicro.com>
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
	<CADzUK1+Mi4E3RD7JcFOgNevUmcW6MT98JWoVdde8X5m2xjuEHg@mail.gmail.com>
	<000a01cce628$a16df500$e449df00$@sjjmicro.com>
Date: Wed, 8 Feb 2012 09:04:21 -0500
Message-ID: <CADzUK1Ldn81UN8=BUf309k604eLeLpkpKneu7T9eOdA7dH9Jzg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
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
X-List-Received-Date: Wed, 08 Feb 2012 14:04:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>>> This may be a dumb question, but I'll ask anyway.
>>
>>> Suppose you have a project where you need a very custom user
>>> interface. Not just a series of applications that appear on a desktop
>>> like you see in sato, or Gnome, or KDE.=A0 Basically your application
> becomes the UI.
>>
>>> I can see 2 approaches=A0to this:
>>
>>> Start with core-image-minimal and add the packages you need to support
>>> GFX, X11, and your application plus dependencies.
>>> Take core-image-sato and change the applications to be your subtasks ,
>>> and the look-and-feel of the desktop.
>>
>>> What are the considerations of both approaches?
>> >Is one better, or easier=A0than the other?
>> >How would you do this in Yocto?
>>> Where do you look for information you need to accomplish this?
>
>>We are still in the very early stages of architecture design and
> development
>
>>For now we are leaning towards keeping everything that comes with
> core-image-sato and writing a full screen app on top of it. Likely to be
> written in .NET (mono). A prototype (proof of concept) has been successfu=
lly
> developed :-)
>
>>As I said - still in very early stages of arch/design and dev. So things
> may still change.
>
>
> If it is okay to jump in an comment, I was going to ask the same question=
 at
> some point.
>
> The need to have the application as the main UI or shell to the system is
> important for branding. Launching sato or other desktop would not be
> desirable. As an example, Windows uses Explorer.exe as the shell, but can=
 be
> replaced with any application. Windows was architected this way. It would=
 be
> nice to have similar architecture here, but I know it is easier said than
> done. As you said this is early in design.

We do have a lot of open questions that we will answer in good time:

1) Should the application be executed as root or as some user or as nobody

2) Should we trim the image? (we are not short on space or ram)

3) Aforementioned - should the app run from inittab or rcS.d or something e=
lse

We will figure out these things when we are on that bridge.

I do have a question - you have provided the example of Windows -
where explorer is the shell and can be changed. However, there is no
argument here - what are the clear (no brainer) or subjective
arguments for one versus the other.

