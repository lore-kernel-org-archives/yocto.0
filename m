Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.275.1602179528560833450
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 10:52:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rc2jab2j;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: idadelm@gmail.com)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A07DA38C1562
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 10:52:07 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id x1so6740255eds.1
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 10:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tx8wsmASe5lqTnFWp898angUAPUtxCapLc7t4BZvH0s=;
        b=rc2jab2jx+cJGWuzNggX9I1rekaOwPigMxMCEGvCLlPEYrByn8VCkrV8yDPKL4w5IA
         0qYVXUZlYfzmaNUTR3c5P73zODUnVBnAtUOw1aVAfE322ElM2ScmjdjDXiTdg4g+bBvN
         KuxCuClmR6DKJZGB5mBz0zyKruslBwJaNRCnNQzdK2RPAPdxpmB8EwGM96q2hYwoGVR5
         Ktdil/QPHKiy8AJGA6hVXR1zXqBz8rZGLWbVFyrcfCZza+x7Q0F5XwZ66/j0h0GqA6mN
         fvpYEMnbRpzBRmOcMt2D3SRXXDm0zNjDk7b0Cio9FcS+l4yyM8ppNAEAXX7uu+cjNFsf
         ehXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tx8wsmASe5lqTnFWp898angUAPUtxCapLc7t4BZvH0s=;
        b=RtjTSLaPrkYM28XioK830SBE14VHj5L4AyqkO4lGTjuhYXnjE62frvnGcGCAZFS0L4
         /5GJ6szM0U7HCx2UrwRf81cyHFoD1e8tZYasVigRyqOHSJC1X11YoduCPhDUp+uHwkkj
         03YcqiGhhcmbfYYkDPGAmLtiF9CnD4bmuRlXXagda12CrhmVOX8D1kWtSylpx0fhwo92
         xc6KcmbNHwxfsJXDxpLsb0UcIYrY8NBPfxOhQ0ueitQJpXf4dE15qq2SE/GKaTF59ncc
         /KtiLbVBX0pIQaAkopxZuQh0T7iR4yUxRVEoLwHDaWY6z5bqWBIZ40BXnn5gRJkBsUZd
         +e6g==
X-Gm-Message-State: AOAM533LgfKSTyE35ALtfd6rhFkpSydv+L4yiMoU33FArNzeUZv8GlWc
	P3oPtqzsAd2jCFS++IGgvkUuuTiDRWVqj/+svRA=
X-Google-Smtp-Source: ABdhPJyqiQaRicpFmNX4PFq/XDkyZoesKp1FfrRmoR2ZAZBOBEIClBONd524DGg2GOkJyErAwF+V+JvaVkmwx04Ox0I=
X-Received: by 2002:a05:6402:2207:: with SMTP id cq7mr10432495edb.359.1602179526121;
 Thu, 08 Oct 2020 10:52:06 -0700 (PDT)
MIME-Version: 1.0
References: <20201008163823.10863-1-idadelm@gmail.com> <CANx9H-CwP6zfA4jTKDuwn_AByJD9-J-gGa2Y1a34kkxbsFaDUQ@mail.gmail.com>
In-Reply-To: <CANx9H-CwP6zfA4jTKDuwn_AByJD9-J-gGa2Y1a34kkxbsFaDUQ@mail.gmail.com>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Thu, 8 Oct 2020 18:51:54 +0100
Message-ID: <CAN7sTgscMS-ptT9eAbT8j6pKHYgCYD44kUfm2mwyhy92=iX=og@mail.gmail.com>
Subject: Re: [yocto] [prelink-cross v2] Fixed bug #13529
To: Tim Orling <ticotimo@gmail.com>
Cc: Mark Hatle <mark.hatle@windriver.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000855db605b12c7d2a"

--000000000000855db605b12c7d2a
Content-Type: text/plain; charset="UTF-8"

Awesome, thanks for the feedback.

On Thu, Oct 8, 2020 at 6:29 PM Tim Orling <ticotimo@gmail.com> wrote:

> Hi Ida! Thank you so much for the patch.
>
> Just a few things to help you along:
> (0) general guidelines
> https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines and
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
> OpenEmbedded and Yocto Project are tightly coupled, so that is why these
> references are coming from openembedded.
> (1) the subject line should be descriptive of what the change is, so it
> would be better to say "[prelink-cross] Add SPDX license headers to all
> source files"
> This is because it will be permanent git history and we want to be able to
> rapidly scan the "shortlog" that you would see with "git log --oneline" and
> know immediately what was done in a given commit
> (2) In the body of the commit message (after the first line) you can put
> in more detail when it is appropriate, for instance you could mention the
> files that did not have a license and you skipped them, etc.
> This is a way for us to communicate the thought process we followed, or
> the steps we did to reproduce the problem, or any other communication that
> might be helpful
> (3) We have a convention to use [YOCTO#13529] to show that the patch fixes
> a bug from the Yocto Project Bugzilla.
> This is to make it possible for automated capturing of the "tags" that
> tell us which commits addressed which bugs.
> (4) One last thing, when sending follow-up patches (v2, v3, etc.), we ask
> to put what changed from v1 to v2 to v3 underneath the --- in the git log.
> You can make this easy by adding --annotate to the git send-email command
> and it will give you and opportunity to edit the log before you send the
> patch.
>
> Some of this is tribal knowledge and perhaps not captured in the wiki and
> we should improve that. Or put it into the Yocto Project
> documentation...but it should be captured somewhere :)
>
> --Tim
>
>
>
>
> On Thu, Oct 8, 2020 at 9:38 AM Meh Mbeh Ida Delphine <idadelm@gmail.com>
> wrote:
>
>> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>> ---
>>
>
> ^^^ anything underneath the --- will not show up in the commit log, so
> this is where we put things that are effemeral, such as "Changes since v2"
>
>
>>  src/arch-alpha.c   | 15 ++-------------
>>
>> <snip>
>>
>>

--000000000000855db605b12c7d2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Awesome, thanks for the feedback.=C2=A0<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8, =
2020 at 6:29 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticoti=
mo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ida! Thank you so much for=
 the patch.<div><br></div><div>Just a few things to help you along:</div><d=
iv>(0) general guidelines=C2=A0<a href=3D"https://www.openembedded.org/wiki=
/Commit_Patch_Message_Guidelines" target=3D"_blank">https://www.openembedde=
d.org/wiki/Commit_Patch_Message_Guidelines</a> and=C2=A0<a href=3D"https://=
www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded" target=3D"=
_blank">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbe=
dded</a></div><div>OpenEmbedded and Yocto Project are tightly coupled, so t=
hat is why these references are coming from openembedded.</div><div>(1) the=
 subject line should be descriptive of what the change is, so it would be b=
etter to say &quot;[prelink-cross]=C2=A0Add SPDX license headers to all sou=
rce files&quot;</div><div>This is because it will be permanent git history =
and we want to be able to rapidly scan the &quot;shortlog&quot; that you wo=
uld see with &quot;git log --oneline&quot; and know immediately what was do=
ne in a given=C2=A0commit</div><div>(2) In the body of the commit message (=
after the first line) you can put in more detail when it is appropriate, fo=
r instance you could mention the files that did not have a license and you =
skipped them, etc.</div><div>This is a way for us to communicate the though=
t process we followed, or the steps we did to reproduce the problem, or any=
 other communication that might be helpful</div><div>(3) We have a conventi=
on to use [YOCTO#13529] to show that the patch fixes a bug from the Yocto P=
roject Bugzilla.</div><div>This is to make it possible for automated captur=
ing of the &quot;tags&quot; that tell us which commits addressed which bugs=
.</div><div>(4)=C2=A0One last thing, when sending follow-up patches (v2, v3=
, etc.), we ask to put what changed from v1 to v2 to v3 underneath the --- =
in the git log. You can make this easy by adding --annotate to the git send=
-email command and it will give you and opportunity to edit the log before =
you send the patch.</div><div><br></div><div>Some of this is tribal knowled=
ge and perhaps not captured in the wiki and we should improve that. Or put =
it into the Yocto Project documentation...but it should be captured somewhe=
re :)</div><div><br></div><div>--Tim</div><div><br></div><div></div><div><b=
r></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Oct 8, 2020 at 9:38 AM Meh Mbeh Ida Delphine=
 &lt;<a href=3D"mailto:idadelm@gmail.com" target=3D"_blank">idadelm@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.=
com" target=3D"_blank">idadelm@gmail.com</a>&gt;<br>
---<br></blockquote><div><br></div><div>^^^ anything underneath the --- wil=
l not show up in the commit log, so this is where we put things that are ef=
femeral, such as &quot;Changes since v2&quot;</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
=C2=A0src/arch-alpha.c=C2=A0 =C2=A0| 15 ++-------------<br><br>&lt;snip&gt;=
<br>
<br>
</blockquote></div></div>
</blockquote></div>

--000000000000855db605b12c7d2a--
