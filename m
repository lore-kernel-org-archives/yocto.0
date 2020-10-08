Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3051.1602178199909021332
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 10:30:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbEpOACX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: ticotimo@gmail.com)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BFEAD38C1562
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 10:29:59 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id l8so7050036ioh.11
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WFq17vn87x38/IF/Q5sjO3ftdgdgM/+w6cZFcN7rLIw=;
        b=qbEpOACXlZN6ulXVwsLPsk97H1H5M/9n6BaEs0d3gj+TOJ2Gwal5qhWecFQVj72LOd
         dcbvAoRNWMOsNCwEx4Qs+FtnGaKF9P35MaIZ0ZOzG/x6MY3TKiy2dArr0HTzEqhZJpIZ
         RjV8lMCfwzHmJueu7EZk+PfL45QEetmoFnvQFRT/L6u/il/uN45oLh68kNA1iNBsptpZ
         9JXae9ERgGYG34V1XuatbLNmydRxZA6OEQvYQh5or0O/qWq0UgGjnTNuuDtkhZ2zl9Pi
         a0PO8qS5/E4CCt3Svxi9PsdLGM/2EYF0ztPzUarsMth4YxLf2DTBW/l9A+a/hCd32N5K
         2aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WFq17vn87x38/IF/Q5sjO3ftdgdgM/+w6cZFcN7rLIw=;
        b=T8oZWmfaW8//LPm8Nu0+2PKIfVUjOrEk5do5e9jE/5N4lmNWMVJyhrwEKd6v7pCcuL
         m+4V5AhNK+PzNy7MCs3BqOjzUffuBGdGczU4MVJPqdsH7CV4aLhkWp9lBMBmltE5lFF4
         KH7wCMqizJFf7ZyrJLV7nAn5jwK4rH+qWbehSoGTw25OzUmOrT862RR2Thx998m/2Gbl
         DGDLCtSQkEeQUyJEUy8/RZcPex/V8FblGbVNp1T82teAAX2/uLf+zZ3Hr1HU5+d2wGn/
         +XnXccJiOIuwiCLfBLbcHmX7U5P+59SiZZJ5eI9sjNjle6Fzpx7tA6UWfYyEnI5DBx4C
         qd8Q==
X-Gm-Message-State: AOAM533zR/8q951JPPoQW8EsOs05bVZihH4cZjGfC4QKP8UyFPjz7lf3
	woqJPfGDxOaOsvDSp/131e5YoBJbdrrWGT8+9zw=
X-Google-Smtp-Source: ABdhPJyk0Ei2lXx7KzO+igZUa7+Jwow3MDrxfY1yH5ExNoYNe79b/zCdgZPc/VjQKogmduZmA9ZwzR4RUiNaiHkSOzM=
X-Received: by 2002:a6b:f60b:: with SMTP id n11mr6748466ioh.45.1602178198645;
 Thu, 08 Oct 2020 10:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <20201008163823.10863-1-idadelm@gmail.com>
In-Reply-To: <20201008163823.10863-1-idadelm@gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Thu, 8 Oct 2020 10:29:47 -0700
Message-ID: <CANx9H-CwP6zfA4jTKDuwn_AByJD9-J-gGa2Y1a34kkxbsFaDUQ@mail.gmail.com>
Subject: Re: [yocto] [prelink-cross v2] Fixed bug #13529
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: Mark Hatle <mark.hatle@windriver.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000065b36205b12c2ec6"

--00000000000065b36205b12c2ec6
Content-Type: text/plain; charset="UTF-8"

Hi Ida! Thank you so much for the patch.

Just a few things to help you along:
(0) general guidelines
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines and
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
OpenEmbedded and Yocto Project are tightly coupled, so that is why these
references are coming from openembedded.
(1) the subject line should be descriptive of what the change is, so it
would be better to say "[prelink-cross] Add SPDX license headers to all
source files"
This is because it will be permanent git history and we want to be able to
rapidly scan the "shortlog" that you would see with "git log --oneline" and
know immediately what was done in a given commit
(2) In the body of the commit message (after the first line) you can put in
more detail when it is appropriate, for instance you could mention the
files that did not have a license and you skipped them, etc.
This is a way for us to communicate the thought process we followed, or the
steps we did to reproduce the problem, or any other communication that
might be helpful
(3) We have a convention to use [YOCTO#13529] to show that the patch fixes
a bug from the Yocto Project Bugzilla.
This is to make it possible for automated capturing of the "tags" that tell
us which commits addressed which bugs.
(4) One last thing, when sending follow-up patches (v2, v3, etc.), we ask
to put what changed from v1 to v2 to v3 underneath the --- in the git log.
You can make this easy by adding --annotate to the git send-email command
and it will give you and opportunity to edit the log before you send the
patch.

Some of this is tribal knowledge and perhaps not captured in the wiki and
we should improve that. Or put it into the Yocto Project
documentation...but it should be captured somewhere :)

--Tim




On Thu, Oct 8, 2020 at 9:38 AM Meh Mbeh Ida Delphine <idadelm@gmail.com>
wrote:

> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>

^^^ anything underneath the --- will not show up in the commit log, so this
is where we put things that are effemeral, such as "Changes since v2"


>  src/arch-alpha.c   | 15 ++-------------
>
> <snip>
>
>

--00000000000065b36205b12c2ec6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ida! Thank you so much for the patch.<=
div><br></div><div>Just a few things to help you along:</div><div>(0) gener=
al guidelines=C2=A0<a href=3D"https://www.openembedded.org/wiki/Commit_Patc=
h_Message_Guidelines">https://www.openembedded.org/wiki/Commit_Patch_Messag=
e_Guidelines</a> and=C2=A0<a href=3D"https://www.openembedded.org/wiki/How_=
to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to=
_submit_a_patch_to_OpenEmbedded</a></div><div>OpenEmbedded and Yocto Projec=
t are tightly coupled, so that is why these references are coming from open=
embedded.</div><div>(1) the subject line should be descriptive of what the =
change is, so it would be better to say &quot;[prelink-cross]=C2=A0Add SPDX=
 license headers to all source files&quot;</div><div>This is because it wil=
l be permanent git history and we want to be able to rapidly scan the &quot=
;shortlog&quot; that you would see with &quot;git log --oneline&quot; and k=
now immediately what was done in a given=C2=A0commit</div><div>(2) In the b=
ody of the commit message (after the first line) you can put in more detail=
 when it is appropriate, for instance you could mention the files that did =
not have a license and you skipped them, etc.</div><div>This is a way for u=
s to communicate the thought process we followed, or the steps we did to re=
produce the problem, or any other communication that might be helpful</div>=
<div>(3) We have a convention to use [YOCTO#13529] to show that the patch f=
ixes a bug from the Yocto Project Bugzilla.</div><div>This is to make it po=
ssible for automated capturing of the &quot;tags&quot; that tell us which c=
ommits addressed which bugs.</div><div>(4)=C2=A0One last thing, when sendin=
g follow-up patches (v2, v3, etc.), we ask to put what changed from v1 to v=
2 to v3 underneath the --- in the git log. You can make this easy by adding=
 --annotate to the git send-email command and it will give you and opportun=
ity to edit the log before you send the patch.</div><div><br></div><div>Som=
e of this is tribal knowledge and perhaps not captured in the wiki and we s=
hould improve that. Or put it into the Yocto Project documentation...but it=
 should be captured somewhere :)</div><div><br></div><div>--Tim</div><div><=
br></div><div></div><div><br></div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8, 2020 at 9:=
38 AM Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.com">idadel=
m@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idade=
lm@gmail.com" target=3D"_blank">idadelm@gmail.com</a>&gt;<br>
---<br></blockquote><div><br></div><div>^^^ anything underneath the --- wil=
l not show up in the commit log, so this is where we put things that are ef=
femeral, such as &quot;Changes since v2&quot;</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
=C2=A0src/arch-alpha.c=C2=A0 =C2=A0| 15 ++-------------<br><br>&lt;snip&gt;=
<br>
<br>
</blockquote></div></div>

--00000000000065b36205b12c2ec6--
