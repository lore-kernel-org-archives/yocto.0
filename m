Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93091ECAAD8
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 03:20:43 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.3076.1663816836814310216
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 20:20:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lq0xLHDs;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 i15-20020a17090a4b8f00b0020073b4ac27so782024pjh.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 20:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:date:message-id:subject:mime-version:from:from:to:cc:subject
         :date;
        bh=9T98awnzWsEmVzBowjAQmtJPQh6cXGW5YE+wrvDSNrc=;
        b=lq0xLHDsW6R3e9Xtv1c/shB82LVxUcb3qPDGZ2vx7D2zBgY3MLVUnB/nrapMtHdFIn
         /liAe4Afxke5oJfyPN0j+8r0kf7O0YORIaHy33c1kfZxjC87QFOtKgItd6S6TRsreZF4
         DmIjkR3d67zqLNGrBDgEZprkl9HG4Oirm9jG39DNOpcK5hSPoVvHpM7IKb6yTKoY7bk/
         kcPikZWGK4QqRl73pXTn6d3Kr1MdHzzMFWLMgja6KJIsa34dmovrxFg4rvtKp10ewa0z
         kKtZ6GcpDGBY7B8plJdnmWh0zxLEU+q1Fv36owhfPFPEGDnqrwukazyhRYSP+FEgHnqQ
         dOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:date:message-id:subject:mime-version:from:x-gm-message-state
         :from:to:cc:subject:date;
        bh=9T98awnzWsEmVzBowjAQmtJPQh6cXGW5YE+wrvDSNrc=;
        b=SHhgT3IPwW96b7FdTc9As7kMLm4v4M8E25/ziKTk+WtjwN3tNXvfhKqddgo5OuG+Xt
         6YFY7I4/gCu6rFBVtm1lVtS42NV4y0uSGiGCR3jj2JJX2VDpCjEuZ8Sp2Y8fKTbMiF0/
         tnOzaSdmmKN1XPKt6VSrDmp0ff4ox1edRT2ym5u8bdR3jaAhuohbG2ESAGKxuXlNlEef
         Ky6idx6iH65sd658frhUT2CsM5E0bNCvnMmPF+ClUE7RO3FrzEgvOEXaiMuGGkzzRUJC
         0t8KnDXnuNyeBUGlgb60BxKlOWszjtjH7fwtO+Sp0ekfA6E98YGUmHcjdUZvnlxFwjCL
         1xUw==
X-Gm-Message-State: ACrzQf0BSvxXRHKuQdKZgzz6HmojiJlxcGd5qag1h4+z11u6bjAWvI8A
	66NYss1jvmc8I7bZtT5ZbcLfhT38M3NGMg==
X-Google-Smtp-Source: 
 AMsMyM7AuOp4lR2MYMAUgLUv5aUKL1ifDgaTRFuWL0lp+Ecy+tTjNputa9gWrGOygsd7jgXLpCZ7cQ==
X-Received: by 2002:a17:902:7fc8:b0:176:8bc0:3809 with SMTP id
 t8-20020a1709027fc800b001768bc03809mr1231080plb.21.1663816835453;
        Wed, 21 Sep 2022 20:20:35 -0700 (PDT)
Received: from smtpclient.apple ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 n17-20020aa79851000000b0053b0d88220csm3013708pfq.3.2022.09.21.20.20.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2022 20:20:34 -0700 (PDT)
From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A9883771-074E-439B-B9E7-217268407E4F"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Git send-email blocked by gmail security changes  (and how to fix it) 
Message-Id: <7313BA28-2972-4FD7-8E37-27196FAF5B8A@gmail.com>
Date: Wed, 21 Sep 2022 20:20:33 -0700
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3696.120.41.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 03:20:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58128


--Apple-Mail=_A9883771-074E-439B-B9E7-217268407E4F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

TL;DR Google App passwords are a workaround if your google password is =
not working in git send-email.=20

Hi,

Not sure if this is the right list but I thought of sending it here as a =
starter. I was following Stephen Jolley=E2=80=99s email for the Project =
status where it has a section for =E2=80=98ways to contribute=E2=80=99 =
and a pointer to the newcomers wiki. There is a link on How to Submit a =
Patch[1]  which has an example on how to add a gmail account there. I =
followed it but in the end I was blocked by an error stating that my =
'Username and Password not accepted=E2=80=99. Googled a proposed fix[2] =
to go to the gmail security settings and enable "Access for less secure =
apps=E2=80=9D but the solution is outdated as my settings had a notice =
saying that it was removed some time ago.

But I found that you can use another security feature from google called =
app passwords[3]. And that means that it will give you one specific =
password for your app needs. I tested this in the git send-email line =
and it worked. I don=E2=80=99t know if others are doing this or if their =
previous settings remain ok if these were configured before the recent =
security resets that google has done.

Is anyone struggling with this?
Should we update the wiki to include this tip?

Regards,

Benjamin

[1] =
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded =
<https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded>
[2] https://support.google.com/mail/thread/5621336?hl=3Den =
<https://support.google.com/mail/thread/5621336?hl=3Den>
[3] https://support.google.com/accounts/answer/185833 =
<https://support.google.com/accounts/answer/185833>=

--Apple-Mail=_A9883771-074E-439B-B9E7-217268407E4F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);">TL;DR Google App passwords are a workaround if your google password =
is not working in git send-email.&nbsp;</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0);" class=3D"">Hi,</span><br class=3D"" style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0);"><br class=3D"" style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0);"><span style=3D"caret-color: rgb(0, 0, 0); =
color: rgb(0, 0, 0);" class=3D"">Not sure if this is the right list but =
I thought of sending it here as a starter. I was following Stephen =
Jolley=E2=80=99s email for the Project status where it has a section for =
=E2=80=98ways to contribute=E2=80=99 and a pointer to the newcomers =
wiki. There is a link on How to Submit a Patch[1]&nbsp; which has an =
example on how to add a gmail account there. I followed it but in the =
end I was blocked by an error stating that my 'Username and Password not =
accepted=E2=80=99. Googled a proposed fix[2] to go to the gmail security =
settings and enable "Access for less secure apps=E2=80=9D but the =
solution is outdated as my settings had a notice saying that it was =
removed some time ago.</span><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">But I found =
that you can use another security feature from google called app =
passwords[3]. And that means that it will give you one specific password =
for your app needs. I tested this in the git send-email line and it =
worked. I don=E2=80=99t know if others are doing this or if their =
previous settings remain ok if these were configured before the recent =
security resets that google has done.</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
color: rgb(0, 0, 0);">Is anyone struggling with this?</div><div class=3D""=
 style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">Should we =
update the wiki to include this tip?</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
color: rgb(0, 0, 0);">Regards,</div><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">Benjamin<br =
class=3D""><div class=3D""><div class=3D""><br class=3D"">[1]&nbsp;<a =
href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmb=
edded" =
class=3D"">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_Open=
Embedded</a></div></div></div><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);">[2]&nbsp;<a =
href=3D"https://support.google.com/mail/thread/5621336?hl=3Den" =
class=3D"">https://support.google.com/mail/thread/5621336?hl=3Den</a></div=
><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);">[3]&nbsp;<a =
href=3D"https://support.google.com/accounts/answer/185833" =
class=3D"">https://support.google.com/accounts/answer/185833</a></div></bo=
dy></html>=

--Apple-Mail=_A9883771-074E-439B-B9E7-217268407E4F--

