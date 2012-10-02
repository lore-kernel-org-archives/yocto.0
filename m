Return-Path: <peachj@lexmark.com>
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815B1E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 09:43:33 -0700 (PDT)
Received: from mail-qc0-f176.google.com ([209.85.216.176]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUGsZsGtC3pb5vHZXJJ+eKojn5QJrzs2o@postini.com;
	Tue, 02 Oct 2012 09:43:33 PDT
Received: by qcon41 with SMTP id n41so6236349qco.35
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 09:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ycnvrUIqwQDfuifaKxUjKouHfELioaUBm5MD9v/yVSw=;
	b=NyycesEXAF7NZ3hcvkod+RhuFzn0MVMbS9TuTlALSSMe7BRyvcVHVD4rFruQi/8ByB
	vdi0kTcGYkvgvRA0FZM2SeERqEXR0M+08fnkfz0U9p387zBbLIVVQdByF7FDbXIeVGt2
	C9qO8oIhETIVxgMalZEcUPb3AsU84zFBeVU5mWyrgsXZrk2aJuOVtiDWysvKdElFOqmq
	uf5EiXIDV3k1tlKqArpLe8qjMlNLKhwrz0lEGlqvwKAD0YaK06c6yG6J1Hk36/3+JsUO
	MvimUmqDe9BIocM25znE2iH2KDYQj+QS7L3YuDX9mtkDB8GBluCuTn7WQojPWh8zaDef
	QJ5w==
MIME-Version: 1.0
Received: by 10.224.220.84 with SMTP id hx20mr3195961qab.5.1349196207951; Tue,
	02 Oct 2012 09:43:27 -0700 (PDT)
Received: by 10.49.41.102 with HTTP; Tue, 2 Oct 2012 09:43:27 -0700 (PDT)
Date: Tue, 2 Oct 2012 12:43:27 -0400
Message-ID: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnMvcaIxrG+JQWGtmgIRJYh7T289ln7aN6de1+bku88bwOgBxFyQUDxFawazEMGOetu1RiZ
Subject: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Tue, 02 Oct 2012 16:43:34 -0000
Content-Type: multipart/alternative; boundary=20cf3074b2a0b510d304cb1638b1

--20cf3074b2a0b510d304cb1638b1
Content-Type: text/plain; charset=ISO-8859-1

All,

After spending a few years working with a several-years old forked and
heavily-modified version of BitBake, my company is looking at switching to
using Yocto to build embedded Linux for its printers.  I've been playing
with/writing tools and process around Yocto for a couple of months now, and
I'm getting to the point where I can produce integration builds without a
problem.

Now I'm starting to think about how our release process should work with
pure Yocto and I'm running into a conundrum.  Before I get into that,
though, let me very briefly explain how we release code currently in terms
of Yocto as it is today.  This is not exactly what we do, but if I had to
explain the real process, it would take a while because of all the
customization we bolted on top of our forked BitBake.  Basically, we have a
branch in a repository containing the equivalent of local.conf, and we put
fixed revisions of every package for that release into the local.conf file
within that branch.  As patches for a release come in, the local.conf file
is updated to point to the new patches.

I was thinking about doing something very close to that in actual Yocto,
except I'd store only the revisions/branches that were different from what
the bb file prescribed in local.conf.  I ran that idea by a couple of
colleagues separately and they both immediately pointed out a concern: they
didn't want to have two different places that could manage the revision of
the package, i.e. local.conf and the package bb file.  They don't like how
that works in the system we have today.  Instead, they wanted to branch all
the metadata and have people update individual bb files with different
revisions as necessary.  That leaves only one place to manage the revision:
the package bb file.  Doing all that branching concerns me (it seems
heavier-weight than it needs to be, at the very least), but I can't say
specifically why branching the bb files is harmful.  If you guys can think
of a reason why, let me know.  If you think it's reasonable, let me know
that too.

I'm also starting to think there might be a better way to handle this with
Yocto's concept of distros (perhaps have a distro for printer X, and a
different one for printer Y, each pointing at versions of code that are
good for the respective printer), but my research so far hasn't given me
enough information on distros to know if this is a reasonable approach.
 (I've poked through some of the documentation and the mailing list
archives.)  So, what do you all do for releasing code?  Does anyone have a
situation similar to mine?  (I can't imagine I'm unique, but maybe I'm more
special than I thought.)  Even if you don't have a situation like mine,
what would you suggest I do for releasing code for our printers?

Kind regards,

Jerrod

--20cf3074b2a0b510d304cb1638b1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>After spending a few years working with a several-y=
ears old forked and heavily-modified version of BitBake, my company is look=
ing at switching to using Yocto to build embedded Linux for its printers. =
=A0I&#39;ve been playing with/writing tools and process around Yocto for a =
couple of months now, and I&#39;m getting to the point where I can produce =
integration builds without a problem. =A0</div>
<div><br></div><div>Now I&#39;m starting to think about how our release pro=
cess should work with pure Yocto and I&#39;m running into a conundrum. =A0B=
efore I get into that, though, let me very briefly explain how we release c=
ode currently=A0in terms of Yocto as it is today. =A0This is not exactly wh=
at we do, but if I had to explain the real process, it would take a while b=
ecause of all the customization we bolted on top of our forked BitBake. =A0=
Basically, we have a branch in a repository containing the equivalent of lo=
cal.conf, and we put fixed revisions of every package for that release into=
 the local.conf file within that branch. =A0As patches for a release come i=
n, the local.conf file is updated to point to the new patches.=A0=A0</div>
<div><div><br></div><div>I was thinking about doing something very close to=
 that in actual Yocto, except I&#39;d store only the revisions/branches tha=
t were different from what the bb file prescribed in local.conf. =A0I ran t=
hat idea by a couple of colleagues separately and they both immediately poi=
nted out a concern: they didn&#39;t want to have two different places that =
could manage the revision of the package, i.e. local.conf and the package b=
b file. =A0They don&#39;t like how that works in the system we have today. =
=A0Instead, they wanted to branch all the metadata and have people update i=
ndividual bb files with different revisions as necessary. =A0That leaves on=
ly one place to manage the revision: the package bb file. =A0Doing all that=
 branching concerns me (it seems heavier-weight than it needs to be, at the=
 very least), but I can&#39;t say specifically why branching the bb files i=
s harmful. =A0If you guys can think of a reason why, let me know. =A0If you=
 think it&#39;s reasonable, let me know that too.</div>
</div><div><br></div><div>I&#39;m also starting to think there might be a b=
etter way to handle this with Yocto&#39;s concept of distros (perhaps have =
a distro for printer X, and a different one for printer Y, each pointing at=
 versions of code that are good for the respective printer), but my researc=
h so far hasn&#39;t given me enough information on distros to know if this =
is a reasonable approach. =A0(I&#39;ve poked through some of the documentat=
ion and the mailing list archives.) =A0So, what do you all do for releasing=
 code? =A0Does anyone have a situation similar to mine? =A0(I can&#39;t ima=
gine I&#39;m unique, but maybe I&#39;m more special than I thought.) =A0Eve=
n if you don&#39;t have a situation like mine, what would you suggest I do =
for releasing code for our printers?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div>

--20cf3074b2a0b510d304cb1638b1--
