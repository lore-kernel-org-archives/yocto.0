Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 636C34C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 03:24:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn6 with SMTP id 6so1551537iwn.35
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 01:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=HX5QMOJnMOmsuSnHEGr1zgxs9zYCjEkShdOploOmlxk=;
	b=Rrs602bmf16RRCBtYZWDOphI/rcWe3/x6mC9tuw5mCJiZe7ui6ElZpQLyr0903WqiK
	uXUWHfaBDM7DudvyH0i/UJxF4TS81VH5tfR+S5fK0qCkxa16ZNnv4w49Nn/IEG4Yl4df
	SnJ+BkCe0I6kSlvmQpOqHMD4psxQ3Lu3Al5IY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=vZc55jS+kg1pigMMPU3TcFdZ4q6HRmZ15venGFZgV3fIE5pHOR72y4BKaCyoVuM8pp
	OGNVjsUwiWla7tkyBNhhoh+C0x5eHk9ehkPfI4j+wg8e2a+C+WBYSlHqvwWOT0g5KG4l
	M46ianaqlegR4lLj1LeQlbEZ1r5tNOfBlFZns=
MIME-Version: 1.0
Received: by 10.231.15.136 with SMTP id k8mr1787344iba.51.1290158654815; Fri,
	19 Nov 2010 01:24:14 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Fri, 19 Nov 2010 01:24:14 -0800 (PST)
In-Reply-To: <4CE63B80.30802@mlbassoc.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<4CE63B80.30802@mlbassoc.com>
Date: Fri, 19 Nov 2010 10:24:14 +0100
Message-ID: <AANLkTimecooTS64Vei-JtxTd3=GkRKPP57CrHW3a1na7@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: inc files in recipes
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
X-List-Received-Date: Fri, 19 Nov 2010 09:24:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/11/19 Gary Thomas <gary@mlbassoc.com>:

>
> The fact that there is only one recipe using a particular .inc is (I
> believe)
> a Poky/Yocto design practice. =A0Once a given recipe is known to work and
> cause
> no other dependencies or regressions, older versions are purged. =A0This =
is
> how
> Poky can build a very useful embedded system with only ~1000 recipes,
> whereas
> OE has terrible bloat (IMO) of nearly 8000!

I agree that the purging is good. The large number of recipes for the
same package makes things very hard to maintain.
Also most users will not understand why there are multiple versions,
what the difference is between them, or which one to pick.

>
> The practice of using a well-crafted .inc file should make it easier to k=
eep
> up with the upstream changes. =A0Often, moving to a new version is as sim=
ple
> as
> creating a new recipe with the appropriate PN and you're done. =A0Very li=
ttle
> duplication of effort, code or rules.

I don't think this depends on the inc file.

If you have a package x_0.bb with a well crafted x.inc file then
moving to 1 is just a cp (or mv or git mv) of x_0.bb to x_1.bb.
However if the package has no inc file but has all the stuff in the
.bb file moving to a new version is also just a cp of x_0.bb to
x_1.bb.
So effort wise this does not make a difference!

And yes you might see this as duplication but then again if x_0.bb is
going to be removed after x_1 is considered to be OK, this does not
hurt either.

Main advantage of .inc files is that (if well done) it reduces the
maintenance effort in case there are multiple versions.

Thinking of it: if yocto prefers .inc files it seems good to come up
with some guidelines what goes into a .inc file and what goes into the
.bb file.
In OE I've seen that people do stuff things like HOMEPAGE, DESCRIPTION
and LICENSE in the .inc file, in some cases even going to far that the
.bb file is only a oneliner including the .inc file

Frans

