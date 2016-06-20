Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 446D8E008FF; Mon, 20 Jun 2016 11:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,PLING_QUERY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A93E00875
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 11:29:46 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id w1so12402508vka.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 11:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JOZjXioCJ7KKhUbXaGnGlKMmW3wVQUGSvYhVsvRzjdE=;
	b=iVBAsUIkrLlr0moGeGmnvHIECwjhcuZoNQ8jMFVB0g7r+HwaqSnY0F9rUZ2Jgbldi8
	qmVl2x0TaIMiSbH0RYNnfXTDyIBmzxfprqFq8apQg0ISdRbNDNPTz1PS7KCfmJLrut0J
	QS47jpHydd3RaBDydRfrcnknSsx8a4A53BizfRsez9ZApG91j3Oi9OEwvriNoutDmsRg
	0/8uoypipG1O5qIsojWOSciigUuXHhhof2owugdsNVP1goWdTpy8HWCW5nMrWLp/X1lB
	WZMYpbdqvFBRN6cGRWCJODgBap7PVdRhrxEequCk7uyZeurbZCl7aI0J3YP4p0ABILHN
	8rzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JOZjXioCJ7KKhUbXaGnGlKMmW3wVQUGSvYhVsvRzjdE=;
	b=S4VR5lFC0T+LkbNpVNDwGgqfjFXH/+e4HgOiVc1EhpDS2gwEP5DDzQtkusCOsmS84z
	6H2SKeLwSm3Xu5oqL241AlDfMwTMRUDSta4gTNizjVEZd862g1HE20LfDt3iP8GsTYQK
	oKCPSfzF0Uq5GXh5igM2su1BPGT09YEwo1hHyFqJAIvjeQrZnBhCVOOeD6yFLQTyutbB
	8XP/2Q7m9OK5Z2+I5x1z2ULAyWGSjXhhzxJgTAM0rW3C62voKhn1/ds7YayiIYCdnNRC
	z0nuuft9FWXXdmvfnsf4BYNNyAw9DMBi4qLoDz6Q8KrDBm418OMKUtj3BMwJ3rv02Ict
	WSqw==
X-Gm-Message-State: ALyK8tIMQ5Hj0cFFEBneA4oOzeK4GvKxe/9yLel0LhNkCuczVTg/riJ0tqI3ZWvIuQbEsfXsEH2JaQ3iJ5/otA==
X-Received: by 10.31.168.138 with SMTP id r132mr7736200vke.8.1466447386248;
	Mon, 20 Jun 2016 11:29:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Mon, 20 Jun 2016 11:29:45 -0700 (PDT)
In-Reply-To: <CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
	<CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 20 Jun 2016 15:29:45 -0300
Message-ID: <CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Mon, 20 Jun 2016 18:29:49 -0000
Content-Type: multipart/alternative; boundary=001a11415f808a0b380535b9e36a

--001a11415f808a0b380535b9e36a
Content-Type: text/plain; charset=UTF-8

Thank you Khem!!

Regards,

2016-06-20 15:02 GMT-03:00 Khem Raj <raj.khem@gmail.com>:

> On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com> wrote:
> > Hi everybody..
> >
> > I've been playing with python extensions. Now I want to compile a simple
> > hello world extension
> > to my Yocto's target, but I really can't find any good resource about
> doing
> > it. So what is the teory behind it?
> >
> > I know that I need python headers "Python.h and others" and that I need
> > distutils installed. After that everything is done by distutils and
> setup.py
> > script, but what is done is a mistery. I found distutilscross on internet
> > but no documentation about it!?
> >
> > How are python extensions cross-compiled by Yocto? Can somebody point me
> an
> > example?!
>
> take a look at meta-python.
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-python
>
> You might find some examples close to what you are looking for.
>
> >
> > Regards,
> >
> > --
> > "Do or do not. There is no try"
> >   Yoda Master
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11415f808a0b380535b9e36a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Khem!!<br><br></div>Regards,<br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-06-20 15:02 GMT-0=
3:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">On Mon, Jun 20, 2016 at 10:44 AM, Daniel. &lt;<=
a href=3D"mailto:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt; wrote=
:<br>
&gt; Hi everybody..<br>
&gt;<br>
&gt; I&#39;ve been playing with python extensions. Now I want to compile a =
simple<br>
&gt; hello world extension<br>
&gt; to my Yocto&#39;s target, but I really can&#39;t find any good resourc=
e about doing<br>
&gt; it. So what is the teory behind it?<br>
&gt;<br>
&gt; I know that I need python headers &quot;Python.h and others&quot; and =
that I need<br>
&gt; distutils installed. After that everything is done by distutils and se=
tup.py<br>
&gt; script, but what is done is a mistery. I found distutilscross on inter=
net<br>
&gt; but no documentation about it!?<br>
&gt;<br>
&gt; How are python extensions cross-compiled by Yocto? Can somebody point =
me an<br>
&gt; example?!<br>
<br>
</span>take a look at meta-python.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-python"=
 rel=3D"noreferrer" target=3D"_blank">http://cgit.openembedded.org/meta-ope=
nembedded/tree/meta-python</a><br>
<br>
You might find some examples close to what you are looking for.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Do or do not. There is no try&quot;<br>
&gt;=C2=A0 =C2=A0Yoda Master<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text=
-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0=
 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a11415f808a0b380535b9e36a--
