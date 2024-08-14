Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A80EC3DA4A
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 19:47:03 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.107316.1723664813486642373
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 12:46:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=auN0uGbn;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ef2d96164aso3055161fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 12:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723664811; x=1724269611; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NbCUrJ115nU8tt1vQXY0WPMTGfAISMwuemIFUigS+4I=;
        b=auN0uGbn1JF3v/9kGSlDD1tUqb6pwiTTPBPe7ktfwrr2Oh/b81mH5huShL4j2RPupJ
         GH2UwM9uxe2eAkFgfWIL9s9kr6Bo/rjfOsT2PP9tpq9K9RPBlckct8urnP/PrUMiwKhM
         4Ke5dD9Efmr3QEA4YQzBkUKuIcoa2wNOt19HnrhiCb+wt3fayh7KibvbX9o83uXsTk27
         sDAUKyXk+UUZN/iAn1OotZcMsTk/WeZuQNbKZ3BiX/KNoP4d0tiA4vV+x35DMvZ3sDAP
         ZI93+DW9WdSuMGm05578xR2NmNp/RgD2XHEMbgjvD/quFY3YAPyEGWHFmvcWjihdwqWs
         LFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723664811; x=1724269611;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NbCUrJ115nU8tt1vQXY0WPMTGfAISMwuemIFUigS+4I=;
        b=ExVlUlYmmpvM9wbKxFGy7TR3OPqwmutArf/96aFxuKUzez42Br2TxWwqVh+iYSN9m5
         Oq8qx2oV5/OzbPMUZpEUGn+MRWGF9syTbqAdxV9p7bubkWya1lMra8kWHNJMIX+XJdZ8
         fXmSfT346jh45lcDdpop6qmUoGCPHtU9Qp2wuPs6+b+a1RiLlLFpeVX3ssGaVewzOjSe
         /mReZtFzLg14QcTVkJIly0q0/avNoiQWvvBS+RETD1ddoWXQnCxC1y7Ws1hO0OB7szlG
         FtM/bUiA9VbbqBr32p89f5hYDErrz20m6gLRNP54Z+0onO5bD7YCcHuigxltcfScfDA4
         mKQw==
X-Gm-Message-State: AOJu0Yx9jJ1sv/sSFr77F8Nt2bUl9CxcJe/GD95/DafhtDF5whc6NSYm
	xHnSbsurksGjzPxO5Ve0c/QTqSoeV31VlWJpzWb7Hj6k93kT3r/CQaWuFA0zLfxATCHiIAAbw/H
	C27Mi/X7H4jPZVlfGLnbsrQSQFF2sYLzH
X-Google-Smtp-Source: AGHT+IETFYwpxQAMaQFhTOQ++nMLRD+vG+2u7HbyL5+hSr0RAlE+gUxJeMSBXp4gQfLQnssfYqHrxeDb2xegPwGjg8M=
X-Received: by 2002:a2e:a984:0:b0:2f3:b582:a914 with SMTP id
 38308e7fff4ca-2f3b582aa46mr955201fa.41.1723664810478; Wed, 14 Aug 2024
 12:46:50 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 14 Aug 2024 21:46:39 +0200
Message-ID: <CAAfyv34mtvxaVTuOU0bVFJgZTm_zAES3+3ELiJSFKnQJu-OUOQ@mail.gmail.com>
Subject: compiler-rt-native failure on scarthgap
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bd934d061fa9fc0b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 19:47:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63702

--000000000000bd934d061fa9fc0b
Content-Type: text/plain; charset="UTF-8"

Hello,

on scarthgap I'm facing strange issue when building image with following
output:
DEBUG: Python function extend_recipe_sysroot finished

| DEBUG: Executing shell function do_configure
| -- The C compiler identification is Clang 18.1.5
| -- The CXX compiler identification is Clang 18.1.5
| -- The ASM compiler identification is Clang with GNU-like command-line
| -- Found assembler:
/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Check for working C compiler:
/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang
- skipped
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - failed
| -- Check for working CXX compiler:
/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang++
| -- Check for working CXX compiler:
/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang++
- broken
| CMake Error at
/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/share/cmake-3.28/Modules/CMakeTestCXXCompiler.cmake:60
(message):
|   The C++ compiler
|
|
"/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang++"
|
|   is not able to compile a simple test program.
|
|   It fails with the following output:
|
|     Change Dir:
'/home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/build/CMakeFiles/CMakeScratch/TryCompile-ayN6bP'
|
|     Run Build Command(s): ninja -v cmTC_68dc4

I'm using ubuntu 22.04. Any ideas what can be the source of the problem?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000bd934d061fa9fc0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>on scarthgap=C2=A0I&#39;m facing=
 strange issue when building image with following output:<br>DEBUG: Python =
function extend_recipe_sysroot finished<br><br>| DEBUG: Executing shell fun=
ction do_configure<br>| -- The C compiler identification is Clang 18.1.5<br=
>| -- The CXX compiler identification is Clang 18.1.5<br>| -- The ASM compi=
ler identification is Clang with GNU-like command-line<br>| -- Found assemb=
ler: /home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5=
/recipe-sysroot-native/usr/bin/clang<br>| -- Detecting C compiler ABI info<=
br>| -- Detecting C compiler ABI info - done<br>| -- Check for working C co=
mpiler: /home/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.=
1.5/recipe-sysroot-native/usr/bin/clang - skipped<br>| -- Detecting C compi=
le features<br>| -- Detecting C compile features - done<br>| -- Detecting C=
XX compiler ABI info<br>| -- Detecting CXX compiler ABI info - failed<br>| =
-- Check for working CXX compiler: /home/test-build/build/tmp/work/x86_64-l=
inux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang++<br>| -=
- Check for working CXX compiler: /home/test-build/build/tmp/work/x86_64-li=
nux/compiler-rt-native/18.1.5/recipe-sysroot-native/usr/bin/clang++ - broke=
n<br>| CMake Error at /home/test-build/build/tmp/work/x86_64-linux/compiler=
-rt-native/18.1.5/recipe-sysroot-native/usr/share/cmake-3.28/Modules/CMakeT=
estCXXCompiler.cmake:60 (message):<br>| =C2=A0 The C++ compiler<br>| <br>| =
=C2=A0 =C2=A0 &quot;/home/test-build/build/tmp/work/x86_64-linux/compiler-r=
t-native/18.1.5/recipe-sysroot-native/usr/bin/clang++&quot;<br>| <br>| =C2=
=A0 is not able to compile a simple test program.<br>| <br>| =C2=A0 It fail=
s with the following output:<br>| <br>| =C2=A0 =C2=A0 Change Dir: &#39;/hom=
e/test-build/build/tmp/work/x86_64-linux/compiler-rt-native/18.1.5/build/CM=
akeFiles/CMakeScratch/TryCompile-ayN6bP&#39;<br>| <br>| =C2=A0 =C2=A0 Run B=
uild Command(s): ninja -v cmTC_68dc4<br><div><br></div><div>I&#39;m using u=
buntu 22.04. Any ideas what can be the source of the problem?</div><div><br=
></div><div>Thanks and BR,</div><div><br></div><div>marek</div><div><br></d=
iv><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature">as simple and pr=
imitive as possible<br>-------------------------------------------------<br=
>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 2=
19 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marek=
white<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com" ta=
rget=3D"_blank">http://open-nandra.com</a></div></div></div>

--000000000000bd934d061fa9fc0b--

