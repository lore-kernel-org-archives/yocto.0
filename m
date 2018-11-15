Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24DD1E00C4E; Thu, 15 Nov 2018 01:17:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 203B8E00A6B
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 01:17:07 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id o19so19179967itg.5
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 01:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wa6sicJKQdGPG+wx84ON9jNvO1g8lC+S37tayVMf/AI=;
	b=X+f14GrwvcflzQKhMVGeDIpwyJPLHAjgOW/92hYl4lbwxY7Jg3gxZkyhbvrPAuf23K
	e6JbvWq2V+NUKMsaq+H772FbZCIXBEeOnjDPQ5o/v3x2A+U3dQk9eSX7UKytQ1VsvdhK
	rFXZdXm6dtom6c/+jF37eCRKwrKLfttGfQ2xuMgVPLkIH5x3NAG972ZSsCYb6DfGipMP
	HaLYXwld+VUskWjryZsPAb8qQ+7lEczHYB8u0yGiysxMtYAFkIdgeVBOeE5ix9f+Mivy
	zJEpX/bdX5E6DehYwVmBnyeqFvyVbV2Dg6YPPguPE5nVU3Z5TZJSn0QawRLqzc5Kqgti
	WANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wa6sicJKQdGPG+wx84ON9jNvO1g8lC+S37tayVMf/AI=;
	b=jFHGjHM/xHF4XzgwZZJiQqOJjlIQZhoKFvuSr+As1W+dAoDRbpo4Ge1PjpSPKbwUVP
	ZtQkOWiCjroiBJAjBJH9bE3hpysYeINjXJdhbDcNzd8v+wO8EA4xD7/usG4XQiMkHnqb
	wM4hJF/yYdHJuAW3cPK15nSNsY9hbCsnDMiYrNDSuIlexlAi/8YcdaCm5xt4kIesSsww
	GEroClF4eOdA87swbhoJpeukuQAes0U+UQYNGKNa7fX+X85QkrM9MSMnsysj9voa79At
	0LDfsg/S5wf8/oLU9/QKIzjz2x6qTzYnkfh5Tm1yHbneig1iBCKhI2n2gTYBPdbKgMMS
	cT/Q==
X-Gm-Message-State: AGRZ1gIclvDLPuRW2+TKQ2wnzIxYXICQc3dk91ex5kcrkaNBbjzF9K/+
	NShh5DJLi8H/vL6WZRYt/kB/6B+mDJH8uUabIokGPw==
X-Google-Smtp-Source: AFSGD/XFcVH6odN76Ih2kVwTJZxMaSk7uCPKrLo2qsULBc6yoGUK1bIeXlozO6DiRuF4gWWeIi0IvDPIRZUidD/vBzA=
X-Received: by 2002:a24:1d8e:: with SMTP id
	136-v6mr4816161itj.62.1542273427525; 
	Thu, 15 Nov 2018 01:17:07 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
	<CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
	<CABXoSoUqzDtrdea7rFkF0xiXULR4sto+gqcXL4L8TpZy8Ni7bQ@mail.gmail.com>
In-Reply-To: <CABXoSoUqzDtrdea7rFkF0xiXULR4sto+gqcXL4L8TpZy8Ni7bQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2018 09:16:56 +0000
Message-ID: <CAJTo0LapW-sOMR8uC4+LMWbUznHDLzQx8gsnV6hyoL=w+6A5Fw@mail.gmail.com>
To: Samuli Piippo <samuli.piippo@gmail.com>, Joshua Watt <jpewhacker@gmail.com>,
	Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 09:17:09 -0000
Content-Type: multipart/alternative; boundary="000000000000cb6fd5057ab08325"

--000000000000cb6fd5057ab08325
Content-Type: text/plain; charset="UTF-8"

Good work!

Can we have a patch from someone please?

Ross

On Thu, 15 Nov 2018 at 08:35, Samuli Piippo <samuli.piippo@gmail.com> wrote:

> On Thu, 15 Nov 2018 at 07:01, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com>
> wrote:
> > >
> > > On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com>
> wrote:
> > > >
> > > > On 11/14/18 9:54 AM, Mark Hatle wrote:
> > > > > On 11/13/18 3:56 AM, Samuli Piippo wrote:
> > > > >> Hi,
> > > > >>
> > > > >> I've just upgraded poky and meta-mingw layers from sumo to thud
> and as a result
> > > > >> a lot of the executables in the toolchain no longer run correctly
> on Windows.
> > > > >
> > > > > Which version of windows?
> > > > >
> > > > >> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From
> that, gcc/g++ work
> > > > >> fine on Windows 10, but ar, as, objdumb, and others hang for ~30
> seconds and
> > > > >> exit without any output.
> > > > >>
> > > > >> Has anyone else seen this?
> > > > >
> > > > > I've run a toolchain made on mingw after sumo, but before thud's
> release.  I'll
> > > > > see if I can find a VM and give it a try later today.
> > > >
> > > > I'm running on Windows 7 for my testing (ya, I know old.. but it's
> what I got.)
> > > >
> > > > Can you try adding the following to your conf/local.conf:
> GCCPIE_mingw32 = ""
> >
> > this will be effective just for SDK and native versions I hope, but in
> > cases if we
> > have this override also applicable for target then this fix is not
> > correct. We have
> > to keep using it for target builds.
> >
> > > >
> > > > I found that the SDK was not working properly here as well, but only
> binutils.
> > > > The above seems to fix the issue.  (You do have to rebuild your SDK.)
> > >
> > > I also saw this issue on Windows 7, and your described fix corrected
> > > it (Thanks!). On the plus side, the automated SDK testing that I'm
> > > working on discovered it as well (e.g. the tests failed because of
> > > it), which means that the tests are working and should help prevent
> > > issues like this in the future once I get it merged.
> > >
>
> bisect finished last night and the winner was: commit
> 491082c56ce34f3fd644f8d4457ccd52af951087
> poky.conf: Enable security flags+pie by defaultEnable security
> flags+pie by default
>
> Adding GCCPIE_mingw32 = "" fixes this also for Windows 10
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000cb6fd5057ab08325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Good work!</div><div><br></div>Can we have a patch fr=
om someone please?<div><br></div><div>Ross</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Thu, 15 Nov 2018 at 08:35, Samuli Piippo &lt;=
<a href=3D"mailto:samuli.piippo@gmail.com">samuli.piippo@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">On Thu, 15 Nov 2018 at 07:01=
, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt &lt;<a href=3D"mailto:jpew=
hacker@gmail.com" target=3D"_blank">jpewhacker@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle &lt;<a href=3D"mailto:=
mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt=
; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On 11/14/18 9:54 AM, Mark Hatle wrote:<br>
&gt; &gt; &gt; &gt; On 11/13/18 3:56 AM, Samuli Piippo wrote:<br>
&gt; &gt; &gt; &gt;&gt; Hi,<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; I&#39;ve just upgraded poky and meta-mingw layers f=
rom sumo to thud and as a result<br>
&gt; &gt; &gt; &gt;&gt; a lot of the executables in the toolchain no longer=
 run correctly on Windows.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Which version of windows?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; I&#39;ve built meta-toolchain for SDKMACHINE=3Dx86_=
64-mingw32. From that, gcc/g++ work<br>
&gt; &gt; &gt; &gt;&gt; fine on Windows 10, but ar, as, objdumb, and others=
 hang for ~30 seconds and<br>
&gt; &gt; &gt; &gt;&gt; exit without any output.<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; Has anyone else seen this?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;ve run a toolchain made on mingw after sumo, but =
before thud&#39;s release.=C2=A0 I&#39;ll<br>
&gt; &gt; &gt; &gt; see if I can find a VM and give it a try later today.<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m running on Windows 7 for my testing (ya, I know old.=
. but it&#39;s what I got.)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Can you try adding the following to your conf/local.conf: GC=
CPIE_mingw32 =3D &quot;&quot;<br>
&gt;<br>
&gt; this will be effective just for SDK and native versions I hope, but in=
<br>
&gt; cases if we<br>
&gt; have this override also applicable for target then this fix is not<br>
&gt; correct. We have<br>
&gt; to keep using it for target builds.<br>
&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I found that the SDK was not working properly here as well, =
but only binutils.<br>
&gt; &gt; &gt; The above seems to fix the issue.=C2=A0 (You do have to rebu=
ild your SDK.)<br>
&gt; &gt;<br>
&gt; &gt; I also saw this issue on Windows 7, and your described fix correc=
ted<br>
&gt; &gt; it (Thanks!). On the plus side, the automated SDK testing that I&=
#39;m<br>
&gt; &gt; working on discovered it as well (e.g. the tests failed because o=
f<br>
&gt; &gt; it), which means that the tests are working and should help preve=
nt<br>
&gt; &gt; issues like this in the future once I get it merged.<br>
&gt; &gt;<br>
<br>
bisect finished last night and the winner was: commit<br>
491082c56ce34f3fd644f8d4457ccd52af951087<br>
poky.conf: Enable security flags+pie by defaultEnable security<br>
flags+pie by default<br>
<br>
Adding GCCPIE_mingw32 =3D &quot;&quot; fixes this also for Windows 10<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000cb6fd5057ab08325--
