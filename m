Return-Path: <aurumnitrogen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 176D1C433EF
	for <webhook@archiver.kernel.org>; Mon, 11 Jul 2022 06:59:29 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.25648.1657522767347164314
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Jul 2022 23:59:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HoU6noDy;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: aurumnitrogen@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 o5-20020a17090a3d4500b001ef76490983so4090399pjf.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Jul 2022 23:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4TMcZEYoaryrg3OK7bJkOyds7ZkGCIkq2RgHqFQnrk0=;
        b=HoU6noDyLf6HaJD2gxqnyZ74lG8mCb5+K2cKQ3l5mWS9p1t3gomLdA5jOc3wpAPLPU
         hpsazkddfCztw1Imf4OZDZwx0PuBM/J1NOaOy0vHQNi6e1bsxQN7PK190dHNwoqXL/bY
         qU9nzIv8mh1rGBz9SnMnLXjkSnAEeMMjUpAU7a/ZS5nhvdZolnBX+s9Epuz58Wee4JHC
         O8+6gf21EF7AvuNQOvck6loWeZ7agey+wrgNQoqJntl7CaWWwFkZBJEt+DC3dl0s5U1u
         L6UEOPUFlfE15cp8MlM+LXBI3Fe7RT74ZLytHK520nNHaiNd+JkM04+DDtpjtM2rVOiK
         UvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4TMcZEYoaryrg3OK7bJkOyds7ZkGCIkq2RgHqFQnrk0=;
        b=h+osTG1UCZzmAQSrigAeuIUNriOIE514II4zPeNhFyUUiXD+bblHMxI+nOmO8JJ/D2
         4XC4PRDnGT1y0JrzX/cwBYDdE2K8j3I52k7x5Slhl1nKSCZJojppb5gwr3O0OEfayySz
         ZPcz3srPeLLgk5rHts4mw+FERuZZwdJoJ3avlfboEYzr73HYoWpKZmNcFfQWwA+Gem3p
         94QzwicpwmUF3hIu65XDzrcw6g9XpYA3GQUTUchgepbZZAdbaX4dIE8s2Ks8j2T+xptO
         XPgep+meIy81N20EDPi7But7bVIvzUzG6djJITImJYu+fqm5L1hXTN1VJ8QKAHm26g6J
         yJkw==
X-Gm-Message-State: AJIora9hF0DCBFyK8IVTRl/CjSAzwUoRfixpcMyRbqwO1AZWzNoA7PTr
	l14guLtVMLxZtyj8Ao7Y8ayFd0ownLRwxiOfQv0=
X-Google-Smtp-Source: 
 AGRyM1uMBRwODZb26lcSvUwKCw038p0/lWHYH2CK39cIJHaBPpyE4/N8OnFw4bsMcGjuq7ls2MeP46vrJZrhSaQUSkA=
X-Received: by 2002:a17:90b:33cd:b0:1f0:3655:17a8 with SMTP id
 lk13-20020a17090b33cd00b001f0365517a8mr5688165pjb.33.1657522766563; Sun, 10
 Jul 2022 23:59:26 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
 <297FDEC7-CA06-489E-A35B-35A9148E1FC4@arm.com>
In-Reply-To: <297FDEC7-CA06-489E-A35B-35A9148E1FC4@arm.com>
From: Aurum Nitrogen <aurumnitrogen@gmail.com>
Date: Mon, 11 Jul 2022 18:00:44 +0300
Message-ID: 
 <CAH0OAGTqQQobJJkT4edFHc_=wUWP5vQetT8HSHmUz0hnjNkJoA@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="000000000000b5ba7605e3821750"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Jul 2022 06:59:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57490

--000000000000b5ba7605e3821750
Content-Type: multipart/alternative; boundary="000000000000b5ba7405e382174e"

--000000000000b5ba7405e382174e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
So after a little bit of research, I've implemented this feature in poky.
The way buildroot works, is that it doesn't create any .pyc files during
the build process of single packages but has a post rootfs hook that (If
that's what the user has configured) compiles the .py files into .pyc files
and removes the .py files.
The compilation to .pyc files is done using a small script that uses
python's py_compile module.

I have attached the diff to poky for implementation of this feature and the
pycompile.py script.
I would love to get your input on this.

Another thing I noticed while doing this research was that the python
recipe has a variable called INCLUDE_PYCS that decides if to include the
.pyc files in the package. This is nice but why not implement this in the
rest of the python package recipes? It can be added to setuptools3.bbclass
or something like that. What do you think?

Thanks a lot,

John

=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=D7=
=B3, 23 =D7=91=D7=99=D7=95=D7=A0=D7=99 2022 =D7=91-19:10 =D7=9E=D7=90=D7=AA=
 =E2=80=AARoss Burton=E2=80=AC=E2=80=8F <=E2=80=AA
Ross.Burton@arm.com=E2=80=AC=E2=80=8F>:=E2=80=AC

> On 23 Jun 2022, at 23:40, Aurum Nitrogen via lists.yoctoproject.org
> <aurumnitrogen=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> > I was wondering if there has been talk about support for source-less
> python on an image. Installing py and pyc files doubles the size of pytho=
n
> on the rootfs. I can imagine this being implemented as an image feature.
> > I know that in buildroot it is supported.
> > Was this discussed and decided against? Is this an open issue?
>
>
> There=E2=80=99s an open issue:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6434
>
> The easiest implementation would be a rootfs-time postprocessing step
> where you compile every .py file, and then delete the .py.  Is this what
> buildroot does?
>
> This does break feeds, but the alternative (of changing how packaging is
> done) would be a lot more invasive.
>
> Ross
> IMPORTANT NOTICE: The contents of this email and any attachments are
> confidential and may also be privileged. If you are not the intended
> recipient, please notify the sender immediately and do not disclose the
> contents to any other person, use it for any purpose, or store or copy th=
e
> information in any medium. Thank you.
>

--000000000000b5ba7405e382174e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Hi,=C2=A0</div><div dir=3D"ltr">So after =
a little bit of research, I&#39;ve implemented this feature in poky.</div><=
div dir=3D"ltr">The way buildroot works, is that it doesn&#39;t create any =
.pyc files during the build process of single packages but has a post rootf=
s hook that (If that&#39;s what the user has configured) compiles the .py f=
iles into .pyc files and removes the .py files.</div><div dir=3D"ltr">The c=
ompilation to .pyc files is done using a small script that uses python&#39;=
s=C2=A0py_compile module.</div><div dir=3D"ltr">=C2=A0</div><div dir=3D"ltr=
">I have attached the diff to poky for implementation of this feature and t=
he pycompile.py script.</div><div dir=3D"ltr">I would love to get your inpu=
t on this.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Another thing I=
 noticed while doing this research was that the python recipe has a variabl=
e called=C2=A0INCLUDE_PYCS that decides if to include=C2=A0the .pyc files i=
n the package. This is nice but why not implement this in the rest of the p=
ython package recipes? It can be added to setuptools3.bbclass or something =
like that. What do=C2=A0you think?</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">Thanks a lot,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Joh=
n</div></div><br><div class=3D"gmail_quote"><div dir=3D"rtl" class=3D"gmail=
_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=94=D7=B3, 23 =D7=91=D7=99=D7=95=D7=A0=D7=99 2022 =D7=91-19:10 =D7=9E=D7=90=
=D7=AA =E2=80=AARoss Burton=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailt=
o:Ross.Burton@arm.com">Ross.Burton@arm.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=
=AC<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 23 Jun 20=
22, at 23:40, Aurum Nitrogen via <a href=3D"http://lists.yoctoproject.org" =
rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;aurumni=
trogen=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_bla=
nk">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; I was wondering if there has been talk about support for source-less p=
ython on an image. Installing py and pyc files doubles the size of python o=
n the rootfs. I can imagine this being implemented as an image feature.<br>
&gt; I know that in buildroot it is supported.<br>
&gt; Was this discussed and decided against? Is this an open issue?<br>
<br>
<br>
There=E2=80=99s an open issue: <a href=3D"https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D6434" rel=3D"noreferrer" target=3D"_blank">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D6434</a><br>
<br>
The easiest implementation would be a rootfs-time postprocessing step where=
 you compile every .py file, and then delete the .py.=C2=A0 Is this what bu=
ildroot does?<br>
<br>
This does break feeds, but the alternative (of changing how packaging is do=
ne) would be a lot more invasive.<br>
<br>
Ross<br>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.<br>
</blockquote></div>

--000000000000b5ba7405e382174e--

--000000000000b5ba7605e3821750
Content-Type: text/x-python; charset="US-ASCII"; name="pycompile.py"
Content-Disposition: attachment; filename="pycompile.py"
Content-Transfer-Encoding: base64
Content-ID: <f_l5gvg3gt0>
X-Attachment-Id: f_l5gvg3gt0

IyEvdXNyL2Jpbi9lbnYgcHl0aG9uMwoKIiIiCkJ5dGUgY29tcGlsZSBhbGwgLnB5IGZpbGVzIGZy
b20gcHJvdmlkZWQgZGlyZWN0b3JpZXMuIFRoaXMgc2NyaXB0IGlzIGFuCmFsdGVybmF0aXZlIGlt
cGxlbWVudGF0aW9uIG9mIGNvbXBpbGVhbGwuY29tcGlsZV9kaXIgd3JpdHRlbiB3aXRoCmNyb3Nz
LWNvbXBpbGF0aW9uIGluIG1pbmQuCiIiIgoKaW1wb3J0IGFyZ3BhcnNlCmltcG9ydCBvcwppbXBv
cnQgcHlfY29tcGlsZQppbXBvcnQgcmUKaW1wb3J0IHN5cwoKCmRlZiBjb21waWxlX29uZShob3N0
X3BhdGgsIHN0cmlwX3Jvb3Q9Tm9uZSwgdmVyYm9zZT1GYWxzZSk6CiAgICAiIiIKICAgIENvbXBp
bGUgYSAucHkgZmlsZSBpbnRvIGEgLnB5YyBmaWxlIGxvY2F0ZWQgbmV4dCB0byBpdC4KCiAgICA6
YXJnIGhvc3RfcGF0aDoKICAgICAgICBBYnNvbHV0ZSBwYXRoIHRvIHRoZSBmaWxlIHRvIGNvbXBp
bGUgb24gdGhlIGhvc3QgcnVubmluZyB0aGUgYnVpbGQuCiAgICA6YXJnIHN0cmlwX3Jvb3Q6CiAg
ICAgICAgUHJlZml4IHRvIHJlbW92ZSBmcm9tIHRoZSBvcmlnaW5hbCBzb3VyY2UgcGF0aHMgZW5j
b2RlZCBpbiBjb21waWxlZAogICAgICAgIGZpbGVzLgogICAgOmFyZyB2ZXJib3NlOgogICAgICAg
IFByaW50IGNvbXBpbGVkIGZpbGUgcGF0aHMuCiAgICAiIiIKICAgIGlmIG9zLnBhdGguaXNsaW5r
KGhvc3RfcGF0aCkgb3Igbm90IG9zLnBhdGguaXNmaWxlKGhvc3RfcGF0aCk6CiAgICAgICAgcmV0
dXJuICAjIG9ubHkgY29tcGlsZSByZWFsIGZpbGVzCgogICAgaWYgbm90IHJlLm1hdGNoKHIiXltf
QS1aYS16XVtfQS1aYS16MC05XSpcLnB5JCIsCiAgICAgICAgICAgICAgICAgICAgb3MucGF0aC5i
YXNlbmFtZShob3N0X3BhdGgpKToKICAgICAgICByZXR1cm4gICMgb25seSBjb21waWxlICJpbXBv
cnRhYmxlIiBweXRob24gbW9kdWxlcwoKICAgIGlmIHN0cmlwX3Jvb3QgaXMgbm90IE5vbmU6CiAg
ICAgICAgIyBkZXRlcm1pbmUgdGhlIHJ1bnRpbWUgcGF0aCBvZiB0aGUgZmlsZSAoaS5lLjogcmVs
YXRpdmUgcGF0aCB0byByb290CiAgICAgICAgIyBkaXIgcHJlcGVuZGVkIHdpdGggIi8iKS4KICAg
ICAgICBydW50aW1lX3BhdGggPSBvcy5wYXRoLmpvaW4oIi8iLCBvcy5wYXRoLnJlbHBhdGgoaG9z
dF9wYXRoLCBzdHJpcF9yb290KSkKICAgIGVsc2U6CiAgICAgICAgcnVudGltZV9wYXRoID0gaG9z
dF9wYXRoCgogICAgaWYgdmVyYm9zZToKICAgICAgICBwcmludCgiICBQWUMgIHt9Ii5mb3JtYXQo
cnVudGltZV9wYXRoKSkKCiAgICAjIHdpbGwgcmFpc2UgYW4gZXJyb3IgaWYgdGhlIGZpbGUgY2Fu
bm90IGJlIGNvbXBpbGVkCiAgICBweV9jb21waWxlLmNvbXBpbGUoaG9zdF9wYXRoLCBjZmlsZT1o
b3N0X3BhdGggKyAiYyIsCiAgICAgICAgICAgICAgICAgICAgICAgZGZpbGU9cnVudGltZV9wYXRo
LCBkb3JhaXNlPVRydWUpCgoKZGVmIGV4aXN0aW5nX2Rpcl9hYnMoYXJnKToKICAgICIiIgogICAg
YXJncGFyc2UgdHlwZSBjYWxsYmFjayB0aGF0IGNoZWNrcyB0aGF0IGFyZ3VtZW50IGlzIGEgZGly
ZWN0b3J5IGFuZCByZXR1cm5zCiAgICBpdHMgYWJzb2x1dGUgcGF0aC4KICAgICIiIgogICAgaWYg
bm90IG9zLnBhdGguaXNkaXIoYXJnKToKICAgICAgICByYWlzZSBhcmdwYXJzZS5Bcmd1bWVudFR5
cGVFcnJvcignbm8gc3VjaCBkaXJlY3Rvcnk6IHshcn0nLmZvcm1hdChhcmcpKQogICAgcmV0dXJu
IG9zLnBhdGguYWJzcGF0aChhcmcpCgoKZGVmIG1haW4oKToKICAgIHBhcnNlciA9IGFyZ3BhcnNl
LkFyZ3VtZW50UGFyc2VyKGRlc2NyaXB0aW9uPV9fZG9jX18pCiAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCJkaXJzIiwgbWV0YXZhcj0iRElSIiwgbmFyZ3M9IisiLCB0eXBlPWV4aXN0aW5nX2Rpcl9h
YnMsCiAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IkRpcmVjdG9yeSB0byByZWN1cnNpdmVs
eSBzY2FuIGFuZCBjb21waWxlIikKICAgIHBhcnNlci5hZGRfYXJndW1lbnQoIi0tc3RyaXAtcm9v
dCIsIG1ldGF2YXI9IlJPT1QiLCB0eXBlPWV4aXN0aW5nX2Rpcl9hYnMsCiAgICAgICAgICAgICAg
ICAgICAgICAgIGhlbHA9IiIiCiAgICAgICAgICAgICAgICAgICAgICAgIFByZWZpeCB0byByZW1v
dmUgZnJvbSB0aGUgb3JpZ2luYWwgc291cmNlIHBhdGhzIGVuY29kZWQKICAgICAgICAgICAgICAg
ICAgICAgICAgaW4gY29tcGlsZWQgZmlsZXMKICAgICAgICAgICAgICAgICAgICAgICAgIiIiKQog
ICAgcGFyc2VyLmFkZF9hcmd1bWVudCgiLS12ZXJib3NlIiwgYWN0aW9uPSJzdG9yZV90cnVlIiwK
ICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iUHJpbnQgY29tcGlsZWQgZmlsZXMiKQoKICAg
IGFyZ3MgPSBwYXJzZXIucGFyc2VfYXJncygpCgogICAgdHJ5OgogICAgICAgIGZvciBkIGluIGFy
Z3MuZGlyczoKICAgICAgICAgICAgaWYgYXJncy5zdHJpcF9yb290IGFuZCAiLi4iIGluIG9zLnBh
dGgucmVscGF0aChkLCBhcmdzLnN0cmlwX3Jvb3QpOgogICAgICAgICAgICAgICAgcGFyc2VyLmVy
cm9yKCJESVI6IG5vdCBpbnNpZGUgUk9PVCBkaXI6IHshcn0iLmZvcm1hdChkKSkKICAgICAgICAg
ICAgZm9yIHBhcmVudCwgXywgZmlsZXMgaW4gb3Mud2FsayhkKToKICAgICAgICAgICAgICAgIGZv
ciBmIGluIGZpbGVzOgogICAgICAgICAgICAgICAgICAgIGNvbXBpbGVfb25lKG9zLnBhdGguam9p
bihwYXJlbnQsIGYpLCBhcmdzLnN0cmlwX3Jvb3QsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYXJncy52ZXJib3NlKQoKICAgIGV4Y2VwdCBFeGNlcHRpb24gYXMgZToKICAgICAgICBw
cmludCgiZXJyb3I6IHt9Ii5mb3JtYXQoZSkpCiAgICAgICAgcmV0dXJuIDEKCiAgICByZXR1cm4g
MAoKCmlmIF9fbmFtZV9fID09ICJfX21haW5fXyI6CiAgICBzeXMuZXhpdChtYWluKCkpCg==
--000000000000b5ba7605e3821750
Content-Type: text/x-patch; charset="US-ASCII"; name="diff.patch"
Content-Disposition: attachment; filename="diff.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l5gvg8i91>
X-Attachment-Id: f_l5gvg8i91

ZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nlcy9pbWFnZS5iYmNsYXNzIGIvbWV0YS9jbGFzc2VzL2lt
YWdlLmJiY2xhc3MKaW5kZXggYzJmMzIzMjAyNy4uZjBhOWZiMTFiOCAxMDA2NDQKLS0tIGEvbWV0
YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3MKKysrIGIvbWV0YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3MK
QEAgLTMzLDcgKzMzLDcgQEAgSU5ISUJJVF9ERUZBVUxUX0RFUFMgPSAiMSIKICMgSU1BR0VfRkVB
VFVSRVMgbWF5IGNvbnRhaW4gYW55IGF2YWlsYWJsZSBwYWNrYWdlIGdyb3VwCiBJTUFHRV9GRUFU
VVJFUyA/PSAiIgogSU1BR0VfRkVBVFVSRVNbdHlwZV0gPSAibGlzdCIKLUlNQUdFX0ZFQVRVUkVT
W3ZhbGlkaXRlbXNdICs9ICJkZWJ1Zy10d2Vha3MgcmVhZC1vbmx5LXJvb3RmcyByZWFkLW9ubHkt
cm9vdGZzLWRlbGF5ZWQtcG9zdGluc3RzIHN0YXRlbGVzcy1yb290ZnMgZW1wdHktcm9vdC1wYXNz
d29yZCBhbGxvdy1lbXB0eS1wYXNzd29yZCBhbGxvdy1yb290LWxvZ2luIHBvc3QtaW5zdGFsbC1s
b2dnaW5nIgorSU1BR0VfRkVBVFVSRVNbdmFsaWRpdGVtc10gKz0gInB5Yy1vbmx5IGRlYnVnLXR3
ZWFrcyByZWFkLW9ubHktcm9vdGZzIHJlYWQtb25seS1yb290ZnMtZGVsYXllZC1wb3N0aW5zdHMg
c3RhdGVsZXNzLXJvb3RmcyBlbXB0eS1yb290LXBhc3N3b3JkIGFsbG93LWVtcHR5LXBhc3N3b3Jk
IGFsbG93LXJvb3QtbG9naW4gcG9zdC1pbnN0YWxsLWxvZ2dpbmciCiAKICMgR2VuZXJhdGUgY29t
cGFuaW9uIGRlYnVnZnM/CiBJTUFHRV9HRU5fREVCVUdGUyA/PSAiMCIKZGlmZiAtLWdpdCBhL21l
dGEvY2xhc3Nlcy9yb290ZnMtcG9zdGNvbW1hbmRzLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMvcm9v
dGZzLXBvc3Rjb21tYW5kcy5iYmNsYXNzCmluZGV4IDIzMTBlODZjZGYuLmMzM2M0ZDBhZWQgMTAw
NjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy9yb290ZnMtcG9zdGNvbW1hbmRzLmJiY2xhc3MKKysrIGIv
bWV0YS9jbGFzc2VzL3Jvb3Rmcy1wb3N0Y29tbWFuZHMuYmJjbGFzcwpAQCAtMTcsNiArMTcsOSBA
QCBST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCArPSAicm9vdGZzX3VwZGF0ZV90aW1lc3RhbXA7
ICIKICMgVHdlYWsgdGhlIG1vdW50IG9wdGlvbnMgZm9yIHJvb3RmcyBpbiAvZXRjL2ZzdGFiIGlm
IHJlYWQtb25seS1yb290ZnMgaXMgZW5hYmxlZAogUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQg
Kz0gJyR7QGJiLnV0aWxzLmNvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJyZWFkLW9ubHktcm9v
dGZzIiwgInJlYWRfb25seV9yb290ZnNfaG9vazsgIiwgIiIsZCl9JwogCisjIExlYXZlIG9ubHkg
cHljIGlmIHB5Yy1vbmx5IGlzIGVuYWJsZWQgCitST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCAr
PSAnJHtAYmIudXRpbHMuY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgInB5Yy1vbmx5IiwgInB5
Y19vbmx5X2hvb2s7ICIsICIiLGQpfScKKwogIyBXZSBhbHNvIG5lZWQgdG8gZG8gdGhlIHNhbWUg
Zm9yIHRoZSBrZXJuZWwgYm9vdCBwYXJhbWV0ZXJzLAogIyBvdGhlcndpc2Uga2VybmVsIG9yIGlu
aXRyYW1mcyBlbmQgdXAgbW91bnRpbmcgdGhlIHJvb3RmcyByZWFkL3dyaXRlCiAjICh0aGUgZGVm
YXVsdCkgaWYgc3VwcG9ydGVkIGJ5IHRoZSB1bmRlcmx5aW5nIHN0b3JhZ2UuCkBAIC0xMzksNiAr
MTQyLDMwIEBAIHJlYWRfb25seV9yb290ZnNfaG9vayAoKSB7CiAJZmkKIH0KIAorCitpbmhlcml0
IHB5dGhvbjNuYXRpdmUKK3B5Y19vbmx5X2hvb2sgKCkgeworCSMgQ3JlYXRlIHB5YyBmaWxlcwor
CWJid2FybiBoZXJlCisJbmF0aXZlcHl0aG9uMyBcCisJCSR7Q09SRUJBU0V9L3NjcmlwdHMvY29u
dHJpYi9weWNvbXBpbGUucHkgXAorCQktLXZlcmJvc2UgXAorCQktLXN0cmlwLXJvb3QgJHtJTUFH
RV9ST09URlN9IFwKKwkJJHtJTUFHRV9ST09URlN9L3Vzci9saWIvcHl0aG9uMy45CisKKwkjIFJl
bW92ZSBweSBmaWxlcworCWJid2FybiBoZXJlMgorCWZpbmQgJHtJTUFHRV9ST09URlN9L3Vzci9s
aWIvcHl0aG9uMy45IC1uYW1lICcqLnB5JyBcCisJCS1wcmludDAgfCBcCisJCXhhcmdzIC0wIC0t
bm8tcnVuLWlmLWVtcHR5IHJtIC1mCisKKwkjIFJlbW92ZSBweWNhY2hlIGZpbGVzCisJYmJ3YXJu
IGhlcmUzCisJZmluZCAke0lNQUdFX1JPT1RGU30vdXNyL2xpYi9weXRob24zLjkgLW5hbWUgJ19f
cHljYWNoZV9fJyBcCisJCS1wcmludDAgfCBcCisJCXhhcmdzIC0wIC0tbm8tcnVuLWlmLWVtcHR5
IHJtIC1yZgorfQorCiAjCiAjIFRoaXMgZnVuY3Rpb24gaXMgaW50ZW5kZWQgdG8gZGlzYWxsb3cg
ZW1wdHkgcm9vdCBwYXNzd29yZCBpZiAnZGVidWctdHdlYWtzJyBpcyBub3QgaW4gSU1BR0VfRkVB
VFVSRVMuCiAjCg==
--000000000000b5ba7605e3821750--

