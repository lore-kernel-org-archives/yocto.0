Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web12.4793.1581676991903815656
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 02:43:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxMjGjkJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id y2so4029946qvu.13
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 02:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EHDS3JOVi+f6KvwSqp5rXPOFGa0T0qKITVAQdQe+KEg=;
        b=HxMjGjkJMxKZ0rSsLPOa9+/YI6zIXqeiPfVh3YisnFr4SAxnkAfkxMVaTrfWbyZsCt
         z7W1JrW3cJLCQynzA1sPAdVW7OCj+vcUhdwu0sZVmDAaR6x0IPHkQhXg+eUzAj6M41rK
         ZmnJPlwhgC3c84UtsCwj0OIemmQdxBSOkEpKsWvg/b6IaNGR2tGBic6t/o3S6TpCXEWP
         rFcsE5IlK9HSiO5pYsO/l/nG585mJj36gELGWGJYNNWSc7t6O0sZCA8OG4D4C34wTznq
         3VWU8luPeJs05hm1Pk25wBVgUpSnWUyuWUuS+2g0TKd54W5l3EObjybahBxBeJDhoqDI
         TTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EHDS3JOVi+f6KvwSqp5rXPOFGa0T0qKITVAQdQe+KEg=;
        b=ZXw6r7cegp0UJRkJ9ZNsIcHOE7/c+2Tb7NDpQbGuDZJG+/3ZU6Rit67x6FU1sGei6k
         /bX20IuSd4Y8hbOibo34ABLfV1P1+m/w0UDsu6OGyimBIFqPyQ5VU0BK8QuDB5XsfsM8
         0BL3//qhDhDw3bYEHdpznFaCevMo8Qkgex1D3R/g0Jgf6TfgasktIOORvK8AdoPPNgSH
         IMprUi3jQNaJB8SaLHgv2hTu0Sx3fyHOQsYfk1c5KL9PXZekH6Fe8y/BLYeJG6IXNMl3
         hjhVq3zAqM9AGmcO0+zjJuFtbaVlLSJc6AxW8oEHRHGn+5yvfEtAcKITUupWdYcI5Q+x
         kIdA==
X-Gm-Message-State: APjAAAWNkASb+AeMKeGApJP0WaHnAtL1ZS5CSNGKG64la6Ywo5xSVYY1
	tf4UWayUrpUOAnOyS5A5CkZiO6JXDHJTlwIz41I=
X-Google-Smtp-Source: APXvYqw6af5EJEPjJ2fmpXzgU7L+IxbOHQDKoTaoEpQi1LLJR6gRMwHzNvEZSR3AIc5s70MOe2xWE2KKkRSK81PjFwE=
X-Received: by 2002:a05:6214:162c:: with SMTP id e12mr1494070qvw.3.1581676990880;
 Fri, 14 Feb 2020 02:43:10 -0800 (PST)
MIME-Version: 1.0
References: <15F33DFCFD1EB3A5.3793@lists.yoctoproject.org>
In-Reply-To: <15F33DFCFD1EB3A5.3793@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 14 Feb 2020 11:42:59 +0100
Message-ID: <CAGAf8Ly+VFF76a+mvrrkF0kNNUDH6YV7jv=t=_msxcS7L2E-pg@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000030def0059e86dfe4"

--00000000000030def0059e86dfe4
Content-Type: text/plain; charset="UTF-8"

One more thing: If I add to this recipe the following line (in
do_install()):
install -m 0755 ${WORKDIR}/build/libcannelloni-common.so ${D}${libdir}

I have now less ERRORs (only two, not three reported).

ERROR: cannelloni-1.0-r0 do_package: QA Issue: cannelloni:
Files/directories were installed but not shipped in any package:
  /usr/lib
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
cannelloni: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: cannelloni-1.0-r0 do_package: Fatal QA errors found, failing task.
ERROR: Logfile of failure stored in:
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package.256858
ERROR: Task
(/home/user/projects2/beaglebone-black/bbb-yocto/meta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package)
failed with exit code '1'

Strange, isnt it?

Zoran
_______

On Fri, Feb 14, 2020 at 11:27 AM Zoran via Lists.Yoctoproject.Org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:

> Hello List,
>
> I am trying to solve very interesting ERROR I am getting with slightly
> modified GENIVI Canneloni recipe:
>
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-can/cannelloni/cannelloni.bb
>
> If I take the recipe as is, everything works fine, with:
> ## SRCREV = "${AUTOREV}"
> SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>
> Everything works fine, but if I swap the static hash with auto latest hash
> (SRCREV = "${AUTOREV}":
> SRCREV = "${AUTOREV}"
> ## SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>
> I am getting these ERRORS, which seems to me very strange?!
> _______
>
> Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 99%
> complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni
> contains bad RPATH
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
> in file
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/cannelloni
> [rpaths]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni
> contained in package cannelloni requires libcannelloni-common.so.0, but no
> providers found in RDEPENDS_cannelloni? [file-rdeps]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: Logfile of failure stored in:
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.255490
> ERROR: Task
> (/home/user/projects2/beaglebone-black/bbb-yocto/meta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need to be
> rerun and 1 failed.
> _______
>
> Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =
> "${AUTOREV}" ???
>
> Thank you,
> Zoran
>
> 
>

--00000000000030def0059e86dfe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One more thing: If I add to this recipe the following=
 line (in do_install()):</div><div>install -m 0755 ${WORKDIR}/build/libcann=
elloni-common.so ${D}${libdir}</div><div><br></div><div>I have now less ERR=
ORs (only two, not three reported).</div><div><br></div><div>ERROR: cannell=
oni-1.0-r0 do_package: QA Issue: cannelloni: Files/directories were install=
ed but not shipped in any package:<br>=C2=A0 /usr/lib<br>Please set FILES s=
uch that these items are packaged. Alternatively if they are unneeded, avoi=
d installing them or delete them within do_install.<br>cannelloni: 1 instal=
led and not shipped files. [installed-vs-shipped]<br>ERROR: cannelloni-1.0-=
r0 do_package: Fatal QA errors found, failing task.<br>ERROR: Logfile of fa=
ilure stored in: /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_packa=
ge.256858<br>ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/m=
eta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package) failed with =
exit code &#39;1&#39;</div><div><br></div><div>Strange, isnt it?</div><div>=
<br></div><div>Zoran</div><div>_______<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 14, 2020 at 11:=
27 AM Zoran via <a href=3D"http://Lists.Yoctoproject.Org" target=3D"_blank"=
>Lists.Yoctoproject.Org</a> &lt;zoran.stojsavljevic=3D<a href=3D"mailto:gma=
il.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproje=
ct.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hello List,<br><br>I am trying to solve very interes=
ting ERROR I am getting with slightly modified GENIVI Canneloni recipe:<br>=
<a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master=
/recipes-can/cannelloni/cannelloni.bb" target=3D"_blank">https://github.com=
/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-can/cannelloni/canne=
lloni.bb</a><br><br>If I take the recipe as is, everything works fine, with=
:<br>## SRCREV =3D &quot;${AUTOREV}&quot;<br>SRCREV =3D &quot;0fb6880b719b8=
acf2b4210b264b7140135e4be8a&quot;<br><br>Everything works fine, but if I sw=
ap the static hash with auto latest hash (SRCREV =3D &quot;${AUTOREV}&quot;=
:<br>SRCREV =3D &quot;${AUTOREV}&quot;<br>## SRCREV =3D &quot;0fb6880b719b8=
acf2b4210b264b7140135e4be8a&quot;<br><br>I am getting these ERRORS, which s=
eems to me very strange?!<br>_______<br><br>Sstate summary: Wanted 11 Found=
 6 Missed 5 Current 1398 (54% match, 99% complete)<br>NOTE: Executing Tasks=
<br>NOTE: Setscene tasks completed<br>ERROR: cannelloni-1.0-r0 do_package_q=
a: QA Issue: package cannelloni contains bad RPATH /home/user/projects2/bea=
glebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/c=
annelloni/1.0-r0/build: in file /home/user/projects2/beaglebone-black/bbb-y=
octo/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/pa=
ckages-split/cannelloni/usr/bin/cannelloni [rpaths]<br>ERROR: cannelloni-1.=
0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni contained in package cann=
elloni requires libcannelloni-common.so.0, but no providers found in RDEPEN=
DS_cannelloni? [file-rdeps]<br>ERROR: cannelloni-1.0-r0 do_package_qa: QA r=
un found fatal errors. Please consider fixing them.<br>ERROR: Logfile of fa=
ilure stored in: /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_packa=
ge_qa.255490<br>ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yoct=
o/meta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed=
 with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 3791 tasks of=
 which 3788 didn&#39;t need to be rerun and 1 failed.<br>_______<br><br><di=
v>Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =3D =
&quot;${AUTOREV}&quot; ???</div><div><br></div><div>Thank you,</div><div>Zo=
ran</div><div><br></div></div>
<br>
</blockquote></div>

--00000000000030def0059e86dfe4--
