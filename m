Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21CFDE00C18; Sun,  6 Mar 2016 20:41:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C59AFE00BE8
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 20:41:23 -0800 (PST)
Received: by mail-vk0-f45.google.com with SMTP id k1so89184269vkb.0
	for <yocto@yoctoproject.org>; Sun, 06 Mar 2016 20:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=1Hdlm3kalu4XSZnFt7BFUfeNZHqqnawBjXRAsrg6PuE=;
	b=W5Hbq9IQAPj/kuc/9sT/Zx3KPt6Yv1pGinbeTLKj9UMry2xDtK0jAKUstxwAR8WaUS
	acRgv/sxB+ffhuqbdzOFvejpkW3D/QMCJUWbS6mxS3fsqQQtW4TIbZMHfa3EkEJG/Y2C
	lyPC22yW8RbZ6V8bD4QyuXD1bVwqUHH45GPO01xejRQSMOfWDx0hCiFIFQHVNkWktXG2
	5Qq0UJ+P2stjmHVqdV1Bb/w413IJpNitJlsX1XvOXZzF6DpuOFxQtKGH2iHqKP5Yj6ok
	bXkXhfY0ZMow9fVepCU1HJPgIaPg28NHoVG5CzpcaCdJlFXjfgYHxwRwDGjgYukDZ7r+
	OEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=1Hdlm3kalu4XSZnFt7BFUfeNZHqqnawBjXRAsrg6PuE=;
	b=b+/5iZTnwAqNpwQI/FHXwE24P6ObDdODBpUgBctjARN3AaYqZPYhNUmCAuConOfnAB
	Mj+NTqs0hvucvWIsH6tYKSI/SILtIKHRNG9tfcf9ERQhYzaBG/ljpXGaQyXuWoR5ij3L
	DO49X30YGhPZPPqAQO1+rvOEjSSwFaYJV3RKL9E3O5MdTQyaGAbpmwDVwdvHLfDj/9eE
	jz0P/Xgv7vkAhEyDyoeGhZ9IOxFCEIw2LOhkdY3sgrLQso8/6yIaKKeKcAg2hC0UtAi8
	k34CzlKxTPBRJL3iUGayjPu7xGWnXD8+Os6+9fkt6ZisGF1p3XKQQNpe2hkETxtr81gU
	iXKw==
X-Gm-Message-State: AD7BkJISHTljb/Eut38ferIsP9LxwqGxMjrbeN7Uoiwp4h9kzB7fzZKqCVE8HsqwGOFvoRw8SNk52mt3Zl4L4g==
MIME-Version: 1.0
X-Received: by 10.31.54.75 with SMTP id d72mr17800628vka.30.1457325682748;
	Sun, 06 Mar 2016 20:41:22 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Sun, 6 Mar 2016 20:41:22 -0800 (PST)
In-Reply-To: <CAMKF1sp+j53gMh_uVeqpL+TYFyy75NuRhoQXnaYhKMey8rMekA@mail.gmail.com>
References: <CALLyC8QD3TtxYCHX+UkwqmSVfzu02y8=GZmc0G8FdO8Rm22pbQ@mail.gmail.com>
	<CAMKF1sp+j53gMh_uVeqpL+TYFyy75NuRhoQXnaYhKMey8rMekA@mail.gmail.com>
Date: Mon, 7 Mar 2016 10:11:22 +0530
Message-ID: <CALLyC8Snqok9bd7cgww+La5mK3E2Q54weJvy_eRFCxKP9zzPjA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Which package provides reboot.target and shudown.target
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
X-List-Received-Date: Mon, 07 Mar 2016 04:41:28 -0000
Content-Type: multipart/alternative; boundary=001a11430a1ea471eb052d6e1350

--001a11430a1ea471eb052d6e1350
Content-Type: text/plain; charset=UTF-8

HI,
    Thanks for your help, Does  "reboot.target" comes form any package or
we have to manually write those service/target files .

Thanks and regards
   Vivek

On Sat, Mar 5, 2016 at 5:02 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Mar 4, 2016 at 5:25 PM, Vivek Per <pervivek@gmail.com> wrote:
> > Hi,
> >                I am using systemd in my target, Currently I am using
> "reboot
> > -f" to reboot the system, i don't want to reboot like that. I am not
> able to
> > reboot my system by simply using "reboot" , because I am using systemd
> not
> > sysvinit. In sysvinit it internally calls "telinit" (or) "shutdown" with
> > runlevels(0-6) , But both are absent in my case . I am using reboot
> command
> > form "busybox". I dont know whether "reboot" command is provided from any
> > other package. Can any one suggest me how can i use just "reboot" to
> reboot
> > my system. I am using Yocto build setup (poky 1.7) for this.
> >    I found that systemd provides some runlevels similar to sysvinit  as
> > given below
> > https://www.freedesktop.org/software/systemd/man/systemd.special.html
> >  Does any one can tell which recipe provides these target files. Any
> help is
> > appreciated .
>
> user systemctl reboot
>
> >
> >
> > Thanks and Regards
> >    Vivek
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11430a1ea471eb052d6e1350
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI,<div>=C2=A0 =C2=A0 Thanks for your help, Does =C2=A0&qu=
ot;reboot.target&quot; comes form any package or we have to manually write =
those service/target files .=C2=A0</div><div><br></div><div>Thanks and rega=
rds</div><div>=C2=A0 =C2=A0Vivek</div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Sat, Mar 5, 2016 at 5:02 AM, Khem Raj <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Fri, Mar 4, 2016 at 5:25 PM, Vivek Per &lt;<a href=3D"mailt=
o:pervivek@gmail.com">pervivek@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I am using syst=
emd in my target, Currently I am using &quot;reboot<br>
&gt; -f&quot; to reboot the system, i don&#39;t want to reboot like that. I=
 am not able to<br>
&gt; reboot my system by simply using &quot;reboot&quot; , because I am usi=
ng systemd not<br>
&gt; sysvinit. In sysvinit it internally calls &quot;telinit&quot; (or) &qu=
ot;shutdown&quot; with<br>
&gt; runlevels(0-6) , But both are absent in my case . I am using reboot co=
mmand<br>
&gt; form &quot;busybox&quot;. I dont know whether &quot;reboot&quot; comma=
nd is provided from any<br>
&gt; other package. Can any one suggest me how can i use just &quot;reboot&=
quot; to reboot<br>
&gt; my system. I am using Yocto build setup (poky 1.7) for this.<br>
&gt;=C2=A0 =C2=A0 I found that systemd provides some runlevels similar to s=
ysvinit=C2=A0 as<br>
&gt; given below<br>
&gt; <a href=3D"https://www.freedesktop.org/software/systemd/man/systemd.sp=
ecial.html" rel=3D"noreferrer" target=3D"_blank">https://www.freedesktop.or=
g/software/systemd/man/systemd.special.html</a><br>
&gt;=C2=A0 Does any one can tell which recipe provides these target files. =
Any help is<br>
&gt; appreciated .<br>
<br>
</span>user systemctl reboot<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks and Regards<br>
&gt;=C2=A0 =C2=A0 Vivek<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11430a1ea471eb052d6e1350--
