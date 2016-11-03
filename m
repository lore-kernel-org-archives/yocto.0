Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAD8DE00509; Thu,  3 Nov 2016 08:11:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE3B1E0034A
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 08:11:24 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id x4so91695125oix.2
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 08:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=H72bz1lQX20kBOErddjaEhCbkSNTbSk1tjVLniCjCs4=;
	b=Xh18KJvo8svkCSDoIbkSF4VFyh7l64mOezwyOOezYv+sZR9mUBeu7eb9s3sh7n6KEu
	mQOuJpXrnLljAroyoGR+uClg970K+Io+x69CmxUYwG/VP5lgaJ4+XrClp03AhpuTOv4E
	JMAQ0KPLuC4s4bD7JRxLct4Frn3S8yVgF6FfLX75Wb684u4MfuvXDeK02wk+jpS+aGao
	Sa5pt/SwG6XuBrdF1GyrolxF+A256QmleapbYZFaI3wb46gIrDjJrx8Jf7mroSrk04L/
	Kanh/m4y4Msqx3kjY4GVxhp9KNFtTV6R4Uaik1u00AFu9iiV1FfhusVuZaLLXSC8s6bD
	wN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=H72bz1lQX20kBOErddjaEhCbkSNTbSk1tjVLniCjCs4=;
	b=QerN8Sfl6Xm9sfvyOGG1iZu7pfB4kkl6biKcQCzboMkvPKu2tMvfoYt8GK7loKGOQT
	fkkysreht61qMFozoYaDvRURKmkSTNrb+6V8eosN7IAv7ZSOoGl0NBrzOvhDQGTSVoUx
	cpETVXrkgCS8qGBtPyvLrdbNmo/iB/ijCJz8HP20U4POlbfSUTo0x7fs7fy4fkGANsN9
	T3boLLUJfINphXq91z6JfKVuN7NY0IUkcck8r7Tj0xR/JR41iKdJdaCoX/mFAM69s6Xd
	uTsiTC+h6c86MNzqMn6U2hmmsSqy1PrVdviwhu6BGaNxIJaowocwi4mozZ73IjcC/F4j
	q0lg==
X-Gm-Message-State: ABUngvfRBqXwYDy5xznUKgttbady68/XQbdqf6XUs3AyFcr4Ni2EcM/EBvgJhkqbHRg8CKLTyX6ixI3slrQRIw==
X-Received: by 10.202.84.74 with SMTP id i71mr8658535oib.93.1478185883759;
	Thu, 03 Nov 2016 08:11:23 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Thu, 3 Nov 2016 08:11:03 -0700 (PDT)
In-Reply-To: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
References: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 3 Nov 2016 08:11:03 -0700
X-Google-Sender-Auth: BkPwAoIC2qMhYfHjqCbEMXRycq8
Message-ID: <CABcZANn4NJmHfRE97-7Gy1S3A-DF+ixSn4_b4TpXChZcutVj6w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shallow git clones?
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
X-List-Received-Date: Thu, 03 Nov 2016 15:11:28 -0000
Content-Type: multipart/alternative; boundary=001a113ad7bc837a58054066f8d8

--001a113ad7bc837a58054066f8d8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 3, 2016 at 6:06 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I recall seeing some discussion in the past about using shallow
> GIT clones when importing repositories?  Is this ever going to
> happen?
>

Mentor has a bitbake patch series to support construction of and fetching
of shallow git tarballs. My goal is to get this merged for master, now that
morty has been branched, but ran into a unit test failure, so I=E2=80=99m w=
orking
on that, and on adding some new unit tests for it, before re-submission.
The current version is at https://github.com/kergoth/bitbake on the
shallow-external branch, if you=E2=80=99re curious.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ad7bc837a58054066f8d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Nov 3, 2016 at 6:06 AM, Gary Thomas <span dir=3D"l=
tr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbasso=
c.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">I recall seeing some discussion in=
 the past about using shallow<br>
GIT clones when importing repositories?=C2=A0 Is this ever going to<br>
happen?<br></blockquote><div><br></div><div>Mentor has a bitbake patch seri=
es to support construction of and fetching of shallow git tarballs. My goal=
 is to get this merged for master, now that morty has been branched, but ra=
n into a unit test failure, so I=E2=80=99m working on that, and on adding s=
ome new unit tests for it, before re-submission. The current version is at =
<a href=3D"https://github.com/kergoth/bitbake">https://github.com/kergoth/b=
itbake</a> on the shallow-external branch, if you=E2=80=99re curious.</div>=
</div>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, =
OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer,=
 Mentor Graphics</div>
</div></div>

--001a113ad7bc837a58054066f8d8--
