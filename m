Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1945.1792701473142198244
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 13:37:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=iJpng7wU;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-8ac525c1f05so2605017b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 13:37:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792701472; cv=none;
        d=google.com; s=arc-20260327;
        b=WqGl3OxWKMstqX98y0nVpl6eNWMz2rpwNAcamIkFhaUQtwVczIyRgmQESqZAc2x2Ro
         L6k9DERYPywAKXf9EoK/U/zRYMjOzWCWI2LRGHlKufVqAl8jQY4ZXjWN1gLwvbNRMa/u
         5NthmqxkAxpShTtrbm3Amok3HfpqX6ZWpoaCIuAB854OQdRYlX1R1KdVUpIZhUMVVItP
         TUZtBFXcM5+baWrUYt4jc24cPyCkpPj4TU1nMxFVCFyLBNkdf4spWB/EGomCORPWBdkY
         HuKeW5+oYgtdb1oUqHURsAMRaWFPpomlsessmPDWacaY476mgZWKG6gpdnLJUBup/3P0
         CkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=htnvi3q+qD3dv99lh1ZRQIQoOpAHZTFyPrQv/szsvHE=;
        fh=6bGGp8up+aDiq2s1yQpl+/xwlBgSdV6JJvGfvQrmisc=;
        b=BfclIGgbSDNiPSgnWpcXDbUkFiazfnrrc0kEMIZE9jCGXfHZ2qLVMdSz2IW2bBvGLU
         n8vj6o0GBCeLYSxo4KlXAnzP+o4mBzaqDGdYlPkknorctQTIQmz5/suip2gTvfkD6Ecy
         R0cFP0YCwcO33nGrjpqsSySHv5YsDTIq0qYznOW8QTN2b/a1azGHWYFwNpEu1lJy+nM+
         hYX22vqMmM2f/fAg+RbaUfdXAve+WQW9M+6qToc9BwXj4+HVXQFjwRlcY6yLB4jOOx5v
         lB7g0rG6aFsKk7a76L13jC1XeYvXjDw9WjO/SbnyIqYWtXUMa3DDAUaYE696tt5UgtEv
         J6oA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792701472; x=1793306272; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=htnvi3q+qD3dv99lh1ZRQIQoOpAHZTFyPrQv/szsvHE=;
        b=iJpng7wUZiPPAzKq+AjpnbwzQHOOBFyDW1tJWIpnoCfrvS2hX+axU8TFhn5Xgcwr7k
         9Pe8eTiVF3E49hBPHoiOTRJxn5Zpvy8FMkPRI/Xa7i4GtRuJJuR0Ak/x1rXgOPmR6etY
         7P+y5oqyxQ4rRZvu7CMFxW/WRr0HZiODkOglm9AY76QP2J397JeaV5YFoBGURmrvLOAn
         74wc6W7sW9hW9Ns5d5/UOP6rex4W9G/dkx+BhfY0sf+T51tDB480V/y7qqMNPyTOGKne
         tZ+sLp8ueK9pHwWaCRF8aJXpS9LNFbshqMuQN9jWiOtTPsfekGpbZ3A6byJcZoSXMzF4
         aIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792701472; x=1793306272;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=htnvi3q+qD3dv99lh1ZRQIQoOpAHZTFyPrQv/szsvHE=;
        b=VlCqEYYT+w2VFSVLEFlda/Khfl9cX8tQ4h0zdgiVvOXZPKyGvqjKf82OYUfInFDuYZ
         55MCdJwTujqXxMyesL1VQbspaA0LBn/VwH7Mro6mNcHTrUpFjTlc7IJSmFGL79PwJl0l
         moPx+5UwzirBkBAu2ytqs9TIrPZUjFn4T7BlinCWB/eFBNqeap5okFEhiuU+9sq1mAwx
         n0XpnKTOkrez8Czwj1Z2ybsUbXS1m28dbF9RnIPehAuZz2cP9r/7XaV/7Pxmro8wjIwr
         lSQBTNhjRPhfpvQsmYFCCFxjN7s4NUUMLLELJ70KlhcuCH/lRKNB6YQkObFo5x6RhWeD
         v49g==
X-Gm-Message-State: AFq9FYKwarQnWdfV8ibNiZRZ+j+xumJyRW/zhRLVhGrbApIE2hpCBFAW
	hckHf/Pblgh6SIu0Jct4yEgf0+ofvehd6lVmwOoj0IyVfssHBrOkZUL/CLqmbJa6LaNFj8/WCqe
	X6gtHYnd49u8Zh/RhZBK2qfphi1pIyWldmhTd5F6m8Q==
X-Gm-Gg: AYBFou2YHaLKRbj+zUqRWl45wmQpjclZ7UjR85wMT9VOSwYWZWDm9VnxsdzUTtyAZDQ
	M9mLXJa8HvaVn4IugqqPBLOKHfZ8e1pLwcds48BQLDpHlFEMqv7n4TDHY+otF1c1N9hzoMblAoi
	DE5jFDbZ/Jsns5A+tMW40sRoPyFc60X/pJQY1lI1+/8WoG/1nPGQGE3Tsw+SZnoO/aR+cWxEKW8
	ZDExlvQJ/dfpfn8UwEOUcTPG6CqE12GD1b3qPJ7Wz04HMaJeUzrRx7D4ZXhRUScbS2enELxVAeZ
	PaE3x+edHAT4spGmImvpxnRVVN5JKrW9+ZBrZP6HrC8Ovji5PJIg9n7ZY4R8TpW1FkEROkmEIHv
	0OWPw152JYXSX8Bdv9NLRUB+O/7vo4XruS3yogV2TvEMnrx6QHIOmt+Laf53NM5hFGbtUqH6268
	FWRYOHMDe7a+AsRcWO0X3qOyjYaRvMgWHi0f/s1Q1Bzf7253zZUB+Jsui17hClrSaVYwxZmuzBE
	Jr3zx4D8nqNzPeVFc76UPVDi5qWkpTz3/vF0gY2uplpvRqC9FTubrbeuYqmjtwzHrneENfVNQUa
	tjw0CGhr81v/fNMAtcoU0lJL07ixlPEM4lIAqySPq7pNGoo0qrBxo21IeY2dq99z
X-Received: by 2002:a05:690c:f87:b0:8b0:a176:fa5b with SMTP id
 00721157ae682-8b157e0fd99mr1336247b3.64.1792701471838; Thu, 22 Oct 2026
 13:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
 <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
 <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
 <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM>
 <fbee9a7aecebbf87ce34560d6e097e16fb5b20e9.camel@siemens.com>
In-Reply-To: <fbee9a7aecebbf87ce34560d6e097e16fb5b20e9.camel@siemens.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Oct 2026 13:37:25 -0700
X-Gm-Features: AclHuK9bJb506t6NHZKGEZifZMwsipVPAd8uAMwpX0BFw9mnrGBgYvwnb1sZ5sE
Message-ID: <CAMKF1soAKNqtrd29vRSx7bEvN=JC-2idUiX8_LZghd_W91fDyQ@mail.gmail.com>
Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits e500v2 tuning
To: yocto@lists.yoctoproject.org, adrian.freihofer@siemens.com
Cc: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
Content-Type: multipart/alternative; boundary="0000000000006ad664065e73d63e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 20:37:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66784

--0000000000006ad664065e73d63e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 22, 2026 at 2:27=E2=80=AFAM Adrian Freihofer via lists.yoctopro=
ject.org
<adrian.freihofer=3Dsiemens.com@lists.yoctoproject.org> wrote:

> On Thu, 2026-10-22 at 08:21 +0000, Marko, Peter (FT D EU SK BFS1)
> wrote:
> >
> >
> > > -----Original Message-----
> > > From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
> > > Sent: Wednesday, October 21, 2026 5:02 PM
> > > To: Marko, Peter (FT D EU SK BFS1) <Peter.Marko@siemens.com>
> > > Cc: Freihofer, Adrian (SI B PRO TI EAC CCP)
> > > <adrian.freihofer@siemens.com>;
> > > yocto <yocto@lists.yoctoproject.org>
> > > Subject: Re: Issues and questions regarding PowerPC 32-bits e500v2
> > > tuning
> > >
> > > Hello Peter,
> > >
> > > ----- Original Message -----
> > > > From: "peter marko" <Peter.Marko@siemens.com>
> > > > To: "Elinor Montmasson" <elinor.montmasson@savoirfairelinux.com>,
> > > > "adrian
> > > freihofer" <adrian.freihofer@siemens.com>
> > > > Cc: "yocto" <yocto@lists.yoctoproject.org>
> > > > Sent: Wednesday, 21 October, 2026 15:50:22
> > > > Subject: RE: Issues and questions regarding PowerPC 32-bits
> > > > e500v2 tuning
> > >
> > > > Hello Elinor,
> > > >
> > > > I have already checked SPE on e500 before and can confirm that it
> > > > needs to be
> > > > disabled in favor of soft-fpu with newer GCC versions.
> > > > It of course dramatically decreases performance, but what can we
> > > > do...
> > > >
> > > > As usual with Yocto, only the default settings are being tested
> > > > and untested
> > > > features slowly bit rot by time.
> > > > For now, we don't plan to extend our pipeline to all possible
> > > > tunes/variations.
> > > > So ideally, you should send patches to fix your tune
> > > > configuration and spin a
> > > > regular local pipeline with Yocto master to catch if it would
> > > > break again.
> > > >
> > > > Best Regards,
> > > >  Peter
> > >
> > > Ok, thank you for your answer, at least it confirms my analysis.
> > >
> > > Because GCC is not an option for SPE support, I am considering
> > > using
> > > the LLVM/Clang toolchain through meta-clang, as it seems to support
> > > PowerPC SPE.
> > > I know that some specific recipes will require building with GCC
> > > anyway,
> > > in that case fpu-soft will be enabled, but most of the distribution
> > > could build with clang.
> > >
> > > Is it something you have tested?
> >
> > This is an interesting idea well worth trying, but afaik we have not
> > tried that.
> > Note that I was only involved in discussions with other projects, I
> > personally have never built/used e500.
>
> Hi Elinor
>
> I remember the times when I was working with a MPC5200. Quite a few
> years ago :-).
>
> If you can mix binaries built with different floating point
> implementations depends on the details of the CPU architecture, at
> least. We had some discussions related to ARM 32 a few years ago. I
> just remember that "it depends on the details".
>
> With wrynose there is now a TOOLCHAIN variable which can be set to
> clang globally. But it depends on what you need if a build without gcc
> is possible or not. For example, there is a patchset which fixes glibc
> for building with clang (around 50 patches from ARM) somewhere around.
> With musl it should work as well. Not sure this would allow you to go
> with clang only for your use case.
>
> There are also some discussions with maintaining some LTS branches like
> dunfell for longer than 4 years unofficially by users who need that.
>
> Just some alternative ideas.
>
>
GCC dropped SPE in 9.1 timeframe, so soft-float is the only option. however
another
issue is that glibc also dropped it starting 2.30 release, so only option
is using musl since
it does support single float (-sf)  abi on ppc.

I added  0019-Re-introduce-spe-commandline-options.patch, back then to keep
qemuppc working, it simply made gcc to accept  -mabi=3Dspe -mspe
-mfloat-gprs=3Ddouble
which are passed from tune-ppce500v2.inc, it then ignores them and falls
back to
classic hard-float FPU instructions, e500v2 has no classic FPU, so the
binaries crash with SIGILL
is no surprise.  tune-ppce500.inc has the same problem. It has the same spe
feature with
-mfloat-gprs=3Dsingle.
a performance-compromised fix is to make these tunes use fpu-soft and drop
spe

Using clang is not going to work out of box either, while it does support
SPE it does have
some things to take care of e.g. -mfloat-gprs=3Ddouble is not supported. it
also will reject
 linux-gnuspe and linux-muslspe triples that OE uses. it needs something
like  powerpcspe-*-*
or patching llvm sources to do what OE has done in past.

Some recipes with GCC + fpu-soft, the rest with clang + SPE combo has an
ABI problem.
Ordinary calls and returns are compatible, since both pass doubles in pairs
of general registers.
The trouble is mixing the two in one process: a libgcc built for soft-float
sets the FP environment
differently from SPE code.

Dunfell is not a way to keep SPE; only warrior or older is.


> Regards,
> Adrian
>
> >
> > Peter
> >
> > >
> > > Best regards,
> > > Elinor Montmasson
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66780):
> https://lists.yoctoproject.org/g/yocto/message/66780
> Mute This Topic: https://lists.yoctoproject.org/mt/121863659/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006ad664065e73d63e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 22,=
 2026 at 2:27=E2=80=AFAM Adrian Freihofer via <a href=3D"http://lists.yocto=
project.org">lists.yoctoproject.org</a> &lt;adrian.freihofer=3D<a href=3D"m=
ailto:siemens.com@lists.yoctoproject.org">siemens.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>On Thu, 2026-10-22 at 08:21 +0000, Marko, Peter (FT D EU SK BFS1)<br>
wrote:<br>
&gt; <br>
&gt; <br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Elinor Montmasson &lt;<a href=3D"mailto:elinor.montmasson@s=
avoirfairelinux.com" target=3D"_blank">elinor.montmasson@savoirfairelinux.c=
om</a>&gt;<br>
&gt; &gt; Sent: Wednesday, October 21, 2026 5:02 PM<br>
&gt; &gt; To: Marko, Peter (FT D EU SK BFS1) &lt;<a href=3D"mailto:Peter.Ma=
rko@siemens.com" target=3D"_blank">Peter.Marko@siemens.com</a>&gt;<br>
&gt; &gt; Cc: Freihofer, Adrian (SI B PRO TI EAC CCP)<br>
&gt; &gt; &lt;<a href=3D"mailto:adrian.freihofer@siemens.com" target=3D"_bl=
ank">adrian.freihofer@siemens.com</a>&gt;;<br>
&gt; &gt; yocto &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; Subject: Re: Issues and questions regarding PowerPC 32-bits e500v=
2<br>
&gt; &gt; tuning<br>
&gt; &gt; <br>
&gt; &gt; Hello Peter,<br>
&gt; &gt; <br>
&gt; &gt; ----- Original Message -----<br>
&gt; &gt; &gt; From: &quot;peter marko&quot; &lt;<a href=3D"mailto:Peter.Ma=
rko@siemens.com" target=3D"_blank">Peter.Marko@siemens.com</a>&gt;<br>
&gt; &gt; &gt; To: &quot;Elinor Montmasson&quot; &lt;<a href=3D"mailto:elin=
or.montmasson@savoirfairelinux.com" target=3D"_blank">elinor.montmasson@sav=
oirfairelinux.com</a>&gt;,<br>
&gt; &gt; &gt; &quot;adrian<br>
&gt; &gt; freihofer&quot; &lt;<a href=3D"mailto:adrian.freihofer@siemens.co=
m" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
&gt; &gt; &gt; Cc: &quot;yocto&quot; &lt;<a href=3D"mailto:yocto@lists.yoct=
oproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; &gt; Sent: Wednesday, 21 October, 2026 15:50:22<br>
&gt; &gt; &gt; Subject: RE: Issues and questions regarding PowerPC 32-bits<=
br>
&gt; &gt; &gt; e500v2 tuning<br>
&gt; &gt; <br>
&gt; &gt; &gt; Hello Elinor,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I have already checked SPE on e500 before and can confirm th=
at it<br>
&gt; &gt; &gt; needs to be<br>
&gt; &gt; &gt; disabled in favor of soft-fpu with newer GCC versions.<br>
&gt; &gt; &gt; It of course dramatically decreases performance, but what ca=
n we<br>
&gt; &gt; &gt; do...<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; As usual with Yocto, only the default settings are being tes=
ted<br>
&gt; &gt; &gt; and untested<br>
&gt; &gt; &gt; features slowly bit rot by time.<br>
&gt; &gt; &gt; For now, we don&#39;t plan to extend our pipeline to all pos=
sible<br>
&gt; &gt; &gt; tunes/variations.<br>
&gt; &gt; &gt; So ideally, you should send patches to fix your tune<br>
&gt; &gt; &gt; configuration and spin a<br>
&gt; &gt; &gt; regular local pipeline with Yocto master to catch if it woul=
d<br>
&gt; &gt; &gt; break again.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Best Regards,<br>
&gt; &gt; &gt; =C2=A0Peter<br>
&gt; &gt; <br>
&gt; &gt; Ok, thank you for your answer, at least it confirms my analysis.<=
br>
&gt; &gt; <br>
&gt; &gt; Because GCC is not an option for SPE support, I am considering<br=
>
&gt; &gt; using<br>
&gt; &gt; the LLVM/Clang toolchain through meta-clang, as it seems to suppo=
rt<br>
&gt; &gt; PowerPC SPE.<br>
&gt; &gt; I know that some specific recipes will require building with GCC<=
br>
&gt; &gt; anyway,<br>
&gt; &gt; in that case fpu-soft will be enabled, but most of the distributi=
on<br>
&gt; &gt; could build with clang.<br>
&gt; &gt; <br>
&gt; &gt; Is it something you have tested?<br>
&gt; <br>
&gt; This is an interesting idea well worth trying, but afaik we have not<b=
r>
&gt; tried that.<br>
&gt; Note that I was only involved in discussions with other projects, I<br=
>
&gt; personally have never built/used e500.<br>
<br>
Hi Elinor<br>
<br>
I remember the times when I was working with a MPC5200. Quite a few<br>
years ago :-).<br>
<br>
If you can mix binaries built with different floating point<br>
implementations depends on the details of the CPU architecture, at<br>
least. We had some discussions related to ARM 32 a few years ago. I<br>
just remember that &quot;it depends on the details&quot;.<br>
<br>
With wrynose there is now a TOOLCHAIN variable which can be set to<br>
clang globally. But it depends on what you need if a build without gcc<br>
is possible or not. For example, there is a patchset which fixes glibc<br>
for building with clang (around 50 patches from ARM) somewhere around.<br>
With musl it should work as well. Not sure this would allow you to go<br>
with clang only for your use case.<br>
<br>
There are also some discussions with maintaining some LTS branches like<br>
dunfell for longer than 4 years unofficially by users who need that.<br>
<br>
Just some alternative ideas.<br>
<br></blockquote><div><br></div><div>GCC dropped SPE in 9.1 timeframe, so s=
oft-float is the only option. however another</div><div>issue is that glibc=
 also dropped it starting 2.30 release, so only option is using musl since<=
/div><div>it does support single float (-sf)=C2=A0 abi on ppc.</div><div><b=
r></div><div>I added=C2=A0=C2=A00019-Re-introduce-spe-commandline-options.p=
atch, back then to keep</div><div>qemuppc=C2=A0working, it simply made gcc =
to accept=C2=A0=C2=A0-mabi=3Dspe -mspe -mfloat-gprs=3Ddouble</div><div>whic=
h are passed from=C2=A0tune-ppce500v2.inc, it then ignores them and falls b=
ack to</div><div><span style=3D"background-color:transparent">classic hard-=
float FPU instructions,=C2=A0e500v2 has no classic FPU, so the binaries cra=
sh with SIGILL</span></div><div>is no surprise.=C2=A0=C2=A0tune-ppce500.inc=
 has the same problem. It has the same spe feature with</div><div>-mfloat-g=
prs=3Dsingle.<span style=3D"background-color:transparent">=C2=A0</span></di=
v><div><span style=3D"background-color:transparent">a performance-compromis=
ed fix is to make these tunes use fpu-soft and drop spe</span></div><div><s=
pan style=3D"background-color:transparent"><br></span></div><div><span styl=
e=3D"background-color:transparent">Using clang is not going to work out of =
box either, while it does support SPE it does have</span></div><div><span s=
tyle=3D"background-color:transparent">some things to take care of e.g.=C2=
=A0</span><span style=3D"background-color:transparent">-mfloat-gprs=3Ddoubl=
e is not supported. it also will reject</span></div><div>=C2=A0linux-gnuspe=
 and linux-muslspe triples that OE uses. it needs something like=C2=A0=C2=
=A0powerpcspe-*-*</div><div>or patching llvm sources to do what OE has done=
 in past.=C2=A0<span style=3D"background-color:transparent"></span></div><d=
iv><br></div><div>Some recipes with GCC + fpu-soft, the rest with clang + S=
PE combo has an ABI problem.</div><div>Ordinary calls and returns are compa=
tible, since both pass doubles in pairs of general registers.</div><div>The=
 trouble is mixing the two in one process: a libgcc built for soft-float se=
ts the FP environment</div><div>differently from SPE code.</div><div><br></=
div><div>Dunfell is not a way to keep SPE; only warrior or older is.</div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Regards,<=
br>
Adrian<br>
<br>
&gt; <br>
&gt; Peter<br>
&gt; <br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Elinor Montmasson<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66780): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66780" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66780</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/121863659/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/121863659/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000006ad664065e73d63e--
