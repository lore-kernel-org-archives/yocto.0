Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
 by mx.groups.io with SMTP id smtpd.web12.1433.1583228294176421590
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 01:38:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NrNW0TI8;
 spf=pass (domain: gmail.com, ip: 209.85.221.195, mailfrom: memarnejadm74@gmail.com)
Received: by mail-vk1-f195.google.com with SMTP id w4so682570vkd.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 01:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=AM7q/6LA6VmW8kfdlEneRYU44fkUW+dtVeA5ZuNRkZE=;
        b=NrNW0TI8GynvbQdY8RcTQTPeKCZqEGPSDGMivcG77JUR/PbDbjevPS9RTEric8Vl7Z
         7wGw4I5IqGuvGB2OziSVjIIbCj7MfFnXQc49NxHm8M2dLL0qQXfF740XH6gDVVgVvdwi
         3c47iM17BufV2l7h5/jME5PZlyRsksF30qnSzw5LS1otpZf6lGse7v+8DZ8IuFUeNM+Y
         vQFGQN2EIYdNc8o+X9zr8D2axBaoJf/gVMdV93Cyn+WIGV06l4Gdu5HfE21TQuut4/Iy
         +bR2rORcyi7nI5IfxdsTmdfFE5CNVaxchCixcLSGyRkXZYxBqMznUVTFD5/VsbYwJXFj
         A9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AM7q/6LA6VmW8kfdlEneRYU44fkUW+dtVeA5ZuNRkZE=;
        b=dDQselliLsXM7MrmUfJW55K5S5IOuTQ7MbvkAawZvjWinoGzcjjh/ixyUZqTSbtkRW
         r1/e8FBQOuOKJQmzEUz5n4GLmUaBUGoez0fnO+tq2MDsBSgd/d5L9WY9Tpx336NJXsUM
         sUk4iZYeHZFE8US1fxmUk2UQwwvDp6DVToGvoIIcnojHQIqkVrGjkqG4AQV5eExOaiav
         Lee7ZuI/qH2CB+IWLUrJpZ4mewcoZ9BxiiCbIgw/jQbVKtU2aVByph8ZT3UeHqqBxYbn
         4hjFi61b7Mwr9l9M6U4XWxgpbXzJWcB0QD9+aDksUqosucoctvfoWbl4T8OWWWeXJfSm
         Zobg==
X-Gm-Message-State: ANhLgQ0Wg5X4O7WA5mNQYwtQMfJjUbOt5eCL0v+7QAu37xaTg1g+TdJ8
	iWQVeYBZGyWF/LHqqbmaUAUdwyJB5RgemD+w4cm33w6xQu0=
X-Google-Smtp-Source: ADFU+vtKpJ8wnn8jWeEBLvI9AwuisScitTRSUXWCM4IX+HnyRNJ4Zgfxui0UWzxtZpICrtgRKtFuvCPEBk4KS3kNGa4=
X-Received: by 2002:a1f:4186:: with SMTP id o128mr2336837vka.32.1583228292744;
 Tue, 03 Mar 2020 01:38:12 -0800 (PST)
MIME-Version: 1.0
From: "Mehran Memarnejad" <memarnejadm74@gmail.com>
Date: Tue, 3 Mar 2020 13:08:01 +0330
Message-ID: <CAER1B8L6SkhQjyWZc2=TmSXGEbDOTwfWJoua_rFUD_kbFrSa9A@mail.gmail.com>
Subject: Toaster from Scratch
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fccae9059ff00f2e"

--000000000000fccae9059ff00f2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

All explanations about toaster I found on Internet are based on Poky, i.e.
they say "source oe-init-build-env" and then "source bitbake/bin/toaster
start", I could run this successfully, But now I want to do it in my own
way.
What I want is that to do things from scratch. by scratch I mean:
1- Cloning bitbake which contains toaster as well ... (NOT cloning poky
which also contains bitbake)
2- Put all my layers in layer directory
3- Run a script to initialize enviornment (here I use setenv ... put a few
lines ahead)
4- Source bitbake/bin/toaster start
5- Go to localhost:8000 and create a new project
6- Add all my required layers to project
7- And finally, building my target recipe

*Here is the structure of directory I want to have:*
.
=E2=94=9C=E2=94=80=E2=94=80 bitbake
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 AUTHORS
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 ChangeLog
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 contrib
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 doc
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 lib
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 LICENSE
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 LICENSE.GPL-2.0-only
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 LICENSE.MIT
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 toaster-requirements.txt
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 TODO
=E2=94=9C=E2=94=80=E2=94=80 layers
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-mylayer
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-arago
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-aws
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-browser
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-linaro
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-openembedded
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-processor-sdk
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-qt5
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-ros
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-ti
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-virtualization
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 oe-core
=E2=94=94=E2=94=80=E2=94=80 setenv


*setenv file is from Arago project from TI that contains ... I modified it
alittle:*

# Set OEBASE to where the build and source directories reside
# NOTE: Do NOT place a trailing / on the end of OEBASE.
export OEBASE=3D*/home/mehran/Desktop/scratch*

# try to find out bitbake directory
BITBAKEDIR=3D`find *${OEBASE}* -name "*bitbake*"`
for f in ${BITBAKEDIR}
do
    if [ -d ${f}/bin ]
    then
        PATH=3D"${f}/bin:$PATH"
    fi
done

# check for any scripts directories in the top-level of the repos and add
those
# to the PATH
SCRIPTS=3D`find *${OEBASE}/layers* -maxdepth 2 -name "scripts" -type d`
for s in ${SCRIPTS}
do
    PATH=3D"${s}:$PATH"
done

unset BITBAKEDIR
unset SCRIPTS
export PATH
export BUILDDIR=3D${OEBASE}/build
export BB_ENV_EXTRAWHITE=3D"MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_pro=
xy
https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK
BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_MAKE
GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER OEBASE
META_SDK_PATH TOOLCHAIN_TYPE TOOLCHAIN_BRAND TOOLCHAIN_BASE TOOLCHAIN_PATH
TOOLCHAIN_PATH_ARMV5 TOOLCHAIN_PATH_ARMV7 TOOLCHAIN_PATH_ARMV8
EXTRA_TISDK_FILES TISDK_VERSION ARAGO_BRAND ARAGO_RT_ENABLE
ARAGO_SYSTEST_ENABLE ARAGO_KERNEL_SUFFIX TI_SECURE_DEV_PKG_CAT
TI_SECURE_DEV_PKG_AUTO TI_SECURE_DEV_PKG_K3 ARAGO_SYSVINIT SYSFW_FILE"

*Result:*
When I "source bitbake/bin/toaster start", toaster runs on localhost:8000.
Then I can create a project and add my layers (toaster shows recipes in
layers), but I can't build my recipe.. It gives me an error.. when it
starts, It says "0% cloning <layer>" and then throws an error with below
description, even though all my layers are local NOT on git hosting servers=
:
               command: git fetch && git reset --hard "origin/N/A"
               b"fatal: ambiguous argument 'origin/N/A': unknown revision
or path not in the working tree.\nUse '--' to separate paths from
revisions, like this:\n'git <command> [<revision>...] -- [<file>...]'\n"

Any help on how to use toaster individually is appreciated
Thanks in advance

--000000000000fccae9059ff00f2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>All explanations about toaster I found on Inter=
net are based=20
on Poky, i.e. they say &quot;source oe-init-build-env&quot; and then &quot;=
source=20
bitbake/bin/toaster start&quot;, I could run this successfully, But now I=
=20
want to do it in my own way.<br>What I want is that to do things from scrat=
ch. by scratch I mean:<br>1- Cloning bitbake which contains toaster as well=
 ... (NOT cloning poky which also contains bitbake)<br>2- Put all my layers=
 in layer directory<br>3- Run a script to initialize enviornment (here I us=
e setenv ... put a few lines ahead)<br>4- Source bitbake/bin/toaster start<=
br>5- Go to localhost:8000 and create a new project<br>6- Add all my requir=
ed layers to project<br>7- And finally, building my target recipe<br><br><s=
trong>Here is the structure of directory I want to have:</strong><br>.<br>=
=E2=94=9C=E2=94=80=E2=94=80 bitbake<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 AUTHORS<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 bin<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 ChangeLog<br>=
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 classes<br>=E2=94=82=C2=
=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf<br>=E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 contrib<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 doc<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 lib<br>=
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 LICENSE<br>=E2=94=82=C2=
=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 LICENSE.GPL-2.0-only<br>=E2=94=82=C2=
=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 LICENSE.MIT<br>=E2=94=82=C2=A0=C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 README<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 toaster-requirements.txt<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=
=94=80 TODO<br>=E2=94=9C=E2=94=80=E2=94=80 layers<br>=E2=94=82=C2=A0=C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 meta-mylayer<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 meta-arago<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 meta-aws<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 met=
a-browser<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 meta-linaro<=
br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 meta-openembedded<br>=
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 meta-processor-sdk<br>=E2=
=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 meta-qt5<br>=E2=94=82=C2=A0=
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 meta-ros<br>=E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 meta-ti<br>=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 meta-virtualization<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=
=E2=94=80 oe-core<br>=E2=94=94=E2=94=80=E2=94=80 setenv<br><br><br><strong>=
setenv file is from Arago project from TI that contains ... I modified it a=
little:</strong><br><br># Set OEBASE to where the build and source director=
ies reside<br># NOTE: Do NOT place a trailing / on the end of OEBASE.<br>ex=
port OEBASE=3D<b>/home/mehran/Desktop/scratch</b><br><br># try to find out =
bitbake directory<br>BITBAKEDIR=3D`find <b>${OEBASE}</b> -name &quot;*bitba=
ke*&quot;`<br>for f in ${BITBAKEDIR}<br>do<br>=C2=A0=C2=A0=C2=A0 if [ -d ${=
f}/bin ]<br>=C2=A0=C2=A0=C2=A0 then<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PATH=3D&quot;${f}/bin:$PATH&quot;<br>=C2=A0=C2=A0=C2=A0 fi<br>done<b=
r><br># check for any scripts directories in the top-level of the repos and=
 add those<br># to the PATH<br>SCRIPTS=3D`find <b>${OEBASE}/layers</b> -max=
depth 2 -name &quot;scripts&quot; -type d`<br>for s in ${SCRIPTS}<br>do<br>=
=C2=A0=C2=A0=C2=A0 PATH=3D&quot;${s}:$PATH&quot;<br>done<br><br>unset BITBA=
KEDIR<br>unset SCRIPTS<br>export PATH<br>export BUILDDIR=3D${OEBASE}/build<=
br>export
 BB_ENV_EXTRAWHITE=3D&quot;MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_prox=
y=20
https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK=20
BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_MAKE=20
GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER OEBASE=20
META_SDK_PATH TOOLCHAIN_TYPE TOOLCHAIN_BRAND TOOLCHAIN_BASE=20
TOOLCHAIN_PATH TOOLCHAIN_PATH_ARMV5 TOOLCHAIN_PATH_ARMV7=20
TOOLCHAIN_PATH_ARMV8 EXTRA_TISDK_FILES TISDK_VERSION ARAGO_BRAND=20
ARAGO_RT_ENABLE ARAGO_SYSTEST_ENABLE ARAGO_KERNEL_SUFFIX=20
TI_SECURE_DEV_PKG_CAT TI_SECURE_DEV_PKG_AUTO TI_SECURE_DEV_PKG_K3=20
ARAGO_SYSVINIT SYSFW_FILE&quot;<br><br><strong>Result:</strong><br>When I=
=20
&quot;source bitbake/bin/toaster start&quot;, toaster runs on localhost:800=
0. Then
 I can create a project and add my layers (toaster shows recipes in=20
layers), but I can&#39;t build my recipe.. It gives me an error.. when it=
=20
starts, It says &quot;0% cloning &lt;layer&gt;&quot; and then throws an err=
or with
 below description, even though all my layers are local NOT on git=20
hosting servers:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 command: git fetch &amp;&amp; git reset --ha=
rd &quot;origin/N/A&quot; <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
 b&quot;fatal: ambiguous argument &#39;origin/N/A&#39;: unknown revision or=
 path not=20
in the working tree.\nUse &#39;--&#39; to separate paths from revisions, li=
ke=20
this:\n&#39;git &lt;command&gt; [&lt;revision&gt;...] --=20
[&lt;file&gt;...]&#39;\n&quot;<br><br>Any help on how to use toaster indivi=
dually is appreciated<br>Thanks in advance</div>

--000000000000fccae9059ff00f2e--
