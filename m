Received: from shark1.inbox.lv (shark1.inbox.lv [194.152.32.81])
 by mx.groups.io with SMTP id smtpd.web09.6964.1620371413258384090
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 May 2021 00:10:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inbox.lv header.s=30062014 header.b=lVARY00J;
 spf=pass (domain: inbox.lv, ip: 194.152.32.81, mailfrom: tom.hill@inbox.lv)
Received: by shark1.inbox.lv (Postfix, from userid 2004)
	id 76B81111811C; Fri,  7 May 2021 10:10:11 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=inbox.lv; s=30062014;
	t=1620371411; bh=OnnNzmLwOkLPapgnPHYbf9m00tT6/rXc7bkFb64vlOk=;
	h=Date:From:Subject:References:In-Reply-To:To;
	b=lVARY00JcRIECeoqgWtl3uwcfo96IBqlTunpHlmOe48UYyNhaZE8/QKlFM60n7aGt
	 ulrjwrLi/40cI2jtoxn5COeUnAZqRz5ftAPj/kwOjXOgqpDECM3ssTdHg63WTaPIY0
	 uFDakmuYkObSxtiyVDHX7uwbNNSZsSoAf6teKaOg=
Received: from localhost (localhost [127.0.0.1])
	by shark1-in.inbox.lv (Postfix) with ESMTP id 3071D1118131
	for <yocto@lists.yoctoproject.org>; Fri,  7 May 2021 10:10:11 +0300 (EEST)
Received: from shark1.inbox.lv ([127.0.0.1])
	by localhost (shark1.inbox.lv [127.0.0.1]) (spamfilter, port 35)
	with ESMTP id Unh0wWiFtfZq for <yocto@lists.yoctoproject.org>;
	Fri,  7 May 2021 10:10:10 +0300 (EEST)
Received: from w8.inbox.lv (w8 [127.0.0.1])
	by shark1-in.inbox.lv (Postfix) with ESMTP id D9B80111811C
	for <yocto@lists.yoctoproject.org>; Fri,  7 May 2021 10:10:10 +0300 (EEST)
MIME-Version: 1.0
X-HTTP-USER-AGENT: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0)
 Gecko/20100101 Firefox/78.0
Message-ID: <1620371410.6094e7d2d5a22@mail.inbox.lv>
Date: Fri, 07 May 2021 10:10:10 +0300
From: "Thomas Hill" <tom.hill@inbox.lv>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
 <636.1620291448346580381@lists.yoctoproject.org>
 <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
In-Reply-To: <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
To: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
User-Agent: Inbox.lv Webmail
X-ESPOL: EZqEIQwB+w1Luca8K4Zk7+LjzsrRJVcioVSew90skBJUtLLDrdZwbmeWBYXqHh7FDBTSjb/BHXlHgcPwBDxeD0HN/QqC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 6 May 2021, 13:44 Martin Jansa <Martin.Jansa@gmail.com> wrote:
> On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoproject.org <t=
om.hill=3Dinbox.lv@lists.yoctoproject.org> wrote:
> > Hi Martin!

> > > On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
> > > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed9=
2df13a14b002a189b4c6c2d442

> > > is an example where it triggers this error, but doesn't trigger the m=
ore common host-user-contaminated QA error (unless you happened=C2=A0to use=
 UID 1001 on host for the user running bitbake).
>  I have here a similar problem with one of my own packages. It happens th=
at my bitbake user uses UID 1001. Do you have more information why this is =
a problem? Should it be enough to change the UID to 1002 to get everything =
running?

> No, you should chown the files to be owned by the expected user which exi=
sts in the image (probably root like in my commit). Changing the UID of the=
 user on host is very bad work around (as it will fail for the next person =
building the same image with host user 1001.

Ok. Thanks. I can confirm that the change of the bitbake users UID to 1111 =
did not solve the issue.
I will open a new thread because I don't see why this fails. I use oe_runma=
ke in my do_install function and got the impression that oe_runmake should =
take care of this via fakeroot.

Tom

