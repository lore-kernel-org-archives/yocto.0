Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5127.1602212658056037820
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 20:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uF7MlEWv;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: idadelm@gmail.com)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E27B638C1575
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 20:04:17 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id p15so10974877ejm.7
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 20:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XzTcMl9pyt9WaCTnrLElj/GumwdCs0mI/WsbUWO+KCE=;
        b=uF7MlEWvB7sdCknmcxZucIrHyvvfagF1tJwPckoskOsh5ZN0WMwrDecPJIbEvrEDo4
         L2CABC1JYVpLLcpcDqXGelzhlbNnVDFMEVX0phrqDQINJHNuI5z91qCgohz1RFJOQ5zI
         rP+ihndJbCaFqkdcyk/v07yyjasUfATI9y0h+HlQzaFvl0pXrjFwP0CdxKql+zslY29n
         JttXidpSAWBYc7Zscp5qz0/h0M+iKTludsCGTJCOBVebv4qskfz6UFaK1a6cmNF37GAv
         pZtFnB2XTLOtApI7VL4mPZ1bQ2KK8UxP+eV/RYiS+eoEsfjn0NypiwQPtFjq0kn+lx4+
         Cgow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XzTcMl9pyt9WaCTnrLElj/GumwdCs0mI/WsbUWO+KCE=;
        b=WHtirwxGsaPo/gqcceiUUn+l0Pb/DfhCH9tEXv75reJgRGTrurL8Ayib8vn2uxa1rg
         f7F686mrpsC33mjfOdjDUlq2+YiO0H3KyoL5Q8hFl89EfV+kJFaD1aMkV4EwVLA5KXsp
         Qa2oaQipJYwt+1Pw2zWCGZhCmRtniMSSB0kxd6LEItxmZN1XKhi2i5v9/eCceKYaTy5d
         9vm76TIUMsB3///k3iwYf2HlJVHVK82wnDAMMBGyHUZjmyIFzl6qZrVrxqzJnkxfnpsF
         eAd9EqtSHlEDPM9W7fuhDw7Pw+2Dg7nkSh5lsMgqrtKuRDh4jdx1KBpBzIrNCew2c21a
         xZxw==
X-Gm-Message-State: AOAM533BcDLd4LL+m8Gcm4JzC5UCPFsP0Tzg+P4QaUksP/RNUbi13Tjv
	cdIbg1wc2PIsspgxO7z0vZwpM+RL3uQehDJ1DfU=
X-Google-Smtp-Source: ABdhPJxf1ou2ySky7FkuZy+4mz6e/0RFyGnk837FQqyrlOk09uGsKr8lIgl6j5aJF7bV6xnP/lwWMvmOAj3hzj+l/J8=
X-Received: by 2002:a17:906:6007:: with SMTP id o7mr12573831ejj.550.1602212656469;
 Thu, 08 Oct 2020 20:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201008182311.14029-1-idadelm@gmail.com> <CANx9H-DkmT_vzWKi6TnFjfnedkuqdZWwcOLKzLJ4JsMU=WybUg@mail.gmail.com>
In-Reply-To: <CANx9H-DkmT_vzWKi6TnFjfnedkuqdZWwcOLKzLJ4JsMU=WybUg@mail.gmail.com>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Fri, 9 Oct 2020 04:04:04 +0100
Message-ID: <CAN7sTgs9X_tSXxA0g62ZnPTkvHwmKb61sw=A49nZqD3SJzegSw@mail.gmail.com>
Subject: Re: [yocto] [YOCTO#13529][prelink-cross v3] Add SPDX license headers to all source files
To: Tim Orling <ticotimo@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, Mark Hatle <mark.hatle@kernel.crashing.org>
Content-Type: multipart/alternative; boundary="0000000000003e59dc05b1343422"

--0000000000003e59dc05b1343422
Content-Type: text/plain; charset="UTF-8"

Got it, thanks!

On Fri, Oct 9, 2020 at 3:59 AM Tim Orling <ticotimo@gmail.com> wrote:

> Thank you so much for the revision.
>
> I was not clear enough in what I said earlier and we had not captured it
> in the wiki either. Richard and I have updated the wiki.
> https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
>
> What I was thinking, but did not clearly say is:
>
> You should use "Add SPDX license headers to all source files" as the git
> shortlog (the first line of the text you type in when you do git commit
> -s). I believe you did this already.
>
> Second, the [YOCTO #13529] tag goes into the git commit message itself,
> not the subject line of  send-email. I did not explain that well.
>
> So here is explicitly what is the best practice:
>
> $ git commit -s (or at this point $ git commit --amend)
> In the editor enter:
>
> Add SPDX license headers to all source files
>
> Added SPDX headers in all source files except src/makecrc.c since it is
> not copyrighted.
> Skipped Makefile.am as well.
> Also cleared redundant license text.
>
> Fixes: [YOCTO #13529]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>
> Then send the patch:
>
> $ git send-email --to=yocto@lists.yoctoproject.org
> --subject-prefix="prelink-cross][PATCH v4" --cc
> mark.hatle@kernel.crashing.org -M -1 --annotate
>
> NOTE: the repository has two errors in the README (which you could
> optionally fix in v4).
> (1) Mark Hatle is no longer at Wind River so the email needs to change
> (2) The Yocto Project mailing list URL has changed to "
> yocto@lists.yoctoproject.org"
>
> The -M part makes the email be formatted properly with regard to
> whitespace so it can be merged cleanly. The -1 part means "one commit". So
> if your contribution is 3 patches, it would be -3. The --annotate part of
> that command line will drop you into an editor. Since this is a revision of
> a prior patch, we want to add the changes underneath the --- This makes it
> easy to review, but does not put transient, ephemeral text into the
> permanent git history:
>
> Add SPDX license headers to all source files
>
> Added SPDX headers in all source files except src/makecrc.c since it is
> not copyrighted.
> Skipped Makefile.am as well.
> Also cleared redundant license text.
>
> Fixes: [YOCTO #13529]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
> Changes in V4:
>   * Add [YOCTO #13529] tag to git commit log instead of subject line
>
> Changes in V3:
>   * Address review comments
>   * Change subject line to reflect what the patch is trying to do
>
> Changes in V2:
>
>  src/arch-alpha.c   | 15 ++-------------
> <snip>
>
>
>
> On Thu, Oct 8, 2020 at 11:23 AM Meh Mbeh Ida Delphine <idadelm@gmail.com>
> wrote:
>
>> Fixed bug #13529
>> Added SPDX headers in all source files except src/makecrc.c since it is
>> not copyrighted.
>> Skipped Makefile.am as well.
>> Also cleared redundant license text.
>>
>> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>> ---
>>
>

--0000000000003e59dc05b1343422
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Got it, thanks!=C2=A0<br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 9, 2020 at 3:59 AM Ti=
m Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr">Thank you so much for the revision.<div><br></d=
iv><div>I was not clear enough in what I said earlier and we had not captur=
ed it in the wiki either. Richard and I have updated the wiki.</div><div><a=
 href=3D"https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines"=
 target=3D"_blank">https://www.openembedded.org/wiki/Commit_Patch_Message_G=
uidelines</a><br></div><div><br></div><div>What I was thinking, but did not=
 clearly say is:</div><div><br></div><div>You should use &quot;Add SPDX lic=
ense headers to all source files&quot; as the git shortlog (the first line =
of the text you type in when=C2=A0you do git commit -s). I believe you did =
this already.</div><div><br></div><div>Second, the [YOCTO #13529] tag goes =
into the git commit message itself, not the subject line of=C2=A0 send-emai=
l. I did not explain that well.</div><div><br></div><div>So here is explici=
tly=C2=A0what is the best practice:</div><div><br></div><div>$ git commit -=
s (or at this point $ git commit --amend)</div><div>In the editor enter:</d=
iv><div><br></div><div><font face=3D"monospace">Add SPDX license headers to=
 all source files<br></font></div><div><font face=3D"monospace"><br></font>=
</div><div><font face=3D"monospace">Added SPDX headers in all source files =
except src/makecrc.c since it is not copyrighted.<br>Skipped Makefile.am as=
 well.<br>Also cleared redundant license text.</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace">Fixes: [YOCTO=
 #13529]<br><br>Signed-off-by: Meh Mbeh=C2=A0<span>Ida</span>=C2=A0Delphine=
 &lt;<a href=3D"mailto:idadelm@gmail.com" target=3D"_blank">idadelm@gmail.c=
om</a>&gt;</font><br><br></div><div>Then send the patch:</div><div><br></di=
v><div>$ git send-email --to=3D<a href=3D"mailto:yocto@lists.yoctoproject.o=
rg" target=3D"_blank">yocto@lists.yoctoproject.org</a> --subject-prefix=3D&=
quot;prelink-cross][PATCH v4&quot; --cc=C2=A0<a href=3D"mailto:mark.hatle@k=
ernel.crashing.org" target=3D"_blank">mark.hatle@kernel.crashing.org</a> -M=
 -1 --annotate</div><div><br></div><div>NOTE: the repository has two errors=
 in the README (which you could optionally fix in v4).</div><div>(1) Mark H=
atle is no longer at Wind River so the=C2=A0email needs to change</div><div=
>(2) The Yocto Project mailing list URL has changed to &quot;<a href=3D"mai=
lto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoprojec=
t.org</a>&quot;</div><div><br></div><div>The -M part makes the email be for=
matted properly with regard to whitespace so it can be merged cleanly. The =
-1 part means &quot;one commit&quot;. So if your=C2=A0contribution is 3 pat=
ches, it would be -3. The --annotate part of that command line will drop yo=
u into an editor. Since this is a revision of a prior patch, we want to add=
 the changes underneath the --- This makes it easy to review, but does not =
put transient, ephemeral text into the permanent git history:</div><div><br=
></div><div><font face=3D"monospace">Add SPDX license headers to all source=
 files<br></font></div><div><font face=3D"monospace"><br></font></div><div>=
<font face=3D"monospace">Added SPDX headers in all source files except src/=
makecrc.c since it is not copyrighted.<br>Skipped Makefile.am as well.<br>A=
lso cleared redundant license text.</font></div><div><font face=3D"monospac=
e"><br></font></div><div><font face=3D"monospace">Fixes: [YOCTO #13529]<br>=
<br></font></div><div><span style=3D"font-family:monospace">Signed-off-by: =
Meh Mbeh=C2=A0</span><span style=3D"font-family:monospace">Ida</span><span =
style=3D"font-family:monospace">=C2=A0Delphine &lt;</span><a href=3D"mailto=
:idadelm@gmail.com" style=3D"font-family:monospace" target=3D"_blank">idade=
lm@gmail.com</a><span style=3D"font-family:monospace">&gt;</span><br><font =
face=3D"monospace">---</font></div><div><font face=3D"monospace">Changes in=
 V4:</font></div><div><font face=3D"monospace">=C2=A0 * Add [YOCTO #13529] =
tag to git commit log instead of subject line</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace">Changes in V3=
:</font></div><div><font face=3D"monospace">=C2=A0 * Address review comment=
s</font></div><div><font face=3D"monospace">=C2=A0 * Change subject line to=
 reflect what the patch is trying to do</font></div><div><font face=3D"mono=
space"><br></font></div><div><font face=3D"monospace">Changes in V2:</font>=
</div><div><font face=3D"monospace"><br>=C2=A0src/arch-alpha.c =C2=A0 | 15 =
++-------------</font><br></div><div>&lt;snip&gt;</div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Oct 8, 2020 at 11:23 AM Meh Mbeh Ida Delphine &lt;<a href=
=3D"mailto:idadelm@gmail.com" target=3D"_blank">idadelm@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Fixed bug =
#13529<br>
Added SPDX headers in all source files except src/makecrc.c since it is not=
 copyrighted.<br>
Skipped Makefile.am as well.<br>
Also cleared redundant license text.<br>
<br>
Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.co=
m" target=3D"_blank">idadelm@gmail.com</a>&gt;<br>
---<br>
</blockquote></div></div>
</blockquote></div>

--0000000000003e59dc05b1343422--
