Received: from shark1.inbox.lv (shark1.inbox.lv [194.152.32.81])
 by mx.groups.io with SMTP id smtpd.web11.9467.1620717712203553318
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 00:21:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inbox.lv header.s=30062014 header.b=Iq3DKHpM;
 spf=pass (domain: inbox.lv, ip: 194.152.32.81, mailfrom: tom.hill@inbox.lv)
Received: by shark1.inbox.lv (Postfix, from userid 2004)
	id 43B36111811B; Tue, 11 May 2021 10:21:49 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=inbox.lv; s=30062014;
	t=1620717709; bh=ytBRdUwJ+cYX67VJcfPWf+c43HyCcg4Pmk49sMh7W3Q=;
	h=Date:From:Subject:References:In-Reply-To:To;
	b=Iq3DKHpMh7RLY2ttzCTHEDp0K6MA837ekEDoxtB2JZY1YFYI9urE5NP7YjWj+Bot7
	 BCd3lEJAlAlA1bqkH/wdkSJ6IstntSv4SM9Ao5TLmn/v7hqZdW5xkKLbPCvtH7RHjX
	 txXxVL4+Os4CBYaYb+VBLYqCiBAUM9olfBPa7GKc=
Received: from localhost (localhost [127.0.0.1])
	by shark1-in.inbox.lv (Postfix) with ESMTP id 1C3A711180F2
	for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 10:21:49 +0300 (EEST)
Received: from shark1.inbox.lv ([127.0.0.1])
	by localhost (shark1.inbox.lv [127.0.0.1]) (spamfilter, port 35)
	with ESMTP id O5xYvofdzX3g for <yocto@lists.yoctoproject.org>;
	Tue, 11 May 2021 10:21:46 +0300 (EEST)
Received: from w10.inbox.lv (w10 [127.0.0.1])
	by shark1-in.inbox.lv (Postfix) with ESMTP id B61D211180E6
	for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 10:21:46 +0300 (EEST)
MIME-Version: 1.0
X-HTTP-USER-AGENT: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0)
 Gecko/20100101 Firefox/78.0
Message-ID: <1620717706.609a308ab50a8@mail.inbox.lv>
Date: Tue, 11 May 2021 10:21:46 +0300
From: "Thomas Hill" <tom.hill@inbox.lv>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
 <636.1620291448346580381@lists.yoctoproject.org>
 <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
 <1620371410.6094e7d2d5a22@mail.inbox.lv>
 <e41282c010817511161a597a712fbd6b99127ec4.camel@linuxfoundation.org>
 <1620637702.6098f8069bf43@mail.inbox.lv>
 <20210510092554.jjtyfne3w4qqe2mz@jama>
In-Reply-To: <20210510092554.jjtyfne3w4qqe2mz@jama>
To: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
User-Agent: Inbox.lv Webmail
X-ESPOL: EZeEJXgdhwA4yr/WNfgK+4GQy9e1VFohtS/7ybUskBJUtLLDrdZwbmeWBYXqHh7bAW7e5L2jGQo/mNedDk9PBTWg5WH+XA==
X-Groupsio-MsgNum: 53447
Content-Type: multipart/mixed;
 boundary="=_98556704a92e00f2ae970157de574e97"

--=_98556704a92e00f2ae970157de574e97
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Martin!

On Mon, 10 May 2021, 12:25, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Mon, May 10, 2021 at 12:08:22PM +0300, Thomas Hill via lists.yoctoproj=
ect.org wrote:
> > On Fri, 7 May 2021, 15:28, Richard Purdie <richard.purdie@linuxfoundati=
on.org>
> > > On Fri, 2021-05-07 at 10:10 +0300, Thomas Hill via lists.yoctoproject=
=2Eorg wrote:
> > > > On Thu, 6 May 2021, 13:44 Martin Jansa <Martin.Jansa@gmail.com> wro=
te:
> > > > > On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoprojec=
t.org <tom.hill=3Dinbox.lv@lists.yoctoproject.org> wrote:
> > > > > > > On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
> > > > > > > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a=
67cdbed92df13a14b002a189b4c6c2d442
> > > > > > > is an example where it triggers this error, but doesn't trigg=
er the more common host-user-contaminated QA error (unless you happened=C2=
=A0to use UID 1001 on host for the user running bitbake).
> > > > >=C2=A0> I have here a similar problem with one of my own packages=
=2E It happens that my bitbake user uses UID 1001. Do you have more informa=
tion why this is a problem? Should it be enough to change the UID to 1002 t=
o get everything running?
> > > >
> > > > > No, you should chown the files to be owned by the expected user w=
hich exists in the image (probably root like in my commit). Changing the UI=
D of the user on host is very bad work around (as it will fail for the next=
 person building the same image with host user 1001.
> > > >
> > > > Ok. Thanks. I can confirm that the change of the bitbake users UID =
to 1111
> > > > did not solve the issue.
> > > > I will open a new thread because I don't see why this fails. I use =
oe_runmake
> > > > in my do_install function and got the impression that oe_runmake sh=
ould take=C2=A0
> > > > care of this via fakeroot.
> >
> > > When you install files during do_install, you need to be clear about =
who
> > > you want to own the end result.
> >
> > See my other mail for more details - subject:
> > "Path ./package/usr/lib/libcryptopp.so.8 is owned by uid 1111, gid 1111=
, which doesn't match any ..."
> >
> > > If you do something like "touch ${D}/x", the it will be owned by the =
default
> > > user which in a fakeroot context under pseudo is root.
> > >
> > > If however you cp a file to ${D}/x, it would depend what you told cp
> > > to do about ownership. If the original file was owned by user 1001, i=
t
> > > may try and preserve that.
> >
> > I do not touch any files myself. The do_install function uses only
> > "oe_runmake install-lib". No "touch", no "cp", nothing.
> > The GNUmakefile uses "mkdir", "cp", "chmod" but I patched it so it
> > uses "install" instead of "cp" in my recipe.
> >
> > > We don't know what your code is doing in do_install but its almost ce=
rtainly
> > > not setting the file ownership correctly.
> >
> > My other mail has more details. I did not append the GNUmakefile. It is
> > quite large. I think it ist easier to get it directly from the original=
 git-repository.
> > <https://github.com/weidai11/cryptopp/blob/9dcc26c58213abb8351fbb1b2a7a=
1d2c667366e4/GNUmakefile>

> 0002_libcryptopp_8.2.0_use-install-instead-of-cp.patch from your recipe
> might be interesting as well to guess what went wrong in your case.

Nothing fancy is going on. I only replace "cp" with "install" - see appende=
d file.

Thanks for your time!

Tom


--=_98556704a92e00f2ae970157de574e97
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name=0002_libcryptopp_8.2.0_use-install-instead-of-cp.patch
Content-Disposition: attachment;
 filename=0002_libcryptopp_8.2.0_use-install-instead-of-cp.patch

ZGlmZiAtdXByTiBhL0dOVW1ha2VmaWxlIGIvR05VbWFrZWZpbGUKLS0tIGEvR05VbWFrZWZpbGUJ
MjAyMS0wNC0yOSAxMzoyNDoyNi4yNjAzMjc3NjQgKzAyMDAKKysrIGIvR05VbWFrZWZpbGUJMjAy
MS0wNC0yOSAxMzo0NzoyOC43Njk1MDQ0MzggKzAyMDAKQEAgLTE5LDcgKzE5LDcgQEAgQVIgPz0g
YXIKIEFSRkxBR1MgPz0gLWNyICMgYXIgbmVlZHMgdGhlIGRhc2ggb24gT3BlbkJTRAogUkFOTElC
ID89IHJhbmxpYgogCi1DUCA/PSBjcAorQ1AgPz0gaW5zdGFsbAogTVYgPz0gbXYKIFJNID89IHJt
IC1mCiBHUkVQID89IGdyZXAK

--=_98556704a92e00f2ae970157de574e97--
