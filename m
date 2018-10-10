Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8DC5E00A94; Wed, 10 Oct 2018 13:03:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A0BBE003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:03:34 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id x4so5233533otg.3
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tj/lACpstxuucRG8OeJXfyoG2Wi4Hmpdlo2NKKamkyk=;
	b=qSuQflMZ0HApRtLbmSxClnnBQ8slfwOYnsiKX9/OTltnuEp2ywDPtTGafYu00VG9P3
	G5dX4zIHPC3qW5fhWUBJl0GHEmu8tN3MEXIxK3QZQkmnogtdHJ/vSLMaF1UJxSCGQ54i
	89ENIkrIGl5qv8HjerqgCUQyUOK6TnuWqV7TkUEH/ekbgU0VncEaaLyv1u75mH1nT7Ee
	9HIe2kAuXjlBaRax1TOGLymYflNzAUsQUhoZHYrtRnz99MHaKtqsJ+Xq2+LSTR2t10uq
	MTEp335J0R+bRWGMcMHmx0EoPLzVZAl95vlr0S+ZN/1FBsbv8aVv4lf7bpnckllg++qg
	4cyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tj/lACpstxuucRG8OeJXfyoG2Wi4Hmpdlo2NKKamkyk=;
	b=lCbqfc9CM7nzBkLubn5G/xi3tUyj7OjC6mcu0qlbAMz3UDqr+et1/zOBqA0w2O/Lfq
	k7SZQJV/2l8Nyp5h6X6jzbv8aFHW2Xii8fhdEPY6sPUwKfCspXi4Zqoz2dFP3RiboWSS
	/0KrMYoAa09M2ZQB9DqBu712ewSDPBZNABZD+2NHbeLvenBH3VXAiQv1VVZN0MeNVKe1
	UpGf9/hNfqGdPZbvy9ZZs8HeOH3oP3TKRsu6+xEVpJycJJaVoUsEUUFGbkYLFaVoWlwx
	8HhT/jE7sJzWW/DOc3/8tzPoYzcLbrRn7SJ5uoMYwoS+SKB2LRQz4iPabg4OUwThyxuJ
	viKA==
X-Gm-Message-State: ABuFfogtLUNzlcNFewrop3l60CczVzcwXq3P7zeKAcrYnAYEBKo0VEMu
	sK2yrWk2PQPPkylOxTIr/ez86kKozjRSR/Jevbc=
X-Google-Smtp-Source: ACcGV619btajVAKKiap9CI5yeD+iu8VsrJjA0brVNmEQ+B1p7TdK7/jbrbWBUcuJxHizTjcsBZamLF91g8QlwvEzY4c=
X-Received: by 2002:a9d:1531:: with SMTP id u46mr21852611otf.176.1539201813681;
	Wed, 10 Oct 2018 13:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN1c9D=_LUz98vrW+HmGHsqH_2BL-PrchXcv54sgqY5sHQ@mail.gmail.com>
	<CACKFPN2xQWgyzieWEabhZARtYdfXaD3hk78c9rv77-YGZBCsig@mail.gmail.com>
	<cfa153c0-f5b3-439c-b513-05c9fa0f0ef4@windriver.com>
In-Reply-To: <cfa153c0-f5b3-439c-b513-05c9fa0f0ef4@windriver.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 10 Oct 2018 22:03:23 +0200
Message-ID: <CACKFPN1HNacEhpX0ry-3XjqS07xXgu4vrGj3rmH7n56EhbveZg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: preempt-rt for 4.14.71 fails to build
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
X-List-Received-Date: Wed, 10 Oct 2018 20:03:35 -0000
Content-Type: multipart/alternative; boundary="000000000000579d0a0577e559eb"

--000000000000579d0a0577e559eb
Content-Type: text/plain; charset="UTF-8"

I've already send this to that list a few days ago, but since I didn't got
any reply there I've also asked here in case that someone else shares the
same experience.

Dimitris

On Wed, 10 Oct 2018, 21:48 Bruce Ashfield, <bruce.ashfield@windriver.com>
wrote:

> On 2018-10-10 2:18 PM, Dimitris Tassopoulos wrote:
> > Hi all!
> >
> > I've tried to build the latest preempt-rt kernel from the
> > `v4.14/standard/preempt-rt/base`
> > and it fails to build. These are the hashes I've used:
> >
>
> This should go to the linux-yocto list, since that's where
> people interested in the linux-yocto kernel variants will
> notice it.
>
> In this case, there was a bad merge. If you check the
> preempt-rt branches of 4.14 there's a fix queued, but I
> haven't sent SRCREV updates yet.
>
> Bruce
>
> > ```
> > LINUX_VERSION = "4.14.71"
> > SRCREV_machine = "c37a14708f5b618602f84f83f902346e055824c3"
> > SRCREV_meta = "1fb0b0379fb5883ce5af7485374e3f78ee4272d3"
> > ```
> >
> > And the errors I get are:
> > ```
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
>
> > In function '__rt_mutex_lock':
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:48:
>
> > error: passing argument 3 of 'rt_mutex_fastlock' from incompatible
> > pointer type [-Werror=incompatible-pointer-types]
> >    rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
> >                                                  ^~~~~~~~~~~~~~~~~
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
>
> > note: expected 'struct ww_acquire_ctx *' but argument is of type 'int
> > (*)(struct rt_mutex *, int,  struct hrtimer_sleeper *, enum
> > rtmutex_chainwalk,  struct ww_acquire_ctx *)'
> >   rt_mutex_fastlock(struct rt_mutex *lock, int state,
> >   ^~~~~~~~~~~~~~~~~
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:2:
>
> > error: too few arguments to function 'rt_mutex_fastlock'
> >    rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
> >    ^~~~~~~~~~~~~~~~~
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
>
> > note: declared here
> >   rt_mutex_fastlock(struct rt_mutex *lock, int state,
> >   ^~~~~~~~~~~~~~~~~
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
>
> > In function 'rt_mutex_lock':
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2069:2:
>
> > error: too many arguments to function 'rt_mutex_lock_state'
> >    rt_mutex_lock_state(lock, TASK_UNINTERRUPTIBLE, 0);
> >    ^~~~~~~~~~~~~~~~~~~
> >
> /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2028:20:
>
> > note: declared here
> >   static int __sched rt_mutex_lock_state(struct rt_mutex *lock, int
> state)
> > ```
> >
> > Is there any change that the latest rt44 patches are nor applied?
> >
> > Thanks!
> > Dimitris
> >
> >
>
>

--000000000000579d0a0577e559eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I&#39;ve already send this to that list a few days a=
go, but since I didn&#39;t got any reply there I&#39;ve also asked here in =
case that someone else shares the same experience.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Dimitris<br><br><div class=3D"gmail_quote" dir=
=3D"auto"><div dir=3D"ltr">On Wed, 10 Oct 2018, 21:48 Bruce Ashfield, &lt;<=
a href=3D"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 2018-10-10 2:18 =
PM, Dimitris Tassopoulos wrote:<br>
&gt; Hi all!<br>
&gt; <br>
&gt; I&#39;ve tried to build the latest preempt-rt kernel from the <br>
&gt; `v4.14/standard/preempt-rt/base`<br>
&gt; and it fails to build. These are the hashes I&#39;ve used:<br>
&gt; <br>
<br>
This should go to the linux-yocto list, since that&#39;s where<br>
people interested in the linux-yocto kernel variants will<br>
notice it.<br>
<br>
In this case, there was a bad merge. If you check the<br>
preempt-rt branches of 4.14 there&#39;s a fix queued, but I<br>
haven&#39;t sent SRCREV updates yet.<br>
<br>
Bruce<br>
<br>
&gt; ```<br>
&gt; LINUX_VERSION =3D &quot;4.14.71&quot;<br>
&gt; SRCREV_machine =3D &quot;c37a14708f5b618602f84f83f902346e055824c3&quot=
;<br>
&gt; SRCREV_meta =3D &quot;1fb0b0379fb5883ce5af7485374e3f78ee4272d3&quot;<b=
r>
&gt; ```<br>
&gt; <br>
&gt; And the errors I get are:<br>
&gt; ```<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c: <br>
&gt; In function &#39;__rt_mutex_lock&#39;:<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:2044:48: <br>
&gt; error: passing argument 3 of &#39;rt_mutex_fastlock&#39; from incompat=
ible <br>
&gt; pointer type [-Werror=3Dincompatible-pointer-types]<br>
&gt;=C2=A0 =C2=A0 rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_sl=
owlock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:1935:1: <br>
&gt; note: expected &#39;struct ww_acquire_ctx *&#39; but argument is of ty=
pe &#39;int <br>
&gt; (*)(struct rt_mutex *, int,=C2=A0 struct hrtimer_sleeper *, enum <br>
&gt; rtmutex_chainwalk,=C2=A0 struct ww_acquire_ctx *)&#39;<br>
&gt;=C2=A0 =C2=A0rt_mutex_fastlock(struct rt_mutex *lock, int state,<br>
&gt;=C2=A0 =C2=A0^~~~~~~~~~~~~~~~~<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:2044:2: <br>
&gt; error: too few arguments to function &#39;rt_mutex_fastlock&#39;<br>
&gt;=C2=A0 =C2=A0 rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_sl=
owlock);<br>
&gt;=C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:1935:1: <br>
&gt; note: declared here<br>
&gt;=C2=A0 =C2=A0rt_mutex_fastlock(struct rt_mutex *lock, int state,<br>
&gt;=C2=A0 =C2=A0^~~~~~~~~~~~~~~~~<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c: <br>
&gt; In function &#39;rt_mutex_lock&#39;:<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:2069:2: <br>
&gt; error: too many arguments to function &#39;rt_mutex_lock_state&#39;<br=
>
&gt;=C2=A0 =C2=A0 rt_mutex_lock_state(lock, TASK_UNINTERRUPTIBLE, 0);<br>
&gt;=C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~<br>
&gt; /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kerne=
l/locking/rtmutex.c:2028:20: <br>
&gt; note: declared here<br>
&gt;=C2=A0 =C2=A0static int __sched rt_mutex_lock_state(struct rt_mutex *lo=
ck, int state)<br>
&gt; ```<br>
&gt; <br>
&gt; Is there any change that the latest rt44 patches are nor applied?<br>
&gt; <br>
&gt; Thanks!<br>
&gt; Dimitris<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div></div></div>

--000000000000579d0a0577e559eb--
