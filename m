Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5A53C3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 11:05:01 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.18378.1747739010405953747
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 04:03:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k0mvEh5L;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: mehraamrita6@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ad54e5389cdso439560466b.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 04:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747739008; x=1748343808; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5PkDCoJlaIloN//Y6KGIVmgU29yNXDKV4AiMLKeCYH8=;
        b=k0mvEh5Lt+ENsEYZDSI4+NETU/RXpZYwLFk4J0pNlHLyOdlGgql9dQccYP0hBU3ahn
         cv1KUKCJNprE8NaKYxiI5hsLpauJiXpK/Q1Q9Xnxk5fNlVkiKmaRZ2Pff/h3e6x22oT8
         T+WlIFuTT1yNCWopK0o1AlMrpGN2CZndtDVnm0AEq0Eqi97ZAlkb/ufKpWkcWS6oxkPK
         KoJZoe6f0CwykTIIzFAwZ7aCE+ELpmpypsOvTeajc5nHIszAsPz8Ol/N69YOQyeQtZQU
         SYAYXw5zvcxdk6aXslv3yEBfgLt0MIidx3qCgdAVsWY4n95T6D8pVvMqFpuzygHmLHPD
         u1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747739009; x=1748343809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5PkDCoJlaIloN//Y6KGIVmgU29yNXDKV4AiMLKeCYH8=;
        b=kNZg1ZF/oNshmSKNchctGVjpvagtLAsmZh0YtFm+4PoX0zu7R7toJz15MQZ3stWyqn
         q+hsmlXmBna/bFWBtuR1y21zTsL3oTXYSVYz1rxu7mhRXmYzZynv08j9aA5MbW6v0LKP
         qz11IPRPsIbUivmV8J5H8Df+F6k90qIDl71OuKeygT6eF2aYTikQAVsCg8x22tQvzZVY
         D0u2Ij9zkTDKiOnAg36oosvIXSkwEP9LiS1fpOXim2AZ3o180/G7zLmixwOk2oR2Cg86
         /KGKZqn335wPV5Ti/CERjnHYMJYj2XnLaZrHGwJeCCys6lm6vCqihu2qp6K0NVkyMODi
         iBQQ==
X-Gm-Message-State: AOJu0YxM3UAx7blhZJw5hQ+8f2XcEtB1Nm4xqvNAE0ShHeSXbVNbxPNS
	q/I7VbChRPSeWwJP5lFSKSKtl5OsORjU/F5J+7dgYTAW5Q8+Jg9DzwHffUYtQxerlTDkP1kJZ6c
	kiPyqbYx+qKCyTr+ybZ0pJKtOUmarGw4=
X-Gm-Gg: ASbGncsJxFo5zUxIr+i/HUMxhD8RcfNGJYANLRAodnhN4UGQPshJDje+Kx52v2D5Le/
	xHf28+YgchwoVsGBPN9p5QqZ2PUFtH0AsZurOfRJODijXE11Q4jzgw95dgKtYJ9izgpqynjhKRy
	JMTNqzbqpJsSBnVVIZnJcX0XAU635EVc0=
X-Google-Smtp-Source: AGHT+IHu1fCQGKOACk4H24E0TvsJYwlwHohCJpJlPIerN+sRKLL8GNo8HH5f4UArOY7h3JbMwy6jl/2cmAiRhjT4p0A=
X-Received: by 2002:a17:907:c807:b0:ace:cdfc:40aa with SMTP id
 a640c23a62f3a-ad52d4b2782mr1185930266b.19.1747739008242; Tue, 20 May 2025
 04:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
 <fac08383-5ffa-4299-9354-0941635411e0@gmail.com>
In-Reply-To: <fac08383-5ffa-4299-9354-0941635411e0@gmail.com>
From: "Amrita Mehra" <mehraamrita6@gmail.com>
Date: Tue, 20 May 2025 16:33:16 +0530
X-Gm-Features: AX0GCFvYTjmjwC9ZluHUEp8PZBalOjL5bPjKOdOEKjMbWHBhM2QoySmL9pzzl1s
Message-ID: <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf194d06358f3242"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 11:05:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65367

--000000000000bf194d06358f3242
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is it because the recipes are inside folders with name recipes-xxx?
We are not using the default meta-qcom. We have made a few changes on top
of it.
The structure in my project is as below
[qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$ ls
-lrt
total 16
drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf

[qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$ cat
conf/layer.conf
BBFILES +=3D "${LAYERDIR}/recipes/*/*.bb ${LAYERDIR}/recipes/*/*.bbappend"
BBPATH .=3D ":${LAYERDIR}"
BBFILE_COLLECTIONS +=3D "qcom"
BBFILE_PRIORITY_qcom =3D "15"
BBFILE_PATTERN_qcom :=3D "^${LAYERDIR}/"
LICENSE_PATH +=3D "${LAYERDIR}/files/qcom-licenses"

I believe this should be fine. Let me know

On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy Sarvari <skandigraun@gmail.c=
om>
wrote:

>
>
> On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org wrote:
> > Hi Team,
> >
> > I am working on a blackduck scan using detect10.sh script. While I
> > execute this script, I see below error
> >
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/=
code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbload=
er/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehr=
a/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdblo=
ader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ame=
hra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdb=
loader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehr=
a/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdblo=
ader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehr=
a/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdblo=
ader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/am=
ehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acd=
bloader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/=
home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/reci=
pes/acdbloader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/a=
mehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/ac=
dbloader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/=
code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbload=
er/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/=
amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/a=
cdbloader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> >
> do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/h=
ome/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recip=
es/acdbloader/
> acdbloader_git.bb
> > <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> >
> >
> >
> > What is the cause of this error? How can we fix it?
> >
>
> I'm not familiar with blackduck scan, but have you configured the
> BBFILES variable in a way to include this recipe?
> If this meta-qcom layer is based on
> https://git.yoctoproject.org/meta-qcom, then its default BBFILES
> variable expects the recipes to be in "recipes-*" folder[1] - note the
> hyphen in the pattern.
>
> [1]: https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
>
> >
> >
> > --
> > Regards
> > Amrita :)
> >
> >=20
> >
>
>

--=20
Regards
Amrita :)

--000000000000bf194d06358f3242
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it because the recipes are inside folders with name rec=
ipes-xxx?<div>We are not using the default meta-qcom. We have made a few ch=
anges on top of it.=C2=A0</div><div>The structure in my project is as below=
</div><div>[qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-=
qcom$ ls -lrt<br>total 16<br>drwxr-xr-x. =C2=A02 amehra domain_users 4096 M=
ay 12 15:39 classes<br>drwxr-xr-x. =C2=A03 amehra domain_users 4096 May 12 =
15:39 files<br>drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 <b>reci=
pes</b><br>drwxr-xr-x. =C2=A04 amehra domain_users 4096 May 20 18:52 conf<b=
r></div><div><br></div><div>[qc-gen]amehra@core9-swbs002:~/code/9x50_branch=
es/01.15_br/meta-qcom$ cat conf/layer.conf<br>BBFILES +=3D &quot;${LAYERDIR=
}/recipes/*/*.bb ${LAYERDIR}/recipes/*/*.bbappend&quot;<br>BBPATH .=3D &quo=
t;:${LAYERDIR}&quot;<br>BBFILE_COLLECTIONS +=3D &quot;qcom&quot;<br>BBFILE_=
PRIORITY_qcom =3D &quot;15&quot;<br>BBFILE_PATTERN_qcom :=3D &quot;^${LAYER=
DIR}/&quot;<br>LICENSE_PATH +=3D &quot;${LAYERDIR}/files/qcom-licenses&quot=
;<br></div><div><br></div><div>I believe this should be fine. Let me know</=
div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, May 19, 2025 at 9:20=E2=80=AFPM Gyorgy Sa=
rvari &lt;<a href=3D"mailto:skandigraun@gmail.com">skandigraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>
On 5/19/25 16:36, Amrita Mehra via <a href=3D"http://lists.yoctoproject.org=
" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br=
>
&gt; Hi Team,<br>
&gt;<br>
&gt; I am working on a blackduck scan using detect10.sh script. While I<br>
&gt; execute this script, I see below error<br>
&gt;<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ameh=
ra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbl=
oader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"_bl=
ank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/am=
ehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acd=
bloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"_=
blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/=
amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/a=
cdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D=
"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/am=
ehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acd=
bloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"_=
blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/am=
ehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acd=
bloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"_=
blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home=
/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/=
acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=
=3D"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7=
\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/r=
ecipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" t=
arget=3D"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/hom=
e/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes=
/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=
=3D"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/ameh=
ra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbl=
oader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"_bl=
ank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/ho=
me/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipe=
s/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=
=3D"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt; 2025-05-16 21:26:25 CST WARN =C2=A0[main] --- Graph Node recipe &#39;a=
cdbloader<br>
&gt; do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\=
n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/re=
cipes/acdbloader/<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">acdbloader_git.bb</a><br>
&gt; &lt;<a href=3D"http://acdbloader_git.bb" rel=3D"noreferrer" target=3D"=
_blank">http://acdbloader_git.bb</a>&gt;&#39; does not correspond to any kn=
own layer ([])<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; What is the cause of this error? How can we fix it?<br>
&gt;<br>
<br>
I&#39;m not familiar with blackduck scan, but have you configured the<br>
BBFILES variable in a way to include this recipe?<br>
If this meta-qcom layer is based on<br>
<a href=3D"https://git.yoctoproject.org/meta-qcom" rel=3D"noreferrer" targe=
t=3D"_blank">https://git.yoctoproject.org/meta-qcom</a>, then its default B=
BFILES<br>
variable expects the recipes to be in &quot;recipes-*&quot; folder[1] - not=
e the<br>
hyphen in the pattern.<br>
<br>
[1]: <a href=3D"https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf=
#n5" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta=
-qcom/tree/conf/layer.conf#n5</a><br>
<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Regards<br>
&gt; Amrita :)<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">Regards <br>Amrita :)</div>

--000000000000bf194d06358f3242--

