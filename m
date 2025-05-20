Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BB10C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 11:33:12 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.18412.1747740510982413602
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 04:28:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C8xcz/ML;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: mehraamrita6@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad5574b59c0so482459866b.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 04:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747740509; x=1748345309; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S3GYo1R9v5UPCQ0bngsuXG1doFfL+4MjT+ApnQUqcr0=;
        b=C8xcz/MLNtvzF4fThhNVCB96kEYdaECu6SRpSAzSgIBn1NDk0O8JK/rpxvOOw1uCsv
         5Or7IQxlc5Fup0lWbpoAbeqUQdWMZ0CQWyukTRJieqGtgMT21elAzHVQFsiRkIfyGLGS
         erdK3qAgjhI3anxfkOHg81oSHweP4Q/xLCTqEAKb1H+mhucmf75+gsdNc9v32kBa9m5j
         ORBATnSmomWcqpW9hpcGro9q6XrePUz1IWGDGQMIUX6V26HsvpVxL1HO3y9fV2zxoLuu
         YjZ3EyrJolG4FXoJCg/4zw3hWXB2HCRmbUZa41Cg+KR0h/hMdkTrbqu2URu29IiA3UNB
         /cRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747740509; x=1748345309;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S3GYo1R9v5UPCQ0bngsuXG1doFfL+4MjT+ApnQUqcr0=;
        b=Chrab+e9No8IRV7TycN+lYi+Z2HcjCH8U+i75Qh2vBA9jvKz5wvBUgEg4qI8BGJAh/
         xRXeu6QSKZsJJpd5jFsfgSu/BUoG+3BYMDU28oHZwJjr/qnvf10Mzq3IQdbTWWqYhZBm
         OilBF1ifAXXZsywW3gIsJ5w6yGXGBRWonzeA5nlT9WwEAG4rpTIHdRZxQlQR3y4DiXGF
         xB2D75Kb3RMy2QA+3sdN+uiSd0gHyfn09I0NSXpscuATQ3T4Sp/cs39rZdeXNT8kk63a
         EBfnA/3r3YIruqz/H9Q5F8uIY+qtdKsm7OiqbckEHcVLqHpM2vjLH15ScLb7rbUBxxzc
         i6tw==
X-Gm-Message-State: AOJu0YzQB5ZgImzC4RVh3oENU4FQ299hOqLKgJJRSX6aLP4GAukUyMoN
	5b92FtIbpLc/5SqIM8JmT8sutF4AWLm/DxwK+Kv5z9629bodQgFYDXALU7fRjPCz+5QDlOCLhh5
	hhqG8atm8rt8Z78cxnVT8QPsX6xYcNRY=
X-Gm-Gg: ASbGncsgzrlqkCHyy3J2SwhvEypqiiqPi4tXg9/7kaIahBc/1S0mXfvBrpc5JAn32eT
	Jw/K7cBSnqeegIT+zuLjC6BBSgjMfBxRGG9GCupU40tx+o9h3ns2pHY9O1H7RGJGUaUD/g2FxXF
	BwQN5xRBuke2WDJDbXNwDnB0swKnyGF8I=
X-Google-Smtp-Source: AGHT+IGiG5X9K8X1FSAv+lw1vRU4W5K4vR2/wwTutXG3VyOMExrPTydRcYxjffKVpGG7wcYLWwXqY1rcQmbTW+qEyYY=
X-Received: by 2002:a17:906:4fd4:b0:ad1:a87d:3cd0 with SMTP id
 a640c23a62f3a-ad536bce621mr1532040666b.17.1747740508923; Tue, 20 May 2025
 04:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
 <fac08383-5ffa-4299-9354-0941635411e0@gmail.com> <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
 <c129290c-090d-4296-9bac-50c23e3abfce@gmail.com>
In-Reply-To: <c129290c-090d-4296-9bac-50c23e3abfce@gmail.com>
From: "Amrita Mehra" <mehraamrita6@gmail.com>
Date: Tue, 20 May 2025 16:58:17 +0530
X-Gm-Features: AX0GCFvoB97h-mp7UhtczT3a6-rnZSt_kqBbDXCRu_PAS2iD3CUUXdKUOxpWD2o
Message-ID: <CAEqf1PJDBwbA2YVpCiBf0gzTPgP_64zaXn98h1SZZh0GBjMnbg@mail.gmail.com>
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000031ac2906358f8c3c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 11:33:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65369

--00000000000031ac2906358f8c3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes image/recipe build fine when you run it with bitbake. The issue happens
only when blackduck tries to scan and this error is thrown post it does
bitbake -g mdm-xxxx.

This looks to be a bitbake error, which is why we want to understand what
can cause this error? Do you need *.dot files for more analyses?
Is there a possibility that dot files are not generated as expected?

On Tue, May 20, 2025 at 4:48=E2=80=AFPM Gyorgy Sarvari <skandigraun@gmail.c=
om>
wrote:

>
> On 5/20/25 13:03, Amrita Mehra wrote:
> > Is it because the recipes are inside folders with name recipes-xxx?
> > We are not using the default meta-qcom. We have made a few changes on
> > top of it.
> > The structure in my project is as below
> > [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
> > ls -lrt
> > total 16
> > drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
> > drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
> > drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
> > drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf
> >
> > [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
> > cat conf/layer.conf
> > BBFILES +=3D "${LAYERDIR}/recipes/*/*.bb ${LAYERDIR}/recipes/*/*.bbappe=
nd"
> > BBPATH .=3D ":${LAYERDIR}"
> > BBFILE_COLLECTIONS +=3D "qcom"
> > BBFILE_PRIORITY_qcom =3D "15"
> > BBFILE_PATTERN_qcom :=3D "^${LAYERDIR}/"
> > LICENSE_PATH +=3D "${LAYERDIR}/files/qcom-licenses"
> >
> > I believe this should be fine. Let me know
>
> Yeah, this looks okay at the first sight.
> Does your image/recipe build fine when you run it with bitbake? If it
> emits some errors or other information, that would be helpful.
>
> >
> > On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy Sarvari <skandigraun@gma=
il.com>
> > wrote:
> >
> >
> >
> >     On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org
> >     <http://lists.yoctoproject.org> wrote:
> >     > Hi Team,
> >     >
> >     > I am working on a blackduck scan using detect10.sh script. While =
I
> >     > execute this script, I see below error
> >     >
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra=
/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloa=
der/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ameh=
ra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbl=
oader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/am=
ehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acd=
bloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ameh=
ra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbl=
oader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ameh=
ra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbl=
oader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/a=
mehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/ac=
dbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n=
/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/rec=
ipes/acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/=
amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/a=
cdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra=
/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloa=
der/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home=
/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/=
acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
> >     'acdbloader
> >     >
> >
>  do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/=
home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/reci=
pes/acdbloader/
> acdbloader_git.bb
> >     <http://acdbloader_git.bb>
> >     > <http://acdbloader_git.bb>' does not correspond to any known
> >     layer ([])
> >     >
> >     >
> >     >
> >     > What is the cause of this error? How can we fix it?
> >     >
> >
> >     I'm not familiar with blackduck scan, but have you configured the
> >     BBFILES variable in a way to include this recipe?
> >     If this meta-qcom layer is based on
> >     https://git.yoctoproject.org/meta-qcom, then its default BBFILES
> >     variable expects the recipes to be in "recipes-*" folder[1] - note
> the
> >     hyphen in the pattern.
> >
> >     [1]: https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
> >
> >     >
> >     >
> >     > --
> >     > Regards
> >     > Amrita :)
> >     >
> >     >=20
> >     >
> >
> >
> >
> > --
> > Regards
> > Amrita :)
>
>

--=20
Regards
Amrita :)

--00000000000031ac2906358f8c3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes image/recipe build fine when you run it with bitbake. =
The issue happens only when blackduck tries to scan and this error is throw=
n post it does bitbake -g mdm-xxxx.<div><br></div><div>This looks to be a b=
itbake error, which is why we want to understand what can cause this error?=
 Do you need *.dot files for more analyses?</div><div>Is there a possibilit=
y that dot files are not generated as expected?</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, May 20, 2025 at 4:48=E2=80=AFPM Gyorgy Sarvari &lt;<a href=3D"mai=
lto:skandigraun@gmail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><br>
On 5/20/25 13:03, Amrita Mehra wrote:<br>
&gt; Is it because the recipes are inside folders with name recipes-xxx?<br=
>
&gt; We are not using the default meta-qcom. We have made a few changes on<=
br>
&gt; top of it.=C2=A0<br>
&gt; The structure in my project is as below<br>
&gt; [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$<=
br>
&gt; ls -lrt<br>
&gt; total 16<br>
&gt; drwxr-xr-x. =C2=A02 amehra domain_users 4096 May 12 15:39 classes<br>
&gt; drwxr-xr-x. =C2=A03 amehra domain_users 4096 May 12 15:39 files<br>
&gt; drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*<br>
&gt; drwxr-xr-x. =C2=A04 amehra domain_users 4096 May 20 18:52 conf<br>
&gt;<br>
&gt; [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$<=
br>
&gt; cat conf/layer.conf<br>
&gt; BBFILES +=3D &quot;${LAYERDIR}/recipes/*/*.bb ${LAYERDIR}/recipes/*/*.=
bbappend&quot;<br>
&gt; BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
&gt; BBFILE_COLLECTIONS +=3D &quot;qcom&quot;<br>
&gt; BBFILE_PRIORITY_qcom =3D &quot;15&quot;<br>
&gt; BBFILE_PATTERN_qcom :=3D &quot;^${LAYERDIR}/&quot;<br>
&gt; LICENSE_PATH +=3D &quot;${LAYERDIR}/files/qcom-licenses&quot;<br>
&gt;<br>
&gt; I believe this should be fine. Let me know<br>
<br>
Yeah, this looks okay at the first sight.<br>
Does your image/recipe build fine when you run it with bitbake? If it<br>
emits some errors or other information, that would be helpful.<br>
<br>
&gt;<br>
&gt; On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy Sarvari &lt;<a href=3D"=
mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmail.com</a>&g=
t;<br>
&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/19/25 16:36, Amrita Mehra via <a href=3D"http:=
//lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctop=
roject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://lists.yoctoproject.org" rel=
=3D"noreferrer" target=3D"_blank">http://lists.yoctoproject.org</a>&gt; wro=
te:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Team,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I am working on a blackduck scan using detect1=
0.sh script. While I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; execute this script, I see below error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa637=
6e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta=
-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"norefe=
rrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6=
376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/me=
ta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9f=
a6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/=
meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"no=
referrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6=
376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/me=
ta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6=
376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/me=
ta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9=
fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core=
/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df=
7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/=
oe-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" r=
el=3D"noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff=
9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-cor=
e/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"=
noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa637=
6e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta=
-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"norefe=
rrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82f=
f9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-co=
re/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D=
"noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- =
Graph Node recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;acdbloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7=
a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/o=
e-core/meta-qcom/recipes/acdbloader/<a href=3D"http://acdbloader_git.bb" re=
l=3D"noreferrer" target=3D"_blank">acdbloader_git.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://acdbloader_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=
=3D"noreferrer" target=3D"_blank">http://acdbloader_git.bb</a>&gt;&#39; doe=
s not correspond to any known<br>
&gt;=C2=A0 =C2=A0 =C2=A0layer ([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; What is the cause of this error? How can we fi=
x it?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m not familiar with blackduck scan, but have =
you configured the<br>
&gt;=C2=A0 =C2=A0 =C2=A0BBFILES variable in a way to include this recipe?<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0If this meta-qcom layer is based on<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://git.yoctoproject.org/meta-qcom" =
rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-qcom=
</a>, then its default BBFILES<br>
&gt;=C2=A0 =C2=A0 =C2=A0variable expects the recipes to be in &quot;recipes=
-*&quot; folder[1] - note the<br>
&gt;=C2=A0 =C2=A0 =C2=A0hyphen in the pattern.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[1]: <a href=3D"https://git.yoctoproject.org/meta-q=
com/tree/conf/layer.conf#n5" rel=3D"noreferrer" target=3D"_blank">https://g=
it.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5</a><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Amrita :)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Regards<br>
&gt; Amrita :)<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">Regards <br>Amrita :)</div>

--00000000000031ac2906358f8c3c--

