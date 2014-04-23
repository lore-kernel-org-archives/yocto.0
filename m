Return-Path: <sujith.h@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1A9EE006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:14:13 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id i13so486888qae.5
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=P2VZtQlErmGm+9x2k0uyIAxGWlWUpBhYHis7Z6gmiF8=;
	b=dEJqoqQ//soABWZPcDcnfj8KJ/Vi0XFvMO16nHCazM6gdaqy0GOvo7oTxrtmAKPF5t
	F+VBnklZP73mRuv823NQZHpGsnCEy/7J+qR0gV1zFjQRyMYFELIDx+oUB+kbwTkb11s3
	T43v5UMS2hLraiuxlxI2ZpvVW9QIqIexZcnxcDxjq/tLTbfe/7EG01gv50Aj6einAylM
	5969GdpIrzd2Pb+28Yu1FaiDcjMfMw7tthxAPdd2vjnofTAF8FhZdnZo4/JK9fknIlfk
	p129mEJ4iMPZCbAz5cZGWHXmk0LYLSVmWxK2cQlfr1pk1pDZfHt2Z/8e0Aka3bmvMNJa
	8etA==
X-Received: by 10.140.101.45 with SMTP id t42mr38948459qge.32.1398237252993;
	Wed, 23 Apr 2014 00:14:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.231 with HTTP; Wed, 23 Apr 2014 00:13:52 -0700 (PDT)
In-Reply-To: <CAMKF1srL_9d9dhRS02cg2XBBSZz3bq=WS5Xs89cqsEiKsb-hTg@mail.gmail.com>
References: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
	<CAMKF1sqxhAVj1i6t7OTEv76a64Ov-LoHtED_pq5ufkxb-Ci3bQ@mail.gmail.com>
	<CADyYWL==UjRm5hGTaSaBj8NJLYELBgaA_0t0_sA-hMrzsfrcdw@mail.gmail.com>
	<CAMKF1srL_9d9dhRS02cg2XBBSZz3bq=WS5Xs89cqsEiKsb-hTg@mail.gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Wed, 23 Apr 2014 12:43:52 +0530
Message-ID: <CADyYWLk7LziUanBCGhyp1x=YRTmpVRzSTtGw6UTDMwj5a1MMaQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Wed, 23 Apr 2014 07:14:18 -0000
Content-Type: multipart/alternative; boundary=001a11c160a0c6c7aa04f7b07a11

--001a11c160a0c6c7aa04f7b07a11
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 23, 2014 at 11:34 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Apr 22, 2014 at 10:59 PM, sujith h <sujith.h@gmail.com> wrote:
> >> what if I am not root ? IOW is there more systemwide way of doing it ?
> >
> >
> > I couldn't find any other login variable( like $ROOT_HOME) in
> bitbake.conf.
> > I agree that if we can do it in a more systemwide
> > way then it would be a clean solution. Any pointers to look at?
>
> well, its not really OE issue. see if weston can read configuration
> files somewhere in /etc/
>

I had updated the new patch with weston.ini file in /etc/xdg/weston
directory.



--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--001a11c160a0c6c7aa04f7b07a11
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Apr 23, 2014 at 11:34 AM, Khem Raj <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Tue, Apr 22, 2014 at 10:5=
9 PM, sujith h &lt;<a href=3D"mailto:sujith.h@gmail.com">sujith.h@gmail.com=
</a>&gt; wrote:<br>


&gt;&gt; what if I am not root ? IOW is there more systemwide way of doing =
it ?<br>
&gt;<br>
&gt;<br>
&gt; I couldn&#39;t find any other login variable( like $ROOT_HOME) in bitb=
ake.conf.<br>
&gt; I agree that if we can do it in a more systemwide<br>
&gt; way then it would be a clean solution. Any pointers to look at?<br>
<br>
</div>well, its not really OE issue. see if weston can read configuration<b=
r>
files somewhere in /etc/<br></blockquote><div><br></div><div>I had updated =
the new patch with weston.ini file in /etc/xdg/weston directory. <br></div>=
</div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=
=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=
=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;Contributor to KDE projec=
t<br>

<a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_blank">h=
ttp://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>&lt;Blog&gt; <a href=3D"h=
ttp://sujithh.info" target=3D"_blank">http://sujithh.info</a><br>
</div></div>

--001a11c160a0c6c7aa04f7b07a11--
