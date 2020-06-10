Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web12.10351.1591794663242866992
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 06:11:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g3dYJTnt;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id c14so1863055qka.11
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jun 2020 06:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=StaLntUhepa9LkPOr0IooIdSlRtqhQ/RDKBwZ5I3uUg=;
        b=g3dYJTntgGJGEDBJg3GU2H2F2am+BHAhhWLhgeDmppx3ozqta5vjCA1zBI5o11h1ki
         O7YwYbM4WFyV+QALLA+31q4QCWNbNSPh1x2H+zAc1KzZ6KuwhAwNmuOa7lpoH+zXTh/d
         x9bYPbQSicYbuiEkinJISYwXH7+cmzLySlbU2yYSMejYBb5j0vDXSEdpieQWezsMQSN7
         Q1/vUUzIsF+i8LlVUqva/3vo72Hc0u63pDZzmsJNpRyWnZGZd3XMEEXEAtkLFJvT/N+f
         BEkS/wNubxFYln8LrAfhq+8w9rmmRzcfHTW61opUBoEBaJNQ9azhT0X2Ukc4m/00nhee
         fBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=StaLntUhepa9LkPOr0IooIdSlRtqhQ/RDKBwZ5I3uUg=;
        b=IB4Zzx9vPEnppzEYIi4Mi1c3LasO9NsySG0RWYfi7qxCeNugUqrDS3M3ojnYC2nxim
         HIj/ljyy07ioTWwg9xnkMvHDcRkQZ09CrKXPL6kJ+WjiG39qs4UmYQiAL57V+ZRannOj
         vS9HnqhHZiGu2H0xSW8WkQJZGsIdJCf96cnn6yaN5SikimBX/Pvs8hnmynYcX5Tvutwg
         g3f4PlDFlQnHFxLqCtlZ4GZ1XC2fmJ/uuLUnU46qdL0elAmw17kQ53JYgRLgHRxxwX3Q
         VUMAHJF7zA1syhsIbgDOi0OP/t1gQyjdajHxWs/5WfWFFlt8UTC/a1NSmIohSvwBlX6F
         W/bA==
X-Gm-Message-State: AOAM532EXZv2quph4Ld5KqT9J8/6NWfWDvD26gL6UDIzI7UgKSy93VzD
	9rLQcbQM63Kzf6+SwWWY2HMiysRJoJsvSGc0oCJyKPc=
X-Google-Smtp-Source: ABdhPJzHxF9tb+fG93TeqcRVQa0aSmDIYWBUG8QAJ+5zXA8i7C71NsngP9A6Nxv5v4a1+aQx+eg7dJTsYvZW3pHpdZM=
X-Received: by 2002:ae9:eb47:: with SMTP id b68mr2844539qkg.479.1591794661950;
 Wed, 10 Jun 2020 06:11:01 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Wed, 10 Jun 2020 16:10:51 +0300
Message-ID: <CA+FhBv8zMQOdP6GLXxC+9oqPp+h66_ssSt27rihBS83B8+pgmQ@mail.gmail.com>
Subject: llvm native
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000061922505a7ba9399"

--00000000000061922505a7ba9399
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build a native package which uses llvm. I never used llvm
before, so time to learn

I've added
DEPENDS += "llvm-native"

to my recipe but I still get errors

LLVM_CONFIG:
| CMake Error at data/shiboken_helpers.cmake:146 (message):
|   Unable to detect CLANG location by checking LLVM_INSTALL_DIR,
|   CLANG_INSTALL_DIR or running llvm-config.
| Call Stack (most recent call first):
|   CMakeLists.txt:37 (setup_clang)

I looked at the llvm_git.bb file
do_install_class-native() {
install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen${PV}
install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config${PV}
install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so
${D}${libdir}/libLLVM-${MAJOR_VERSION}.so
}

so I would expect to see llvm-config8.0.0 in
the recipe-sysroot-native/usr/bin/ inside my package folder but nothing
llvm related.

What am I missing?
Thanks,

--00000000000061922505a7ba9399
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I&#39;m trying to build a nat=
ive package which uses llvm. I never used llvm before, so time to learn</di=
v><div><br></div><div>I&#39;ve added=C2=A0</div><div>DEPENDS +=3D &quot;llv=
m-native&quot;<br></div><div><br></div><div>to my recipe but I still get er=
rors</div><div><br></div><div>LLVM_CONFIG:<br>| CMake Error at data/shiboke=
n_helpers.cmake:146 (message):<br>| =C2=A0 Unable to detect CLANG location =
by checking LLVM_INSTALL_DIR,<br>| =C2=A0 CLANG_INSTALL_DIR or running llvm=
-config.<br>| Call Stack (most recent call first):<br>| =C2=A0 CMakeLists.t=
xt:37 (setup_clang)<br></div><div><br></div><div>I looked at the <a href=3D=
"http://llvm_git.bb">llvm_git.bb</a> file</div><div>do_install_class-native=
() {<br>	install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen$=
{PV}<br>	install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config$=
{PV}<br>	install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so ${D}${libd=
ir}/libLLVM-${MAJOR_VERSION}.so<br>}<br></div><div><br></div><div>so I woul=
d expect to see=C2=A0llvm-config8.0.0 in the=C2=A0recipe-sysroot-native/usr=
/bin/ inside my package folder but nothing llvm related.</div><div><br></di=
v><div>What am I missing?</div><div>Thanks,</div></div>

--00000000000061922505a7ba9399--
