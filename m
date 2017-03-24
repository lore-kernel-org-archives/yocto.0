Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64C69E009C2; Fri, 24 Mar 2017 01:17:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.182 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ACBEE00724
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 01:17:38 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id p77so4516177ywg.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 01:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E2iVtbebIB1uUKALw1aljVAd+qZAKfyVJ2Hg+Vnye40=;
	b=b3Rwgt/bi1bJilG0CXO2Evguu0cb3Bzeh0TgR6Z4qrDywmBG1uFFG+CV+XNLtl+OEs
	HM6mZxEfkzx6nkY3iS00Gy2LWQRiFd+AaGq+M9Y7ATDeUsZKdTkPNt282mt+ZhCV+gAG
	GJPeXvaS+7oymHjkdG+dXtpkOhh6uG1kC+ZzGWjXJwOIeApaQcnAzPUkW4ePfVzxR3TU
	wWvZ2CpLWBuvb94G4dTBbtqq++3ZuJc4XujxVoGGXv6YvwG7iBNFbO4UHlY+pF2UQA3c
	tRfJmMlw99Z2na0HZ63sk0cOmFn24YVY3T7umZJewbR5urry6KY8Ub608yUm+Dtjd9pb
	2Z+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E2iVtbebIB1uUKALw1aljVAd+qZAKfyVJ2Hg+Vnye40=;
	b=AisVOBp65HaNoPUioqx9IjM1uowVhFhaqCHderRmkAwUl/eneVuHlNu6WwVROXAc1E
	vFgryW6jC7cKQo0fd+P5/kMdJey8uVHJ8K5CIuAYorLocJPS0+JXzn1MgHMTG6o3N9Bj
	0m4VowtyktAV9sg0XRufXGEmXZ3emyXPMudF2qMLI00pJ5peDt2ZG5AFb0sq8dOHPJxd
	QwUuiu2jfL4hKnd7UZX93vP8n4+l3agkpz4XLjijKKxLnY49aDTsE35Hxjvxbqvs69AL
	QFMgBL7yM67JQydDIk+Kj1m4VhnK4wbxG70Gcr8sn4jG3OiyfTBSvR8+0StKDbMiPZJX
	UXIA==
X-Gm-Message-State: AFeK/H1HEUdT29UTuPLn31FWo57MEOt2m0yVka8KKEaSMP7jkt5ECm232YO4q862M2T3hSORGEkhTJiEMG5DgNpK
X-Received: by 10.13.211.70 with SMTP id v67mr4918747ywd.260.1490343457996;
	Fri, 24 Mar 2017 01:17:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Fri, 24 Mar 2017 01:17:07 -0700 (PDT)
In-Reply-To: <377dbeeeb1774e2883147b2b12a05e6d@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
	<6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
	<13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
	<6ffd54ff-01dd-c263-5e44-ca26be3cb9c0@mvista.com>
	<377dbeeeb1774e2883147b2b12a05e6d@SFA-EX01.SAKURAUS.LOCAL>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 24 Mar 2017 10:17:07 +0200
Message-ID: <CAHiDW_HONGM4RjSXSn3SYT4cRG+9mbj5giPhrYVe4cSgup=Yxw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Fri, 24 Mar 2017 08:17:41 -0000
Content-Type: multipart/alternative; boundary=001a114d83ea6888cd054b75a094

--001a114d83ea6888cd054b75a094
Content-Type: text/plain; charset=UTF-8

On 23 March 2017 at 22:11, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> Hi Armin & Paul,
>
> First there is nothing in the X log files.
> I'm building on a desktop machine with 12GB of memory and an 8 core
> processor running Kubuntu 14.04.
> I added the PARALLEL_MAKE parameter set to 4, no effect, still built with
> 8 threads, crashed.
> Set BB_NUMBER_THREADS to 4, built with 4 threads, still crashed.
>

Getting thrown out of your desktop environment probably indicates the core
problem is outside of Yocto -- this is still a fine place to discuss the
issue, just pointing it out. You could keep an eye on 'top' sorted by %MEM
while doing a build: my theory here is that something (like the monstrous
amount of IO) that the build does could trigger a desktop component to do
something stupid that cascades into your desktop shell exiting/crashing.
This could show up as something using more and more memory at some point
during the build.

Hope this helps, sorry for lack of definitive answers,
  Jussi



>
> Regards,
> Greg
>
> > -----Original Message-----
> > From: akuster [mailto:akuster@mvista.com]
> > Sent: Thursday, March 23, 2017 12:33 PM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Paul Eggleton <paul.eggleton@linux.intel.com>;
> yocto@yoctoproject.org
> > Subject: Re: [yocto] Morty 2.2.1 build failure
> >
> >
> >
> > On 03/23/2017 12:25 PM, Paul Eggleton wrote:
> > > That's really bizarre. There shouldn't be anything in a bitbake build
> > > that could cause anything like this (other than possibly how intensive
> > > it is, which might trigger out-of-memory or an underlying
> > hardware/software failure).
> >
> > I usually get my builds to reboot my system when I build on a loptop. I
> have
> > not seen this on a tower style work station. You may want to play with
> the
> > BB_NUMBER_THREADS=# and PARALLEL_MAKE = "-j #" settings in your
> > local.conf.
> >
> > - armin
> > >
> > > Assuming the X session is ending is there anything in your
> > > ~/.xsession-errors or /var/log/Xorg.*.log?
> > >
> > > Cheers,
> > > Paul
> > >
> > > On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wrote:
> > >> Hi Paul,
> > >>
> > >> I looked in the logs from the failure yesterday and couldn't find
> > >> anything, so I restarted the build and it ran for about another 1000
> > >> steps before crashing again. I still can't find anything in any of
> > >> the logs, syslog, kern.log, auth.log, etc.
> > >>
> > >> Cheers,
> > >> Greg
> > >>
> > >>> -----Original Message-----
> > >>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > >>> Sent: Thursday, March 23, 2017 2:49 AM
> > >>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > >>> Cc: yocto@yoctoproject.org; akuster808 <akuster808@gmail.com>
> > >>> Subject: Re: [yocto] Morty 2.2.1 build failure
> > >>>
> > >>> On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg
> > wrote:
> > >>>> I tried it again this morning and it did get past the file not
> > >>>> found error.
> > >>>> But when it gets above step 4000 somewhere it gets an error that
> > >>>> kills not just the yocto build but the full login session. I'm left
> > >>>> staring at the Linux Login screen.
> > >>> Your machine isn't running out of RAM by any chance, triggering the
> > >>> OOM killer? Anything indicative in your system logs?
> > >>>
> > >>> Cheers,
> > >>> Paul
> > >>>
> > >>> --
> > >>>
> > >>> Paul Eggleton
> > >>> Intel Open Source Technology Centre
> > >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114d83ea6888cd054b75a094
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
3 March 2017 at 22:11, Greg Wilson-Lindberg <span dir=3D"ltr">&lt;<a href=
=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakuraus.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Armin &amp; Paul,<b=
r>
<br>
First there is nothing in the X log files.<br>
I&#39;m building on a desktop machine with 12GB of memory and an 8 core pro=
cessor running Kubuntu 14.04.<br>
I added the PARALLEL_MAKE parameter set to 4, no effect, still built with 8=
 threads, crashed.<br>
Set BB_NUMBER_THREADS to 4, built with 4 threads, still crashed.<br></block=
quote><div><br></div><div>Getting thrown out of your desktop environment pr=
obably indicates the core problem is outside of Yocto -- this is still a fi=
ne place to discuss the issue, just pointing it out. You could keep an eye =
on &#39;top&#39; sorted by %MEM while doing a build: my theory here is that=
 something (like the monstrous amount of IO) that the build does could trig=
ger a desktop component to do something stupid that cascades into your desk=
top shell exiting/crashing. This could show up as something using more and =
more memory at some point during the build.</div><div><br></div><div>Hope t=
his helps, sorry for lack of definitive answers,</div><div>=C2=A0 Jussi</di=
v><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Regards,<br>
Greg<br>
<span class=3D"im HOEnZb"><br>
&gt; -----Original Message-----<br>
&gt; From: akuster [mailto:<a href=3D"mailto:akuster@mvista.com">akuster@mv=
ista.com</a>]<br>
&gt; Sent: Thursday, March 23, 2017 12:33 PM<br>
&gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com">G=
Wilson@sakuraus.com</a>&gt;<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; Cc: Paul Eggleton &lt;<=
a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.c=
om</a><wbr>&gt;; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt; Subject: Re: [yocto] Morty 2.2.1 build failure<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 03/23/2017 12:25 PM, Paul Eggleton wrote:<br>
&gt; &gt; That&#39;s really bizarre. There shouldn&#39;t be anything in a b=
itbake build<br>
&gt; &gt; that could cause anything like this (other than possibly how inte=
nsive<br>
&gt; &gt; it is, which might trigger out-of-memory or an underlying<br>
&gt; hardware/software failure).<br>
&gt;<br>
&gt; I usually get my builds to reboot my system when I build on a loptop. =
I have<br>
&gt; not seen this on a tower style work station. You may want to play with=
 the<br>
&gt; BB_NUMBER_THREADS=3D# and PARALLEL_MAKE =3D &quot;-j #&quot; settings =
in your<br>
&gt; local.conf.<br>
&gt;<br>
&gt; - armin<br>
&gt; &gt;<br>
&gt; &gt; Assuming the X session is ending is there anything in your<br>
&gt; &gt; ~/.xsession-errors or /var/log/Xorg.*.log?<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Paul<br>
&gt; &gt;<br>
&gt; &gt; On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wro=
te:<br>
&gt; &gt;&gt; Hi Paul,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I looked in the logs from the failure yesterday and couldn&#3=
9;t find<br>
&gt; &gt;&gt; anything, so I restarted the build and it ran for about anoth=
er 1000<br>
&gt; &gt;&gt; steps before crashing again. I still can&#39;t find anything =
in any of<br>
&gt; &gt;&gt; the logs, syslog, kern.log, auth.log, etc.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Cheers,<br>
&gt; &gt;&gt; Greg<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt; -----Original Message-----<br>
&gt; &gt;&gt;&gt; From: Paul Eggleton [mailto:<a href=3D"mailto:paul.egglet=
on@linux.intel.com">paul.eggleton@linux.<wbr>intel.com</a>]<br>
&gt; &gt;&gt;&gt; Sent: Thursday, March 23, 2017 2:49 AM<br>
&gt; &gt;&gt;&gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sa=
kuraus.com">GWilson@sakuraus.com</a>&gt;<br>
&gt; &gt;&gt;&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>; akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">aku=
ster808@gmail.com</a>&gt;<br>
&gt; &gt;&gt;&gt; Subject: Re: [yocto] Morty 2.2.1 build failure<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Li=
ndberg<br>
&gt; wrote:<br>
&gt; &gt;&gt;&gt;&gt; I tried it again this morning and it did get past the=
 file not<br>
&gt; &gt;&gt;&gt;&gt; found error.<br>
&gt; &gt;&gt;&gt;&gt; But when it gets above step 4000 somewhere it gets an=
 error that<br>
&gt; &gt;&gt;&gt;&gt; kills not just the yocto build but the full login ses=
sion. I&#39;m left<br>
&gt; &gt;&gt;&gt;&gt; staring at the Linux Login screen.<br>
&gt; &gt;&gt;&gt; Your machine isn&#39;t running out of RAM by any chance, =
triggering the<br>
&gt; &gt;&gt;&gt; OOM killer? Anything indicative in your system logs?<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Cheers,<br>
&gt; &gt;&gt;&gt; Paul<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; --<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Paul Eggleton<br>
&gt; &gt;&gt;&gt; Intel Open Source Technology Centre<br>
&gt; &gt;<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--001a114d83ea6888cd054b75a094--
