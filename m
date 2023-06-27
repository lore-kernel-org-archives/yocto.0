Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCA41EB64D9
	for <webhook@archiver.kernel.org>; Tue, 27 Jun 2023 16:46:43 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.449.1687884394852435733
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jun 2023 09:46:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=lmumuWcU;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fb5bcb9a28so3996208e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 09:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687884393; x=1690476393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pp7vA7UdQ8hKuDFBPxLuvT89lcdLRk5IYAvMPKVriH0=;
        b=lmumuWcU0wCRlqK+HWlnDJ9m5IrtvT2+Gmb9mKvT9QYZmdm8QUBsCqNohv7bj6E6NG
         aRPZuajTlCm/TTY9FxktrzWofeqAVfqW2CJF6FFbBWkXC1ObG1kUA9ZnkynoRFhVJV4y
         2HbXVG+p+6sV+jazzSbUST2AW9qOfhNE83mik7fq9cqZmKQreol1ZOR4apYGmRxLzeWw
         5HHVrwpEOj4xwNDrrxv1iQTw5XaBr6EfnPqI8HhhRP7BG7B+l1COsqXDNAaS1U5co/df
         ZSXnk0xAZzhJtL1KXP/s7aV4NG4bhr6XnzHKNmjyKbQXMabA0NVWz1iS+N/HBWDSvSHn
         YGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687884393; x=1690476393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pp7vA7UdQ8hKuDFBPxLuvT89lcdLRk5IYAvMPKVriH0=;
        b=ZqBYu+McVge4GL2YOLMuPIbpgeCJuNDanNiGAgqq+h3PnwPa2dtmKJO38aT44mztz1
         bAx0Og7oI2pNrdrGJOawsFWpDbLM1hAwyxuyDdXTJFkwCugBvvdT8rveM67/usNEoqnh
         SJtEgk+7VezjGT6Vrya7e/S5mB9tLlgFgHS8uKjBu1IN1Zld/v/Dv0o1BJOl6ys+8y/l
         /B3ia7DT5q7QpCG5iUcjZZhI0slblA35cQMWeAwoVSyd0B1LnbMYTmwwcqG1ecD+oZwb
         o/+kvpzheiv3fLi+YlnpndTLtQ3pGeOmo6PB3o/htcxwc4cxfJ/aynZV2WWfL8GMn6y0
         YQww==
X-Gm-Message-State: AC+VfDxNVvPNBOYheH2QMaEyygKWhzmi9zmc2sEdbuXpQ2uKMY6wI/3l
	UgOm5fJrUJSa6iR1GmTmmxsrsTyH8K78yeqmWBc=
X-Google-Smtp-Source: ACHHUZ5DhYsh0E/Q1CHeFu6B6dfdu1YBGvamslN9fQ1ugpue2nf6NJnaOIGErhojbea7MoPQDtNbn3kHbWbWM4B/Lbo=
X-Received: by 2002:a19:6d02:0:b0:4f4:d2ed:410 with SMTP id
 i2-20020a196d02000000b004f4d2ed0410mr18444537lfc.41.1687884392730; Tue, 27
 Jun 2023 09:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
 <25445.1687882175160054772@lists.yoctoproject.org>
In-Reply-To: <25445.1687882175160054772@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 27 Jun 2023 18:46:21 +0200
Message-ID: <CANNYZj9ceErJf27HmT9pKHcJh4Yoyy_iMVkkYK8-ucMwhJKZRQ@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: ohnatiuk@cisco.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a6963b05ff1f35af"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 16:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60461

--000000000000a6963b05ff1f35af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Before we think of a solution, can you provide steps or a test case where
the issue can be seen? It=E2=80=99s in one of the most important tasks, so =
I=E2=80=99d like
to know why it hasn=E2=80=99t been a problem and what is the scenario where=
 it is.

Alex

On Tue 27. Jun 2023 at 18.09, Oleksandr Hnatiuk via lists.yoctoproject.org
<ohnatiuk=3Dcisco.com@lists.yoctoproject.org> wrote:

> Hi. After debugging this, I found there is another issue apart from the
> way MAGIC is set in the recipe.
>
> The do_populate_sysroot task doesn't use the value of MAGIC variable that
> is available in tasks that build the code.
> `file -b` is invoked from is_elf function in meta/lib/oe/package.py via
> `subprocess.check_output`.
> The environment of that subprocess call doesn't have the MAGIC variable
> set so `file -b` fails.
> (It uses `file` from $BUILDDIR/tmp/hosttools/file)
> Verified this by providing a modified env with hardcoded MAGIC to
> `subprocess.check_output` after which the error is gone.
>
> What would the right solution for this look like?
>
> Regards,
> Oleksandr
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60460):
> https://lists.yoctoproject.org/g/yocto/message/60460
> Mute This Topic: https://lists.yoctoproject.org/mt/99626082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a6963b05ff1f35af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Before we think of a solution, can you provide steps or a=
 test case where the issue can be seen? It=E2=80=99s in one of the most imp=
ortant tasks, so I=E2=80=99d like to know why it hasn=E2=80=99t been a prob=
lem and what is the scenario where it is.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue 27. Jun 2023 at 18.09, Oleksandr Hnatiuk =
via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &l=
t;ohnatiuk=3D<a href=3D"mailto:cisco.com@lists.yoctoproject.org">cisco.com@=
lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-s=
tyle:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Hi. After d=
ebugging this, I found there is another issue apart from the way MAGIC is s=
et in the recipe.<br><br>The do_populate_sysroot task doesn&#39;t use the v=
alue of MAGIC variable that is available in tasks that build the code.<br>`=
file -b` is invoked from is_elf function in meta/lib/oe/package.py via `sub=
process.check_output`.<br>The environment of that subprocess call doesn&#39=
;t have the MAGIC variable set so `file -b` fails.<br>(It uses `file` from =
$BUILDDIR/tmp/hosttools/file)<br>Verified this by providing a modified env =
with hardcoded MAGIC to `subprocess.check_output` after which the error is =
gone.<br><br>What would the right solution for this look like?<br><br>Regar=
ds,<br>Oleksandr
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60460): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60460" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60460</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99626082/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99626082/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a6963b05ff1f35af--

