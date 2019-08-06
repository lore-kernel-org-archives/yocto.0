Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04402E00D5F; Tue,  6 Aug 2019 04:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
	[209.85.222.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F641E00D4F
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 04:32:40 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id c4so6695617uad.1
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 04:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QOA/zcDNtlYFu76yHhbDsCQ+qE7pkJtBAnAH2eVROoA=;
	b=quBx2yy7+Bixkdem1p02JNU+hRqxMbm47cnz1x9yXdh7Yo03VpAq/Kpiooix64fX+7
	KIK3IDppPsqkbT+aFugUNqZeccH0hzv2w8SRUeARI3Wut9d6U8Fu1tPJhdgecWHm14sU
	Ar2a4ncdVheb4AJIez+L0pialdX+4hgywa04W/nlYTHb2rwjMOm/6ExVYsyotAkitPWp
	n9R21zfmOvMZkSUMs0kTnXplf9WUTQ335OopDHvgmW/U4Xai4Bbl9Ey1SpKcG0jgJKvp
	X1YwJHjLhsXBuHghxVbrsXZaGwmAC51n0Rg6lEGlDV+jqQ+zLy6emRW/x0dgTYGp2lqc
	UdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QOA/zcDNtlYFu76yHhbDsCQ+qE7pkJtBAnAH2eVROoA=;
	b=a7E3lNv54IU8tkC11eHGac9yAIBZOH1zyRTDdZnyyLVRpvLGx/Wmb2iTcUWI6TR1Gt
	GaL9q84ZcTQvSY6ebJzWdIVx7pNYTyTpYbblDwWQ5aTdamGdUdnlBzR7MXhNv9kyBNUJ
	mES/6G8lHyw7cLCWROamiqB5teZ5lKUP6szxosgJG0JGJqSF8g3kCy0wQAqVX6j0op7s
	dW7oilOR9i5kKbo4Qx8dJPPbfEKJ85zH0ArmkPNtQ5MiZ1xcxJbqOnKEEy3CzsYRre0U
	fsWlTT59Hk7iLoEUUlTd/2QSu19tW/TwCv2oNhSIyLATfv4GxjBSlZAvHCiCgyIFAQ6h
	MSMQ==
X-Gm-Message-State: APjAAAW9eOM234rzKC0m4/73HAVCXBA1xeFGUZRTLSMQ419VAWW2F3q3
	3Or6FFz6SauFHZx15U9yKcburdeNYqL8cOla08g=
X-Google-Smtp-Source: APXvYqzBGZb28YOUerKFwCRRGhnTHCs40GLNzWrcuK11PfVLvfk4rPV+b3HVjTaxWYrqOD6lPemT245OaDduJ6dmt7Y=
X-Received: by 2002:ab0:70b1:: with SMTP id q17mr1899529ual.100.1565091159895; 
	Tue, 06 Aug 2019 04:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
In-Reply-To: <CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Aug 2019 13:32:29 +0200
Message-ID: <CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 11:32:41 -0000
Content-Type: multipart/alternative; boundary="000000000000a0720e058f712ed1"

--000000000000a0720e058f712ed1
Content-Type: text/plain; charset="UTF-8"

It may help if you copy-paste the exact error you are getting, and the
content of the directory where it happens.

Alex

On Tue, 6 Aug 2019 at 13:09, JH <jupiter.hce@gmail.com> wrote:

> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> > You don't; package_qa is reporting real issues with your packaging, so
> you
> > need to address them.
>
> Well, my first issue is I need to build it, the document said it can
> be disabled, but did not say how, appreciate anyone helps how to
> disable it.
>
> Thank you
>
>
> > Alex
> >
> > On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
> >
> >> Hi,
> >>
> >> According to the latest document:
> >>
> >> "Package QA checks are now performed during a new do_package_qa task
> >> rather than being part of the do_package task. This allows more
> >> parallel execution. This change is unlikely to be an issue except for
> >> highly customized recipes that disable packaging tasks themselves by
> >> marking them as noexec. For those packages, you will need to disable
> >> the do_package_qa task as well."
> >>
> >> How can I disable the do_package_qa task?
> >>
> >> Thank you.
> >>
> >> Kind regards,
> >>
> >> - jh
> >>
> >> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
> >> > Hi,
> >> >
> >> > I was running my Yocto build fine until I had a minor change to move
> >> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to
> >> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
> >> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
> >> > errors, please consider fixing them.
> >> >
> >> > Even I reverse the changes back the, it still complained the same
> >> > error.
> >> >
> >> > I don't have do_package_qa in my bb file, where is it from? What is
> >> > that error about? How to fix it?
> >> >
> >> > Thank you.
> >> >
> >> > Kind regards,
> >> >
> >> > - jh
> >> >
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
>

--000000000000a0720e058f712ed1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It may help if you copy-paste the exact error you are=
 getting, and the content of the directory where it happens.</div><div><br>=
</div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, 6 Aug 2019 at 13:09, JH &lt;<a href=3D"mai=
lto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 8/6/19, Alexander Kanavi=
n &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kana=
vin@gmail.com</a>&gt; wrote:<br>
&gt; You don&#39;t; package_qa is reporting real issues with your packaging=
, so you<br>
&gt; need to address them.<br>
<br>
Well, my first issue is I need to build it, the document said it can<br>
be disabled, but did not say how, appreciate anyone helps how to<br>
disable it.<br>
<br>
Thank you<br>
<br>
<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue, 6 Aug 2019 at 10:40, JH &lt;<a href=3D"mailto:jupiter.hce@gmai=
l.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; According to the latest document:<br>
&gt;&gt;<br>
&gt;&gt; &quot;Package QA checks are now performed during a new do_package_=
qa task<br>
&gt;&gt; rather than being part of the do_package task. This allows more<br=
>
&gt;&gt; parallel execution. This change is unlikely to be an issue except =
for<br>
&gt;&gt; highly customized recipes that disable packaging tasks themselves =
by<br>
&gt;&gt; marking them as noexec. For those packages, you will need to disab=
le<br>
&gt;&gt; the do_package_qa task as well.&quot;<br>
&gt;&gt;<br>
&gt;&gt; How can I disable the do_package_qa task?<br>
&gt;&gt;<br>
&gt;&gt; Thank you.<br>
&gt;&gt;<br>
&gt;&gt; Kind regards,<br>
&gt;&gt;<br>
&gt;&gt; - jh<br>
&gt;&gt;<br>
&gt;&gt; On 8/4/19, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com" target=
=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I was running my Yocto build fine until I had a minor change =
to move<br>
&gt;&gt; &gt; libapplibrary.so to libapplibrry.so.${PN} and made libapplibr=
ary.so to<br>
&gt;&gt; &gt; a symbolic link of libapplibrry.so.${PN}. Now it got an error=
 of QA<br>
&gt;&gt; &gt; issue applibrary rdepends on app-dev [dev-deps], QA run found=
 fatal<br>
&gt;&gt; &gt; errors, please consider fixing them.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Even I reverse the changes back the, it still complained the =
same<br>
&gt;&gt; &gt; error.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I don&#39;t have do_package_qa in my bb file, where is it fro=
m? What is<br>
&gt;&gt; &gt; that error about? How to fix it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thank you.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Kind regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; - jh<br>
&gt;&gt; &gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000a0720e058f712ed1--
