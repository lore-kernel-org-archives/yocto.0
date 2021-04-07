Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.4116.1617783426243352411
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 01:17:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ePzWfzQe;
 spf=pass (domain: linaro.org, ip: 209.85.218.41, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f41.google.com with SMTP id hq27so26140722ejc.9
        for <yocto@lists.yoctoproject.org>; Wed, 07 Apr 2021 01:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S9iD0TvpVxMv20YgAFUQLRVenqTG5WDFKYRUv89mo+8=;
        b=ePzWfzQeYQqIo+wsFi2YkfJoYI9N7V6lEBq7Qx+vCiZyPqyJB3MbepfYbIYdR9dXv2
         s/G+5XLmnSvM/+CLCjTEQfaCDtFQYUb6GPczisxQQuy6/c+bTakUrM5oksXeLFC2UMKn
         Q4L5BQQUkAC343KhiLS9L+bQv/7qnYojfFbnuXgcsU3lrd4k1LIzD3uM3yTvHspo5olf
         VRGNqoaw+3wIu0CPKhQlaq0st370WD+medlubppQh2o/k49ddR7tyMh1UoYDZt53RCdJ
         qOrDfeQOa6KNQbboUfxjZ7NcmB3vV6cNJdZRsPEjtwso6yan6rbt+KYZr+5VSiEzo1c+
         MSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S9iD0TvpVxMv20YgAFUQLRVenqTG5WDFKYRUv89mo+8=;
        b=nkqSHDx46fli1P9SoKb9RXtV7TCbnKH4XQBsOzMAQ7IKP9EqxVyx4uuMB9deSFce/U
         +7kVwR7JIpA+z3CKyNCLP7dweziPZ8ovJI+Ns1B7R6FQp4XMNECQEV2mRKrjxjKIIowc
         uxAC/VtWH5ufjguDI7nXjUBJpH0ABQH476TIVC/8Q/Ms4WvuXtq4aM0BKiJA2Od7FtMm
         BNOOiuo43GlLnGw4nkkokNuTGqF4qwT3+fDLm3KLVQ0D70AfLExQgCQ09j7eJZVuqhk6
         8CVPLs/dy5flGYswnO2tZb2kNeV63WAGQoqGsZzPyRDq161BTK0HpRL4IPXNjJy9cJ6R
         ffgA==
X-Gm-Message-State: AOAM531MlNSUTz9X2290B118ZU5402LG/qK4z+bkncb8rbODYbhqb1Z3
	6EwduuXUfyVD+GwjXtuIFaJRk6+gpzluwiLhlJ+/UA==
X-Google-Smtp-Source: ABdhPJx5ZyfQIKIdXclF0f52Ug045J6kMUEae1LxCdIIuSNS8OJe3wGUb9qgxZEkkrSjTMoNVGxVBOCnXeRONSpTwn4=
X-Received: by 2002:a17:906:d9ca:: with SMTP id qk10mr2269901ejb.436.1617783424582;
 Wed, 07 Apr 2021 01:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210406225819.37683-1-mhalstead@linuxfoundation.org> <6B8E39A6-3CA5-41BC-BB1B-EA87B379F104@0leil.net>
In-Reply-To: <6B8E39A6-3CA5-41BC-BB1B-EA87B379F104@0leil.net>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 7 Apr 2021 10:16:53 +0200
Message-ID: <CAP71Wjzt7Fd5RpLry5ghUP_xWDdEWmat9d2ETYYJ32ac9=rUEA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: build from tags dynamically instead of static list
To: Quentin Schulz <foss@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000589a5105bf5d8e8e"

--000000000000589a5105bf5d8e8e
Content-Type: text/plain; charset="UTF-8"

hey!

On Wed, Apr 7, 2021 at 9:31 AM Quentin Schulz <foss@0leil.net> wrote:

> Hi Michael,
>
> On April 6, 2021 10:58:20 PM UTC, Michael Halstead <
> mhalstead@linuxfoundation.org> wrote:
> >All new releases are Sphinx ready so we exclude old tags and build for
> >all the rest.
>

Thanks for starting this!


> >
> >Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> >---
> > scripts/run-docs-build | 14 ++++++++++----
> > 1 file changed, 10 insertions(+), 4 deletions(-)
> >
> >diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> >index 910f03d..13df34a 100755
> >--- a/scripts/run-docs-build
> >+++ b/scripts/run-docs-build
> >@@ -7,6 +7,7 @@ ypdocs=$2/documentation/
> > bbdocs=$3/doc/
> > docs_buildtools=/srv/autobuilder/
> autobuilder.yoctoproject.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+snapshot-20201105.sh
> > outputdir=$builddir/output
> >+excluded_tags="yocto-3.1.4 yocto-3.1.3 yocto-3.1.2 yocto-3.1.1 yocto-3.1
> yocto-3.0.1 yocto-3.0 yocto-2.6.4 yocto-2.6.3 yocto-2.7.1 yocto-2.6.2
> yocto-2.7 yocto-2.6.1 yocto-2.6 yocto-2.5.2 yocto-2.5.1 yocto-2.4.4
> yocto-2.4.3 yocto-2.5 yocto-2.3.4 yocto-1.0.2 yocto-1.1.2 yocto-1.2.2
> yocto-1.2.1 yocto-1.3 yocto-1.3.1 yocto-1.3.2 yocto-1.4.3 yocto-1.4.2
> yocto-1.4.1 yocto-1.4 yocto-2.1.3 yocto-2.4.2 yocto-2.1.1 yocto-2.1.2
> yocto-2.0.3 yocto-1.8.2 yocto-2.2.3 yocto-2.4.1 yocto-2.3.3 yocto-2.3.2
> yocto-2.4 yocto-2.2.2 yocto-2.3.1 yocto-2.3 yocto-2.2.1 yocto-2.0.2
> yocto-2.2 yocto-2.1 yocto-2.0.1 yocto-2.0 yocto-1.8.1 yocto-1.7.3
> yocto-1.6.3 yocto-1.7.2 yocto-1.8 yocto-1.5.1"
> >
> >
> > cd $builddir
> >@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do
> > done
> >
> > # Yocto Project releases/tags
> >-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
> >+cd $ypdocs
> >+for tag in $(git tag -l  |grep 'yocto-' |sort); do
>
> IIUC the man page,
> git tag --list 'yocto-*' | sort
>

sort -V is even better since it does "natural sort of (version) numbers
within text", let's get ready for 3.10 ;)

And using -V, how about something along these lines:

v_sphinx='yocto-3.1.5'
for v in $(git tag --list 'yocto-*'); do
    first=$(printf '%s\n%s' $v $v_sphinx | sort -V | head -n1)
    if [ "$first" = "$v_sphinx" ]; then
        echo "Yocto $v uses Sphinx!"
    fi
done

and it outputs the following when I run it locally:

Yocto yocto-3.1.5 uses Sphinx!
Yocto yocto-3.1.6 uses Sphinx!
Yocto yocto-3.2 uses Sphinx!
Yocto yocto-3.2.1 uses Sphinx!
Yocto yocto-3.2.2 uses Sphinx!
Yocto yocto-3.2.3 uses Sphinx!



would be doing the same thing as the one command with grep above.
> Discovered it recently so just wanted to share.
>
> I guess this is something we can also do for bitbake Sphinx documentation?
>

yes.


>
> Removed the git context inadvertently but, is =~ some bash built-in? I
> don't know what's the shebang on top but maybe we want to force it to bash
> since I'm not sure it's POSIX "compliant" anymore?


It is bash already.


>
> Reviewed-by: Quentin Schulz <foss@0leil.net>
>
> Thanks,
> Quentin
>

--000000000000589a5105bf5d8e8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hey!</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 7, 2021 at 9:31 AM Quenti=
n Schulz &lt;<a href=3D"mailto:foss@0leil.net">foss@0leil.net</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Michael,<br=
>
<br>
On April 6, 2021 10:58:20 PM UTC, Michael Halstead &lt;<a href=3D"mailto:mh=
alstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfoundation.or=
g</a>&gt; wrote:<br>
&gt;All new releases are Sphinx ready so we exclude old tags and build for<=
br>
&gt;all the rest.<br></blockquote><div><br></div><div>Thanks for starting t=
his!</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
&gt;<br>
&gt;Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfo=
undation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;<br>
&gt;---<br>
&gt; scripts/run-docs-build | 14 ++++++++++----<br>
&gt; 1 file changed, 10 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt;diff --git a/scripts/run-docs-build b/scripts/run-docs-build<br>
&gt;index 910f03d..13df34a 100755<br>
&gt;--- a/scripts/run-docs-build<br>
&gt;+++ b/scripts/run-docs-build<br>
&gt;@@ -7,6 +7,7 @@ ypdocs=3D$2/documentation/<br>
&gt; bbdocs=3D$3/doc/<br>
&gt; docs_buildtools=3D/srv/autobuilder/<a href=3D"http://autobuilder.yocto=
project.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+=
snapshot-20201105.sh" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoct=
oproject.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2=
+snapshot-20201105.sh</a><br>
&gt; outputdir=3D$builddir/output<br>
&gt;+excluded_tags=3D&quot;yocto-3.1.4 yocto-3.1.3 yocto-3.1.2 yocto-3.1.1 =
yocto-3.1 yocto-3.0.1 yocto-3.0 yocto-2.6.4 yocto-2.6.3 yocto-2.7.1 yocto-2=
.6.2 yocto-2.7 yocto-2.6.1 yocto-2.6 yocto-2.5.2 yocto-2.5.1 yocto-2.4.4 yo=
cto-2.4.3 yocto-2.5 yocto-2.3.4 yocto-1.0.2 yocto-1.1.2 yocto-1.2.2 yocto-1=
.2.1 yocto-1.3 yocto-1.3.1 yocto-1.3.2 yocto-1.4.3 yocto-1.4.2 yocto-1.4.1 =
yocto-1.4 yocto-2.1.3 yocto-2.4.2 yocto-2.1.1 yocto-2.1.2 yocto-2.0.3 yocto=
-1.8.2 yocto-2.2.3 yocto-2.4.1 yocto-2.3.3 yocto-2.3.2 yocto-2.4 yocto-2.2.=
2 yocto-2.3.1 yocto-2.3 yocto-2.2.1 yocto-2.0.2 yocto-2.2 yocto-2.1 yocto-2=
.0.1 yocto-2.0 yocto-1.8.1 yocto-1.7.3 yocto-1.6.3 yocto-1.7.2 yocto-1.8 yo=
cto-1.5.1&quot;<br>
&gt; <br>
&gt; <br>
&gt; cd $builddir<br>
&gt;@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do<br>
&gt; done<br>
&gt; <br>
&gt; # Yocto Project releases/tags<br>
&gt;-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do<br>
&gt;+cd $ypdocs<br>
&gt;+for tag in $(git tag -l=C2=A0 |grep &#39;yocto-&#39; |sort); do<br>
<br>
IIUC the man page,<br>
git tag --list &#39;yocto-*&#39; | sort<br></blockquote><div><br></div><div=
>sort -V is even better since it does &quot;natural sort of (version) numbe=
rs within text&quot;, let&#39;s get ready for 3.10 ;)=C2=A0</div><div>=C2=
=A0</div><div>And using -V, how about something along these lines:</div><di=
v><br></div><div>v_sphinx=3D&#39;yocto-3.1.5&#39;<br>for v in $(git tag --l=
ist &#39;yocto-*&#39;); do<br>=C2=A0 =C2=A0 first=3D$(printf &#39;%s\n%s&#3=
9; $v $v_sphinx | sort -V | head -n1)<br>=C2=A0 =C2=A0 if [ &quot;$first&qu=
ot; =3D &quot;$v_sphinx&quot; ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &=
quot;Yocto $v uses Sphinx!&quot;<br>=C2=A0 =C2=A0 fi<br>done<br></div><div>=
<br></div><div>and it outputs the following when I run it locally:</div><di=
v><br></div><div>Yocto yocto-3.1.5 uses Sphinx!<br>Yocto yocto-3.1.6 uses S=
phinx!<br>Yocto yocto-3.2 uses Sphinx!<br>Yocto yocto-3.2.1 uses Sphinx!<br=
>Yocto yocto-3.2.2 uses Sphinx!<br>Yocto yocto-3.2.3 uses Sphinx!<br></div>=
<div><br></div><div><br></div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
would be doing the same thing as the one command with grep above.<br>
Discovered it recently so just wanted to share.<br>
<br>
I guess this is something we can also do for bitbake Sphinx documentation?<=
br></blockquote><div><br></div><div>yes.</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
<br>
Removed the git context inadvertently but, is =3D~ some bash built-in? I do=
n&#39;t know what&#39;s the shebang on top but maybe we want to force it to=
 bash since I&#39;m not sure it&#39;s POSIX &quot;compliant&quot; anymore?=
=C2=A0</blockquote><div><br></div><div>It is bash already.=C2=A0</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Reviewed-by: Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net" target=3D=
"_blank">foss@0leil.net</a>&gt;<br>
<br>
Thanks,<br>
Quentin<br>
</blockquote></div></div>

--000000000000589a5105bf5d8e8e--
