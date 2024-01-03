Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD7C3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 12:09:24 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.16020.1704283754890946505
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 04:09:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=So9F7/xO;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: daniele.lugli@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3bbc755167fso4870292b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 04:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704283754; x=1704888554; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H+ZnJwVqQH5IdHEFcD55epdDsFDkCyv6Qh/scNjK8dk=;
        b=So9F7/xOqI1s58Ei6waw/6RzVJ/MBCmVxAIDyv3xB5N1El8QK3SruSZivRhKE8vP41
         +S47rASEaQa+tJYk5nZbmSHyZvn1YS86Yf64hw4nLhOX66yx6lIBIAnTzD2h0jvJ29sH
         VADlHtboy4eAOXSBCbYr7TE8uXKWcVRD4D+w5UxUhZmx8d9CBd18uj21zFNlb/d5QVM+
         gsei7AhkHlrRFf1cVd05uJlFQremVWrsaSdgWtlIAQZvlKUxy4tHwOP0oKEf4fuMk5Vi
         mEuOHqQVwJbJuVm9tEeJR2hgOxfrWz0Xf8MULMqIlMXpYd8EHlS3jB9InZ7ibS/PDkef
         38CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704283754; x=1704888554;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H+ZnJwVqQH5IdHEFcD55epdDsFDkCyv6Qh/scNjK8dk=;
        b=OmJIrd4u6UPGp7AETnXBtLmHPFG1+OMqo6ee7gqqYFHqXJKC4zaiNfhsX65MqZatCN
         lJ7IlmKPSZX9L6K1DjjPqJmYVKB43Z5owlIu6fzicSuJVcW4AYketDgQLF3ZM58UPjbk
         V+06eIufPZUinD5uh8j0FNDsjKhrkk1ieBe2RD0tHH2tQt4eYFtyyTqac5niAfK/jKtX
         8Kf0wjAE5fDvqmWcjveL63GHMb6BeTGodZFeYejkUO+HJbEunab3wFCVon978/uWV3iX
         v+iv+TDXtbhkEspkxUrHHY7tgNXmGrdipNa8wAD9onwezKQ7987swzn0UkX/isYa6Noj
         eLZg==
X-Gm-Message-State: AOJu0YwF/KnqDZMHJnqi95AK2aucLj3+YD42BXFDqbAOZlprxIyiEkWE
	PkPwZeO2gmtl3Gz0sJuYY/qysnVhpEBjRkUBHoA=
X-Google-Smtp-Source: AGHT+IHPX31lQ0YKghnnNBgyVLZZd6qz90Myvzn9UOUVeiyfGHLtGAfl0bfgzYKCvrUQkjxyLA/tBQohlqJsCL+Q9nw=
X-Received: by 2002:a05:6358:882b:b0:173:c5cc:5027 with SMTP id
 hv43-20020a056358882b00b00173c5cc5027mr19309044rwb.56.1704283753814; Wed, 03
 Jan 2024 04:09:13 -0800 (PST)
MIME-Version: 1.0
References: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org> <CAMKF1sqjx_YRMPOTTLNf0ku4ZZhtzow50Y2PTzPgSJKxkJDuTA@mail.gmail.com>
In-Reply-To: <CAMKF1sqjx_YRMPOTTLNf0ku4ZZhtzow50Y2PTzPgSJKxkJDuTA@mail.gmail.com>
From: Daniele Lugli <daniele.lugli@gmail.com>
Date: Wed, 3 Jan 2024 13:09:02 +0100
Message-ID: <CADuc0QccV48nErsMcmvFdxJ8wiKXdEUgX_P46YU3YKUG_T-Yxw@mail.gmail.com>
Subject: Re: [yocto] Nondeterministic errors with bitbake
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000be1d20060e097b20"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 12:09:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62077

--000000000000be1d20060e097b20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your replies,

memtest86+ reports a couple of failing memory addresses, so this is
probably the reason why. Must replace the RAM of this old beast and, while
I am at it, expand it to 64 Gb.

Apart from that, dmesg says

[   18.608897] kernel: resource: resource sanity check: requesting [mem
0x000000
00000e0000-0x00000000000fffff], which spans more than PCI Bus 0000:00 [mem
0x000
d0000-0x000e7fff window]
[   18.608909] kernel: caller os_map_kernel_space.part.0+0x135/0x1b0
[nvidia] mapping multiple BARs
[   18.619097] kernel: ACPI Warning: \_SB.PCI0.PEG0.GFX0._DSM: Argument #4
type mismatch - Found [Buffer], ACPI requires [Package]
(20221020/nsarguments-61)

but somebody in an NVIDIA forum says this should be harmless.

In syslog I see several disconnections/reconnections of the WLAN, don't
know if this is normal, hope it won't affect the dialog with the server.

Thank you again & best regards


Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
tel 329 3933041
www.general-logic.com
www.linkedin.com/in/daniele-lugli


Il giorno mer 3 gen 2024 alle ore 02:42 Khem Raj <raj.khem@gmail.com> ha
scritto:

> What is the configuration of this system ? CPU and memory specifically on=
e
> likely reason is that you have oom hitting the system because it=E2=80=99=
s
> overloaded so check the system logs for any indication of this
>
> On Tue, Jan 2, 2024 at 1:49=E2=80=AFPM <daniele.lugli@gmail.com> wrote:
>
>> Hi all and best wishes for the new year.
>>
>> I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox
>> machine.
>> I added layers meta-intel and meta-realtime and, with a couple of small
>> modifications to core-image-rt-extended.bb and to rt-app.bb, as
>> suggested by some kind reader (see
>> https://lists.yoctoproject.org/g/yocto/topic/103135158), and after a
>> couple of restarts, I could obtain the image, prepare a .vdi from the .w=
ic
>> and boot a virtual machine with that disk.
>>
>> Now I moved to a physical machine with Ubuntu 22.04.3. Here is the build
>> configuration:
>>
>> BB_VERSION           =3D "2.6.1"
>> BUILD_SYS            =3D "x86_64-linux"
>> NATIVELSBSTRING      =3D "universal"
>> TARGET_SYS           =3D "x86_64-poky-linux"
>> MACHINE              =3D "genericx86-64"
>> DISTRO               =3D "poky"
>> DISTRO_VERSION       =3D
>> "4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738"
>> TUNE_FEATURES        =3D "m64 core2"
>> TARGET_FPU           =3D ""
>> meta
>> meta-poky
>> meta-yocto-bsp       =3D "master:b92406d2313234dccd77b05fe74c09ba9617a73=
8"
>> meta-oe              =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12c=
b"
>> meta-intel           =3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56=
f"
>> meta-realtime        =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb779=
4"
>>
>> I am using exactly the same configuration as in the virtual Ubuntu and I
>> have also applied the suggested modifications to
>> core-image-rt-extended.bb and to rt-app.bb. So the situation should be
>> the same.
>>
>> I cannot understand why I am getting error messages which look random:
>> when, after the error, I rerun bitbake, I get a different error.
>>
>> As an instance, in the first run of bitbake core-image-extended.bb I get=
:
>>
>> |
>> /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmake=
-3.27.7/Source/cmComputeComponentGraph.cxx:139:1:
>> internal compiler error: Segmentation fault
>> |   139 | }
>> |       | ^
>> | 0x7fc36ca4251f ???
>> |     ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
>> | 0x7fc36ca29d8f __libc_start_call_main
>> |     ../sysdeps/nptl/libc_start_call_main.h:58
>> | 0x7fc36ca29e3f __libc_start_main_impl
>> |     ../csu/libc-start.c:392
>> | Please submit a full bug report,
>> | with preprocessed source if appropriate.
>> ...
>> Summary: 1 task failed:
>>   /home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:
>> do_compile
>>
>> Second attempt, without any modification. I get a different error:
>>
>> ERROR: Task
>> (virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_=
3.11.5.bb:do_install)
>> failed with exit code '139'
>> NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn't need to b=
e
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3=
.11.5.
>>
>> Third attempt, always without modifications. Still different:
>>
>> | ERROR: oe_runmake failed
>> | WARNING: exit code 1 from a shell command.
>> ERROR: Task (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do=
_compile)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 6049 tasks of which 3567 didn't need to b=
e
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>   /home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile
>> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>>
>> And so on. Fourth attempt:
>>
>> ERROR: Task
>> (/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-=
extended.bb:do_rootfs)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 6700 tasks of which 6052 didn't need to b=
e
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> /home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-e=
xtended.bb:
>> do_rootfs
>> Summary: There was 1 ERROR message, returning a non-zero exit code.
>>
>> How is this possible? Problems in the communication with the server, or
>> what?
>>
>> Thank you in advance and best regards
>>
>> --
>> Daniele Lugli
>> General Logic srl
>> Viale Curreno, 41
>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torin=
o+Italy?entry=3Dgmail&source=3Dg>
>>
>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torin=
o+Italy?entry=3Dgmail&source=3Dg>
>> 10133 Torino
>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torin=
o+Italy?entry=3Dgmail&source=3Dg>
>> Italy
>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torin=
o+Italy?entry=3Dgmail&source=3Dg>
>> tel +39 329 3933041
>> www.general-logic.com
>> www.linkedin.com/in/daniele-lugli
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#62072):
>> https://lists.yoctoproject.org/g/yocto/message/62072
>> Mute This Topic: https://lists.yoctoproject.org/mt/103491090/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000be1d20060e097b20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for your replies,<div><br></div><div>memtest86+ =
reports a couple of failing memory addresses, so this is probably the reaso=
n why. Must replace the RAM of this old beast and, while I am at it, expand=
 it to 64 Gb.</div><div><br></div><div>Apart from that, dmesg says</div><di=
v><br></div><div><span style=3D"background-color:rgb(255,255,255)"><font co=
lor=3D"#ff0000">[ =C2=A0 18.608897] kernel: resource: resource sanity check=
: requesting [mem 0x000000<br>00000e0000-0x00000000000fffff], which spans m=
ore than PCI Bus 0000:00 [mem 0x000<br>d0000-0x000e7fff window]<br>[ =C2=A0=
 18.608909] kernel: caller os_map_kernel_space.part.0+0x135/0x1b0 [nvidia] =
mapping multiple BARs<br>[ =C2=A0 18.619097] kernel: ACPI Warning: \_SB.PCI=
0.PEG0.GFX0._DSM: Argument #4 type mismatch - Found [Buffer], ACPI requires=
 [Package] (20221020/nsarguments-61)</font></span></div><div><font color=3D=
"#000000" style=3D"background-color:rgb(255,255,255)"><br></font></div><div=
><font color=3D"#000000" style=3D"background-color:rgb(255,255,255)">but so=
mebody in an NVIDIA forum says this should be harmless.</font></div><div><f=
ont color=3D"#000000" style=3D"background-color:rgb(255,255,255)"><br></fon=
t></div><div><font color=3D"#000000" style=3D"background-color:rgb(255,255,=
255)">In syslog I see several disconnections/reconnections of the WLAN, don=
&#39;t know if this is normal, hope it won&#39;t affect the dialog with the=
 server.</font></div><div><font color=3D"#000000" style=3D"background-color=
:rgb(255,255,255)"><br></font></div><div><font color=3D"#000000" style=3D"b=
ackground-color:rgb(255,255,255)">Thank you again &amp; best regards</font>=
</div><div><br></div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Daniele Lu=
gli<br></div>General Logic srl<br></div><div>Viale Curreno, 41<br></div><di=
v>10133 Torino<br></div><div>tel 329 3933041<br></div></div><div><a href=3D=
"http://www.general-logic.com" target=3D"_blank">www.general-logic.com</a><=
/div><div><a href=3D"http://www.linkedin.com/in/daniele-lugli" target=3D"_b=
lank">www.linkedin.com/in/daniele-lugli</a><br></div></div></div></div></di=
v></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il giorno mer 3 gen 2024 alle ore 02:42 Khem =
Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; ha=
 scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"auto">What is the configuration of this system ? CPU and memory speci=
fically one likely reason is that you have oom hitting the system because i=
t=E2=80=99s overloaded so check the system logs for any indication of this=
=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Jan 2, 2024 at 1:49=E2=80=AFPM &lt;<a href=3D"mailto:dan=
iele.lugli@gmail.com" target=3D"_blank">daniele.lugli@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all and b=
est wishes for the new year.<br><br>I recently worked with nanbield on Ubun=
tu 22.04.3 in a VirtualBox machine. <br>I added layers meta-intel and meta-=
realtime and, with a couple of small modifications to <a href=3D"http://cor=
e-image-rt-extended.bb" target=3D"_blank">core-image-rt-extended.bb</a> and=
 to <a href=3D"http://rt-app.bb" target=3D"_blank">rt-app.bb</a>, as sugges=
ted by some kind reader (see <a href=3D"https://lists.yoctoproject.org/g/yo=
cto/topic/103135158" rel=3D"noopener" target=3D"_blank">https://lists.yocto=
project.org/g/yocto/topic/103135158</a>), and after a couple of restarts, I=
 could obtain the image, prepare a .vdi from the .wic and boot a virtual ma=
chine with that disk.<br><br>Now I moved to a physical machine with Ubuntu =
22.04.3. Here is the build configuration:<br><br><span style=3D"color:rgb(0=
,0,255)">BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;2.6.1&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SY=
S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86=
_64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;genericx86-64&quot;<br>DISTR=
O=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a73=
8&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;m64 core2&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta=
-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br=
>meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:b92406=
d2313234dccd77b05fe74c09ba9617a738&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:10f=
1890af03dbb804bffd4fa7eda7729e08f12cb&quot;<br>meta-intel=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:5cfefd9a8ff1f5a=
3534c1ba9d7d7f6971ed5d56f&quot;</span><br><span style=3D"color:rgb(0,0,255)=
">meta-realtime=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:=
489e1d6b34e46f845a4bfe6461a39c6a4bcb7794&quot;</span><br><br>I am using exa=
ctly the same configuration as in the virtual Ubuntu and I have also applie=
d the suggested modifications to <a href=3D"http://core-image-rt-extended.b=
b" target=3D"_blank">core-image-rt-extended.bb</a> and to <a href=3D"http:/=
/rt-app.bb" target=3D"_blank">rt-app.bb</a>. So the situation should be the=
 same.<br><br>I cannot understand why I am getting error messages which loo=
k random: when, after the error, I rerun bitbake, I get a different error.<=
br><br>As an instance, in the first run of bitbake <a href=3D"http://core-i=
mage-extended.bb" target=3D"_blank">core-image-extended.bb</a> I get:<br><b=
r><span style=3D"color:rgb(255,0,0)">| /home/daniele/poky/build/tmp/work/x8=
6_64-linux/cmake-native/3.27.7/cmake-3.27.7/Source/cmComputeComponentGraph.=
cxx:139:1: internal compiler error: Segmentation fault</span><br><span styl=
e=3D"color:rgb(255,0,0)">|=C2=A0=C2=A0 139 | }</span><br><span style=3D"col=
or:rgb(255,0,0)">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ^</span><br><span =
style=3D"color:rgb(255,0,0)">| 0x7fc36ca4251f ???</span><br><span style=3D"=
color:rgb(255,0,0)">| =C2=A0=C2=A0=C2=A0 ./signal/../sysdeps/unix/sysv/linu=
x/x86_64/libc_sigaction.c:0</span><br><span style=3D"color:rgb(255,0,0)">| =
0x7fc36ca29d8f __libc_start_call_main</span><br><span style=3D"color:rgb(25=
5,0,0)">| =C2=A0=C2=A0=C2=A0 ../sysdeps/nptl/libc_start_call_main.h:58</spa=
n><br><span style=3D"color:rgb(255,0,0)">| 0x7fc36ca29e3f __libc_start_main=
_impl</span><br><span style=3D"color:rgb(255,0,0)">| =C2=A0=C2=A0=C2=A0 ../=
csu/libc-start.c:392</span><br><span style=3D"color:rgb(255,0,0)">| Please =
submit a full bug report,</span><br><span style=3D"color:rgb(255,0,0)">| wi=
th preprocessed source if appropriate.</span><br><span style=3D"color:rgb(2=
55,0,0)">...</span><br><span style=3D"color:rgb(255,0,0)">Summary: 1 task f=
ailed:</span><br><span style=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/po=
ky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:do_compile<br></span>=
<br>Second attempt, without any modification. I get a different error:<br><=
br><span style=3D"color:rgb(255,0,0)">ERROR: Task (virtual:native:/home/dan=
iele/poky/meta/recipes-devtools/python/python3_3.11.5.bb:do_install) failed=
 with exit code &#39;139&#39;</span><br><span style=3D"color:rgb(255,0,0)">=
NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn&#39;t need to =
be rerun and 1 failed.</span><br><br><span style=3D"color:rgb(255,0,0)">Sum=
mary: 1 task failed:</span><br><span style=3D"color:rgb(255,0,0)">=C2=A0 vi=
rtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3.11.5=
.</span><br><br>Third attempt, always without modifications. Still differen=
t:<br><br><span style=3D"color:rgb(255,0,0)">| ERROR: oe_runmake failed</sp=
an><br><span style=3D"color:rgb(255,0,0)">| WARNING: exit code 1 from a she=
ll command.</span><br><span style=3D"color:rgb(255,0,0)">ERROR: Task (/home=
/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile) failed with=
 exit code &#39;1&#39;</span><br><span style=3D"color:rgb(255,0,0)">NOTE: T=
asks Summary: Attempted 6049 tasks of which 3567 didn&#39;t need to be reru=
n and 1 failed.</span><br><br><span style=3D"color:rgb(255,0,0)">Summary: 1=
 task failed:</span><br><span style=3D"color:rgb(255,0,0)">=C2=A0 /home/dan=
iele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile</span><br><span =
style=3D"color:rgb(255,0,0)">Summary: There were 2 ERROR messages, returnin=
g a non-zero exit code.</span><br><br>And so on. Fourth attempt:<br><br><sp=
an style=3D"color:rgb(255,0,0)">ERROR: Task (/home/daniele/poky/meta-realti=
me/recipes-extended/images/core-image-rt-extended.bb:do_rootfs) failed with=
 exit code &#39;1&#39;</span><br><span style=3D"color:rgb(255,0,0)">NOTE: T=
asks Summary: Attempted 6700 tasks of which 6052 didn&#39;t need to be reru=
n and 1 failed.</span><br><br><span style=3D"color:rgb(255,0,0)">Summary: 1=
 task failed:</span><br><span style=3D"color:rgb(255,0,0)">=C2=A0 /home/dan=
iele/poky/meta-realtime/recipes-extended/images/core-image-rt-extended.bb:d=
o_rootfs</span><br><span style=3D"color:rgb(255,0,0)">Summary: There was 1 =
ERROR message, returning a non-zero exit code.</span><br><br>How is this po=
ssible? Problems in the communication with the server, or what?<br><br>Than=
k you in advance and best regards<br><br>-- <br>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)">
<div dir=3D"ltr" style=3D"font-family:Arial,Helvetica,sans-serif">
<div style=3D"font-family:Arial,Helvetica,sans-serif">Daniele Lugli</div>
General Logic srl</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https://ww=
w.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=
=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" t=
arget=3D"_blank">Viale Curreno, 41</a></div><a href=3D"https://www.google.c=
om/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&am=
p;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"_b=
lank">
</a><div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https:=
//www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?en=
try=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif=
" target=3D"_blank">10133 Torino</a><br><a href=3D"https://www.google.com/m=
aps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&amp;so=
urce=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"_blank=
">Italy</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif">tel +39 329 3933041</=
div>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.general-logic.com/" rel=3D"noopener" target=
=3D"_blank">www.general-logic.com</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.linkedin.com/in/daniele-lugli" rel=3D"noopen=
er" target=3D"_blank">www.linkedin.com/in/daniele-lugli</a></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#62072): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62072" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62072</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103491090/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103491090/1997914</a><br>
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

--000000000000be1d20060e097b20--

