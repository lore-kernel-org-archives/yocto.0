Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30510E005A2; Wed,  2 Dec 2015 05:58:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882A5E0048C
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 05:58:06 -0800 (PST)
Received: by lffu14 with SMTP id u14so51484952lff.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 05:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=h3sOl7ezjRI0tSZlRwpI7SNaIHJW/k2RhVkB/PkgVco=;
	b=cOmJvCNaRvykAg58ZPht90VKN+VF4GopK+MdNeDbZ69QgZsQZfcdScpKsMU/f2Xzyz
	AFzZCWiGdjoMnmMY1fOdamAPEsoAaS4kSXm1aFZOrgmBAu7tisgWn9a4jmHXYZm2W9ch
	o/LMENm4+l9N6ulRy+oHCo7oTIS7EW/kiAwZYC5DzpRKSue5HMBxNJ2uJDN15VQgqlOM
	/HzyiAjlrvl8uL/zEvnfUt/K996rYxtPch0AEwJnkpTgfBAEhJZ1mMFxEfuD2SfJTixs
	BTNlJxJKf/ohPNDU6cl9+50JXlsyblPrLzwdltnLjGTKpQpAdUWpRDjd2HMkVl+4AcKj
	V3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=h3sOl7ezjRI0tSZlRwpI7SNaIHJW/k2RhVkB/PkgVco=;
	b=MAzq1uQ06AYwEXzIPy94Yytmfw5d1+FSacRKKuAg/srwhi99zr0/BEYuDdUKT3AF73
	dp604L7a3YrgXhCL97L7nvCjsIIkTJrL+wFS6w8NOK0GDYp5TbHEvSGmXCgkiXCveiVO
	yNEab/m7c5iYhiPaTqgaaj3crIHTiBEiX/jrzua/x2G3XwkS3JfRYAIyE0S+p0T63Yw5
	nQh3b4PaaOkLuaGjEVn2fOAjUgQXXyhbwMQ8Sy/TBW9o8MSDkUGM6LWDmGCbyOfXqWq8
	rL40zMefQdk4sJGQ3rBYtlJvQK0bGxPvXFB+/3vwDFKtFguA1eSSPJXrN/24Q0Ms8B7N
	rjYQ==
X-Gm-Message-State: ALoCoQnu1hp5F0cqkebo3PkjNZs8+k3/bRnfB2FvLu74X24KFOXEv5uQ/WyooVQruC4UdJh4EQm7
X-Received: by 10.112.160.202 with SMTP id xm10mr2887041lbb.22.1449064685017; 
	Wed, 02 Dec 2015 05:58:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Wed, 2 Dec 2015 05:57:25 -0800 (PST)
X-Originating-IP: [131.159.202.98]
In-Reply-To: <CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<564F3D6F.7020601@osg.samsung.com>
	<CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 2 Dec 2015 14:57:25 +0100
Message-ID: <CAK18fxEYT6DCN9y843isKWiFDVTOQuEVNT1qo6sZyxih-eUwUw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Wed, 02 Dec 2015 13:58:08 -0000
Content-Type: multipart/alternative; boundary=001a11c261accebc9f0525eaa9bc

--001a11c261accebc9f0525eaa9bc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

--
Andrei Gherzan

On Fri, Nov 20, 2015 at 5:09 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
> > On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
> >> Hello Andrei,
> >>
> >> This series adds support for Eric Anholt's v4.2 kernel, that has suppo=
rt
> >> for the vc4 DRM/KMS driver, which is the new open source graphics driv=
er
> >> stack for the Raspberry Pi to be used instead of the userland driver.
> >>
> >> This is a third version of the series which addresses feedback provide=
d
> >> by Andreas M=C3=BCller, Khem Raj and you. The first version and second
> version
> >> of the series can be found at [0] and [1]. Some of the v2 patches have
> >> been dropped since are no longer necessary so the delta is smaller in
> v3.
> >>
> >
> > Any comments about this series?
>
> Whole series looks good to me.
>
>
Looks good to me too. I will try to test them (compile time) and bring them
in as an option.

--001a11c261accebc9f0525eaa9bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br clear=3D"all"><div><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>=
Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Nov 20, 2015 at 5:09 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas=
<br>
&lt;<a href=3D"mailto:javier@osg.samsung.com">javier@osg.samsung.com</a>&gt=
; wrote:<br>
&gt; On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:<br>
&gt;&gt; Hello Andrei,<br>
&gt;&gt;<br>
&gt;&gt; This series adds support for Eric Anholt&#39;s v4.2 kernel, that h=
as support<br>
&gt;&gt; for the vc4 DRM/KMS driver, which is the new open source graphics =
driver<br>
&gt;&gt; stack for the Raspberry Pi to be used instead of the userland driv=
er.<br>
&gt;&gt;<br>
&gt;&gt; This is a third version of the series which addresses feedback pro=
vided<br>
&gt;&gt; by Andreas M=C3=BCller, Khem Raj and you. The first version and se=
cond version<br>
&gt;&gt; of the series can be found at [0] and [1]. Some of the v2 patches =
have<br>
&gt;&gt; been dropped since are no longer necessary so the delta is smaller=
 in v3.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Any comments about this series?<br>
<br>
</span>Whole series looks good to me.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Looks good to me too. I will try to test them (compile time) =
and bring them in as an option.</div><div>=C2=A0</div></div></div></div>

--001a11c261accebc9f0525eaa9bc--
