Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8258.1792765524141579503
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Oct 2026 07:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Q9owReNE;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-8b056d58f2aso8860707b3.2
        for <yocto@lists.yoctoproject.org>; Fri, 23 Oct 2026 07:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792765523; cv=none;
        d=google.com; s=arc-20260327;
        b=kkMfMexDOZnai+tDP9tMeEXxhaALCrAKA/uTo6cnmlNIKeTd9FWlNVlguUjioFFmBW
         ZfEdyy8NcBW5ox2gOXNnq1pc4460QooHU4zQyIFqh2EfZS6Wraocq5wluDoZ0PXDAqlm
         W54ZrRqIyxhrbiIecbGHqOKBlxzFKsms8G1H+qfpexuO46gETP6/mXvKZsNArK59xBXA
         iXwOQ7DtjFNGJslTT3iDlqU7BEyXUkO8L9cAo7xGOEfBkt6EnBDF0QAkRYQFs85QuNhH
         //1n039onrx7Kxl5988Jbs10tOTJU8PK83gzEDrwBPzeUPt0aabRz8eKwVfP4YQtr7b7
         e49w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fcMKZQ+O+28v1mqRKF/EI+quS/uOyogaoAFK6xOBPjY=;
        fh=lJIHZVf3EgChQpsdFgxbNCRSkgRpGvM9iAcwLgASmtM=;
        b=FPTElwjAemcL+r+wI45mf9+3qwO3b87HKa8HCTa0PLRYe1JrSnpGkd8zzKTFl7QaxM
         dsNfhmo9hyq605ndfNAw6wV/dQF8WL5taaTgkOJ1i7tyJp8lrzjqehZmV0DEgLE9MSV9
         cF6fY3rM5ENMYD0zRovi4qt6UhXuFdwJ6HZdyvvEMD87plXdJtZ/beY8YBQif7SPCtgl
         Bzwd4dU7J03iVPS+PZCEYvZGQzaOtpNQ+oB9RkDb/NtXSgIfhjzEgcRel0leclCI7a+v
         UTx+ptEqBJjrIU1+nLy64ZAz2Fp9hBrOCjnFYC1hlpewQqqI1MSZ7jY0hjASrZZPCJUq
         xUkQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792765523; x=1793370323; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fcMKZQ+O+28v1mqRKF/EI+quS/uOyogaoAFK6xOBPjY=;
        b=Q9owReNE1kEOs5tAPfzBYYaKVZr/uCRsPGZAEmu7ocC5XDZFRTdwSr2Five5CPhirR
         ICWhki8n/JxOnpRQOk3YWSEg+R7l5A3FT3u+XE7MYhbPOZYFztuszML55/K22ycolHHL
         8X0GBH/3nsdnS0SLYtR4BkKKnnZNYQPtxyl7VnpfDQAWxz+0eQePu8oKJSMkZlNX29Bt
         zEWsnNTd9bLl6RaZwZacd5ACTGIN9lVVCbIExCj9ofaKgu8LPdBwBVDKJAvn4wZRkK0k
         akg0clr8b7s4sdn/v733pHZoAGw458I4fLRFOuv2ym+w1Bw5pL1e3oaLtGDeHY3MUuCD
         QKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792765523; x=1793370323;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fcMKZQ+O+28v1mqRKF/EI+quS/uOyogaoAFK6xOBPjY=;
        b=M+jMlMVESthq59YmMS1Eqk58+L8JF6/1VmHKrDhD33b3Mf4z5oO53ETouIq5qUqb7V
         XS4r88Y+qShn2n2FMqEhv2pUhT2LUJCRt0qKAoad1Wvk6JOtYZEv3E5O949IoXo3E7lW
         jzoeRAPRDtK5whXgJBQ64t1M+tp576xv7ifartuqXHQ75U1H2tW/QGVfC5q/xRbrf7qc
         xsBSJV/q90wlYWxIYVJSU7OsWx6Nfosdp1t3adVufSWcHu0WhoGxuCTacPSDJPHa5tR+
         yalAEEf09X2zWrH91z9IpKc2aSsu2w9pTcn+BONCTNLqnLuONKO8KvbiI/Vp/F4WsNHk
         14lA==
X-Gm-Message-State: AFq9FYJHr8/F42g3zZRjxyqaGNvmg8IJz+fKa3hVF8IYWuH+QD2dhLQ9
	Sq2VlZpYH/x59UsQvCVH0l61welcwgT/ZZnFsyssmEjmqKN/Z6+QL6lTbno5WgTfYmVcjoa/usI
	11xtCxdm2OuBGSJXKy1UHcBo9LN3J8VE=
X-Gm-Gg: AYBFou2oYtHyKCzFHLY4fWSWmcadcsiE/q8R/EZv5pD2NYmfYs+Dgw/v+ifDjPQqKqV
	/DqR0CVaq/y9g+fa1DMBtcHnQmFQ1mRew7w067hwdDjx3Q1nuapwELYDAaIFQ8n+XeD7j40x0+7
	vxn4gYDzOPnI3zM0Mq1mxS2MEnUp/Z5mlI6ooHRFdjkX+uaytW4L/QwqShvTj2ICFFt2FxwfmUn
	GIUXQn1cYLm9CfB77Fo94qhzP6iBcH/buk0SpB1IvqnDHF41NqNjZebw5cXkvhu+cE7Fle3MNOF
	GA8zsvKLyGHc/bCtS5MVdxV5Hc1M9N00ZrFuepmotu0QR0l2XezMkhuo7Yhl2rbOgudAEfb+ICo
	AeyDHvNpQ2dJz2+B1LXLDyoixVr+wipfxDp7WxPQFGd3ZrZuLmWB3k0NqJh+j71wCz2EDuG8bro
	lAUQQWjKRDPQZq4TkuYYJ3/vKXWyOO5fY11Ak9CB3mVn/e33bnE3RsyQDspAfmJZdPXskxvP9n/
	qepzTKE9lW25TCg6wG6qa/dNNuP61GI6sgbcRMRuUt1maO9BNwFN133u0KrCv2wt9OC4+RFT6Mg
	9AfThZQnwNx8S/6uXbMArYVjbnSeP961NcQCq4+Hc9iR3TCSM/XCloYxQDpU57CKsi7IajyAI1j
	AB92iga0XSWQHSDXbOKGs8w==
X-Received: by 2002:a05:690c:c181:b0:8ab:4989:bcc3 with SMTP id
 00721157ae682-8b157de1f74mr14055327b3.42.1792765522950; Fri, 23 Oct 2026
 07:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
 <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
 <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
 <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM>
 <fbee9a7aecebbf87ce34560d6e097e16fb5b20e9.camel@siemens.com>
 <CAMKF1soAKNqtrd29vRSx7bEvN=JC-2idUiX8_LZghd_W91fDyQ@mail.gmail.com> <2100331131.1179227.1792744062637.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <2100331131.1179227.1792744062637.JavaMail.zimbra@savoirfairelinux.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Oct 2026 07:24:56 -0700
X-Gm-Features: AclHuK8mACSxbHpsdD-P_BjgmpCpD1xr-MObC2tVOT2Ng8lNjZFv6VCX-uHDBI4
Message-ID: <CAMKF1srLZpcUMUcw=NJVPD2eGBhJOYzxLPrTtrv0Cj=f9s47tw@mail.gmail.com>
Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits e500v2 tuning
To: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	adrian freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="0000000000002941b6065e82c029"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Fri, 23 Oct 2026 14:25:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66786

--0000000000002941b6065e82c029
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2026 at 1:27=E2=80=AFAM Elinor Montmasson <
elinor.montmasson@savoirfairelinux.com> wrote:

> ----- Original Message -----
> > From: "Khem Raj" <raj.khem@gmail.com>
> > To: "yocto" <yocto@lists.yoctoproject.org>, "adrian freihofer" <
> adrian.freihofer@siemens.com>
> > Cc: "Elinor Montmasson" <elinor.montmasson@savoirfairelinux.com>
> > Sent: Thursday, 22 October, 2026 22:37:25
> > Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits
> e500v2 tuning
>
> >> On Thu, Oct 22, 2026 at 2:27 AM Adrian Freihofer via [
> >> http://lists.yoctoproject.org/ | lists.yoctoproject.org ]
> <adrian.freihofer=3D [
> >> mailto:siemens.com@lists.yoctoproject.org |
> siemens.com@lists.yoctoproject.org
> >> ] > wrote:
>
> >> Hi Elinor
>
> >> I remember the times when I was working with a MPC5200. Quite a few
> >> years ago :-).
>
> >> If you can mix binaries built with different floating point
> >> implementations depends on the details of the CPU architecture, at
> >> least. We had some discussions related to ARM 32 a few years ago. I
> >> just remember that "it depends on the details".
>
> >> With wrynose there is now a TOOLCHAIN variable which can be set to
> >> clang globally. But it depends on what you need if a build without gcc
> >> is possible or not. For example, there is a patchset which fixes glibc
> >> for building with clang (around 50 patches from ARM) somewhere around.
> >> With musl it should work as well. Not sure this would allow you to go
> >> with clang only for your use case.
>
> >> There are also some discussions with maintaining some LTS branches lik=
e
> >> dunfell for longer than 4 years unofficially by users who need that.
>
> >> Just some alternative ideas.
>
> > GCC dropped SPE in 9.1 timeframe, so soft-float is the only option.
> however
> > another
> > issue is that glibc also dropped it starting 2.30 release, so only
> option is
> > using musl since
> > it does support single float (-sf) abi on ppc.
>
> Yes good point thanks
>
> > I added 0019-Re-introduce-spe-commandline-options.patch, back then to
> keep
> > qemuppc working, it simply made gcc to accept -mabi=3Dspe -mspe
> > -mfloat-gprs=3Ddouble
> > which are passed from tune-ppce500v2.inc, it then ignores them and fall=
s
> back to
> > classic hard-float FPU instructions, e500v2 has no classic FPU, so the
> binaries
> > crash with SIGILL
> > is no surprise. tune-ppce500.inc has the same problem. It has the same
> spe
> > feature with
> > -mfloat-gprs=3Dsingle.
> > a performance-compromised fix is to make these tunes use fpu-soft and
> drop spe
>
> > Using clang is not going to work out of box either, while it does
> support SPE it
> > does have
> > some things to take care of e.g. -mfloat-gprs=3Ddouble is not supported=
.
>
> Do you know if an equivalent option or options exist with clang for this?
> Or if it just not relevant with clang?
>

-mspe for -mfloat-gprs=3Ddouble
-mspe -mefpu2 for -mfloat-gprs=3Dsingle

>
> > it also will reject
> > linux-gnuspe and linux-muslspe triples that OE uses. it needs something
> like
> > powerpcspe-*-*
> > or patching llvm sources to do what OE has done in past.
>
> > Some recipes with GCC + fpu-soft, the rest with clang + SPE combo has a=
n
> ABI
> > problem.
> > Ordinary calls and returns are compatible, since both pass doubles in
> pairs of
> > general registers.
> > The trouble is mixing the two in one process: a libgcc built for
> soft-float sets
> > the FP environment
> > differently from SPE code.
>
> I see
> So does it means that for a given application/process, the floating point
> support (soft or SPE here) must be the same for the runtime used,
> the dynamic libraries used and the application itself,
> to avoid any ABI compatibility problem?
>

yes

>
> In that case, I suppose two compiler runtime may be installed,
> compiled with their respective compiler?
> * libgcc for GCC + fpu-soft compiled programs
> * llvm runtime for clang + SPE compiled programs
>
> But then the ABI compatibility constraint will create complexity for
> compiling and installing shared libraries.
>

right thats what i think too

>
> > Dunfell is not a way to keep SPE; only warrior or older is.
>
>
> Best regards,
> Elinor Montmasson
>

--0000000000002941b6065e82c029
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 23,=
 2026 at 1:27=E2=80=AFAM Elinor Montmasson &lt;<a href=3D"mailto:elinor.mon=
tmasson@savoirfairelinux.com">elinor.montmasson@savoirfairelinux.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">----- O=
riginal Message -----<br>
&gt; From: &quot;Khem Raj&quot; &lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; To: &quot;yocto&quot; &lt;<a href=3D"mailto:yocto@lists.yoctoproject.o=
rg" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;, &quot;adrian fr=
eihofer&quot; &lt;<a href=3D"mailto:adrian.freihofer@siemens.com" target=3D=
"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
&gt; Cc: &quot;Elinor Montmasson&quot; &lt;<a href=3D"mailto:elinor.montmas=
son@savoirfairelinux.com" target=3D"_blank">elinor.montmasson@savoirfaireli=
nux.com</a>&gt;<br>
&gt; Sent: Thursday, 22 October, 2026 22:37:25<br>
&gt; Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits e5=
00v2 tuning<br>
<br>
&gt;&gt; On Thu, Oct 22, 2026 at 2:27 AM Adrian Freihofer via [<br>
&gt;&gt; <a href=3D"http://lists.yoctoproject.org/" rel=3D"noreferrer" targ=
et=3D"_blank">http://lists.yoctoproject.org/</a> | <a href=3D"http://lists.=
yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.o=
rg</a> ] &lt;adrian.freihofer=3D [<br>
&gt;&gt; mailto:<a href=3D"mailto:siemens.com@lists.yoctoproject.org" targe=
t=3D"_blank">siemens.com@lists.yoctoproject.org</a> | <a href=3D"mailto:sie=
mens.com@lists.yoctoproject.org" target=3D"_blank">siemens.com@lists.yoctop=
roject.org</a><br>
&gt;&gt; ] &gt; wrote:<br>
<br>
&gt;&gt; Hi Elinor<br>
<br>
&gt;&gt; I remember the times when I was working with a MPC5200. Quite a fe=
w<br>
&gt;&gt; years ago :-).<br>
<br>
&gt;&gt; If you can mix binaries built with different floating point<br>
&gt;&gt; implementations depends on the details of the CPU architecture, at=
<br>
&gt;&gt; least. We had some discussions related to ARM 32 a few years ago. =
I<br>
&gt;&gt; just remember that &quot;it depends on the details&quot;.<br>
<br>
&gt;&gt; With wrynose there is now a TOOLCHAIN variable which can be set to=
<br>
&gt;&gt; clang globally. But it depends on what you need if a build without=
 gcc<br>
&gt;&gt; is possible or not. For example, there is a patchset which fixes g=
libc<br>
&gt;&gt; for building with clang (around 50 patches from ARM) somewhere aro=
und.<br>
&gt;&gt; With musl it should work as well. Not sure this would allow you to=
 go<br>
&gt;&gt; with clang only for your use case.<br>
<br>
&gt;&gt; There are also some discussions with maintaining some LTS branches=
 like<br>
&gt;&gt; dunfell for longer than 4 years unofficially by users who need tha=
t.<br>
<br>
&gt;&gt; Just some alternative ideas.<br>
<br>
&gt; GCC dropped SPE in 9.1 timeframe, so soft-float is the only option. ho=
wever<br>
&gt; another<br>
&gt; issue is that glibc also dropped it starting 2.30 release, so only opt=
ion is<br>
&gt; using musl since<br>
&gt; it does support single float (-sf) abi on ppc.<br>
<br>
Yes good point thanks<br>
<br>
&gt; I added 0019-Re-introduce-spe-commandline-options.patch, back then to =
keep<br>
&gt; qemuppc working, it simply made gcc to accept -mabi=3Dspe -mspe<br>
&gt; -mfloat-gprs=3Ddouble<br>
&gt; which are passed from tune-ppce500v2.inc, it then ignores them and fal=
ls back to<br>
&gt; classic hard-float FPU instructions, e500v2 has no classic FPU, so the=
 binaries<br>
&gt; crash with SIGILL<br>
&gt; is no surprise. tune-ppce500.inc has the same problem. It has the same=
 spe<br>
&gt; feature with<br>
&gt; -mfloat-gprs=3Dsingle.<br>
&gt; a performance-compromised fix is to make these tunes use fpu-soft and =
drop spe<br>
<br>
&gt; Using clang is not going to work out of box either, while it does supp=
ort SPE it<br>
&gt; does have<br>
&gt; some things to take care of e.g. -mfloat-gprs=3Ddouble is not supporte=
d.<br>
<br>
Do you know if an equivalent option or options exist with clang for this?<b=
r>
Or if it just not relevant with clang?<br></blockquote><div><br></div><div>=
-mspe=C2=A0for=C2=A0-mfloat-gprs=3Ddouble</div><div>-mspe -mefpu2=C2=A0for=
=C2=A0-mfloat-gprs=3Dsingle=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>
&gt; it also will reject<br>
&gt; linux-gnuspe and linux-muslspe triples that OE uses. it needs somethin=
g like<br>
&gt; powerpcspe-*-*<br>
&gt; or patching llvm sources to do what OE has done in past.<br>
<br>
&gt; Some recipes with GCC + fpu-soft, the rest with clang + SPE combo has =
an ABI<br>
&gt; problem.<br>
&gt; Ordinary calls and returns are compatible, since both pass doubles in =
pairs of<br>
&gt; general registers.<br>
&gt; The trouble is mixing the two in one process: a libgcc built for soft-=
float sets<br>
&gt; the FP environment<br>
&gt; differently from SPE code.<br>
<br>
I see<br>
So does it means that for a given application/process, the floating point<b=
r>
support (soft or SPE here) must be the same for the runtime used,<br>
the dynamic libraries used and the application itself,<br>
to avoid any ABI compatibility problem?<br></blockquote><div><br></div><div=
>yes=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
In that case, I suppose two compiler runtime may be installed,<br>
compiled with their respective compiler?<br>
* libgcc for GCC + fpu-soft compiled programs<br>
* llvm runtime for clang + SPE compiled programs<br>
<br>
But then the ABI compatibility constraint will create complexity for<br>
compiling and installing shared libraries.<br></blockquote><div><br></div><=
div>right thats=C2=A0what i think too=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
<br>
&gt; Dunfell is not a way to keep SPE; only warrior or older is.<br>
<br>
<br>
Best regards,<br>
Elinor Montmasson<br>
</blockquote></div></div>

--0000000000002941b6065e82c029--
