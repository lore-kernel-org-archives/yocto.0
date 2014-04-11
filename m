Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E2DE00CC1
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:15:55 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id s7so2963836lbd.1
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=1HJS8U66z7pmAOfDiNByjyEwiY60WMTrXRVBvisv/vY=;
	b=HyMdiVQ1Ek/lp7BsXKCqkNy3YUR18hgmq66nHp2K6V8MUaM1De13XFzlW3b/s0l9k4
	SuCtxFCk6+6OklTA5WLwFAy9vNmZ9JBI8P1dPu8l6clyhshdoqfr+wx/wATf/4oAesCr
	PGnMu/8FfGrW5Zd0WZId9c5eJBee4y4qJo2Zhva9oG9GJnXbQdkpDBKT7Baz4HuX4AqO
	I0tVXxNBRwSko9suE+MPtH+RVFfZIsUbxqa1CJC5k2SaT2e6UesIXzm0Gj35sHCHQur6
	rcjov7H9v1N1RF+F+fzeeCjikLwiX5RC6n4ECvf5N1TqleOP6U9M/cdUoZu8W4YrobxA
	8sZQ==
X-Received: by 10.152.42.164 with SMTP id p4mr14077930lal.5.1397175354133;
	Thu, 10 Apr 2014 17:15:54 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Thu, 10 Apr 2014 17:15:34 -0700 (PDT)
In-Reply-To: <CAF_dkJBdofKM1WNEKyMw1Bg3A4o5DBaYwbjbXaU5SYrFyGb7wg@mail.gmail.com>
References: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
	<CABcZAN=BAXcbK87929P34zCeT9Y4o3nUm12P99N+=4Gy31zSxw@mail.gmail.com>
	<CAF_dkJBdofKM1WNEKyMw1Bg3A4o5DBaYwbjbXaU5SYrFyGb7wg@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 10 Apr 2014 17:15:34 -0700
X-Google-Sender-Auth: Ydow0eekAk6-1APNOCOsANmoZFk
Message-ID: <CABcZANncV5nWPhA1XR4ydhbkk=MLOmFFDdYO830D_DWyqYU_+A@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confusion about autotools
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
X-List-Received-Date: Fri, 11 Apr 2014 00:15:56 -0000
Content-Type: multipart/alternative; boundary=001a11c33f98ac117304f6b93cf8

--001a11c33f98ac117304f6b93cf8
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 10, 2014 at 5:12 PM, Patrick Doyle <wpdster@gmail.com> wrote:

> ok, that makes sense.  Trying to pattern match against too many
> patterns, and not spending enough time understanding the underlying
> technology.  Thank you for the explanation.
>
> If you don't mind, I'll move on to my next question...
>
> I now have a "do_fetch()" task that looks like this:
>
> do_fetch () {
> bberror "Hello World"
> exit 1
> }
>
> Where would I see "Hello World" pop out?  I don't see it in the log file.
>

It should show up in the do_fetch log (not the cooker log), which lives
next to the run script. That said, it's possible you're hitting an issue
due to the base.bbclass fetch implementation being python, not shell.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c33f98ac117304f6b93cf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Apr 10, 2014 at 5:12 PM, Patrick Doyle <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:wpdster@gmail.com" target=3D"_blank">wpdster@gmail.com</a>&gt;<=
/span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":9e" class=3D"a3s" style=3D"overf=
low:hidden">ok, that makes sense. =C2=A0Trying to pattern match against too=
 many<br>
patterns, and not spending enough time understanding the underlying<br>
technology. =C2=A0Thank you for the explanation.<br>
<br>
If you don&#39;t mind, I&#39;ll move on to my next question...<br>
<br>
I now have a &quot;do_fetch()&quot; task that looks like this:<br>
<br>
do_fetch () {<br>
bberror &quot;Hello World&quot;<br>
exit 1<br>
}<br>
<br>
Where would I see &quot;Hello World&quot; pop out? =C2=A0I don&#39;t see it=
 in the log file.</div></blockquote></div><br>It should show up in the do_f=
etch log (not the cooker log), which lives next to the run script. That sai=
d, it&#39;s possible you&#39;re hitting an issue due to the base.bbclass fe=
tch implementation being python, not shell.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c33f98ac117304f6b93cf8--
