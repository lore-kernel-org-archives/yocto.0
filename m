Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web12.2994.1610074756806671672
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 18:59:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Elz8k623;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: idadelm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id q22so12688250eja.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 18:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zWWDczFcwwkMc2w7w53eH820HCF7ZyaI5tsTlMNUqP4=;
        b=Elz8k623RF0311aZC4vVh6rgYq0Om+BoLWybg1jrQWfhYsIYB34DhCRZZbdFx0AKPa
         SEPbHf8DNNrpAinWW3WuWQOz559VC9Ao3guG1FWCy1/3V3sFZXLAEaeU4A/CFQM1x9Cp
         cxCjAMWAni/cnNmgE4TJzxlcybZj8M7q0rWJH6YlAzOEo6gvFvPM7MizGCKuhMkQGv1a
         o0D9Iom9TVWr1dWe3qStXWp3uYmqnuwsPbps7/C7YHaQNrJ5BtOCRvhCUlFxujI5UJGc
         B3H0a8o9BjJ/DTdzQ6+C/jIBWu5rEY0ZGxEFW9ukTs3t7/xhnl5o/WRJtoi5wUT+INsd
         lNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zWWDczFcwwkMc2w7w53eH820HCF7ZyaI5tsTlMNUqP4=;
        b=GKf/F15CNHb7G90OCPmBkPnhKiDfF9bs4QuRA7ghSAgaTgp5/FeX7dVX8vhIvFI6Ow
         3Gm8NnbFx9zhP97cRUBJwHepZ2WIlBh10fX+cVsi0cgiiBAjyb3NgLpbTiDqU6y8p/f5
         FflZffwroR6/5unBk31EEWKv3wSyYUmcPQn4Cammgf5DkpoUWv3mREeDWA6mcb1oKTtS
         txSXp6VEORtLGOX1sDNJAOJymgFdLCJ4OLWuQ5H2ARpZeaN5a2kNjlhGJ9C/m9C7A2Vv
         le4lasLdXF8Dnyh00ieo3QKw2QW50aNY9RdxNjNfppCOxLwu2HPlvo84PtS+PaqN9mmt
         IOYA==
X-Gm-Message-State: AOAM532KN+cC+VuQO5e6OdT7oqHy4WKNcdlFbv2u5xpdkLqlfndfavO5
	MFAduaDHjU7Ey/8w/cRATmOKQ/0inTqBjubOqk+OhYjGLLA=
X-Google-Smtp-Source: ABdhPJwoQ8ZpdSTMfDb49bqE0OwBAJwcpEH6li4rBAIvipkoQlVFbIvwbhQ3wWi0jjlm37tWZ7oUX0chKfL8zBdMGqw=
X-Received: by 2002:a17:906:339a:: with SMTP id v26mr1223339eja.107.1610074754761;
 Thu, 07 Jan 2021 18:59:14 -0800 (PST)
MIME-Version: 1.0
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Fri, 8 Jan 2021 03:59:02 +0100
Message-ID: <CAN7sTguaF1pH-xaTdS4KOK2TNJOoCWCBADC+rM8n8ggwBb2p7A@mail.gmail.com>
Subject: Suggestions on improvements
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d1c85005b85abd72"

--000000000000d1c85005b85abd72
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm trying to improve the Yocto Project's license tracing based on a
proof-of concept implementation of linking sources with SPDX headers to
output files by Richard at
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/license-experiments-osls
.

The code in package.bbclass creates a list of SPDX headers found for the
sources that make up a given set of binaries that make up an individual
package using debug symbols to map sources to the binaries. This is then
compared with the license field of the given package containing those
binaries.

Due to some mismatches, warnings pop up during the build. Below are some
few sample warnings and I'm aware of false positives;

WARNING: glibc-2.32-r0 do_package: License for package nscd is {'GPL-2.0
WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
WARNING: glibc-2.32-r0 do_package: License for package sln is {'GPL-2.0
WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
WARNING: glibc-2.32-r0 do_package: License for package ldconfig is
{'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
WARNING: glibc-2.32-r0 do_package: License for package glibc is {'GPL-2.0
WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
WARNING: glibc-2.32-r0 do_package: License for package glibc-staticdev is
{'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
WARNING: libcap-ng-0.8-r0 do_package: License for package libcap-ng is
{'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2+ & LGPLv2.1+
WARNING: libtirpc-1.2.6-r0 do_package: License for package libtirpc is
{'GPL-2.0 WITH Linux-syscall-note'} vs BSD-3-Clause
WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_package: License
for package ptest-runner is {'GPL-2.0-or-later'} vs GPLv2+
WARNING: libcap-2.44-r0 do_package: License for package libcap is {'GPL-2.0
WITH Linux-syscall-note'} vs BSD | GPLv2
WARNING: libcap-2.44-r0 do_package: License for package libcap-staticdev is
{'GPL-2.0 WITH Linux-syscall-note'} vs BSD | GPLv2
WARNING: openssl-1.1.1h-r0 do_package: License for package openssl-engines
is {'GPL-2.0 WITH Linux-syscall-note', 'GPL-2.0+ WITH Linux-syscall-note'}
vs openssl

Any suggestions on improvements I can make to this functionality?

Cheers,
Ida.

--000000000000d1c85005b85abd72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hello everyone,=C2=A0</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">I&#39;m trying to improve the Yocto Proje=
ct&#39;s license tracing based on a proof-of concept implementation of link=
ing sources with SPDX headers to output files by Richard at <a href=3D"http=
://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Drpurdie/license=
-experiments-osls">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/l=
og/?h=3Drpurdie/license-experiments-osls</a>.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">The code in package.bbclass creates a list of SPDX he=
aders found for the sources that make up a given set of binaries that make =
up an individual package using debug symbols to map sources to the binaries=
. This is then compared with the license field of the given package contain=
ing those binaries.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Due =
to some mismatches, warnings pop up during the build. Below are some few sa=
mple warnings and I&#39;m aware of false positives;</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">WARNING: glibc-2.32-r0 do_package: License for =
package nscd is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs GPLv2 &amp; =
LGPLv2.1</div><div dir=3D"auto">WARNING: glibc-2.32-r0 do_package: License =
for package sln is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs GPLv2 &am=
p; LGPLv2.1</div><div dir=3D"auto">WARNING: glibc-2.32-r0 do_package: Licen=
se for package ldconfig is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs G=
PLv2 &amp; LGPLv2.1</div><div dir=3D"auto">WARNING: glibc-2.32-r0 do_packag=
e: License for package glibc is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;}=
 vs GPLv2 &amp; LGPLv2.1</div><div dir=3D"auto">WARNING: glibc-2.32-r0 do_p=
ackage: License for package glibc-staticdev is {&#39;GPL-2.0 WITH Linux-sys=
call-note&#39;} vs GPLv2 &amp; LGPLv2.1</div><div dir=3D"auto">WARNING: lib=
cap-ng-0.8-r0 do_package: License for package libcap-ng is {&#39;GPL-2.0 WI=
TH Linux-syscall-note&#39;} vs GPLv2+ &amp; LGPLv2.1+</div><div dir=3D"auto=
">WARNING: libtirpc-1.2.6-r0 do_package: License for package libtirpc is {&=
#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs BSD-3-Clause</div><div dir=3D"=
auto">WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_package: Lice=
nse for package ptest-runner is {&#39;GPL-2.0-or-later&#39;} vs GPLv2+</div=
><div dir=3D"auto">WARNING: libcap-2.44-r0 do_package: License for package =
libcap is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs BSD | GPLv2</div><=
div dir=3D"auto">WARNING: libcap-2.44-r0 do_package: License for package li=
bcap-staticdev is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;} vs BSD | GPLv=
2</div><div dir=3D"auto">WARNING: openssl-1.1.1h-r0 do_package: License for=
 package openssl-engines is {&#39;GPL-2.0 WITH Linux-syscall-note&#39;, &#3=
9;GPL-2.0+ WITH Linux-syscall-note&#39;} vs openssl</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Any suggestions on improvements I can make to t=
his functionality?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheer=
s,</div><div dir=3D"auto">Ida.</div></div>

--000000000000d1c85005b85abd72--
