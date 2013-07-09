Return-Path: <peachj@lexmark.com>
Received: from exprod8og106.obsmtp.com (exprod8og106.obsmtp.com [64.18.3.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59B6E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 11:11:14 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176]) (using TLSv1) by
	exprod8ob106.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUdxSQZ9vSrsJNjIkfV+3c8fN9k6BOqdy@postini.com;
	Tue, 09 Jul 2013 11:11:16 PDT
Received: by mail-ob0-f176.google.com with SMTP id v19so7222254obq.7
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 11:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=6pdxRazjQ+7bkyfa4fCY6s/xCoD8jd1vBZAi72hy9iQ=;
	b=mjq1ZmvI/lS5h/W6np8wD6fMgPShi6eAW4oVxiJoSB1qi+hlbeDaDZ2CYNuKqiWjxT
	vnc0PF7i5eXqlXsulrVZjV1VylHJrSaGN6xzgN4PSa9R0wLJgGKX3PLNjR0DKAVGR7iw
	S869MhH5519TLMylteEFwbIC4C5iMt7+oVG7bbmZ70jyHJuAkhZgfwgu7OWoChCAJRUd
	FCtuEtU2cWnulzg/LYC0J0m51lvwDizy6I4Phwuj0uPWNTJSypANtMrSnvUPcmg23XXv
	2M0mFQGHaKZENrgEVCM7yB4+II0+0VbQvyB1qzDcyZerVYS30rKV6tN+/PWksizZTYx/
	rfAg==
X-Received: by 10.60.162.67 with SMTP id xy3mr24920748oeb.26.1373393473154;
	Tue, 09 Jul 2013 11:11:13 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.60.162.67 with SMTP id xy3mr24920724oeb.26.1373393472967;
	Tue, 09 Jul 2013 11:11:12 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Tue, 9 Jul 2013 11:11:12 -0700 (PDT)
In-Reply-To: <11944897.4VBUiy9yHt@helios>
References: <CA+QkY1AuHy-wzgTWfRq7B0e7GFR4fAXdf_okVZ7wypjBp5ewzw@mail.gmail.com>
	<CA+QkY1CUeBR2zkzNofqbosfB=-3zMYChDQOYJPKpB0EaUfx+zw@mail.gmail.com>
	<11944897.4VBUiy9yHt@helios>
Date: Tue, 9 Jul 2013 14:11:12 -0400
Message-ID: <CA+QkY1DSAFxPRzfgYwG4Cc6Xg9KucRtXOPadrW0BcdivkEx7aw@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQnl5ujSmRKjwvdY8CImUyATdxpvSqh3FvDAOfUwdo/DFcLQ9hzhza7gY8xw2ChEhe/AcdivueyAsuHWJc/xk7GVGZK3q2gQ3kTjr6pN0YbcA8fFzOUPf6lsH1gUoQe1Bo4ikISALk05tVYgUZns911IcX1eDDVVF2VHXrtZxWYL51VKSPk=
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto 1.4: Bad behavior between rm_work and packaging causing failures?
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
X-List-Received-Date: Tue, 09 Jul 2013 18:11:16 -0000
Content-Type: multipart/alternative; boundary=047d7b5d47b817e40b04e1181676

--047d7b5d47b817e40b04e1181676
Content-Type: text/plain; charset=ISO-8859-1

>
>
>
> I think it's probably worth concentrating on the first issue. I can run
> some
> tests, but the question is are you able to elaborate on what builds might
> have
> been done before the user runs the problem build, and the nature of any
> changes that were made between prior builds and the failing build? Are you
> adding any custom tasks in your setup at all?
>
> Cheers,
> Paul
>
>
Paul,

So, I just came to a realization: We don't have any commonalities in tasks
being added (or whether tasks are added at all) in the packages we saw it
in.  However, we are running the builds automatically through Jenkins (the
open source continuous integration software, if you're not familiar with
it).  We've never seen this on a build that wasn't run through Jenkins,
though we've only seen it twice, so that's not saying a whole lot.  We're
wondering if a build aborted through Jenkins gets a SIGKILL, and if it does
AND that happens during rm_work, I bet that could cause this problem.
 Granted, this is all speculation, and we don't even know if the failures
occurred immediately after aborted builds, but that's the only thing my
colleagues and I can think of right now.

If you do want to continue investigating (which might be worthwhile, as our
speculation could be totally off-base), the packages from poky with which
we had this problem were eglibc-mtrace and systemd-serialgetty.  (We had
the problem with 5 other packages, but they're all custom packages of
ours.)  I find the latter particularly interesting, as that recipe seems to
be quite boring aside from its several python functions.  That makes me
think even more that we're seeing some weird combination of factors in our
Jenkins builds.

Kind regards,

Jerrod

--047d7b5d47b817e40b04e1181676
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><br><br>
I think it&#39;s probably worth concentrating on the first issue. I can run=
 some<br>
tests, but the question is are you able to elaborate on what builds might h=
ave<br>
been done before the user runs the problem build, and the nature of any<br>
changes that were made between prior builds and the failing build? Are you<=
br>
adding any custom tasks in your setup at all?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div style>Paul,</div><div><br></div><div style>So, I jus=
t came to a realization: We don&#39;t have any commonalities in tasks being=
 added (or whether tasks are added at all) in the packages we saw it in. =
=A0However, we are running the builds automatically through Jenkins (the op=
en source continuous integration software, if you&#39;re not familiar with =
it). =A0We&#39;ve never seen this on a build that wasn&#39;t run through Je=
nkins, though we&#39;ve only seen it twice, so that&#39;s not saying a whol=
e lot. =A0We&#39;re wondering if a build aborted through Jenkins gets a SIG=
KILL, and if it does AND that happens during rm_work, I bet that could caus=
e this problem. =A0Granted, this is all speculation, and we don&#39;t even =
know if the failures occurred immediately after aborted builds, but that&#3=
9;s the only thing my colleagues and I can think of right now.</div>
<div style><br></div><div style>If you do want to continue investigating (w=
hich might be worthwhile, as our speculation could be totally off-base), th=
e packages from poky with which we had this problem were eglibc-mtrace and =
systemd-serialgetty. =A0(We had the problem with 5 other packages, but they=
&#39;re all custom packages of ours.) =A0I find the latter particularly int=
eresting, as that recipe seems to be quite boring aside from its several py=
thon functions. =A0That makes me think even more that we&#39;re seeing some=
 weird combination of factors in our Jenkins builds.</div>
<div style><br></div><div style>Kind regards,</div><div style><br></div><di=
v style>Jerrod</div></div></div></div>

--047d7b5d47b817e40b04e1181676--
