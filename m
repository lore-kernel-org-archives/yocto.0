Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.210.1624567219403605150
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 13:40:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOWyUFca;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: fbberton@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id u2so4241801ljo.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jun 2021 13:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KvJ+8vwTWbe6dDkW/H45jHcgmoPBJp3dHCU62DPyAeA=;
        b=MOWyUFca5XaGOKZVmEPvM27QYLqciKjCQuKaLp0z0sb48G9wA4nPcyL5AVM8sxkEQX
         wIR8Rn6ARJSxDbm2NIJMAIe1iQ/+QdrgqlUNab7ywphHSjwMj/RlnHW+l4TDFa+g63jn
         BzRkvRXR0PBL0oSOBTARH6v7gBM8WvmxHUYyv+cHv1LF2zIqWr27iOrH3p9aAIsIah2C
         XxKbpSQ68sa2m/j1wDaMdm46TTYYgMm0/TVilu4S0DhwfdmnWpHhe88q+Ki/C1J4OBto
         df04Fbl9sBkm8dhcaJ8TY2NVHJuZu4UInsVCVEo3Bi/GqCdjZIFSIEP4t0y3eMbfAVqC
         gDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KvJ+8vwTWbe6dDkW/H45jHcgmoPBJp3dHCU62DPyAeA=;
        b=sf7xSwvpgGkt5mDSpD/LO94wejwNP2FfnWHy7RI8wM4V//J57ziuP2YkSOIc+1DMED
         eKCcWqsIP5Qe74InHG++Xqh1s+dZk4bEI4PqwgmIMLhQ/rsY1ByAE2KG8NiqyPz+x+9e
         3Lf+XKzIw0WIeNqwvz0U70kJ/mJ8PO+1IN+sJgyMEGPEyxegOZ61eonPWYC3vkDFV3GJ
         zRYQrzxA00FBLzjv2tMxJ6oYExReMuEXEb8VLJeoFiEm+KC8LRkLFpK1X4erzlW0G0AD
         y3Sb5ZmpMpqk3BzpU+5nGaRkXA+BspoFzBvyNd3F1BNH0DDQBGMfpTVdvvCSPsnK4Y/c
         qeCA==
X-Gm-Message-State: AOAM533CG6D4dpHBiNQx6WQKbE7pA/OzdSni0oQFzx4A8K2nIjFd+h/J
	rdLm5xXWceh23/KnVyuFSTmyx9NRUrIqnaLPld1t1u2v290=
X-Google-Smtp-Source: ABdhPJwhf8qdEjfY5+7FoV7FIH12acm/2T9HEwHXrV/Q2Dkl2ALcxtFXkjGvulOSaOktNhibr5+c0mZGmIvRlqsptu8=
X-Received: by 2002:a2e:8146:: with SMTP id t6mr3436507ljg.364.1624567217226;
 Thu, 24 Jun 2021 13:40:17 -0700 (PDT)
MIME-Version: 1.0
From: fbberton@gmail.com
Date: Thu, 24 Jun 2021 17:40:05 -0300
Message-ID: <CAEaGWUKmET2Le-hsEe-o+n1OU8uT+Vqd5TbmKVS8ZwKPQOok0w@mail.gmail.com>
Subject: The do_populate_sdk is finishing OK even when there are errors present in the build
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e5853205c589073c"

--000000000000e5853205c589073c
Content-Type: text/plain; charset="UTF-8"

Hi all!

I'm running some test with do_populate_sdk task and I'm seeing this on the
log:

check_data_file_clashes: Package kmsxx-dbg wants to install file
/home/builder/build/tmp/work/foo-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/bar/sysroots/aarch64-poky-linux/usr/bin/.debug/kmstest
But that file is already provided by package  * libdrm-dbg

I also see this kind of message with other packages.

Looking in the source code I found that the install_complementary function
runs this [1] with attempt_only=True, and if attempt_only is true log above
it's just a warning, as shown here [2].

This [3] comment says that "will only attempt to install these packages, if
they don't exist then no error will occur."

My question is how can I force an error and not just a warning when running
do_populate_sdk?

I understand that I can change [1] to run:

  self.install(install_pkgs)

so, it'll use set attempt_only to False, that is the default, but I think
this will break some use cases.

What is the correct behaviour here, see the warning messages and fix the
packages to avoid "file is already provided by package" messages, every
time I create a SDK or change in some way to see an error message and stop
SDK generation?

What is the correct behavior here, inspect the warning messages, and fix
the packages to avoid "file is already provided by package" messages, every
time I create an SDK or change it in some way to see an error message and
stop the SDK generation?

Thanks!

Fabio Berton

[1] -
https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__.py#n401

[2] -
https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/ipk/__init__.py#n371

[3] -
https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__.py#n346

--000000000000e5853205c589073c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Hi all!</div><div class=3D"gmail_default" style=3D"font-family=
:monospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-=
family:monospace,monospace">I&#39;m running some test with do_populate_sdk =
task and I&#39;m seeing this on the log:</div><div class=3D"gmail_default" =
style=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:monospace,monospace">check_data_file_clashes: Pa=
ckage kmsxx-dbg wants to install file /home/builder/build/tmp/work/foo-poky=
-linux/core-image-minimal/1.0-r0/sdk/image/opt/bar/sysroots/aarch64-poky-li=
nux/usr/bin/.debug/kmstest<br>But that file is already provided by package =
=C2=A0* libdrm-dbg<br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">I also see this kind of message with other pa=
ckages.</div><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace"><br></div><div class=3D"gmail_default" style=3D"font-family:monosp=
ace,monospace">Looking in the source code I found that the install_compleme=
ntary function runs this [1] with attempt_only=3DTrue, and if attempt_only =
is true log above it&#39;s just a warning, as shown here [2].</div><div cla=
ss=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:monospace,monospace">This [=
3] comment says that &quot;will only attempt to install these packages, if =
they don&#39;t exist then no error will occur.&quot;</div><div class=3D"gma=
il_default" style=3D"font-family:monospace,monospace"><br></div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">My question is=
 how can I force an error and not just a warning when running do_populate_s=
dk?=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:monospace,=
monospace"><br></div><div class=3D"gmail_default" style=3D"font-family:mono=
space,monospace">I understand that I can change [1] to run:</div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:monospace,monospace">=C2=A0 s=
elf.install(install_pkgs)<br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:monospace,monospace"><br></div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace">so, it&#39;ll use set attempt_only to =
False, that is the default, but I think this will break some use cases.=C2=
=A0</div><div class=3D"gmail_default" style=3D"font-family:monospace,monosp=
ace"><br></div><div class=3D"gmail_default" style=3D"font-family:monospace,=
monospace">What is the correct behaviour here, see the warning messages and=
 fix the packages to avoid &quot;file is already provided by package&quot; =
messages, every time I create a SDK or change in some way to see an error m=
essage and stop SDK generation?</div><div class=3D"gmail_default" style=3D"=
font-family:monospace,monospace"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:monospace,monospace">What is the correct behavior here, i=
nspect the warning messages, and fix the packages to avoid &quot;file is al=
ready provided by package&quot; messages, every time I create an SDK or cha=
nge it in some way to see an error message and stop the SDK generation?<br>=
</div><div class=3D"gmail_default" style=3D"font-family:monospace,monospace=
"><br></div><div class=3D"gmail_default" style=3D"font-family:monospace,mon=
ospace">Thanks!</div><div class=3D"gmail_default" style=3D"font-family:mono=
space,monospace"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:monospace,monospace">Fabio Berton</div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:monospace,monospace">[1] -=C2=A0<a href=3D"https://gi=
t.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__ini=
t__.py#n401">https://git.openembedded.org/openembedded-core/tree/meta/lib/o=
e/package_manager/__init__.py#n401</a></div><div class=3D"gmail_default" st=
yle=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:monospace,monospace">[2] -=C2=A0<a href=3D"https:/=
/git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/ip=
k/__init__.py#n371">https://git.openembedded.org/openembedded-core/tree/met=
a/lib/oe/package_manager/ipk/__init__.py#n371</a></div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace"><br></div><div class=3D"=
gmail_default" style=3D"font-family:monospace,monospace">[3] -=C2=A0<a href=
=3D"https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package=
_manager/__init__.py#n346">https://git.openembedded.org/openembedded-core/t=
ree/meta/lib/oe/package_manager/__init__.py#n346</a></div></div>

--000000000000e5853205c589073c--
