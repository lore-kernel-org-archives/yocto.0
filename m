Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web08.278.1616517426617062695
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 09:37:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGtFIBT3;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id 97so6894587uav.7
        for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 09:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h9x6gHqlPl8RZl9EAH9GhtwxdnaXd06ChAxQhKcsdlY=;
        b=YGtFIBT3SheI5ybEP1ujZn7iZGbu+sWeiJKK5kguoRbZQgz6TRL/mWfX9x+GeonIZd
         YpBc86k+gmS2yHpjOQ3SxlsLTNV5tAP7ZcIF4Sdsd4KFL65PkTmlsZ1NDVCxjF3aXXMO
         en3qH2fG5pI5qF/2LoQRJW3vBFKr9RRycgsOHLrQ6eg4F4ISVDcBRK+/C1zE1VFYbbto
         YVD7+z6Rj6SjnOQ3AsFahcpAS6/aR79cqkuZDrkwp3gI5NmIIA3QVCEy/L7WzEWSaeIX
         QK9Wj1Juwm5ks7KLigpRBpf8Sf7w7H0EUyMqJL+527dRZhcxCCuetmmvz6r7O7H0oanr
         qPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h9x6gHqlPl8RZl9EAH9GhtwxdnaXd06ChAxQhKcsdlY=;
        b=bSBb84vBA9ak1MLLZXHHgjXIp22I1WaomzGvq1YppwOZAUpNgaLmbETBRL1vIh7sdN
         2FGatYsjdmbXLOXfNHNFKPkW8Q9f3m4MtmM5q49xtTkA0eN8BCVY5Ie7l0GDPyKllt8j
         dNWvq/MbNnC/q0bi+0+SKPsb0azisBV4hKtoTEEnzux7dnF9T5Az6vetQaMuhxkd6Wjl
         nYL62Z0TCbFq4RBuoYMNyBFe9wwZjbNps+cAUEZGrDI8ONmXvkBs56Y/r37eCLwiHlSo
         haeAuD3yZn5MrXo5aj8Dx4eS5hVwPuh45umCOnsogz0l50cNrZaC3cy+svSQMGFUkdg8
         3LqA==
X-Gm-Message-State: AOAM533nZ2BCAhl+1GRrPfyAtpGoRxHOpUqwobqkZ+U5TLQMthcjdkK+
	JgV7017sPycBiaU3qeR54HCHXU40JymMU9BXMIE=
X-Google-Smtp-Source: ABdhPJwAQxtgtaPaj9o0Y1oPsuTgXyOtgGkUfPYz7+09WjVDAgHUr+J1dKM5QZ+Lc9nrS41Llv/cBUFvBroOgkCEpXY=
X-Received: by 2002:ab0:7150:: with SMTP id k16mr4161232uao.71.1616517425632;
 Tue, 23 Mar 2021 09:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <AM7P190MB058232A99CDEF9BA4A40943CB0649@AM7P190MB0582.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <AM7P190MB058232A99CDEF9BA4A40943CB0649@AM7P190MB0582.EURP190.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 23 Mar 2021 17:36:54 +0100
Message-ID: <CANNYZj9fb5s2SHXOGQR20POkRUvJ9fN24DUdSYgx62cxiuEhQQ@mail.gmail.com>
Subject: Re: [yocto] Build wayland/weston from source?
To: "Haase, Juergen [ext]" <juergen.haase.ext@zeiss.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eda07b05be36ca31"

--000000000000eda07b05be36ca31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Petalinux is a xilinx product? You need to ask xilinx to support you.

Alex

On Tue, 23 Mar 2021 at 17:34, Haase, Juergen [ext] <
juergen.haase.ext@zeiss.com> wrote:

> Hi. I'm probably not exactly on topic in the yocto mailing list, but
> thought maybe someone can point me into the right direction.
>
> What I want to do:
> I've made a modification to weston and am planning to do some more, so I
> would like to integrate this modified version of wayland/weston into my
> Petalinux 2019.1 config (have to use that version).
> At the moment my wayland branch is based on v9.0.0.
>
> What I've tried so far (please do tell me if I'm doing something totally
> stupid):
> Unfortunately I don't have very good understanding about petalinux/yocto=
,
> I tried to start with the following steps:
>
> I began with trying to integrate the wayland recipes from openembedded:
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphic=
s/wayland
>
> I copied this folder over into my petalinux recipes folder and ran
>
>     $ petalinux-build -c wayland
>     [INFO] building wayland
>     [INFO] sourcing bitbake
>     [INFO] generating user layers
>     INFO: bitbake wayland
>     Loading cache: 100%
> |############################################################| Time: 0:0=
0:00
>     Loaded 3826 entries from dependency cache.
>     ERROR: ParseError at
> <my_petalinuxroot>/project-spec/meta-user/recipes-apps/wayland/
> weston_9.0.0.bb:22: Could not inherit file classes/features_check.bbclas=
s
>
>     Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
>     ERROR: Failed to build wayland
>
> I searched through my Petalinux project and didn't find any other
> *.bbclass files, so I don't know where this could be put if I copied it
> over from openembedded.
> So I grepped for this and found:
>
>     $ rg features_check
>     weston_9.0.0.bb
>     22:inherit meson pkgconfig useradd features_check
>
>     weston-init.bb
>     65:inherit update-rc.d features_check systemd useradd
>
> Since it wasn't obvious to me if the inclusion of this even does anythin=
g,
> I removed it and ran the build again:
>
>     $ petalinux-build -c wayland
>     [INFO] building wayland
>     [INFO] sourcing bitbake
>     [INFO] generating user layers
>     INFO: bitbake wayland
>     Loading cache: 100%
> |############################################################| Time: 0:0=
0:00
>     Loaded 3826 entries from dependency cache.
>     Parsing recipes: 100%
> |##########################################################| Time: 0:00:=
02
>     Parsing of 2799 .bb files complete (2791 cached, 8 parsed). 3836
> targets, 162 skipped, 0 masked, 0 errors.
>     NOTE: Resolving any missing task queue dependencies
>     Initialising tasks: 100%
> |#######################################################| Time: 0:00:00
>     Checking sstate mirror object availability: 100%
> |###############################| Time: 0:00:03
>     Sstate summary: Wanted 62 Found 18 Missed 88 Current 320 (29% match,
> 88% complete)
>     NOTE: Executing SetScene Tasks
>     NOTE: Executing RunQueue Tasks
>     ERROR: wayland-native-1.19.0-r0 do_configure: meson failed
>     ERROR: wayland-native-1.19.0-r0 do_configure: Function failed:
> do_configure (log file is located at
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
temp/log.do_configure.8492)
>     ERROR: Logfile of failure stored in:
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
temp/log.do_configure.8492
>     Log data follows:
>     | DEBUG: Executing shell function do_configure
>     | NOTE: Executing meson -Ddocumentation=3Dfalse -Dlibraries=3Dfalse
> -Ddtd_validation=3Dtrue...
>     | The Meson build system
>     | Version: 0.47.2
>     | Source dir:
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
wayland-1.19.0
>     | Build dir:
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
build
>     | Build type: native build
>     |
>     | meson.build:1:0: ERROR:  Meson version is 0.47.2 but project
> requires >=3D 0.52.1.
>     |
>     | A full log can be found at
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
build/meson-logs/meson-log.txt
>     | ERROR: meson failed
>     | WARNING:
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
temp/run.do_configure.8492:1
> exit 1 from 'exit 1'
>     | ERROR: Function failed: do_configure (log file is located at
> <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/=
temp/log.do_configure.8492)
>     ERROR: Task
> (virtual:native:<my_petalinuxroot>/project-spec/meta-user/recipes-apps/w=
ayland/wayland_1.19.0.bb:do_configure)
> failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 1328 tasks of which 1314 didn't need =
to
> be rerun and 1 failed.
>
>     Summary: 1 task failed:
>
> virtual:native:<my_petalinuxroot>/project-spec/meta-user/recipes-apps/wa=
yland/wayland_1.19.0.bb:
> do_configure
>     Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t
> code.
>     ERROR: Failed to build wayland
>
> Ok, it seems I need a newer meson, so I copied this over too from
> openembedded and tried to build it:
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtool=
s/meson
>
>     $ petalinux-build -c meson
>     [INFO] building meson
>     [INFO] sourcing bitbake
>     [INFO] generating user layers
>     INFO: bitbake meson
>     Loading cache: 100%
> |############################################################| Time: 0:0=
0:00
>     Loaded 3835 entries from dependency cache.
>     Parsing recipes: 100%
> |##########################################################| Time: 0:00:=
01
>     Parsing of 2801 .bb files complete (2798 cached, 3 parsed). 3839
> targets, 162 skipped, 0 masked, 0 errors.
>     NOTE: Resolving any missing task queue dependencies
>     ERROR: Nothing RPROVIDES 'python3-pkg-resources' (but
> <my_petalinuxroot>/project-spec/meta-user/recipes-apps/meson/
> meson_0.57.1.bb RDEPENDS on or otherwise requires it)
>     NOTE: Runtime target 'python3-pkg-resources' is unbuildable,
> removing...
>     Missing or unbuildable dependency chain was: ['python3-pkg-resources=
']
>     ERROR: Required build target 'meson' has no buildable providers.
>     Missing or unbuildable dependency chain was: ['meson',
> 'python3-pkg-resources']
>
>     Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t
> code.
>     ERROR: Failed to build meson
>
> And this is where I started to get stuck. Grepping the openembedded repo
> for 'python3-pkg-resources' didn't turn up anything. Googling it seeems =
to
> suggest it is part of python-setuptools.
> So I tried to install python3-setuptools by copying it over again:
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtool=
s/python/python3-setuptools_54.1.1.bb
>
>     $ petalinux-build -c python3-setuptools
>     [INFO] building python3-setuptools
>     [INFO] sourcing bitbake
>     [INFO] generating user layers
>     INFO: bitbake python3-setuptools
>     Loading cache: 100%
> |############################################################| Time: 0:0=
0:00
>     Loaded 3838 entries from dependency cache.
>     WARNING:
> <my_petalinuxroot>/project-spec/meta-user/recipes-apps/python3-setuptool=
s/
> python3-setuptools_54.1.1.bb: Unable to get checksum for
> python3-setuptools-native SRC_URI entry
> 0001-conditionally-do-not-fetch-code-by-easy_install.patch: file could n=
ot
> be found
>     Parsing recipes: 100%
> |##########################################################| Time: 0:00:=
01
>     Parsing of 2802 .bb files complete (2800 cached, 2 parsed). 3842
> targets, 162 skipped, 0 masked, 0 errors.
>     NOTE: Resolving any missing task queue dependencies
>     ERROR: Nothing RPROVIDES 'python3-pkg-resources-native' (but
> virtual:native:<my_petalinuxroot>/project-spec/meta-user/recipes-apps/py=
thon3-setuptools/
> python3-setuptools_54.1.1.bb RDEPENDS on or otherwise requires it)
>     NOTE: Runtime target 'python3-pkg-resources-native' is unbuildable,
> removing...
>     Missing or unbuildable dependency chain was:
> ['python3-pkg-resources-native']
>     ERROR: Required build target 'python3-setuptools' has no buildable
> providers.
>     Missing or unbuildable dependency chain was: ['python3-setuptools',
> 'python3-setuptools-native', 'python3-pkg-resources-native']
>
>     Summary: There was 1 WARNING message shown.
>     Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t
> code.
>     ERROR: Failed to build python3-setuptools
>
> I couldn't find 'python3-setuptools-native' or
> 'python3-pkg-resources-native' in the openembedded repo, so here my jour=
ney
> is over for now.
>
>
> Is this way I tried even the correct way to get wayland from source into
> my petalinux project? Or is there a better solution?
>
> Any help would be really appreciated.
>
> Rgeards,
> J=C3=BCrgen Haase
>
>
>=20
>
>

--000000000000eda07b05be36ca31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Petalinux is a xilinx product? You need to ask xilinx=
 to support you.</div><div><br></div><div>Alex<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 23 Mar 2021=
 at 17:34, Haase, Juergen [ext] &lt;<a href=3D"mailto:juergen.haase.ext@zei=
ss.com">juergen.haase.ext@zeiss.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
Hi. I&#39;m probably not exactly on topic in the yocto mailing list, but t=
hought maybe someone can point me into the right direction.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
What I want to do:
<div>I&#39;ve made a modification to weston and am planning to do some mor=
e, so I would like to integrate this modified version of wayland/weston int=
o my Petalinux 2019.1 config (have to use that version).</div>
<div>At the moment my wayland branch is based on v9.0.0.</div>
<div><br>
</div>
<div>What I&#39;ve tried so far (please do tell me if I&#39;m doing someth=
ing totally stupid):</div>
<div>Unfortunately I don&#39;t have very good understanding about petalinu=
x/yocto, I tried to start with the following steps:</div>
<div><br>
</div>
<div>I began with trying to integrate the wayland recipes from openembedde=
d:</div>
<div><a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/r=
ecipes-graphics/wayland" target=3D"_blank">http://cgit.openembedded.org/ope=
nembedded-core/tree/meta/recipes-graphics/wayland</a></div>
<div><br>
</div>
<div>I copied this folder over into my petalinux recipes folder and ran</d=
iv>
<div><br>
</div>
<div>=C2=A0=C2=A0=C2=A0 $ petalinux-build -c wayland</div>
<div>=C2=A0 =C2=A0 [INFO] building wayland</div>
<div>=C2=A0=C2=A0=C2=A0 [INFO] sourcing bitbake</div>
<div>=C2=A0 =C2=A0 [INFO] generating user layers</div>
<div>=C2=A0 =C2=A0 INFO: bitbake wayland</div>
<div>=C2=A0=C2=A0=C2=A0 Loading cache: 100% |#############################=
###############################| Time: 0:00:00</div>
<div>=C2=A0 =C2=A0 Loaded 3826 entries from dependency cache.</div>
<div>=C2=A0=C2=A0=C2=A0 ERROR: ParseError at &lt;my_petalinuxroot&gt;/proj=
ect-spec/meta-user/recipes-apps/wayland/<a href=3D"http://weston_9.0.0.bb:2=
2" target=3D"_blank">weston_9.0.0.bb:22</a>: Could not inherit file classes=
/features_check.bbclass</div>
<div>=C2=A0=C2=A0 <br>
</div>
<div>=C2=A0=C2=A0=C2=A0 Summary: There was 1 ERROR message shown, returnin=
g a non-zero exit code.</div>
<div>=C2=A0=C2=A0=C2=A0 ERROR: Failed to build wayland</div>
<div><br>
</div>
<div>I searched through my Petalinux project and didn&#39;t find any other=
 *.bbclass files, so I don&#39;t know where this could be put if I copied i=
t over from openembedded.</div>
<div>So I grepped for this and found:</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 $ rg features_check</div>
<div>=C2=A0=C2=A0=C2=A0 <a href=3D"http://weston_9.0.0.bb" target=3D"_blan=
k">weston_9.0.0.bb</a></div>
<div>=C2=A0=C2=A0=C2=A0 22:inherit meson pkgconfig useradd features_check<=
/div>
<div>=C2=A0 <br>
</div>
<div>=C2=A0=C2=A0=C2=A0 <a href=3D"http://weston-init.bb" target=3D"_blank=
">weston-init.bb</a></div>
<div>=C2=A0=C2=A0=C2=A0 65:inherit update-rc.d features_check systemd user=
add</div>
<div><br>
</div>
<div>Since it wasn&#39;t obvious to me if the inclusion of this even does =
anything, I removed it and ran the build again:</div>
<div><br>
</div>
<div>=C2=A0=C2=A0=C2=A0 $ petalinux-build -c wayland</div>
<div>=C2=A0=C2=A0=C2=A0 [INFO] building wayland</div>
<div>=C2=A0=C2=A0=C2=A0 [INFO] sourcing bitbake</div>
<div>=C2=A0=C2=A0=C2=A0 [INFO] generating user layers</div>
<div>=C2=A0 =C2=A0 INFO: bitbake wayland</div>
<div>=C2=A0 =C2=A0 Loading cache: 100% |##################################=
##########################| Time: 0:00:00</div>
<div>=C2=A0 =C2=A0 Loaded 3826 entries from dependency cache.</div>
<div>=C2=A0 =C2=A0 Parsing recipes: 100% |################################=
##########################| Time: 0:00:02</div>
<div>=C2=A0 =C2=A0 Parsing of 2799 .bb files complete (2791 cached, 8 pars=
ed). 3836 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>=C2=A0 =C2=A0 NOTE: Resolving any missing task queue dependencies</di=
v>
<div>=C2=A0 =C2=A0 Initialising tasks: 100% |#############################=
##########################| Time: 0:00:00</div>
<div>=C2=A0 =C2=A0 Checking sstate mirror object availability: 100% |#####=
##########################| Time: 0:00:03</div>
<div>=C2=A0 =C2=A0 Sstate summary: Wanted 62 Found 18 Missed 88 Current 32=
0 (29% match, 88% complete)</div>
<div>=C2=A0 =C2=A0 NOTE: Executing SetScene Tasks</div>
<div>=C2=A0 =C2=A0 NOTE: Executing RunQueue Tasks</div>
<div>=C2=A0 =C2=A0 ERROR: wayland-native-1.19.0-r0 do_configure: meson fai=
led</div>
<div>=C2=A0 =C2=A0 ERROR: wayland-native-1.19.0-r0 do_configure: Function =
failed: do_configure (log file is located at &lt;my_petalinuxroot&gt;/build=
/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/temp/log.do_configure.8492)=
</div>
<div>=C2=A0 =C2=A0 ERROR: Logfile of failure stored in: &lt;my_petalinuxro=
ot&gt;/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/temp/log.do_con=
figure.8492</div>
<div>=C2=A0 =C2=A0 Log data follows:</div>
<div>=C2=A0 =C2=A0 | DEBUG: Executing shell function do_configure</div>
<div>=C2=A0 =C2=A0 | NOTE: Executing meson -Ddocumentation=3Dfalse -Dlibra=
ries=3Dfalse -Ddtd_validation=3Dtrue...</div>
<div>=C2=A0 =C2=A0 | The Meson build system</div>
<div>=C2=A0 =C2=A0 | Version: 0.47.2</div>
<div>=C2=A0 =C2=A0 | Source dir: &lt;my_petalinuxroot&gt;/build/tmp/work/x=
86_64-linux/wayland-native/1.19.0-r0/wayland-1.19.0</div>
<div>=C2=A0 =C2=A0 | Build dir: &lt;my_petalinuxroot&gt;/build/tmp/work/x8=
6_64-linux/wayland-native/1.19.0-r0/build</div>
<div>=C2=A0 =C2=A0 | Build type: native build</div>
<div>=C2=A0 =C2=A0 |</div>
<div>=C2=A0 =C2=A0 | meson.build:1:0: ERROR: =C2=A0Meson version is 0.47.2=
 but project requires &gt;=3D 0.52.1.</div>
<div>=C2=A0 =C2=A0 |</div>
<div>=C2=A0 =C2=A0 | A full log can be found at &lt;my_petalinuxroot&gt;/b=
uild/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/build/meson-logs/meson-=
log.txt</div>
<div>=C2=A0 =C2=A0 | ERROR: meson failed</div>
<div>=C2=A0 =C2=A0 | WARNING: &lt;my_petalinuxroot&gt;/build/tmp/work/x86_=
64-linux/wayland-native/1.19.0-r0/temp/run.do_configure.8492:1 exit 1 from =
&#39;exit 1&#39;</div>
<div>=C2=A0 =C2=A0 | ERROR: Function failed: do_configure (log file is loc=
ated at &lt;my_petalinuxroot&gt;/build/tmp/work/x86_64-linux/wayland-native=
/1.19.0-r0/temp/log.do_configure.8492)</div>
<div>=C2=A0 =C2=A0 ERROR: Task (virtual:native:&lt;my_petalinuxroot&gt;/pr=
oject-spec/meta-user/recipes-apps/wayland/wayland_1.19.0.bb:do_configure) f=
ailed with exit code &#39;1&#39;</div>
<div>=C2=A0 =C2=A0 NOTE: Tasks Summary: Attempted 1328 tasks of which 1314=
 didn&#39;t need to be rerun and 1 failed.</div>
<div>=C2=A0 <br>
</div>
<div>=C2=A0 =C2=A0 Summary: 1 task failed:</div>
<div>=C2=A0 =C2=A0 =C2=A0 virtual:native:&lt;my_petalinuxroot&gt;/project-=
spec/meta-user/recipes-apps/wayland/wayland_1.19.0.bb:do_configure</div>
<div>=C2=A0 =C2=A0 Summary: There were 2 ERROR messages shown, returning a=
 non-zero exit code.</div>
<div>=C2=A0 =C2=A0 ERROR: Failed to build wayland</div>
<div><br>
</div>
<div>Ok, it seems I need a newer meson, so I copied this over too from ope=
nembedded and tried to build it:</div>
<div><a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/r=
ecipes-devtools/meson" target=3D"_blank">http://cgit.openembedded.org/opene=
mbedded-core/tree/meta/recipes-devtools/meson</a></div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 $ petalinux-build -c meson</div>
<div>=C2=A0 =C2=A0 [INFO] building meson</div>
<div>=C2=A0 =C2=A0 [INFO] sourcing bitbake</div>
<div>=C2=A0 =C2=A0 [INFO] generating user layers</div>
<div>=C2=A0 =C2=A0 INFO: bitbake meson</div>
<div>=C2=A0 =C2=A0 Loading cache: 100% |##################################=
##########################| Time: 0:00:00</div>
<div>=C2=A0 =C2=A0 Loaded 3835 entries from dependency cache.</div>
<div>=C2=A0 =C2=A0 Parsing recipes: 100% |################################=
##########################| Time: 0:00:01</div>
<div>=C2=A0=C2=A0=C2=A0 Parsing of 2801 .bb files complete (2798 cached, 3=
 parsed). 3839 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>=C2=A0 =C2=A0 NOTE: Resolving any missing task queue dependencies</di=
v>
<div>=C2=A0 =C2=A0 ERROR: Nothing RPROVIDES &#39;python3-pkg-resources&#39=
; (but &lt;my_petalinuxroot&gt;/project-spec/meta-user/recipes-apps/meson/<=
a href=3D"http://meson_0.57.1.bb" target=3D"_blank">meson_0.57.1.bb</a> RDE=
PENDS on or otherwise requires it)</div>
<div>=C2=A0 =C2=A0 NOTE: Runtime target &#39;python3-pkg-resources&#39; is=
 unbuildable, removing...</div>
<div>=C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&#39;pyth=
on3-pkg-resources&#39;]</div>
<div>=C2=A0 =C2=A0 ERROR: Required build target &#39;meson&#39; has no bui=
ldable providers.</div>
<div>=C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&#39;meso=
n&#39;, &#39;python3-pkg-resources&#39;]</div>
<div>=C2=A0 <br>
</div>
<div>=C2=A0 =C2=A0 Summary: There were 2 ERROR messages shown, returning a=
 non-zero exit code.</div>
<div>=C2=A0 =C2=A0 ERROR: Failed to build meson</div>
<div><br>
</div>
<div>And this is where I started to get stuck. Grepping the openembedded r=
epo for &#39;python3-pkg-resources&#39; didn&#39;t turn up anything. Googli=
ng it seeems to suggest it is part of python-setuptools.</div>
<div>So I tried to install python3-setuptools by copying it over again:</d=
iv>
<div><a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/r=
ecipes-devtools/python/python3-setuptools_54.1.1.bb" target=3D"_blank">http=
://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/pytho=
n/python3-setuptools_54.1.1.bb</a></div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 $ petalinux-build -c python3-setuptools</div>
<div>=C2=A0 =C2=A0 [INFO] building python3-setuptools</div>
<div>=C2=A0 =C2=A0 [INFO] sourcing bitbake</div>
<div>=C2=A0 =C2=A0 [INFO] generating user layers</div>
<div>=C2=A0 =C2=A0 INFO: bitbake python3-setuptools</div>
<div>=C2=A0 =C2=A0 Loading cache: 100% |##################################=
##########################| Time: 0:00:00</div>
<div>=C2=A0 =C2=A0 Loaded 3838 entries from dependency cache.</div>
<div>=C2=A0 =C2=A0 WARNING: &lt;my_petalinuxroot&gt;/project-spec/meta-use=
r/recipes-apps/python3-setuptools/<a href=3D"http://python3-setuptools_54.1=
.1.bb" target=3D"_blank">python3-setuptools_54.1.1.bb</a>: Unable to get ch=
ecksum for python3-setuptools-native SRC_URI entry 0001-conditionally-do-no=
t-fetch-code-by-easy_install.patch: file could
 not be found</div>
<div>=C2=A0 =C2=A0 Parsing recipes: 100% |################################=
##########################| Time: 0:00:01</div>
<div>=C2=A0 =C2=A0 Parsing of 2802 .bb files complete (2800 cached, 2 pars=
ed). 3842 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>=C2=A0 =C2=A0 NOTE: Resolving any missing task queue dependencies</di=
v>
<div>=C2=A0 =C2=A0 ERROR: Nothing RPROVIDES &#39;python3-pkg-resources-nat=
ive&#39; (but virtual:native:&lt;my_petalinuxroot&gt;/project-spec/meta-use=
r/recipes-apps/python3-setuptools/<a href=3D"http://python3-setuptools_54.1=
.1.bb" target=3D"_blank">python3-setuptools_54.1.1.bb</a> RDEPENDS on or ot=
herwise requires it)</div>
<div>=C2=A0 =C2=A0 NOTE: Runtime target &#39;python3-pkg-resources-native&=
#39; is unbuildable, removing...</div>
<div>=C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&#39;pyth=
on3-pkg-resources-native&#39;]</div>
<div>=C2=A0 =C2=A0 ERROR: Required build target &#39;python3-setuptools&#3=
9; has no buildable providers.</div>
<div>=C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&#39;pyth=
on3-setuptools&#39;, &#39;python3-setuptools-native&#39;, &#39;python3-pkg-=
resources-native&#39;]</div>
<div>=C2=A0 <br>
</div>
<div>=C2=A0 =C2=A0 Summary: There was 1 WARNING message shown.</div>
<div>=C2=A0 =C2=A0 Summary: There were 2 ERROR messages shown, returning a=
 non-zero exit code.</div>
<div>=C2=A0 =C2=A0 ERROR: Failed to build python3-setuptools</div>
<div><br>
</div>
<div>I couldn&#39;t find &#39;python3-setuptools-native&#39; or &#39;pytho=
n3-pkg-resources-native&#39; in the openembedded repo, so here my journey i=
s over for now.</div>
<div><br>
</div>
<div><br>
</div>
<div>Is this way I tried even the correct way to get wayland from source i=
nto my petalinux project? Or is there a better solution?</div>
<div><br>
</div>
<div>Any help would be really appreciated.</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
Rgeards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
J=C3=BCrgen Haase</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000eda07b05be36ca31--
