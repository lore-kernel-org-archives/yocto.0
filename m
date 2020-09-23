Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web10.11146.1600860618899016036
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 04:30:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SNIFcpLe;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: crestanivitor@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id a16so12202695vsp.12
        for <yocto@lists.yoctoproject.org>; Wed, 23 Sep 2020 04:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wleIup+2PYJXD5AqncL08AD2fbEZGlTumvmhvgSNDEA=;
        b=SNIFcpLeBx3QD7uad4tbgr7dfUMIhgbuX3r6B9Wwggk8ijrz81eccpSaeETsZa0LOa
         mNyDaoGVdAggqS9xbafyAd18o1GC219rxANrTiYU8cg8KX38jSuq+PvYAXfdMoNref98
         +Xi3wctBApO0ZrVEEg7rrFWCE0ew6qTOUYJnkuqSfgW7dEeCDoXc1w4SpFNwF+nAWFFT
         5fUxd66hxjG8RD0Zz/lAO5JsSzW6Cb+0p2s7Y4uny9YRw8ueV3nGU8s9pjjV5ZGVadC1
         3AjQJJIJuqe01XBKN5jFO1+86sCoPfwWidrB3gwMdUILQ3/gjW5OYusfqLVAVGGtLW4Q
         EPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wleIup+2PYJXD5AqncL08AD2fbEZGlTumvmhvgSNDEA=;
        b=YNtHpJcG6hnCrm61koHp8ztwfnsf1tdWpaFv2oXJw+cepF0nvBncO2B2nNrT9aU6Sf
         tHeIDufftWrlxKISkQwyjO43eR4d4P/iA/BxJlXn8nJ6vhlss2mhFrYQQUfUeBKwnqLm
         EVPeIhN4cc8GVhialAmPfV+4dbqg0MFtOk/VAEaqEFInRxW5ZJjUY1f9YQbawsqJIZcz
         kYqx21N+GQvgG0b1bYEGG5Ex3MH0ztkfTmp12MosixdEe4nDtjvaL/gOoLrKYtj67Ug9
         sWKf0mlo40bnfYQP5RTn7eFEVtD7Qj/hO7n3EDdspS9igaghqHdMrA9hYl2l1FKV2K86
         gysA==
X-Gm-Message-State: AOAM531X5mluuOUwe+JKTgPgHDHWhlXRfPCDyxfmt0BHGHYn/Tc2LI7b
	Yhqqy7ww03lSOSJZ1Ry3wtIxKjB/M7UIv6ZiZ9RQhgHt9aw=
X-Google-Smtp-Source: ABdhPJyzFClqY99U6/UltuK35WwajixhTLx6pSjTNRjWhI/slFy4cGNEM5g1c5Fp/cf/ztcJMxgFkimEys8L2g25hmI=
X-Received: by 2002:a67:68d2:: with SMTP id d201mr6413960vsc.41.1600860617792;
 Wed, 23 Sep 2020 04:30:17 -0700 (PDT)
MIME-Version: 1.0
From: "Vitor Crestani Goergen" <crestanivitor@gmail.com>
Date: Wed, 23 Sep 2020 13:30:06 +0200
Message-ID: <CAJObv1NuQ9NMqbwpQpz4BR-f_QFu2Owr_SLexqUP+Xsom8X6pA@mail.gmail.com>
Subject: useless-rpaths : How to solve it/Know if it should be solved ?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000075608905aff968ab"

--00000000000075608905aff968ab
Content-Type: text/plain; charset="UTF-8"

Hello,

I have been dealing with Yocto for about a month, so I am still a beginner.

I am usign a NXP Sabresd board with an iMX6 processor. I have the recipes
from oe, bsp, freescale etc downloaded from the NXP website, although I
replaced the kernel with the EVL core project kernel. I did this in a
workspace using devtool.

I was able to bitbake and build this new kernel without a problem. After
that, I set on to install some libraries, specifically libevl, which is the
library from the EVL project. This source code comes with several
makefiles. I don't understand most of the codes in these makefiles but I am
currently working on that.

I created a new layer and a recipe for this library. Initially I had an
error of "files shipped but not installed" but that was fixed by adding
some more information to FILES_${PN}. Now, I am stuck with the following
error message when trying to build:

Error: QA issue: libevl:
/work/{machine}/libevl/0.1-r0/packages-split/libevl/usr/lib/libevl-0.so.0
contains probably redundant RPATH /usr/lib

I am aware that a "solution" exists using INSANE_SKIP. I did that and
everything worked. However, I would not like to put more things than I
should just to take up space on the board.

What I tried so far was to add somefiles to FILES_${PN}-dev, telling Make
to ignore RPATH (Using the variable CMAKE_IGNORE_RPATH) but none of these
worked.

I've also seen in some discussions that maybe this should probably stay as
it is. How can I determine if this is normal behaviour and I should just
use INSANE_SKIP?

Thanks in advance,

Vitor

--00000000000075608905aff968ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have been dealing with Yocto f=
or about a month, so I am still a beginner.</div><div><br></div><div>I am u=
sign a NXP Sabresd board with an iMX6 processor. I have the recipes from oe=
, bsp, freescale etc downloaded from the NXP website, although=C2=A0I repla=
ced the kernel with the EVL core project kernel. I did this in a workspace =
using devtool.</div><div><br></div><div>I was able to bitbake and build thi=
s new kernel without a problem. After that, I set on to install some librar=
ies, specifically libevl, which is the library from the EVL project. This s=
ource code comes with several makefiles. I don&#39;t understand most of the=
 codes in these makefiles but I am currently working on that.=C2=A0</div><d=
iv><br></div><div>I created a new layer and a recipe for this library. Init=
ially I had an error of &quot;files shipped but not installed&quot; but tha=
t was fixed by adding some more information to FILES_${PN}. Now, I am stuck=
 with the following error=C2=A0message when trying to build:</div><div><br>=
</div><div>Error: QA issue: libevl: /work/{machine}/libevl/0.1-r0/packages-=
split/libevl/usr/lib/libevl-0.so.0 contains probably redundant RPATH /usr/l=
ib=C2=A0<br><br>I am aware that a &quot;solution&quot; exists using INSANE_=
SKIP. I did that and everything worked. However, I would not like to put mo=
re things than I should just to take up space on the board.<br><br>What I t=
ried so far was to add somefiles to FILES_${PN}-dev, telling Make to ignore=
 RPATH (Using the variable CMAKE_IGNORE_RPATH) but none of these worked.</d=
iv><div><br></div><div>I&#39;ve also seen in some discussions that maybe th=
is should probably stay as it is. How can I determine if this is normal beh=
aviour and I should just use INSANE_SKIP?</div><div><br></div><div>Thanks i=
n advance,<br><br>Vitor</div></div>

--00000000000075608905aff968ab--
