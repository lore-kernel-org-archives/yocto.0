Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D396AC54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 20:49:36 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web10.209072.1673988568666700770
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 12:49:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CGNBCjNv;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id cc13-20020a05683061cd00b00684b8cf2f4dso10329117otb.12
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 12:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J8vy5FD8zJu8t6UBm0aefv+KdWmckblKqaex8aJqiOU=;
        b=CGNBCjNvXqfQpFq5cn1a72ysU46flLoJsPa39HGtezkHrv4oCGpRpgTtsMvWv2WhKD
         DyLeuSrZjwBlfnKBt6LY3LFpmnhH3k+9hSKUaoauwW+SFJ04eEdjt4Hb5ZLtWo+xoyle
         oVj2eUhMmKvD4kR9onsWyLLII6ew7HeQ1Cmc1jhL2pRyhEFKxEscsnw1yKPYj/dWN8SI
         LJjy2YxNUL4HeAxqi6VfP+xrPkZL9fZFkAP+roREgQvI8hYsXJpX6fOpSlxUSuXAXie/
         nrCLHz/6IY6AtLQwVjYJ8A8iXRCskShzEi23syL54MwqYe1CAX7y+o5u/1xqBPddwHFw
         DNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8vy5FD8zJu8t6UBm0aefv+KdWmckblKqaex8aJqiOU=;
        b=ij/JXxOczUmQ6FajWaBK13J4U12kV7jzqAix7epVrvx/yD1sQigC4KHGjdyr7n9YQc
         Qzx7p4zz0HIb5io/Pq6KZgFupDLyCG1ePwrINaUYf0kTeXgVcHW6nufBrNWo7AJa1/5o
         1RK3v3IYWipIgyLzAU7ZYlsrxGdui6efr5nwaPK0L7VF3j3fZtKqsyvdY5FBUnVtbOm4
         9t7mni5TSxye14J/zGm7jBBMqXWuIAWCpnxromuvr0zStmOT7ZWuJBNoizECDhKe+cum
         dDNuPE3TMkLK3guYMBnufLzaxhGdp9tapf2g6B69yTbiLUkXVpAcE/TOPNbpE/whPVBi
         fbtw==
X-Gm-Message-State: AFqh2kr/8qXlHBqPFt3DBauPmYRQ5YqqyOB096lpv5FTAN5J5yEZyB1r
	tdDjJhGRFVfwxMlsrnr1n7FJH/RQHnmCd3UrEDQ=
X-Google-Smtp-Source: AMrXdXvDRy0kuSi9vNLeXMjU41VxsbEmlgLjPdgK1w8gEKFvDJOw1y6zfIjS5wfgBzeUSA2TWTquH1jc0r20qX2d7/M=
X-Received: by 2002:a05:6830:1390:b0:676:92ca:f7f4 with SMTP id
 d16-20020a056830139000b0067692caf7f4mr220116otq.55.1673988567852; Tue, 17 Jan
 2023 12:49:27 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
 <CAMKF1spHrXdQH+R-zsBi+cqTi3nyN7LeO_WyOcvDXSdWnGE5TA@mail.gmail.com> <CANNYZj_4m87jCw5Op6ZhO8+ZCEif-hROrFZ=bdZJK7=9+jgYHg@mail.gmail.com>
In-Reply-To: <CANNYZj_4m87jCw5Op6ZhO8+ZCEif-hROrFZ=bdZJK7=9+jgYHg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Jan 2023 12:49:17 -0800
Message-ID: <CAMKF1sqXFpKGuLfkhWvHrjB-bAmGY6=J0xxb0zbUf_5Nx-zZug@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: William Huang <whuang8933@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f1eb0605f27bd54b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 20:49:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59014

--000000000000f1eb0605f27bd54b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 17, 2023 at 11:58 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Tue, 17 Jan 2023 at 20:55, Khem Raj <raj.khem@gmail.com> wrote:
> > You can do it to certain extent with meta-clang. Select RUNTIME =3D
> > "llvm" in local.conf after including it. However, this is not going to
> > be drop-in replacement due to some packages ( e.g. glibc )
> > still not buildable with llvm + llvm-runtime and there are more
> > components depending upon what you distro uses it might be more to
> > consider. Its perhaps easier to get C++ runtime using libc++
> > than say replacing libgcc and crt init files, which might need more wor=
k.
>
> Changing gcc to clang should be done for technical reasons, I would
> rather not give this advice to address what seems like an incomplete
> understanding of the licensing situation.


I was merely replying to question about if llvm could replace it. For
licensing related question I refrain because I don=E2=80=99t have expertise=
 in that
it=E2=80=99s best to consult some one who knows this stuff and understands =
it.
Least I will misguide someone


>
> Alex
>

--000000000000f1eb0605f27bd54b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jan 17, 2023 at 11:58 AM Alexander Kanavin &lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On Tue, 17 Jan 2023 at 20:55, Khem=
 Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>&gt; wrote:<br>
&gt; You can do it to certain extent with meta-clang. Select RUNTIME =3D<br=
>
&gt; &quot;llvm&quot; in local.conf after including it. However, this is no=
t going to<br>
&gt; be drop-in replacement due to some packages ( e.g. glibc )<br>
&gt; still not buildable with llvm + llvm-runtime and there are more<br>
&gt; components depending upon what you distro uses it might be more to<br>
&gt; consider. Its perhaps easier to get C++ runtime using libc++<br>
&gt; than say replacing libgcc and crt init files, which might need more wo=
rk.<br>
<br>
Changing gcc to clang should be done for technical reasons, I would<br>
rather not give this advice to address what seems like an incomplete<br>
understanding of the licensing situation.</blockquote><div dir=3D"auto"><br=
></div><div dir=3D"auto">I was merely replying to question about if llvm co=
uld replace it. For licensing related question I refrain because I don=E2=
=80=99t have expertise in that it=E2=80=99s best to consult some one who kn=
ows this stuff and understands it. Least I will misguide someone</div><div =
dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
Alex<br>
</blockquote></div></div>

--000000000000f1eb0605f27bd54b--

