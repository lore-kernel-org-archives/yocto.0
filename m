Received: from shark3.inbox.lv (shark3.inbox.lv [194.152.32.83])
 by mx.groups.io with SMTP id smtpd.web09.29298.1620637705581240602
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 02:08:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inbox.lv header.s=30062014 header.b=JdwMsAR/;
 spf=pass (domain: inbox.lv, ip: 194.152.32.83, mailfrom: tom.hill@inbox.lv)
Received: by shark3.inbox.lv (Postfix, from userid 2004)
	id 334EC2800F0; Mon, 10 May 2021 12:08:23 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=inbox.lv; s=30062014;
	t=1620637703; bh=OgOA+rSrRlJl5ustHBvEY/unKy6aZNSyzz57gDrpaLI=;
	h=Date:From:Subject:References:In-Reply-To:To;
	b=JdwMsAR/Hf1ZvxDFZ+58x2Arx2rkqamL++ZEg0jlMGGrcwz/vZHXyNULaCvSAEvqu
	 Q0Wmo+FUU3M0QWf5J6oMq+4Y2wryH0YfSBE2hlpm9MimLRPcimwxEQv3luxMctbAaI
	 pVrc8nFm6D8EO5WLq6cj4h5+fHo7zXnLPhRpptzg=
Received: from localhost (localhost [127.0.0.1])
	by shark3-in.inbox.lv (Postfix) with ESMTP id 0F3B72800EF
	for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 12:08:23 +0300 (EEST)
Received: from shark3.inbox.lv ([127.0.0.1])
	by localhost (shark3.inbox.lv [127.0.0.1]) (spamfilter, port 35)
	with ESMTP id hjbz1g0zH_ak for <yocto@lists.yoctoproject.org>;
	Mon, 10 May 2021 12:08:22 +0300 (EEST)
Received: from w5.inbox.lv (w5 [127.0.0.1])
	by shark3-in.inbox.lv (Postfix) with ESMTP id A12492800E9
	for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 12:08:22 +0300 (EEST)
MIME-Version: 1.0
X-HTTP-USER-AGENT: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0)
 Gecko/20100101 Firefox/78.0
Message-ID: <1620637702.6098f8069bf43@mail.inbox.lv>
Date: Mon, 10 May 2021 12:08:22 +0300
From: "Thomas Hill" <tom.hill@inbox.lv>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
 <636.1620291448346580381@lists.yoctoproject.org>
 <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
 <1620371410.6094e7d2d5a22@mail.inbox.lv>
 <e41282c010817511161a597a712fbd6b99127ec4.camel@linuxfoundation.org>
In-Reply-To: <e41282c010817511161a597a712fbd6b99127ec4.camel@linuxfoundation.org>
To: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
User-Agent: Inbox.lv Webmail
X-ESPOL: Hpf+TwxjhQo4tae7Nf0SlZyM2KrVSjhXsCb8zL0y4XpYsbvdwLp4EHPmaImMbB7AEm7d+cPDZgJU7sjwfEcrbEugjG2C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Richard!

On Fri, 7 May 2021, 15:28, Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>
> On Fri, 2021-05-07 at 10:10 +0300, Thomas Hill via lists.yoctoproject.org=
 wrote:
> > On Thu, 6 May 2021, 13:44 Martin Jansa <Martin.Jansa@gmail.com> wrote:
> > > On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoproject.or=
g <tom.hill=3Dinbox.lv@lists.yoctoproject.org> wrote:
> > > > > On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
> > > > > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cd=
bed92df13a14b002a189b4c6c2d442
> > > > > is an example where it triggers this error, but doesn't trigger t=
he more common host-user-contaminated QA error (unless you happened=C2=A0to=
 use UID 1001 on host for the user running bitbake).
> > >=C2=A0> I have here a similar problem with one of my own packages. It =
happens that my bitbake user uses UID 1001. Do you have more information wh=
y this is a problem? Should it be enough to change the UID to 1002 to get e=
verything running?
> >
> > > No, you should chown the files to be owned by the expected user which=
 exists in the image (probably root like in my commit). Changing the UID of=
 the user on host is very bad work around (as it will fail for the next per=
son building the same image with host user 1001.
> >
> > Ok. Thanks. I can confirm that the change of the bitbake users UID to 1=
111
> > did not solve the issue.
> > I will open a new thread because I don't see why this fails. I use oe_r=
unmake
> > in my do_install function and got the impression that oe_runmake should=
 take=C2=A0
> > care of this via fakeroot.

> When you install files during do_install, you need to be clear about who
> you want to own the end result.

See my other mail for more details - subject:
"Path ./package/usr/lib/libcryptopp.so.8 is owned by uid 1111, gid 1111, wh=
ich doesn't match any ..."

> If you do something like "touch ${D}/x", the it will be owned by the defa=
ult
> user which in a fakeroot context under pseudo is root.
>=20
> If however you cp a file to ${D}/x, it would depend what you told cp
> to do about ownership. If the original file was owned by user 1001, it
> may try and preserve that.

I do not touch any files myself. The do_install function uses only
"oe_runmake install-lib". No "touch", no "cp", nothing.
The GNUmakefile uses "mkdir", "cp", "chmod" but I patched it so it
uses "install" instead of "cp" in my recipe.

> We don't know what your code is doing in do_install but its almost certai=
nly
> not setting the file ownership correctly.

My other mail has more details. I did not append the GNUmakefile. It is
quite large. I think it ist easier to get it directly from the original git=
-repository.
<https://github.com/weidai11/cryptopp/blob/9dcc26c58213abb8351fbb1b2a7a1d2c=
667366e4/GNUmakefile>

Tom

