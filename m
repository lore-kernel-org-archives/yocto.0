Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web12.190.1602543701216651582
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Oct 2020 16:01:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@justinstandring.com header.s=google header.b=bgiZVNil;
 spf=pass (domain: justinstandring.com, ip: 209.85.219.172, mailfrom: me@justinstandring.com)
Received: by mail-yb1-f172.google.com with SMTP id h9so14607605ybm.4
        for <yocto@lists.yoctoproject.org>; Mon, 12 Oct 2020 16:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinstandring.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=5IX4GvMpR87GFQ9jow18s4kHPYo9NPrswf64edx0Hvs=;
        b=bgiZVNilAUinBJR2DBdcDhV6t13V5TLZ2xr1Xff2eudk34V/87rHb2sGGvWguLlEFM
         9lO7CQMKPM86LN/ywsfVJjWjkrKfnepwfMraqNo59ev3uyw5OcuSjqkWkKgX24YL8vot
         78YE9cUY5QweENNMI1spNz61CiNSH0B3UE/6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5IX4GvMpR87GFQ9jow18s4kHPYo9NPrswf64edx0Hvs=;
        b=QiD1U/jd1RuYlqstRddqJLpEDKoUjysv/6eEzDCPSNHpDliyYNkJRQ83Eup4jyyJ8r
         g2ymu2SEChrmzZoQL5/LaVDsOVcmUk7sRxxiHWNSwhGtx9iTKfrEGlGrv4xAUS2SlUxG
         JsfuDmAYHOqVww10LeXEY+V79T69EH70YAPfdmpmq4pXqACQZnmvJDVvei9oD56P8oW5
         ZqpwJogEbMXIqTgD/S/qqX8Wg5yF0Rqhb55oILvPEs0Ug5ZIgr7iPucZW05PK3ltg6KI
         7itbcU+4Dwz/09GX3zokx3HsGf0TCZoD8WMLcRz0tvqTZam6WJlOAYYQQi5L6MXOEv8z
         ZT6w==
X-Gm-Message-State: AOAM530SfdqRzIg/4mnpVL+AjbuTSYAdwmiUZ2gJr7xdWQTtNKDHXyva
	ISKXxP+EKpfzKozIlI1HUTgDK4buhz5SkVBEeCn1InKhvSWy4Q==
X-Google-Smtp-Source: ABdhPJzQUu5okPmItz6XG6aYOZrIHUc3Bl3Xr9SdBYZtKEqquks5YZ1GmT3bWYm3i1HBoS89AhtqSsR022huPG8YDcE=
X-Received: by 2002:a5b:3d2:: with SMTP id t18mr32881575ybp.333.1602543699966;
 Mon, 12 Oct 2020 16:01:39 -0700 (PDT)
MIME-Version: 1.0
From: "Justin Standring" <me@justinstandring.com>
Date: Tue, 13 Oct 2020 12:01:04 +1300
Message-ID: <CAKHiKJ2wAeg=mFf_07UF5Q2bUJO1Oq=On1ZQdzAy_4JkT_vMVQ@mail.gmail.com>
Subject: Set DISTRO_VERSION using git describe
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f952e105b1814766"

--000000000000f952e105b1814766
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working on a release process for a Dunfell-based distro, and I'd like
to automatically set DISTRO_VERSION from `git describe` - ideally, from
within Bitbake rather than a wrapper script.

I am using a Python function to set DISTRO_VERSION, and that function runs
`git describe`. To avoid running `git describe` for every single recipe
(during parsing) and then for each task during build, I am using a
combination of bb.persist_data and DATETIME to cache the command result.
Here is my code:

(pasted here if you prefer - https://pastebin.com/ikzCx52s)

> # File: conf/distro/include/custom-distro-version.inc
> # Required by: conf/distro/custom.conf
>
> DISTRO_VERSION = "${@get_custom_distro_version(d)}"
>
> def get_custom_distro_version(d):
>     import os
>     import bb
>
>     datetime = d.getVar('DATETIME')
>     persist = bb.persist_data.persist('custom', d)
>     key = 'distro_version_git'
>
>     # Check if we have a valid cached value
>     if key in persist and ':' in persist[key]:
>         cached_datetime, cached_ver = persist[key].split(':', maxsplit=1)
>         if cached_datetime == datetime:
>             return cached_ver
>
>     srcdir = os.path.abspath(os.path.join(d.getVar('BBLAYERS_FETCH_DIR'),
> '..'))
>
>     try:
>         ver, _ = bb.process.run('git describe --tags --dirty --long
> 2>/dev/null', cwd=srcdir)
>         ver = ver.strip()
>     except bb.process.ExecutionError:
>         bb.warn("Unable to set DISTRO_VERSION from git describe. Using
> '0.0'.")
>         ver = '0.0'
>
>     bb.warn(f"Caching DISTRO_VERSION='{ver}' for build date {datetime}")
>     persist[key] = f"{datetime}:{ver}"
>     return ver
>
> # Do not include date/time in hash, since this is only used to detect
> different bitbake runs
> get_custom_distro_version[vardepsexclude] = "DATETIME"



It is partially working, but it's not picking up changes to the value
properly. On a fresh build, I see the `bb.warn` message twice - once during
parsing, and once during the build (since the DATETIME changes between
those phases?). The build (`bitbake custom-image`) succeeds with the
correct DISTRO_VERSION.

When I coerce git describe to change its output (by modifying my README for
example) and run bitbake again, Bitbake unfortunately does not detect any
work to do (sstate 100% match, 100% complete). However, I do see the
bb.warn message from include once (during build, not parsing because I
assume that's all cached - I haven't changed any Yocto code). And, the
'Build Configuration' summary shows DISTRO_VERSION has the new value.

I tried inspecting the os-release do_compile task as a way to debug this
(since it uses DISTRO_VERSION). The output `bitbake-dumpsig -t os-release
do_compile` shows these lines (snipped for brevity):

Task dependencies: ['B', 'BBLAYERS_FETCH_DIR', 'BP', 'BPN', 'DISTRO',
> 'DISTRO_NAME', 'DISTRO_VERSION', 'ID', 'ID_LIKE', 'NAME',
> 'OS_RELEASE_FIELDS', 'OS_RELEASE_UNQUOTED_FIELDS', 'PN', 'PRETTY_NAME',
> 'PV', 'S', 'SPECIAL_PKGSUFFIX', 'VERSION', 'VERSION_ID',
> 'do_compile[umask]', 'get_custom_distro_version', 'sanitise_value']
> List of dependencies for variable DISTRO_VERSION is
> {'get_custom_distro_version'}
> List of dependencies for variable get_custom_distro_version is
> {'BBLAYERS_FETCH_DIR'}
> Variable get_custom_distro_version value is def
> get_custom_distro_version(d):
> ... (function code is here)


To me, this shows that the recipe is correctly depending on the result of
`def get_custom_distro_version(d)`, but when the result of that function is
changing, the recipe is not re-built.

Can anyone help me explain what's going on here? Or, suggest an alternative
way to do this?

Thanks,
Justin

--000000000000f952e105b1814766
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m working on a release proces=
s for a Dunfell-based distro, and I&#39;d like to automatically set DISTRO_=
VERSION from `git describe` - ideally, from within Bitbake rather than a wr=
apper script.</div><div><br></div><div>I am using a Python function to set =
DISTRO_VERSION, and that function runs `git describe`. To avoid running `gi=
t describe` for every single recipe (during parsing) and then for each task=
 during build, I am using a combination of bb.persist_data and DATETIME to =
cache the command result. Here is my code:</div><div><br></div><div>(pasted=
 here if you prefer -=C2=A0<a href=3D"https://pastebin.com/ikzCx52s">https:=
//pastebin.com/ikzCx52s</a>)<br></div><div><div></div><div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"># File: conf/distro/include/custom-distro=
-version.inc<br># Required by: conf/distro/custom.conf<br><br>DISTRO_VERSIO=
N =3D &quot;${@get_custom_distro_version(d)}&quot;<br>=C2=A0<br>def get_cus=
tom_distro_version(d):<br>=C2=A0 =C2=A0 import os<br>=C2=A0 =C2=A0 import b=
b<br>=C2=A0<br>=C2=A0 =C2=A0 datetime =3D d.getVar(&#39;DATETIME&#39;)<br>=
=C2=A0 =C2=A0 persist =3D bb.persist_data.persist(&#39;custom&#39;, d)<br>=
=C2=A0 =C2=A0 key =3D &#39;distro_version_git&#39;<br>=C2=A0<br>=C2=A0 =C2=
=A0 # Check if we have a valid cached value<br>=C2=A0 =C2=A0 if key in pers=
ist and &#39;:&#39; in persist[key]:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cached_=
datetime, cached_ver =3D persist[key].split(&#39;:&#39;, maxsplit=3D1)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if cached_datetime =3D=3D datetime:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return cached_ver<br>=C2=A0<br>=C2=A0 =
=C2=A0 srcdir =3D os.path.abspath(os.path.join(d.getVar(&#39;BBLAYERS_FETCH=
_DIR&#39;), &#39;..&#39;))<br>=C2=A0<br>=C2=A0 =C2=A0 try:<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 ver, _ =3D bb.process.run(&#39;git describe --tags --dirty -=
-long 2&gt;/dev/null&#39;, cwd=3Dsrcdir)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ver=
 =3D ver.strip()<br>=C2=A0 =C2=A0 except bb.process.ExecutionError:<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(&quot;Unable to set DISTRO_VERSION from gi=
t describe. Using &#39;0.0&#39;.&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ver =
=3D &#39;0.0&#39;<br>=C2=A0<br>=C2=A0 =C2=A0 bb.warn(f&quot;Caching DISTRO_=
VERSION=3D&#39;{ver}&#39; for build date {datetime}&quot;)<br>=C2=A0 =C2=A0=
 persist[key] =3D f&quot;{datetime}:{ver}&quot;<br>=C2=A0 =C2=A0 return ver=
<br>=C2=A0<br># Do not include date/time in hash, since this is only used t=
o detect different bitbake runs<br>get_custom_distro_version[vardepsexclude=
] =3D &quot;DATETIME&quot;</blockquote>=C2=A0</div></div><div><br></div><di=
v>It is partially working, but it&#39;s not picking up changes to the value=
 properly. On a fresh build, I see the `bb.warn` message twice - once durin=
g parsing, and once during the build (since the DATETIME changes between th=
ose phases?). The build (`bitbake custom-image`) succeeds=C2=A0with the cor=
rect DISTRO_VERSION.</div><div><br></div><div>When I coerce git describe to=
 change its output (by modifying my README for example) and run bitbake aga=
in, Bitbake unfortunately does not detect any work to do (sstate=C2=A0100% =
match, 100% complete). However, I do see the bb.warn message from include o=
nce (during build, not parsing because I assume that&#39;s all cached - I h=
aven&#39;t changed any Yocto code). And, the &#39;Build Configuration&#39; =
summary shows DISTRO_VERSION has the new value.</div><div><br></div><div>I =
tried inspecting the os-release do_compile task as a way to debug this (sin=
ce it uses DISTRO_VERSION). The output `bitbake-dumpsig -t os-release do_co=
mpile` shows these lines (snipped for brevity):</div><div><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Task dependencies: [&#39;B&#39;,=
 &#39;BBLAYERS_FETCH_DIR&#39;, &#39;BP&#39;, &#39;BPN&#39;, &#39;DISTRO&#39=
;, &#39;DISTRO_NAME&#39;, &#39;DISTRO_VERSION&#39;, &#39;ID&#39;, &#39;ID_L=
IKE&#39;, &#39;NAME&#39;, &#39;OS_RELEASE_FIELDS&#39;, &#39;OS_RELEASE_UNQU=
OTED_FIELDS&#39;, &#39;PN&#39;, &#39;PRETTY_NAME&#39;, &#39;PV&#39;, &#39;S=
&#39;, &#39;SPECIAL_PKGSUFFIX&#39;, &#39;VERSION&#39;, &#39;VERSION_ID&#39;=
, &#39;do_compile[umask]&#39;, &#39;get_custom_distro_version&#39;, &#39;sa=
nitise_value&#39;]<br>List of dependencies for variable DISTRO_VERSION is {=
&#39;get_custom_distro_version&#39;}<br>List of dependencies for variable g=
et_custom_distro_version is {&#39;BBLAYERS_FETCH_DIR&#39;}<br>Variable get_=
custom_distro_version value is def get_custom_distro_version(d):<br>... (fu=
nction code is here)</blockquote><div><br></div><div>To me, this shows that=
 the recipe is correctly depending on the result of `def get_custom_distro_=
version(d)`, but when the result of that function is changing, the recipe i=
s not re-built.</div><div><br></div><div>Can anyone help me explain what&#3=
9;s going on here? Or, suggest an alternative way to do this?</div><div><br=
></div><div>Thanks,</div><div>Justin</div><div><br></div></div>

--000000000000f952e105b1814766--
