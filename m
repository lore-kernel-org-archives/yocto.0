Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 362ABC433EF
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 21:14:03 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web12.2563.1635369241622628565
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 14:14:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g5sFkjZg;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id bk35so3828557qkb.6;
        Wed, 27 Oct 2021 14:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kPspNmADcxysKSnCNNS7CkUj4EZDxdvV0fG7WybglPk=;
        b=g5sFkjZghsNanPd5bKX2Lwo6UyiPrk6mKQeAQNafmoCSOmc1hgdrxgufIWfs/6EiF3
         hl3g4eFISXPGWwyG3TPHR0WEPUO37qkOrSdr2X6+cALwtpe4jdqL9dMgf5KwNSoLy6PB
         LBVVVnqnAusA8EkLJA1H5Lwe5X86cM3MkNNKtsOHKgW/5FSAbBHwWsvAFCz3d9f3mqBm
         irrQYwkhevf9EorWbZfnceF0b1LtkIHQ6qoEcPsv5XadFzQBRA9S5H5+FGuSJ74HKX/y
         SAfylSFYx9Ia0KIfS/7SqZilMh1AfUcrnuqiD9TKL8HpaxRmnSeCoUgJgDbsi5glrBfE
         NMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kPspNmADcxysKSnCNNS7CkUj4EZDxdvV0fG7WybglPk=;
        b=2JDIURdAbkJYMhcgSOHaS4ExZiMOuiAy2H5TF9SWaMk2lR4dIeoVm8fFC1tP2CRKDa
         V8Nt6xqvx4p3DZMsaPAEknpBnVuSuaUPkto8vbMG1bSO79W/SVIEw/ohwQKyjMa8iFl2
         exFj6XSPSEl6pFmGcScVmGQ0zBEK7yytvWRzJF66JRLMj+ikgUnKl817p/wsLt6nZ5pn
         I6srauREM4qC4eKtmLOG1tYXH90buV0H/mhvHgRy7+ZaA5EePkkchSmCTC8oaF6JMLRy
         wqC94SGdPRYMAh3GRbzOWodr6qZJVrVxd/jIvYAieupkVuUbFw4w6YRHh37YSXzoNgsD
         9eoQ==
X-Gm-Message-State: AOAM5329CQxu/nuAEmWGBeQ3gxTNw6CpOPDJPMyYQdDT+EAC6oMcwqvG
	ixlTHl6sLG+fRuTrG+kSSD2FZQK/wR/blJ0N+2k=
X-Google-Smtp-Source: 
 ABdhPJxHEm33C1RZ0y2Lb54MXwrL7cR//n/QqHekCpzVWUF2JISLNlWhrLTLkWFXw/HsH9BBSnUonQxWR/EbL5CyVzU=
X-Received: by 2002:ae9:dc84:: with SMTP id q126mr269806qkf.128.1635369240775;
 Wed, 27 Oct 2021 14:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <01f601d7cb20$b3551a90$19ff4fb0$@codeaurora.org>
 <db2f4384600521faa4aeb18151b343e925038087.camel@linuxfoundation.org>
In-Reply-To: 
 <db2f4384600521faa4aeb18151b343e925038087.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Oct 2021 14:13:50 -0700
Message-ID: 
 <CAMKF1soFP=2edmZXtO8Y1pM0HJhHA5djTY3kNLhO-a56n4ATSA@mail.gmail.com>
Subject: Re: [Automated-testing] BusyBox pTest failure
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: automated-testing@lists.yoctoproject.org, rpaluri@codeaurora.org,
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ac524805cf5c12c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 21:14:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55179

--000000000000ac524805cf5c12c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 27, 2021 at 1:40 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2021-10-27 at 16:22 +0530, rpaluri@codeaurora.org wrote:
> > Hi,
> >     We are executing busybox pTests and we see that the test case
> execution
> > stops at md5sum test case.
> > We analyzed and see that the execution gets stuck here at Line no 29.
> >
> > Below are the relevant code lines:
> > Line no. 28: text=3D"The quick brown fox jumps over the lazy dog"
> > Line no. 29: text=3D`yes "$text" | head -c 9999`
> >
> > I executed above two lines on my host machine and the I get the shell
> prompt
> > back but when executed on target machine, I=E2=80=99m not getting the s=
hell
> prompt, it
> > gets stuck.
> > /usr/lib/busybox/ptest # text=3D"The quick brown fox jumps over the laz=
y
> dog"
> > /usr/lib/busybox/ptest # text=3D`yes =E2=80=9C$text=E2=80=9D | head -c =
9999`
> > <<get stuck here indefinitely and I don=E2=80=99t get the shell prompt>=
>
> >
> > I modified Line no. 29 as below (removed =E2=80=9C around $text) and th=
e test
> case
> > execution proceeds further with =E2=80=9Cyes: Broken Pipe=E2=80=9D erro=
r. With the same
> > modification, I don=E2=80=99t see this error on my host machine though.
> > Line no. 29: text=3D`yes $text | head -c 9999`
> >
> > /usr/lib/busybox/ptest # text=3D"The quick brown fox jumps over the laz=
y
> dog"
> > /usr/lib/busybox/ptest # text=3D`yes $text | head -c 9999`
> > yes: Broken pipe
> >
> > My host machine uses Bash as my default shell where as my target uses
> busybox
> > sh as my default shell. Does this make any difference?
> > Any pointers on this will be appreciated.
> >
>
> The shell the test is run under could make a difference, it is probably
> supposed
> to be running under busybox's own sh. I think we put the busybox utils
> into PATH
> in the ptest to try and ensure this is the case but you'd have to double
> check
> that.
>
> It seems odd you're hitting that as I'd assume we run the busybox ptests
> ourselves and don't see a hang...
>

It=E2=80=99s also good to post your build configuration that bitbake prints=
 at the
beginning of build this could also be other policies like default libc
being musl vs glibc is in play etc


> Cheers,
>
> Richard
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#971):
> https://lists.yoctoproject.org/g/automated-testing/message/971
> Mute This Topic: https://lists.yoctoproject.org/mt/86624536/1997914
> Group Owner: automated-testing+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/automated-testing/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ac524805cf5c12c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 27, 2021 at 1:40 PM Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, 2021-=
10-27 at 16:22 +0530, <a href=3D"mailto:rpaluri@codeaurora.org" target=3D"_=
blank">rpaluri@codeaurora.org</a> wrote:<br>
&gt; Hi, <br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0We are executing busybox pTests and we see tha=
t the test case execution<br>
&gt; stops at md5sum test case.<br>
&gt; We analyzed and see that the execution gets stuck here at Line no 29.<=
br>
&gt; =C2=A0<br>
&gt; Below are the relevant code lines:<br>
&gt; Line no. 28: text=3D&quot;The quick brown fox jumps over the lazy dog&=
quot;<br>
&gt; Line no. 29: text=3D`yes &quot;$text&quot; | head -c 9999`<br>
&gt; =C2=A0<br>
&gt; I executed above two lines on my host machine and the I get the shell =
prompt<br>
&gt; back but when executed on target machine, I=E2=80=99m not getting the =
shell prompt, it<br>
&gt; gets stuck.<br>
&gt; /usr/lib/busybox/ptest # text=3D&quot;The quick brown fox jumps over t=
he lazy dog&quot;<br>
&gt; /usr/lib/busybox/ptest # text=3D`yes =E2=80=9C$text=E2=80=9D | head -c=
 9999`<br>
&gt; &lt;&lt;get stuck here indefinitely and I don=E2=80=99t get the shell =
prompt&gt;&gt;<br>
&gt; =C2=A0<br>
&gt; I modified Line no. 29 as below (removed =E2=80=9C around $text) and t=
he test case<br>
&gt; execution proceeds further with =E2=80=9Cyes: Broken Pipe=E2=80=9D err=
or. With the same<br>
&gt; modification, I don=E2=80=99t see this error on my host machine though=
.<br>
&gt; Line no. 29: text=3D`yes $text | head -c 9999`<br>
&gt; =C2=A0<br>
&gt; /usr/lib/busybox/ptest # text=3D&quot;The quick brown fox jumps over t=
he lazy dog&quot;<br>
&gt; /usr/lib/busybox/ptest # text=3D`yes $text | head -c 9999`<br>
&gt; yes: Broken pipe<br>
&gt; =C2=A0<br>
&gt; My host machine uses Bash as my default shell where as my target uses =
busybox<br>
&gt; sh as my default shell. Does this make any difference?<br>
&gt; Any pointers on this will be appreciated.<br>
&gt; <br>
<br>
The shell the test is run under could make a difference, it is probably sup=
posed<br>
to be running under busybox&#39;s own sh. I think we put the busybox utils =
into PATH<br>
in the ptest to try and ensure this is the case but you&#39;d have to doubl=
e check<br>
that.<br>
<br>
It seems odd you&#39;re hitting that as I&#39;d assume we run the busybox p=
tests<br>
ourselves and don&#39;t see a hang...<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">It=E2=80=99s als=
o good to post your build configuration that bitbake prints at the beginnin=
g of build this could also be other policies like default libc being musl v=
s glibc is in play etc=C2=A0</div><div dir=3D"auto"><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#971): <a href=3D"https://lists.yoctoproject.org/g/autom=
ated-testing/message/971" rel=3D"noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/automated-testing/message/971</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86624536/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86624536/1997914</a><br>
Group Owner: <a href=3D"mailto:automated-testing%2Bowner@lists.yoctoproject=
.org" target=3D"_blank">automated-testing+owner@lists.yoctoproject.org</a><=
br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/automated-testing/=
unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
g/automated-testing/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ac524805cf5c12c9--

