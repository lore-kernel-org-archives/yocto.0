Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 017CBE00953; Thu,  6 Sep 2018 13:19:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 611C2E00939
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 13:19:07 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id c190-v6so23032999oig.6
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 13:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=H6jWlRZdVX31IzHn25q9Jh5ZCyp0WdcSlValSy69lMQ=;
	b=cJ0EA8tj4pDZObabQo6MsTw5vC9TMIOE97235G+EdtFMDklOIdMiLKvvbbisOMNE+P
	UdrgVb505Y0dGClN1I/Pwc38B+XUeKjOj0RWXbpAhVfuLDIMkuI2DcK+l2zaYpoWOPTv
	t682Oat2/MxzqVdLG+H+rYtTPLdjEIhEfITgx5f4SNqd//3fTddsMwPltkKBim0ASjAT
	MRf5g7pXlfAhnQ5DbfRt5PbfZf9kCQpEGA99z+HV7gvLVp87gzuF7dDDGgeOVc6rxM2A
	mtKdKbZd6w1q9mJXdlxyGrygwnKfuousQSSh+90bpF6iYqsyH79mXWG2XuARgY0g3QIx
	naOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=H6jWlRZdVX31IzHn25q9Jh5ZCyp0WdcSlValSy69lMQ=;
	b=evhXylzgusPnvS5s14IUc7z085D+tFE/bzCJIjR4YpoLiRa1yQyflYYcm7J9yjBAQl
	PJ/jW2q5+Hfvg3Q7b+2wgj7nx+6PUDa7Zhd+VqL8z0FoEyUOG2tUBZONK7wpGnNrU+M+
	h6OQKTjrGw4GhLn+1YfvyMPtCwZPEVePt5QU28SiIlpJO6ZwJmLrOecyFTCK40V2pATC
	0cbpXE6mpbYOefpX4GSJ7UFIO9AKPbq/4RuyRK6s8cj+vdtO8n4qJhDI6Yhz/XKxwwoM
	U/VJ06PZ5T0qJY9gNTagS16hVkiMJkp/xpOPHLYMBFAEKNGZzA8L2Ac5/LVnOrjc0uds
	xUeA==
X-Gm-Message-State: APzg51AukcjyKAC/GD0uggo1COcLGREvIihQz51Hboa7JiJhkfoQDiPg
	o3mcmz2dODY35m7QotAOdNGCiFQE8ASi48/VYpo=
X-Google-Smtp-Source: ANB0VdazP4+0AzCgvETpFWw8GDlH+VcifQGleRPr1G/ucTupzgNvUFd1o0asFKPYBYq+KAhxNE/z6mrnEkjuduKI97E=
X-Received: by 2002:aca:b885:: with SMTP id
	i127-v6mr4731221oif.180.1536265146645; 
	Thu, 06 Sep 2018 13:19:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=UHJzm-Kfx_6sBZLAtjxJCChfxKaQtHkoAUCAWt60Xhg@mail.gmail.com>
	<CANNYZj9B75b6rak5_SESjeSiL=vgMkFS82TFdaToKcw73cRvhQ@mail.gmail.com>
In-Reply-To: <CANNYZj9B75b6rak5_SESjeSiL=vgMkFS82TFdaToKcw73cRvhQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 6 Sep 2018 22:18:55 +0200
Message-ID: <CAEhQi8nBCu=wDN3tWTwBKp=qQH38Risa1UdHkAU2gxQKeckwcA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [Question]: do_configure fail if cmake project is making use of ExternalProject
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
X-List-Received-Date: Thu, 06 Sep 2018 20:19:08 -0000
Content-Type: multipart/alternative; boundary="00000000000058cb580575399a60"

--00000000000058cb580575399a60
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your reply. A colleague found

OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"

and it seems to work. Do you have any comment using this?

Br
M=C3=A5ns Zigher

On Thu, Sep 6, 2018, 13:52 Alexander Kanavin <alex.kanavin@gmail.com> wrote=
:

> Sadly, Yocto is not well equippped to deal with projects that download
> stuff from the internet as a part of the build process. I'd say if
> it's just one project, write a separate recipe for it, and build it
> via that. Then install into the original recipe's sysroot or build dir
> as needed, and make sure the project doesn't attempt to download it
> anymore.
>
> Alex
>
> 2018-09-06 13:05 GMT+02:00 M=C3=A5ns Zigher <mans.zigher@gmail.com>:
> > Hi,
> >
> > I have a cmake project that is making use of ExternalProject_Add. The
> > external project will make use of git clone to pull down the project. T=
he
> > problem that I am seeing is that the do_configure will fail because it
> > cannot find git which is not part of the sysroot the reason for git not
> > being part the sysroot is that git-native is included in ASSUME_PROVIDE=
D
> > which prevent me from getting it into the sysroot and when running
> > do_configure it will only look for it in the sysroot and not on the hos=
t
> if
> > I am not mistaken? What would the best way be to proceed to solve this
> > problem?
> >
> > BR
> > M=C3=A5ns Zigher
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--00000000000058cb580575399a60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks f=
or your reply. A colleague found=C2=A0</div><div dir=3D"auto"><span style=
=3D"background-color:rgb(230,255,237);color:rgb(36,41,46);font-family:sfmon=
o-regular,consolas,&quot;liberation mono&quot;,menlo,courier,monospace;font=
-size:12px;white-space:pre-wrap"><br></span></div><div dir=3D"auto">OECMAKE=
_FIND_ROOT_PATH_MODE_PROGRAM =3D &quot;BOTH&quot;</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><font face=3D"sans-serif">and it seems to work. D=
o you have any comment using this?</font></div><div dir=3D"auto"><font face=
=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=3D"sans-serif=
">Br</font></div><div dir=3D"auto"><font face=3D"sans-serif">M=C3=A5ns Zigh=
er</font></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Sep 6, 2018, 13:52 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Sadly, Yocto is not well equippped to deal with projects that=
 download<br>
stuff from the internet as a part of the build process. I&#39;d say if<br>
it&#39;s just one project, write a separate recipe for it, and build it<br>
via that. Then install into the original recipe&#39;s sysroot or build dir<=
br>
as needed, and make sure the project doesn&#39;t attempt to download it<br>
anymore.<br>
<br>
Alex<br>
<br>
2018-09-06 13:05 GMT+02:00 M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.zigh=
er@gmail.com" target=3D"_blank" rel=3D"noreferrer">mans.zigher@gmail.com</a=
>&gt;:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have a cmake project that is making use of ExternalProject_Add. The<=
br>
&gt; external project will make use of git clone to pull down the project. =
The<br>
&gt; problem that I am seeing is that the do_configure will fail because it=
<br>
&gt; cannot find git which is not part of the sysroot the reason for git no=
t<br>
&gt; being part the sysroot is that git-native is included in ASSUME_PROVID=
ED<br>
&gt; which prevent me from getting it into the sysroot and when running<br>
&gt; do_configure it will only look for it in the sysroot and not on the ho=
st if<br>
&gt; I am not mistaken? What would the best way be to proceed to solve this=
<br>
&gt; problem?<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nor=
eferrer">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
&gt;<br>
</blockquote></div>

--00000000000058cb580575399a60--
