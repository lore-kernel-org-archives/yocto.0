Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E011E00C71; Fri,  4 Jan 2019 07:56:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matt.hoosier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A372DE00901
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 07:56:14 -0800 (PST)
Received: by mail-yw1-f48.google.com with SMTP id i73so14670704ywg.3
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 07:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/XFP3LrCHvp8IKHQzcWCQ5yn6SU75SYCY1WEptoBjdk=;
	b=KMAkzV4o+ADqfh0RhI+33hQUgGj8bUfcuLc9wc5iTUu+zwzGZSCI5NjbITJSsR3Eki
	Sh4GKpddgj1hs+lvB332dM5v59S0cmKnmZLQ8M8TitV6mzL1EaXGRLE51VnD2dO7xmCW
	mM6lGOckHoZaMsn5TvPIeAQwTDVPm4s6aKShLSc7smQyVVG6sJ9lIKqonyULw9b1whSV
	mPGjIv7Vqc7slb0v3c7M7hwk3ehoJtBZiGRsgOu9w3YacK2u374oAGss2occKJS6yaUB
	EhQ7suMC+w3BHJroKRQdwnYcy9VGylEDLQ3Dqqdl1APYqH1vXaX7D+miD3rYMsxyjhTM
	1VZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/XFP3LrCHvp8IKHQzcWCQ5yn6SU75SYCY1WEptoBjdk=;
	b=i8HYHhq4TdKC4q5rPexVOLkBSlNmKJYgrVBLnmKmz/ZPwYopH/f52wpuR8it1pcbLx
	wX2xexv21q2xbsrV1w917oOq7NL+I3Qx1ymJrhFx5gHQRLr748M9l5d8KuIvoPbrxqtU
	aEgcXMNoGO4juqRre4b5Xm87nDo70AzJnq1fwm5NMLoLkuYQ3eScovrg/CZojNgo7JMg
	0anI2AKP3w+GvtRTn/KntyBI42kjD16x17zuGJbYYsOhG9HORghz4HBVdalVSPtUWTuE
	Wcb+oRmMsN62X/7r0y2m/Qs5012Qr1LoCckkOF1jVPR1SqC9GlQgMkGpomTTVwUqo64x
	WDEg==
X-Gm-Message-State: AA+aEWYPfw58VtY1fvzSL6XAxKriWc5LG5XkQXqfA3FakurHZxWJ6u+G
	nWLXhDTdwExzmqzucDUQ4WvKMJ8aGr2boEAmR6Dc1g==
X-Google-Smtp-Source: AFSGD/VSAwSZTmPSmH/m3yryE4Vo8S0LMoBYL/dBIjw82KLdumz4BUhdWGx9HNZG3CW/lLAd8itMhWd2wsArVSiedUg=
X-Received: by 2002:a0d:e156:: with SMTP id k83mr53182475ywe.219.1546617373900;
	Fri, 04 Jan 2019 07:56:13 -0800 (PST)
MIME-Version: 1.0
References: <CAJgxT38ryEhJKQ1_CN79nKPBLUiOca-xHVVKUnGrOQoUq027hA@mail.gmail.com>
	<CAJTo0LZK0Z_HA4aXecD4NEkmHaFY1S8yVh+zKg2WGa54iCKAOQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZK0Z_HA4aXecD4NEkmHaFY1S8yVh+zKg2WGa54iCKAOQ@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Fri, 4 Jan 2019 09:55:38 -0600
Message-ID: <CAJgxT38FfDiYCYrMGqsY3gmVSMGm2=QxYP_YppGjYiar6piP0A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using prelink in Thud and subsequent
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
X-List-Received-Date: Fri, 04 Jan 2019 15:56:15 -0000
Content-Type: multipart/alternative; boundary="0000000000002cc3aa057ea3eb7d"

--0000000000002cc3aa057ea3eb7d
Content-Type: text/plain; charset="UTF-8"

Okay, fair enough. There's a lot of mechanical configuration in poky,conf
that would be nice to not to maintain a copy of, but that's fine.

On Fri, Jan 4, 2019 at 9:52 AM Burton, Ross <ross.burton@intel.com> wrote:

> Don't use Poky?  Your own distro configuration doesn't have to include
> security_flags.inc.
>
> Ross
>
> On Fri, 4 Jan 2019 at 15:50, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> >
> > Hi all,
> >
> > With the following change, position-independent executables became the
> default in Poky:
> >
> > commit 491082c56ce34f3fd644f8d4457ccd52af951087
> > Author: Khem Raj <raj.khem@gmail.com>
> > Date:   Fri Jul 27 19:46:14 2018 -0700
> >
> >     poky.conf: Enable security flags+pie by defaultEnable security
> flags+pie by
> >
> >     This has been an opt-in for so long, some distributions e.g.
> >     poky-lsb uses it by default however, since most of linux
> >     distros have started to default to these settings for security
> >     enhancements, time has come for OE to make it default too
> >
> > This carries the consequence that prelinking no longer really works.
> What's the recommendation for users that want to keep applying whole-system
> prelink optimizations (that is, image-prelink.bbclass)? Manually resetting
> SECURITY_CFLAGS to the empty string after including poky.conf will come
> close to undoing the effect of security_flags.inc, but there are a few
> places its effects will still leak out.
> >
> > -Matt
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000002cc3aa057ea3eb7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay, fair enough. There&#39;s a lot of mechanical configu=
ration in poky,conf that would be nice to not to maintain a copy of, but th=
at&#39;s fine.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri,=
 Jan 4, 2019 at 9:52 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@inte=
l.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Don&#39;t use Poky?=C2=A0 Your own distro confi=
guration doesn&#39;t have to include<br>
security_flags.inc.<br>
<br>
Ross<br>
<br>
On Fri, 4 Jan 2019 at 15:50, Matt Hoosier &lt;<a href=3D"mailto:matt.hoosie=
r@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; With the following change, position-independent executables became the=
 default in Poky:<br>
&gt;<br>
&gt; commit 491082c56ce34f3fd644f8d4457ccd52af951087<br>
&gt; Author: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Fri Jul 27 19:46:14 2018 -0700<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0poky.conf: Enable security flags+pie by defaultEnab=
le security flags+pie by<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0This has been an opt-in for so long, some distribut=
ions e.g.<br>
&gt;=C2=A0 =C2=A0 =C2=A0poky-lsb uses it by default however, since most of =
linux<br>
&gt;=C2=A0 =C2=A0 =C2=A0distros have started to default to these settings f=
or security<br>
&gt;=C2=A0 =C2=A0 =C2=A0enhancements, time has come for OE to make it defau=
lt too<br>
&gt;<br>
&gt; This carries the consequence that prelinking no longer really works. W=
hat&#39;s the recommendation for users that want to keep applying whole-sys=
tem prelink optimizations (that is, image-prelink.bbclass)? Manually resett=
ing SECURITY_CFLAGS to the empty string after including poky.conf will come=
 close to undoing the effect of security_flags.inc, but there are a few pla=
ces its effects will still leak out.<br>
&gt;<br>
&gt; -Matt<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000002cc3aa057ea3eb7d--
