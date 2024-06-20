Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA599C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 07:07:08 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web11.41898.1718867228152176199
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jun 2024 00:07:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ddBEQyOw;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: rybczynska@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-70436048c25so598070b3a.0;
        Thu, 20 Jun 2024 00:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718867227; x=1719472027; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DxtI64aCuDLpYK3dKwmlb6ycstMaS2CnDskmqi5LJfU=;
        b=ddBEQyOwK2EGy5pAqY5//YTaEx+TwjXaklJfPc7gYalzNe64e7VrwhVoj//T2v9BC7
         To4KItekKDXlTeDsxqX+PN9fqwUXilv22SWtrDEDMNbeBTHyze/7AGVlrc7fycASTjtk
         eo9beLXLMcSWskMVDjvFhrg/M1krZ9PJh2qe6xhS9TNS1y+81+iTVVSpzxS6czfabImu
         ZsomtaWRHTKE+2xnmz9Dslo9Ym8Sji2gL0FmQipyouyXfkoDercSVFGyBCUMtyuRx+7F
         JNKtYrITztUx0gVcZY9W65ggKMaGXOJjP/DVI0dA371Zm3cdTIwvyq6SvwkOgeQgSKyD
         3F1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718867227; x=1719472027;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DxtI64aCuDLpYK3dKwmlb6ycstMaS2CnDskmqi5LJfU=;
        b=CXK8CeCQsj3b0l8glSmIRYKbEjVKjTz5RWsD77ltyepaB00NBP1dBqav5Dj5N9JgI3
         UzFPKNe+ObVf3T+/GTArfibKJs0TXXJsOjNNB9/0R2Ykb+cQoIo7R2SAljFPExTncdia
         gXvox1gGulgc52cQ+WHSdAwggwQJDgJY9XAN5X+UPmFyzJrFZ/sc0aAjNE4hX8ze9E2k
         lwAKX5gxeLbWxIlZROX5B1j2GvBhAtAkgzAn8S3kpZMQHAIpNEqsegoc7a8aMSgiKxhk
         K+mpU3JF9ZnlalF2r5V3qmr3Nx0Q0v1xkGSdKR51zKVNqi7vi7YIPTmrw200BFVnVTeR
         6h/A==
X-Forwarded-Encrypted: i=1; AJvYcCVyhstTcfm49IC6TEgLlY901W1dL1/UUxgOmGpCjamlBOC3HWWNm8GgIQ1f4+AG7vUYKdgsHoT4A0yVqHQ8GvnKHDSEO5QLjx9Uaju2ROnfK05uZGu8
X-Gm-Message-State: AOJu0Yy8Alss/ACpj/5SZJNqZsyG+b96XFGZKgXwM/N+v8l+WR4byJls
	t5KlPJZKYblyHl8HhQcqtZEkzhBzsDY8zlIufQqci2l0PEGN49V6wQFjxkeXkghxctC/EXCXASY
	shNyJEZU6QNrBlYy3ixAsYQE0QSyBPQ==
X-Google-Smtp-Source: AGHT+IEtsKlOh2469FYsO4d/F6rTy92iIk/+5pDPy0HD4WNpQGWJrbduozKIcpKi9BT+OlxM1cAPUm+iN9wno1LEWik=
X-Received: by 2002:a05:6a20:2da9:b0:1b7:4adb:1dcc with SMTP id
 adf61e73a8af0-1bcbb6389cfmr4295784637.60.1718867227059; Thu, 20 Jun 2024
 00:07:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com> <000001dac26a$bbe3a070$33aae150$@gmail.com>
In-Reply-To: <000001dac26a$bbe3a070$33aae150$@gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Thu, 20 Jun 2024 09:06:55 +0200
Message-ID: <CAApg2=RBWRoVd3pGXKqDUoM18pa4HLyEzQd6TsM+BdWBM2ZFSw@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto-security@lists.yoctoproject.org, 
	Steve Sakoman <steve@sakoman.com>
Content-Type: multipart/alternative; boundary="0000000000007c2e43061b4cf62f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 07:07:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63371

--0000000000007c2e43061b4cf62f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 7:04=E2=80=AFPM Mehmet Fide via lists.yoctoproject.=
org
<mehmet.fide=3Dgmail.com@lists.yoctoproject.org> wrote:

> Yes, I believe I can do that. But there are couple of options, I'm not
> sure which one to be followed:
> 1. Replace rsa key with ecdsa and continue with ecdsa support only. (this
> disables rsa mode)
> 2. Keep rsa mode on and also activate ecdsa key next to it therefore they
> can work side by side simultaneously
> 3. ??
>

Thanks for spotting this one!

For master I would just drop RSA and add a big note to the migration notes
for the next release. There are other breaking changes usually too.

For LTS branches it would be good to enable ECDSA in addition to RSA at
least. Steve, what do you think?

Kind regards,
Marta

--0000000000007c2e43061b4cf62f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jun 19, 2024 at 7:04=E2=80=AFPM Mehmet Fi=
de via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 &lt;mehmet.fide=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmai=
l.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Yes, I believe I can do that. But there are cou=
ple of options, I&#39;m not sure which one to be followed:<br>
1. Replace rsa key with ecdsa and continue with ecdsa support only. (this d=
isables rsa mode)<br>
2. Keep rsa mode on and also activate ecdsa key next to it therefore they c=
an work side by side simultaneously<br>
3. ??<br></blockquote><div><br></div><div>Thanks for spotting this one!<br>=
</div><div><br></div><div>For master I would just drop RSA and add a big no=
te to the migration notes for the next release. There are other breaking ch=
anges usually too.</div><div><br></div><div>For LTS branches it would be go=
od to enable ECDSA in addition to RSA at least. Steve, what do you think?</=
div><div><br></div><div>Kind regards,</div><div>Marta<br></div></div></div>

--0000000000007c2e43061b4cf62f--

