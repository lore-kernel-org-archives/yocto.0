Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A307C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 13:56:33 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.21462.1747749040038585100
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 06:50:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bZYQpnRJ;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: mehraamrita6@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad56e993ae9so422260266b.3
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 06:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747749038; x=1748353838; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SKmxrTBWV0lcTKKKPvDjDQGkw0BZLP4zK3OW/bDWdrw=;
        b=bZYQpnRJbRJVGFpUJXarNCu2V1k5KaBonBP7fohZzbK4mfj9o7FcPtstBOsO+fXoo/
         OEnE/6A2CqP18t1yFKjFi3/30lCEonMUGtipLhXhCfsFug1zOpMmKFKi0EJ/8QurGqSq
         pJjHKp39NJlTXOuxQu4jGD6XmPPUO6ZMmZBYGJjQq4FxiAIFODp1pI/LhNB3NJaWWx6J
         bW9ym8SYEELLGSXyMIOKzxz/B1FQjYRy6ks3D67Nd50ElIdw4zOEXf26uWTcSV3loWrd
         02Jxx/gE4qvcTwL1ylPO3BCidqOCnnY9JbHQc52xGrFlxnUwU4kyzslwIEXXxX/d8F+O
         zAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747749038; x=1748353838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKmxrTBWV0lcTKKKPvDjDQGkw0BZLP4zK3OW/bDWdrw=;
        b=WY30UUgGfPsJL8KaaGGhuOGToXQtfAYNJ15fbbEBv6w+8FM1ON6CrJclLTax0EudQ6
         qMExEbkdhtqVvO7XugP8Fr4jrXc26hSIeHvw8ZS0ssfXFvg9Blz0+g5c6sEoi89dU1XG
         FLC6uOtLAVx9YH4Umq3RkykwrVRr9JHCyCdeZtKFOVd0Qk1gbItlG5bIa08Q8YY7zBbj
         8wJmi28aRjc36ocz6XkymDIFazZMzETtz2nxjG2qmETEzjYBj66TO5YSxaV8lg+gf8Dg
         w03itSOc0ud0S8Bqnpr875E4OnK4iGXYFE1INjmEXSH5q5jX9pPLd+ZBd6vBLYqRWxoE
         qHsA==
X-Gm-Message-State: AOJu0YxVfCF9NuSQLXXMvucFuO45LablXyA6rTgxMRVOX/CvIqWGZ0TE
	vSQ2mXE32uPBus8snRyupv/QHAAWDfWCTMv2XSWWES6jlnag5k2ZBhhRaFPUDSdbOM9xhK4lcu7
	FV9KufTEGyHA9obv6I4qX8vblZT+0Jek=
X-Gm-Gg: ASbGncu1n6Dt4Gna76AB9rO7J5JoiG/GuP2hyGOOyowdzUaRxQCeQ5voEP3L599rLwQ
	zf44WvRdyodT6LwfqTcDPlVW6J58af0Eov+dm08w3/SENGnjv9wZDBfK7dN+pKM9/3XPKVsNCZx
	gQpiaFvNX2WWehbjZG9/UOS51QxKhw/qk=
X-Google-Smtp-Source: AGHT+IGEfID4U4kwZYrj1HxLzf0AbjfwpNlRfj6LOI+96aw7TCh7vXkJO9oDrgPXMOCTqdQPwDVa8wKhAB1KIHjuDHc=
X-Received: by 2002:a17:907:1b2a:b0:ad2:233f:f024 with SMTP id
 a640c23a62f3a-ad536b82ac2mr1682358966b.17.1747749038150; Tue, 20 May 2025
 06:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
 <fac08383-5ffa-4299-9354-0941635411e0@gmail.com> <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
 <c129290c-090d-4296-9bac-50c23e3abfce@gmail.com> <CAEqf1PJDBwbA2YVpCiBf0gzTPgP_64zaXn98h1SZZh0GBjMnbg@mail.gmail.com>
 <a7cb1d4c-767c-4a74-8eb0-9d30d2e095c5@gmail.com>
In-Reply-To: <a7cb1d4c-767c-4a74-8eb0-9d30d2e095c5@gmail.com>
From: "Amrita Mehra" <mehraamrita6@gmail.com>
Date: Tue, 20 May 2025 19:20:25 +0530
X-Gm-Features: AX0GCFsi4qpeArjQLvErxIcgl3paW_LoXHA85rNjMXt4lqxAqie0SX8cycVw1SA
Message-ID: <CAEqf1PLVO9dn_2qj9C_zoXSP+gDL2oi9S=Sdn1HvDL+vqnE5Sg@mail.gmail.com>
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009359460635918864"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 13:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65372

--0000000000009359460635918864
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is this error a bitbake error?
Could you confirm? According to blackduck team it's a bitbake error.



Regards
Amrita :)

On Tue, May 20, 2025, 17:09 Gyorgy Sarvari <skandigraun@gmail.com> wrote:

> On 5/20/25 13:28, Amrita Mehra wrote:
> > Yes image/recipe build fine when you run it with bitbake. The issue
> > happens only when blackduck tries to scan and this error is thrown
> > post it does bitbake -g mdm-xxxx.
> >
> > This looks to be a bitbake error, which is why we want to understand
> > what can cause this error? Do you need *.dot files for more analyses?
> > Is there a possibility that dot files are not generated as expected?
>
> Sorry, but I'm not familiar with this tool, don't know why it is
> emitting any errors - it sounds like it would be a better question for
> blackduck support/manual, what their script is actually complaining
> about. If there is something that would need to be fixed in bitbake,
> then it would be easier to know what that is exactly.
>
> FWIW, a search gives only a very few results about this error, and they
> say it was displayed erroneously until it was fixed.
>
> >
> > On Tue, May 20, 2025 at 4:48=E2=80=AFPM Gyorgy Sarvari <skandigraun@gma=
il.com>
> > wrote:
> >
> >
> >     On 5/20/25 13:03, Amrita Mehra wrote:
> >     > Is it because the recipes are inside folders with name recipes-xx=
x?
> >     > We are not using the default meta-qcom. We have made a few
> >     changes on
> >     > top of it.
> >     > The structure in my project is as below
> >     >
> >     [qc-gen]amehra@core9-swbs002
> :~/code/9x50_branches/01.15_br/meta-qcom$
> >     > ls -lrt
> >     > total 16
> >     > drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
> >     > drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
> >     > drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
> >     > drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf
> >     >
> >     >
> >     [qc-gen]amehra@core9-swbs002
> :~/code/9x50_branches/01.15_br/meta-qcom$
> >     > cat conf/layer.conf
> >     > BBFILES +=3D "${LAYERDIR}/recipes/*/*.bb
> >     ${LAYERDIR}/recipes/*/*.bbappend"
> >     > BBPATH .=3D ":${LAYERDIR}"
> >     > BBFILE_COLLECTIONS +=3D "qcom"
> >     > BBFILE_PRIORITY_qcom =3D "15"
> >     > BBFILE_PATTERN_qcom :=3D "^${LAYERDIR}/"
> >     > LICENSE_PATH +=3D "${LAYERDIR}/files/qcom-licenses"
> >     >
> >     > I believe this should be fine. Let me know
> >
> >     Yeah, this looks okay at the first sight.
> >     Does your image/recipe build fine when you run it with bitbake? If =
it
> >     emits some errors or other information, that would be helpful.
> >
> >     >
> >     > On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy Sarvari
> >     <skandigraun@gmail.com>
> >     > wrote:
> >     >
> >     >
> >     >
> >     >     On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org
> >     <http://lists.yoctoproject.org>
> >     >     <http://lists.yoctoproject.org> wrote:
> >     >     > Hi Team,
> >     >     >
> >     >     > I am working on a blackduck scan using detect10.sh script.
> >     While I
> >     >     > execute this script, I see below error
> >     >     >
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehr=
a/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdblo=
ader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ame=
hra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdb=
loader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/a=
mehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/ac=
dbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ame=
hra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdb=
loader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ame=
hra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdb=
loader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/=
amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/a=
cdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\=
n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/re=
cipes/acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home=
/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/=
acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehr=
a/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdblo=
ader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/hom=
e/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes=
/acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     >     'acdbloader
> >     >     >
> >     >
> >
>   do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n=
/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/rec=
ipes/acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     >     <http://acdbloader_git.bb>
> >     >     > <http://acdbloader_git.bb>' does not correspond to any know=
n
> >     >     layer ([])
> >     >     >
> >     >     >
> >     >     >
> >     >     > What is the cause of this error? How can we fix it?
> >     >     >
> >     >
> >     >     I'm not familiar with blackduck scan, but have you
> >     configured the
> >     >     BBFILES variable in a way to include this recipe?
> >     >     If this meta-qcom layer is based on
> >     >     https://git.yoctoproject.org/meta-qcom, then its default
> BBFILES
> >     >     variable expects the recipes to be in "recipes-*" folder[1]
> >     - note the
> >     >     hyphen in the pattern.
> >     >
> >     >     [1]:
> >     https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
> >     >
> >     >     >
> >     >     >
> >     >     > --
> >     >     > Regards
> >     >     > Amrita :)
> >     >     >
> >     >     >=20
> >     >     >
> >     >
> >     >
> >     >
> >     > --
> >     > Regards
> >     > Amrita :)
> >
> >
> >
> > --
> > Regards
> > Amrita :)
>
>

--0000000000009359460635918864
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Is this error a bitbake error?</div><div dir=3D"auto=
">Could you confirm? According to blackduck team it&#39;s a bitbake error.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div><br></div=
><div data-smartmail=3D"gmail_signature">Regards <br>Amrita :)</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, May 20, 2025, 17:09 Gyorgy Sarvari &lt;<a href=3D"m=
ailto:skandigraun@gmail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 5/20/25 13:28, Amrita Mehra wrote:<br>
&gt; Yes image/recipe build fine when you run it with bitbake. The issue<br=
>
&gt; happens only when blackduck tries to scan and this error is thrown<br>
&gt; post it does bitbake -g mdm-xxxx.<br>
&gt;<br>
&gt; This looks to be a bitbake error, which is why we want to understand<b=
r>
&gt; what can cause this error? Do you need *.dot files for more analyses?<=
br>
&gt; Is there a possibility that dot files are not generated as expected?<b=
r>
<br>
Sorry, but I&#39;m not familiar with this tool, don&#39;t know why it is<br=
>
emitting any errors - it sounds like it would be a better question for<br>
blackduck support/manual, what their script is actually complaining<br>
about. If there is something that would need to be fixed in bitbake,<br>
then it would be easier to know what that is exactly.<br>
<br>
FWIW, a search gives only a very few results about this error, and they<br>
say it was displayed erroneously until it was fixed.<br>
<br>
&gt;<br>
&gt; On Tue, May 20, 2025 at 4:48=E2=80=AFPM Gyorgy Sarvari &lt;<a href=3D"=
mailto:skandigraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">skandigr=
aun@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/20/25 13:03, Amrita Mehra wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Is it because the recipes are inside folders w=
ith name recipes-xxx?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; We are not using the default meta-qcom. We hav=
e made a few<br>
&gt;=C2=A0 =C2=A0 =C2=A0changes on<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; top of it.=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; The structure in my project is as below<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[qc-gen]amehra@core9-swbs002:~/code/9x50_branches/0=
1.15_br/meta-qcom$<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ls -lrt<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; total 16<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; drwxr-xr-x. =C2=A02 amehra domain_users 4096 M=
ay 12 15:39 classes<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; drwxr-xr-x. =C2=A03 amehra domain_users 4096 M=
ay 12 15:39 files<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; drwxr-xr-x. 76 amehra domain_users 4096 May 12=
 15:39 *recipes*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; drwxr-xr-x. =C2=A04 amehra domain_users 4096 M=
ay 20 18:52 conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[qc-gen]amehra@core9-swbs002:~/code/9x50_branches/0=
1.15_br/meta-qcom$<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; cat conf/layer.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; BBFILES +=3D &quot;${LAYERDIR}/recipes/*/*.bb<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0${LAYERDIR}/recipes/*/*.bbappend&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; BBFILE_COLLECTIONS +=3D &quot;qcom&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; BBFILE_PRIORITY_qcom =3D &quot;15&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; BBFILE_PATTERN_qcom :=3D &quot;^${LAYERDIR}/&q=
uot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; LICENSE_PATH +=3D &quot;${LAYERDIR}/files/qcom=
-licenses&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I believe this should be fine. Let me know<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yeah, this looks okay at the first sight.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Does your image/recipe build fine when you run it w=
ith bitbake? If it<br>
&gt;=C2=A0 =C2=A0 =C2=A0emits some errors or other information, that would =
be helpful.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy=
 Sarvari<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:skandigraun@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">skandigraun@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0On 5/19/25 16:36, Amrita Me=
hra via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer norefer=
rer" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://lists.yoctoproject.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">http://lists.yoctoproject.org<=
/a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://lists=
.yoctoproject.org" rel=3D"noreferrer noreferrer" target=3D"_blank">http://l=
ists.yoctoproject.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Team,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; I am working on a blac=
kduck scan using detect10.sh script.<br>
&gt;=C2=A0 =C2=A0 =C2=A0While I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; execute this script, I=
 see below error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_build\n:git-8bbb02aec139ad24856fd5df7a82ff=
9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-cor=
e/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"=
noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_compile\n:git-8bbb02aec139ad24856fd5df7a82=
ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-c=
ore/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_configure\n:git-8bbb02aec139ad24856fd5df7a=
82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe=
-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_install\n:git-8bbb02aec139ad24856fd5df7a82=
ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-c=
ore/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_package\n:git-8bbb02aec139ad24856fd5df7a82=
ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-c=
ore/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_package_qa\n:git-8bbb02aec139ad24856fd5df7=
a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/o=
e-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" re=
l=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_package_write_ipk\n:git-8bbb02aec139ad2485=
6fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps=
_proc/oe-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git=
.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_packagedata\n:git-8bbb02aec139ad24856fd5df=
7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/=
oe-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" r=
el=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff=
9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-cor=
e/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"=
noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_populate_lic\n:git-8bbb02aec139ad24856fd5d=
f7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc=
/oe-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" =
rel=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CS=
T WARN =C2=A0[main] --- Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0do_populate_sysroot\n:git-8bbb02aec139ad24856=
fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_=
proc/oe-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.=
bb" rel=3D"noreferrer noreferrer" target=3D"_blank">acdbloader_git.bb</a><b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbl=
oader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://acdblo=
ader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://=
acdbloader_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">http://a=
cdbloader_git.bb</a>&gt;&#39; does not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; What is the cause of t=
his error? How can we fix it?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m not familiar with b=
lackduck scan, but have you<br>
&gt;=C2=A0 =C2=A0 =C2=A0configured the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0BBFILES variable in a way t=
o include this recipe?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0If this meta-qcom layer is =
based on<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://git.yoct=
oproject.org/meta-qcom" rel=3D"noreferrer noreferrer" target=3D"_blank">htt=
ps://git.yoctoproject.org/meta-qcom</a>, then its default BBFILES<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0variable expects the recipe=
s to be in &quot;recipes-*&quot; folder[1]<br>
&gt;=C2=A0 =C2=A0 =C2=A0- note the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0hyphen in the pattern.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0[1]:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://git.yoctoproject.org/meta-qcom/t=
ree/conf/layer.conf#n5" rel=3D"noreferrer noreferrer" target=3D"_blank">htt=
ps://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Amrita :)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Amrita :)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Regards<br>
&gt; Amrita :)<br>
<br>
</blockquote></div>

--0000000000009359460635918864--

