Return-Path: <xaver.max.gruber@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74E2FF885A
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 19:28:46 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.23102.1777922922192749526
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 12:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20251104 header.b=d43nh2yi;
 spf=pass (domain: googlemail.com, ip: 209.85.167.42, mailfrom: xaver.max.gruber@googlemail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5a525aedb24so5044823e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 12:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777922920; cv=none;
        d=google.com; s=arc-20240605;
        b=iq+nME8JayQKtNV3ezAbfi/ORziQNXo6I81o6WOQPOXuCOcfDH21L80kgwWGE52dcm
         9fk7zXQXtMlYYWcp/HEQYoBsIuAd5VPHuVA40ZBPBz+YigcuBhLpLzpeKLoS9sNeob3e
         lszyd+1gF1sIMi5/IhqKMi9zINepw4OBhsxBcpyAireo35i7O0naO7/2a/pVr4GIEyWZ
         BAIHUDd5jUXcyOE4fSnOPlemqSjhpC1nzMIfd6KekA9MqdNwwwEKDo0ymlYqMQ2F7ZPV
         W6+e3BDvNYiDmt17mBgl8imDEDTJVR4idfYmUuzcDpKY65e2pvmio2MxyHgoqwMepVXG
         lEvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FPX2XDZVkP9qGzaSj7M0T+4DGeMuF1KNMoTCWH2MLkM=;
        fh=OEdTNdJStgollRYmD/AXht1G1CqCOz9dKyEdFXyian4=;
        b=FwAcLiqgwktgfYhY0uI3vltg432RDv+4zT4LgyNmxxScuMwDPpb9BZKKsMGRTJwLxZ
         rMCePCtzRJNPyoBh5sLxf/MeqoKlBJFVl1Rft7GvR3X9mUTD8i04HSUFjSEt2pLz+BOF
         jU4pHQQMOUD8zWcpzfgJMVDnJl/cVROqDOfgSLkJO+wAedtMm6ZvcD5HU4rM1OVHEdwe
         E0gv+9UIEiZmYnuIpKs4ygv1nXtq5cqqQkqsBpwz1hHHifmSxRzm9zxByYig37NMyrmR
         579oIVujyeQjcd+rrI0Zrtg/v7gGwkdAQGQ1JPMW7/R+RvmI2RZsCgtb0syvNZ55UUBF
         K7Ig==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1777922920; x=1778527720; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FPX2XDZVkP9qGzaSj7M0T+4DGeMuF1KNMoTCWH2MLkM=;
        b=d43nh2yiUwvty7FKFabgkK7iewOsD+EEGTgpUOpzvCI0IrA6k78oTATAJVan2BtLvm
         5gdmNMQwtTR6XkANQX65H5AXAanRKpeFDrFT+49+prLLZgtY0U2ZC06ZZRRF1rrCIOwl
         KjE0uH+SsLbtw9WE9ebO3r5wAzCnx2rD/IUcmeppWESdJamVqSMWjW7gKRVrq+1X2E/Z
         n+IPiEk3FQYHivG7vQ784sMeUWcnCCivhX/C9Zh65jHBPk/ba+E1kE4GEL20mQaY7GK9
         hOCSvlnbfjjG1mrEu0BiNQSYnUF+JlfAYt+bUlPHo4EFyUMKUE3xLYrjPBoDlmvbyLMa
         WuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777922920; x=1778527720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPX2XDZVkP9qGzaSj7M0T+4DGeMuF1KNMoTCWH2MLkM=;
        b=DkDIGwra8iI3g3WuojkV2qkTzN4cZDIxu3g6PJDJuaanv+e4Ue+xtXhszndLnYFCGm
         VsJPiEbovOk6Dz2h4eTVTjK2lXBRCfti+b4PwDtKGOPUYWIZxJlhCeLOfgUhhncWTXjO
         LGx6+vehRiktfjQxYfRjKXCo+ykyk36w7GCTOYw4DIg0LzIxJLBa5byvQNGMtVFxjr/9
         KJUBjopxJxDc7G5mo5ToGaliG3vg0Ij62WglTZCEG7tTlT3NAyHgWZwzSLjKuZAUpQff
         fkreCIK4LZni7VyqRI1kCvvsRwj0en1MAD7tjwVbTGlu13MwPxsS6PPEbviwu8SwAGdL
         aHAw==
X-Gm-Message-State: AOJu0Yy/FXlZHrrhIYeLQVLJrcu+VOJAL8pnt2zYbEl+EW19Or+0r1uz
	MyfblS+7KfsfnlN0RBegF58vgZOfxSklmc4Id4emv3rwC4DiWg/aeWvqSKLaQ/YA5CF9JxJU069
	FnJyR2A8MLHZcV0Q/op6Wsqv60MjZF0g=
X-Gm-Gg: AeBDiesLctvU7dq/No6fYN1Ggfbn4syawjrIsccLjY9UtD0354sKFFedueYjbq5qxc9
	WWLHLyu+nD3/5JUT9fD/gDUpx5ZLXfIdEHyN/ii2dde0bfCXXjzvMEGncne9s/kyrTBQfHzQjGL
	K5lmpexz0b27YGv6iLiBOh+yqYRmuIE9eu9rjhl3pdKkXCx86BPpX3etKkgQjbByNigSW5DlsT2
	cQsE1zosvJucmbWe8vK6CNGBTHc7YAk1m+vcqb2aB439fYlzG680CFAKGhN/jMNut1s5kvjU8YP
	i0RM9jmERULuYdfwpCVmkVydcufL1E9CK9Zb3IZffp6dUhsgaQTqFdZdyVRgCYuIBd41HpvEdWq
	7JXIJBNW+Xg==
X-Received: by 2002:ac2:4e0a:0:b0:5a2:b8cf:39ce with SMTP id
 2adb3069b0e04-5a87f1a326amr77537e87.10.1777922919866; Mon, 04 May 2026
 12:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <CACxWsr7otZCPmzAPP=LE2XDyO+vmY_fnat-4fjG7KecTjN6NHg@mail.gmail.com>
 <CAMKF1spc7HA4AUcwk9v=kVZ4mKEbbv537snQNGf_YfF_q_dV3A@mail.gmail.com>
In-Reply-To: <CAMKF1spc7HA4AUcwk9v=kVZ4mKEbbv537snQNGf_YfF_q_dV3A@mail.gmail.com>
From: Xaver Gruber <xaver.max.gruber@googlemail.com>
Date: Mon, 4 May 2026 21:28:28 +0200
X-Gm-Features: AVHnY4IiKoV5KLST0yBK_AnfrGOLa0oaze_8L9CucgKNRPp3Gsz7z1pOdg_v8HM
Message-ID: <CACxWsr5Y0t2kFZW7G+vZZ6GfMxwaQ1vf8u_9F5Udeu99+u09Eg@mail.gmail.com>
Subject: Re: [yocto] Handling sysroots
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000013a476065102f095"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 19:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66477

--00000000000013a476065102f095
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Following up to this.
I am maintaining a meta Swift layer. Swift compiles clang as well and
therefore the conflict.
I introduced a clang bbappend file with this content in order to have a
custom clang native path:
CLANG_NATIVE_DIR =3D "${STAGING_BINDIR_NATIVE}/clang-native"
EXTRA_OECMAKE:append:class-native =3D "
-DCMAKE_INSTALL_PREFIX=3D${CLANG_NATIVE_DIR}"
SYSROOT_DIRS:append:class-native =3D " ${CLANG_NATIVE_DIR}"

When ld.ldd runs, it is not able to find libLLVM.so.18.1(from
$CLANG_NATIVE_DIR/lib)
I tried this and several other flags with no success:
EXTRA_OECMAKE:append:class-native =3D "
-DCMAKE_INSTALL_RPATH=3D'\$ORIGIN/../lib'"

This is the log:
bitbake -c devshell swift-native
ldd /home/xaver/code/meta-swift-examples/builds/build-qemuarm/tmp-glibc/w
ork/x86_64-linux/swift-native/repro/recipe-sysroot-native/usr/bin/clang-nat=
ive/bin/ld.lld
        linux-vdso.so.1 (0x000074223b123000)
        libz.so.1 =3D>
/home/xaver/code/meta-swift-examples/builds/build-qemuarm/tmp-glibc/work/x8=
6_64-linux/swift-native/repro/recipe-sysroot-native/usr/bin/clang-native/bi=
n/../../../lib/libz.so.1
(0x000074223b101000)
        libzstd.so.1 =3D>
/home/xaver/code/meta-swift-examples/builds/build-qemuarm/tmp-glibc/work/x8=
6_64-linux/swift-native/repro/recipe-sysroot-native/usr/bin/clang-native/bi=
n/../../../lib/libzstd.so.1
(0x000074223b03d000)
        libLLVM.so.18.1 =3D> not found
        libstdc++.so.6 =3D> /lib/x86_64-linux-gnu/libstdc++.so.6
(0x000074223a7d4000)
        libgcc_s.so.1 =3D> /lib/x86_64-linux-gnu/libgcc_s.so.1
(0x000074223b015000)
        libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x000074223a5ab000)
        /lib64/ld-linux-x86-64.so.2 (0x000074223b125000)
        libm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6 (0x000074223a4c4000)


readelf -d
/home/xaver/code/meta-swift-examples/builds/build-qemuarm/tmp-ive/repro/rec=
ipe-sysroot-native/usr/bin/clang-native/bin/ld.lld
glibc/work/x86_64-linux/swift-native/repro/recipe-sysroot-native/usr/bin/cl=
ang-native/bin/clang

Dynamic section at offset 0x27288 contains 32 entries:
  Tag        Type                         Name/Value
 0x0000000000000001 (NEEDED)             Shared library:
[libclang-cpp.so.18.1]
 0x0000000000000001 (NEEDED)             Shared library: [libLLVM.so.18.1]
 0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
 0x000000000000001d (RUNPATH)            Library runpath:
[$ORIGIN/../../../lib:$ORIGIN/../../../../lib:$ORIGIN/../../../lib]
 0x000000000000000c (INIT)               0xa000
 0x000000000000000d (FINI)               0x23e0c
 0x0000000000000019 (INIT_ARRAY)         0x28188
 0x000000000000001b (INIT_ARRAYSZ)       16 (bytes)
 0x000000000000001a (FINI_ARRAY)         0x28198
 0x000000000000001c (FINI_ARRAYSZ)       8 (bytes)
 0x000000006ffffef5 (GNU_HASH)           0x3b0
 0x0000000000000005 (STRTAB)             0x2a18
 0x0000000000000006 (SYMTAB)             0x558
 0x000000000000000a (STRSZ)              19292 (bytes)
 0x000000000000000b (SYMENT)             24 (bytes)
 0x0000000000000015 (DEBUG)              0x0
 0x0000000000000003 (PLTGOT)             0x284c8
 0x0000000000000002 (PLTRELSZ)           7968 (bytes)
 0x0000000000000014 (PLTREL)             RELA
 0x0000000000000017 (JMPREL)             0x7ef8
 0x0000000000000007 (RELA)               0x7988
 0x0000000000000008 (RELASZ)             1392 (bytes)
 0x0000000000000009 (RELAENT)            24 (bytes)
 0x000000000000001e (FLAGS)              BIND_NOW
 0x000000006ffffffb (FLAGS_1)            Flags: NOW PIE
 0x000000006ffffffe (VERNEED)            0x7888
 0x000000006fffffff (VERNEEDNUM)         4
 0x000000006ffffff0 (VERSYM)             0x7574
 0x000000006ffffff9 (RELACOUNT)          20
 0x0000000000000000 (NULL)               0x0

Adjusting libary runpath, it should find it.
How to make it find it? What are the flags that I need to set in clang
bbappend?

Best regards,
Xaver Gruber

Am Do., 23. Apr. 2026 um 21:51 Uhr schrieb Khem Raj <raj.khem@gmail.com>:

>
>
> On Thu, Apr 23, 2026 at 11:04=E2=80=AFAM Xaver Gruber via lists.yoctoproj=
ect.org
> <xaver.max.gruber=3Dgooglemail.com@lists.yoctoproject.org> wrote:
>
>> Hey guys,
>>
>>
>> Clang-native builds clang, however I have another native, let us call it
>> native X, building clang as well. I get an error that it is duplicated i=
n
>> global sysroot. I only need clang-native to build native X. How do I mak=
e
>> sure clang-native does not reach global sysroot, however still being
>> available for native X?
>>
>
> Well, it will not be easy, you might need to carve out directories to put
> the conflicting files in or rename files. why would you not be able to us=
e
> clang-native ?
> we just started to use same llvm across clang, mesa and rust e.g. so we
> are moving in towards consolidation, which makes your ask even harder
>
>
>> Best regards,
>> Xaver Gruber
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#66436):
>> https://lists.yoctoproject.org/g/yocto/message/66436
>> Mute This Topic: https://lists.yoctoproject.org/mt/118976274/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000013a476065102f095
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Following up to this.<br>I am maintaining a meta Swift lay=
er. Swift compiles clang as well and therefore the conflict.<br>I introduce=
d a clang bbappend file with this content in order to have a custom clang n=
ative path:<br>CLANG_NATIVE_DIR =3D &quot;${STAGING_BINDIR_NATIVE}/clang-na=
tive&quot;<br>EXTRA_OECMAKE:append:class-native =3D &quot; -DCMAKE_INSTALL_=
PREFIX=3D${CLANG_NATIVE_DIR}&quot;<br>SYSROOT_DIRS:append:class-native =3D =
&quot; ${CLANG_NATIVE_DIR}&quot;<br><br>When ld.ldd runs, it is not able to=
 find=C2=A0libLLVM.so.18.1(from $CLANG_NATIVE_DIR/lib)<br>I tried this and =
several other flags with no success:<br>EXTRA_OECMAKE:append:class-native =
=3D &quot; -DCMAKE_INSTALL_RPATH=3D&#39;\$ORIGIN/../lib&#39;&quot;<br><br>T=
his is the log:<br>bitbake -c devshell swift-native<br>ldd /home/xaver/code=
/meta-swift-examples/builds/build-qemuarm/tmp-glibc/w<br>ork/x86_64-linux/s=
wift-native/repro/recipe-sysroot-native/usr/bin/clang-native/bin/ld.lld<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux-vdso.so.1 (0x000074223b123000)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 libz.so.1 =3D&gt; /home/xaver/code/meta-swift-examples=
/builds/build-qemuarm/tmp-glibc/work/x86_64-linux/swift-native/repro/recipe=
-sysroot-native/usr/bin/clang-native/bin/../../../lib/libz.so.1 (0x00007422=
3b101000)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libzstd.so.1 =3D&gt; /home/xaver/c=
ode/meta-swift-examples/builds/build-qemuarm/tmp-glibc/work/x86_64-linux/sw=
ift-native/repro/recipe-sysroot-native/usr/bin/clang-native/bin/../../../li=
b/libzstd.so.1 (0x000074223b03d000)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libLLVM.=
so.18.1 =3D&gt; not found<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libstdc++.so.6 =3D=
&gt; /lib/x86_64-linux-gnu/libstdc++.so.6 (0x000074223a7d4000)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 libgcc_s.so.1 =3D&gt; /lib/x86_64-linux-gnu/libgcc_s.s=
o.1 (0x000074223b015000)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libc.so.6 =3D&gt; /=
lib/x86_64-linux-gnu/libc.so.6 (0x000074223a5ab000)<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 /lib64/ld-linux-x86-64.so.2 (0x000074223b125000)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 libm.so.6 =3D&gt; /lib/x86_64-linux-gnu/libm.so.6 (0x00007422=
3a4c4000)<br><br><br>readelf -d /home/xaver/code/meta-swift-examples/builds=
/build-qemuarm/tmp-ive/repro/recipe-sysroot-native/usr/bin/clang-native/bin=
/ld.lld<br>glibc/work/x86_64-linux/swift-native/repro/recipe-sysroot-native=
/usr/bin/clang-native/bin/clang<br><br>Dynamic section at offset 0x27288 co=
ntains 32 entries:<br>=C2=A0 Tag =C2=A0 =C2=A0 =C2=A0 =C2=A0Type =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N=
ame/Value<br>=C2=A00x0000000000000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Shared library: [libclang-cpp.so.18.1]<br>=C2=A00x00000000000=
00001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [l=
ibLLVM.so.18.1]<br>=C2=A00x0000000000000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Shared library: [libstdc++.so.6]<br>=C2=A00x0000000000=
000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [=
libgcc_s.so.1]<br>=C2=A00x0000000000000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Shared library: [libc.so.6]<br>=C2=A00x000000000000001=
d (RUNPATH) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Library runpath: [$ORI=
GIN/../../../lib:$ORIGIN/../../../../lib:$ORIGIN/../../../lib]<br>=C2=A00x0=
00000000000000c (INIT) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0xa=
000<br>=C2=A00x000000000000000d (FINI) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0x23e0c<br>=C2=A00x0000000000000019 (INIT_ARRAY) =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0x28188<br>=C2=A00x000000000000001b (INIT_ARRAYSZ) =C2=A0=
 =C2=A0 =C2=A0 16 (bytes)<br>=C2=A00x000000000000001a (FINI_ARRAY) =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0x28198<br>=C2=A00x000000000000001c (FINI_ARRAYSZ) =C2=
=A0 =C2=A0 =C2=A0 8 (bytes)<br>=C2=A00x000000006ffffef5 (GNU_HASH) =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0x3b0<br>=C2=A00x0000000000000005 (STRTAB) =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x2a18<br>=C2=A00x0000000000000006 (=
SYMTAB) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x558<br>=C2=A00x00000000=
0000000a (STRSZ) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A019292 (byt=
es)<br>=C2=A00x000000000000000b (SYMENT) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 24 (bytes)<br>=C2=A00x0000000000000015 (DEBUG) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0<br>=C2=A00x0000000000000003 (PLTGOT) =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x284c8<br>=C2=A00x0000000000000002 (PL=
TRELSZ) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7968 (bytes)<br>=C2=A00x00000000=
00000014 (PLTREL) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RELA<br>=C2=A00=
x0000000000000017 (JMPREL) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x7ef8=
<br>=C2=A00x0000000000000007 (RELA) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0x7988<br>=C2=A00x0000000000000008 (RELASZ) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 1392 (bytes)<br>=C2=A00x0000000000000009 (RELAENT) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A024 (bytes)<br>=C2=A00x000000000000=
001e (FLAGS) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIND_NOW<br>=
=C2=A00x000000006ffffffb (FLAGS_1) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Flags: NOW PIE<br>=C2=A00x000000006ffffffe (VERNEED) =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00x7888<br>=C2=A00x000000006fffffff (VERNEEDNUM) =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 4<br>=C2=A00x000000006ffffff0 (VERSYM) =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x7574<br>=C2=A00x000000006ffffff9 (RELACOU=
NT) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A020<br>=C2=A00x0000000000000000 (NULL)=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0<br><br>Adjusting liba=
ry runpath, it should find it.<br>How to make it find it? What are the flag=
s that I need to set in clang bbappend?<br><br>Best regards,<br>Xaver Grube=
r</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr=
" class=3D"gmail_attr">Am Do., 23. Apr. 2026 um 21:51=C2=A0Uhr schrieb Khem=
 Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Apr 23, 2026 at 11:04=E2=80=AFAM Xaver Gruber=
 via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoct=
oproject.org</a> &lt;xaver.max.gruber=3D<a href=3D"mailto:googlemail.com@li=
sts.yoctoproject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div style=3D"font-size:inherit"><h3 style=3D"font-style:normal;letter-sp=
acing:normal;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:1px;font-family:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica=
 neue&quot;,&quot;noto sans&quot;,&quot;liberation sans&quot;,arial,sans-se=
rif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui=
 symbol&quot;,&quot;noto color emoji&quot;;font-weight:500;line-height:1.1;=
margin-top:20px;margin-bottom:10px;font-size:inherit;background-color:rgba(=
0,0,0,0);border-color:rgb(38,41,46);color:rgb(38,41,46)"><p style=3D"margin=
:0px;font-size:15px;line-height:normal;font-family:system-ui,&quot;segoe ui=
&quot;,roboto,&quot;helvetica neue&quot;,&quot;noto sans&quot;,&quot;libera=
tion sans&quot;,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe =
ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;noto color emoji&quot;;bac=
kground-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><span=
 style=3D"font-family:uictfonttextstylebody;font-size:0.9375rem;background-=
color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Hey guys,</sp=
an></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-family=
:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;not=
o sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple color=
 emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;n=
oto color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0=
);color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;backgr=
ound-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><br></sp=
an></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-family=
:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;not=
o sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple color=
 emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;n=
oto color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0=
);color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;font-s=
ize:0.9375rem;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:=
rgb(0,0,0)">Clang-native builds clang, however I have another native, let u=
s call it native X, building clang as well. I get an error that it is dupli=
cated in global sysroot. I only need clang-native to build native X. How do=
 I make sure clang-native does not reach global sysroot, however still bein=
g available for native X?</span></p></h3></div></blockquote><div><br></div>=
<div>Well, it will not be easy, you might need to carve out directories to =
put the conflicting files in or rename files. why would you not be able to =
use clang-native ?</div><div>we just started to use same llvm across clang,=
 mesa and rust e.g. so we are moving in towards consolidation, which makes =
your ask even harder</div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div style=3D"font-size:inherit"><span style=3D"font-size=
:inherit;font-style:normal;font-weight:400;letter-spacing:normal;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:1px;text-decorati=
on:none;float:none;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);c=
olor:rgb(0,0,0);display:inline">Best regards,</span><div style=3D"font-size=
:inherit;font-style:normal;font-weight:400;letter-spacing:normal;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:1px;background-co=
lor:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Xaver Gruber</d=
iv></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66436): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66436" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66436</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118976274/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118976274/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--00000000000013a476065102f095--

