Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380A7E0050B; Mon, 12 Dec 2016 07:26:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,TVD_PH_BODY_ACCOUNTS_PRE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD0B6E004E5
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:26:06 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id w63so91052119oiw.0
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=sShyQ/zKL8VsRpDSlw4XqAIf2/CDLN7t9oXS0X+WrHs=;
	b=dv/UkDgpqR+SEDBy4ybOdWdp1m28prRVgjdjfbWEQWhkeZ/j0oUxRIgaQPx/E+4+ZZ
	EGDDc9m7SYgD/wNvc8geERksnfA9TYPc1zhQ7TPbCnF2GJ39rn1GZD+z7NAuIUjKjvEG
	qu8+2Dn9NdFHpDIIwdb6pJUVb5HjvayNbKOWIzkSQDjonjZ1MCHc2PelOCm3LRje0YWs
	qslTpwKfZhCo48GT8pSu4oaaCfyZUqCm2Uf21kBKj1quRfBd3xjOhXysyRXl0XvnbB5+
	xqYkRIIkU4o+6iK4+d8h05jl1mAurGIGJXx9aEh4mbC39TYdCKPoUGb+BmbRqKjob0ME
	hPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=sShyQ/zKL8VsRpDSlw4XqAIf2/CDLN7t9oXS0X+WrHs=;
	b=Wf4/iY1gvNujjUZE7AGvNys9+JCMT7RTGoLL1pypATu/wA5UDxJJI7hDPaewsjKqfx
	CPkiOHe4RRVnUkiYGBRNLwz8QVwInwvTVQ6rd//NTuimVltQRaKmnjuifFgGXrNdud/d
	Jx1awNMhJm0Ajuq86RgsWm5T8PAoiqRQjC3vsfvaQxtA9GXvH6dBIlFhiO9iUgjLqR//
	dcujbLQRSoHM7xi5U78EMQulYhaJC3ayGH1SD+ZGrMtK0DoWAHiF+zr4T700IU3USfMm
	9yaCAsDCrdEMKKElB9Z06xPdP6tlTE+DaXzQpAQKbiecAryRjFQigcb/xp//z04/zyQn
	qPSQ==
X-Gm-Message-State: AKaTC00lv1bJqXNPX5ZisI82W6gfw3OhLV6vvOLVniBmuXIue331MSsFwwjcBt44doyvRbtKOgZh4JvTO+ViEA==
X-Received: by 10.157.14.104 with SMTP id n37mr48618393otd.29.1481556365616;
	Mon, 12 Dec 2016 07:26:05 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.14.20 with HTTP; Mon, 12 Dec 2016 07:25:45 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
References: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 12 Dec 2016 08:25:45 -0700
X-Google-Sender-Auth: bi4UBHtsVD0EMTSWMufRMCu-WMw
Message-ID: <CABcZANnXHvW0r3Qa9+GQA7miovVc4tf2Nc99nRvKaQ4--0Jd+w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: suggestions for version controlling multi-layer reproducible builds?
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
X-List-Received-Date: Mon, 12 Dec 2016 15:26:10 -0000
Content-Type: multipart/alternative; boundary=001a113d0a6ee33074054377b8f1

--001a113d0a6ee33074054377b8f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 12, 2016 at 8:20 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>   if one is building an image for a releasable, commercial product,
> and that image involves pulling in numerous layers, then dumping all
> sorts of proprietary apps on top of it, what are the possibilities for
> how to version number the released images such that, if a client has
> an issue, they can identify precisely the state of components that
> went into the system they're working with?
>
>   in addition to all of the layers involved in the build, one has to
> take into account that, when critical bugs are identified, an updated
> RPM might be sent out and applied, whereupon that system's version
> number is no longer perfectly accurate. in the end, the state of
> someone's running system will be determined by a possibly huge
> combination of selected packages, preferred package versions, build
> config options, additional user space apps, hot fixes that have been
> applied and so on.
>
>   what sort of meaningful "version number" can be applied to something
> like that? i'm sure at least a few other people have to be doing
> something like that, so i'm open to suggestions.
>

I don=E2=80=99t think it=E2=80=99s possible for a version number to capture=
 this at all.
Better to use a script to capture the state of the system as needed. I.e.
write build info to a file on target, and then combine that with a query of
the package manager if you use packages for update distribution (though I
wouldn=E2=80=99t advise use of packages for update distribution at all, tha=
t=E2=80=99s a
different discussion :).
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113d0a6ee33074054377b8f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Dec 12, 2016 at 8:20 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":hf" =
class=3D"a3s aXjCH m158f3a05b8ce022d">=C2=A0 if one is building an image fo=
r a releasable, commercial product,<br>
and that image involves pulling in numerous layers, then dumping all<br>
sorts of proprietary apps on top of it, what are the possibilities for<br>
how to version number the released images such that, if a client has<br>
an issue, they can identify precisely the state of components that<br>
went into the system they&#39;re working with?<br>
<br>
=C2=A0 in addition to all of the layers involved in the build, one has to<b=
r>
take into account that, when critical bugs are identified, an updated<br>
RPM might be sent out and applied, whereupon that system&#39;s version<br>
number is no longer perfectly accurate. in the end, the state of<br>
someone&#39;s running system will be determined by a possibly huge<br>
combination of selected packages, preferred package versions, build<br>
config options, additional user space apps, hot fixes that have been<br>
applied and so on.<br>
<br>
=C2=A0 what sort of meaningful &quot;version number&quot; can be applied to=
 something<br>
like that? i&#39;m sure at least a few other people have to be doing<br>
something like that, so i&#39;m open to suggestions.</div></blockquote></di=
v><br>I don=E2=80=99t think it=E2=80=99s possible for a version number to c=
apture this at all. Better to use a script to capture the state of the syst=
em as needed. I.e. write build info to a file on target, and then combine t=
hat with a query of the package manager if you use packages for update dist=
ribution (though I wouldn=E2=80=99t advise use of packages for update distr=
ibution at all, that=E2=80=99s a different discussion :).<br>-- <br><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christopher Lars=
on<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZa=
urus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</di=
v>
</div></div>

--001a113d0a6ee33074054377b8f1--
