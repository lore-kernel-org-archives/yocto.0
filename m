Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5068.1602212397160640701
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 19:59:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ3qQS+l;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: ticotimo@gmail.com)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 648C138C113E
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 19:59:56 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id g7so8577678iov.13
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 19:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U+LKYc3fRLqFXSbJmuo4kh5xGiSMknRbKMXir9glTOg=;
        b=vZ3qQS+l+zmaxC8FY22iqLS4DA3+cIVHmEEXmSuKBi72nqg0Pv7vW6/O5rpFQS9tcW
         liMcDX1EE2fjY00mJ3a0XY3UJHr+XRaLS9jR3y/RkMGWsuzOGfOlvsHTNBwnusrHobpD
         9Qp5ecapjknEqjJrzXw+HncvkgC1VXWiu28rmljmACOYOj0oHZNbGLCjRWyNZi/mwRjq
         MaVDIPWTyDpXPpyF2uTxdh5H0G1EMzg9gzir2JcXDDGAJNZFp0XbfLUfUu/w4A7Vbl2Z
         t/b8NmCHL/fSoe7f3nJ7jtoz71/ivIz7JTDn4iDt9owe+mU5SRDHHKp+GK9c0p2GnSbW
         sbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U+LKYc3fRLqFXSbJmuo4kh5xGiSMknRbKMXir9glTOg=;
        b=ZcFZrtZkJI/TWpEaW4nk5xxKR6qOe76Z3CU4du8VV+QViArLez6hQMtSiz+aAwF64S
         QCNhRaxvG/AkhZgZdPQQ4falD1z4WkmqIiL780JnylgS4oxi7sQT7tb0zYRXYT52NlNg
         +EhAAby3u67BQD1Oudc6C0cFkwCqqcpnrlqhQiL6mfAsRpYvT16YMRcTdynMtnKohzwr
         To/8oJlwmKbCYiBQaGEiqfr+w8LCnxdoqVsMuzmZijUWNEHQnqAdyuv/5uQlZnowz4ln
         2TvRtAb1ZwmFrXRFMTMwqWHj1aA7apzHqigDgPGWLABWSX1xE6TKnXoZzzg0Fc5MJlMi
         piUQ==
X-Gm-Message-State: AOAM5320OxGVQk1bM3URgxteO3LgjJP0OP1IGu3hYzNwol1lmQCe0x4V
	EQhDfHCTgq8PjMwYYV0JS9SIAc1AX/AjPsOF4ig=
X-Google-Smtp-Source: ABdhPJzlK29di0O1sReLKgkCH6nRL/AKdEqEXI5aC3CBkuqYnTr0ViVjU0XkRtCjij+8BHAsEONBWIXfWvmUZLP/Z/0=
X-Received: by 2002:a5d:96ce:: with SMTP id r14mr7845464iol.146.1602212395592;
 Thu, 08 Oct 2020 19:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20201008182311.14029-1-idadelm@gmail.com>
In-Reply-To: <20201008182311.14029-1-idadelm@gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Thu, 8 Oct 2020 19:59:44 -0700
Message-ID: <CANx9H-DkmT_vzWKi6TnFjfnedkuqdZWwcOLKzLJ4JsMU=WybUg@mail.gmail.com>
Subject: Re: [yocto] [YOCTO#13529][prelink-cross v3] Add SPDX license headers to all source files
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, Mark Hatle <mark.hatle@kernel.crashing.org>
Content-Type: multipart/alternative; boundary="000000000000b1af4d05b13424b7"

--000000000000b1af4d05b13424b7
Content-Type: text/plain; charset="UTF-8"

Thank you so much for the revision.

I was not clear enough in what I said earlier and we had not captured it in
the wiki either. Richard and I have updated the wiki.
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

What I was thinking, but did not clearly say is:

You should use "Add SPDX license headers to all source files" as the git
shortlog (the first line of the text you type in when you do git commit
-s). I believe you did this already.

Second, the [YOCTO #13529] tag goes into the git commit message itself, not
the subject line of  send-email. I did not explain that well.

So here is explicitly what is the best practice:

$ git commit -s (or at this point $ git commit --amend)
In the editor enter:

Add SPDX license headers to all source files

Added SPDX headers in all source files except src/makecrc.c since it is not
copyrighted.
Skipped Makefile.am as well.
Also cleared redundant license text.

Fixes: [YOCTO #13529]

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>

Then send the patch:

$ git send-email --to=yocto@lists.yoctoproject.org
--subject-prefix="prelink-cross][PATCH v4" --cc
mark.hatle@kernel.crashing.org -M -1 --annotate

NOTE: the repository has two errors in the README (which you could
optionally fix in v4).
(1) Mark Hatle is no longer at Wind River so the email needs to change
(2) The Yocto Project mailing list URL has changed to "
yocto@lists.yoctoproject.org"

The -M part makes the email be formatted properly with regard to whitespace
so it can be merged cleanly. The -1 part means "one commit". So if
your contribution is 3 patches, it would be -3. The --annotate part of that
command line will drop you into an editor. Since this is a revision of a
prior patch, we want to add the changes underneath the --- This makes it
easy to review, but does not put transient, ephemeral text into the
permanent git history:

Add SPDX license headers to all source files

Added SPDX headers in all source files except src/makecrc.c since it is not
copyrighted.
Skipped Makefile.am as well.
Also cleared redundant license text.

Fixes: [YOCTO #13529]

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
---
Changes in V4:
  * Add [YOCTO #13529] tag to git commit log instead of subject line

Changes in V3:
  * Address review comments
  * Change subject line to reflect what the patch is trying to do

Changes in V2:

 src/arch-alpha.c   | 15 ++-------------
<snip>



On Thu, Oct 8, 2020 at 11:23 AM Meh Mbeh Ida Delphine <idadelm@gmail.com>
wrote:

> Fixed bug #13529
> Added SPDX headers in all source files except src/makecrc.c since it is
> not copyrighted.
> Skipped Makefile.am as well.
> Also cleared redundant license text.
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>

--000000000000b1af4d05b13424b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thank you so much for the revision.<div><=
br></div><div>I was not clear enough in what I said earlier and we had not =
captured it in the wiki either. Richard and I have updated the wiki.</div><=
div><a href=3D"https://www.openembedded.org/wiki/Commit_Patch_Message_Guide=
lines">https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a=
><br></div><div><br></div><div>What I was thinking, but did not clearly say=
 is:</div><div><br></div><div>You should use &quot;Add SPDX license headers=
 to all source files&quot; as the git shortlog (the first line of the text =
you type in when=C2=A0you do git commit -s). I believe you did this already=
.</div><div><br></div><div>Second, the [YOCTO #13529] tag goes into the git=
 commit message itself, not the subject line of=C2=A0 send-email. I did not=
 explain that well.</div><div><br></div><div>So here is explicitly=C2=A0wha=
t is the best practice:</div><div><br></div><div>$ git commit -s (or at thi=
s point $ git commit --amend)</div><div>In the editor enter:</div><div><br>=
</div><div><font face=3D"monospace">Add SPDX license headers to all source =
files<br></font></div><div><font face=3D"monospace"><br></font></div><div><=
font face=3D"monospace">Added SPDX headers in all source files except src/m=
akecrc.c since it is not copyrighted.<br>Skipped Makefile.am as well.<br>Al=
so cleared redundant license text.</font></div><div><font face=3D"monospace=
"><br></font></div><div><font face=3D"monospace">Fixes: [YOCTO #13529]<br><=
br>Signed-off-by: Meh Mbeh=C2=A0<span class=3D"gmail-il">Ida</span>=C2=A0De=
lphine &lt;<a href=3D"mailto:idadelm@gmail.com" target=3D"_blank">idadelm@g=
mail.com</a>&gt;</font><br><br></div><div>Then send the patch:</div><div><b=
r></div><div>$ git send-email --to=3D<a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a> --subject-prefix=3D&quot;prelink=
-cross][PATCH v4&quot; --cc=C2=A0<a href=3D"mailto:mark.hatle@kernel.crashi=
ng.org">mark.hatle@kernel.crashing.org</a> -M -1 --annotate</div><div><br><=
/div><div>NOTE: the repository has two errors in the README (which you coul=
d optionally fix in v4).</div><div>(1) Mark Hatle is no longer at Wind Rive=
r so the=C2=A0email needs to change</div><div>(2) The Yocto Project mailing=
 list URL has changed to &quot;<a href=3D"mailto:yocto@lists.yoctoproject.o=
rg">yocto@lists.yoctoproject.org</a>&quot;</div><div><br></div><div>The -M =
part makes the email be formatted properly with regard to whitespace so it =
can be merged cleanly. The -1 part means &quot;one commit&quot;. So if your=
=C2=A0contribution is 3 patches, it would be -3. The --annotate part of tha=
t command line will drop you into an editor. Since this is a revision of a =
prior patch, we want to add the changes underneath the --- This makes it ea=
sy to review, but does not put transient, ephemeral text into the permanent=
 git history:</div><div><br></div><div><font face=3D"monospace">Add SPDX li=
cense headers to all source files<br></font></div><div><font face=3D"monosp=
ace"><br></font></div><div><font face=3D"monospace">Added SPDX headers in a=
ll source files except src/makecrc.c since it is not copyrighted.<br>Skippe=
d Makefile.am as well.<br>Also cleared redundant license text.</font></div>=
<div><font face=3D"monospace"><br></font></div><div><font face=3D"monospace=
">Fixes: [YOCTO #13529]<br><br></font></div><div><span style=3D"font-family=
:monospace">Signed-off-by: Meh Mbeh=C2=A0</span><span class=3D"gmail-il" st=
yle=3D"font-family:monospace">Ida</span><span style=3D"font-family:monospac=
e">=C2=A0Delphine &lt;</span><a href=3D"mailto:idadelm@gmail.com" target=3D=
"_blank" style=3D"font-family:monospace">idadelm@gmail.com</a><span style=
=3D"font-family:monospace">&gt;</span><br><font face=3D"monospace">---</fon=
t></div><div><font face=3D"monospace">Changes in V4:</font></div><div><font=
 face=3D"monospace">=C2=A0 * Add [YOCTO #13529] tag to git commit log inste=
ad of subject line</font></div><div><font face=3D"monospace"><br></font></d=
iv><div><font face=3D"monospace">Changes in V3:</font></div><div><font face=
=3D"monospace">=C2=A0 * Address review comments</font></div><div><font face=
=3D"monospace">=C2=A0 * Change subject line to reflect what the patch is tr=
ying to do</font></div><div><font face=3D"monospace"><br></font></div><div>=
<font face=3D"monospace">Changes in V2:</font></div><div><font face=3D"mono=
space"><br>=C2=A0src/arch-alpha.c =C2=A0 | 15 ++-------------</font><br></d=
iv><div>&lt;snip&gt;</div><div><br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8, 2020=
 at 11:23 AM Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.com"=
>idadelm@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Fixed bug #13529<br>
Added SPDX headers in all source files except src/makecrc.c since it is not=
 copyrighted.<br>
Skipped Makefile.am as well.<br>
Also cleared redundant license text.<br>
<br>
Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.co=
m" target=3D"_blank">idadelm@gmail.com</a>&gt;<br>
---<br>
</blockquote></div></div>

--000000000000b1af4d05b13424b7--
